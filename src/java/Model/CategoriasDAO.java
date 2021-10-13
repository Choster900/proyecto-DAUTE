/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Conexion.ClsConexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author Sergio-Lopez
 */
public class CategoriasDAO extends ClsConexion{
    public ArrayList<ClsCategorias> mostrarCategorias() {
        ArrayList<ClsCategorias> lista = new ArrayList<>();
        try {
            this.conectar();
            String sql = "SELECT * FROM CATEGORIA";
            PreparedStatement pre = this.getConexion().prepareStatement(sql);
            ResultSet rs;

            rs = pre.executeQuery();

            while (rs.next()) {
                ClsCategorias ca = new ClsCategorias();
                ca.setId(rs.getInt(1));
                ca.setNombre(rs.getString(2));
               
                lista.add(ca);
            }

        } catch (Exception e) {
            JOptionPane.showConfirmDialog(null, "Error: " + e.getMessage());

        } finally {
            this.desconectar();
        }
        return lista;
    }
}
