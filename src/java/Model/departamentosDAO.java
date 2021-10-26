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
 * @author 16ado
 */
public class departamentosDAO extends ClsConexion {

    public ArrayList<ClsDepartamentos> showDepastamentos() {
        ArrayList<ClsDepartamentos> lista = new ArrayList<>();
        try {
            this.conectar();
            String sql = "SELECT * FROM DEPARTAMENTOS";
            PreparedStatement pre = this.getConexion().prepareStatement(sql);
            ResultSet rs;

            rs = pre.executeQuery();

            while (rs.next()) {
                ClsDepartamentos depa = new ClsDepartamentos();
                depa.setId(rs.getInt(1));
                depa.setNombre(rs.getString(2));

                lista.add(depa);
            }

        } catch (Exception e) {
            JOptionPane.showConfirmDialog(null, "Error: " + e.getMessage());

        } finally {
            this.desconectar();
        }
        return lista;
    }
}
