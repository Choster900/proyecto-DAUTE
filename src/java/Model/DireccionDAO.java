/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Conexion.ClsConexion;
import java.sql.PreparedStatement;
import javax.swing.JOptionPane;

/**
 *
 * @author 16ado
 */
public class DireccionDAO extends ClsConexion{
     public void insertDireccionUsuario(ClsDireccionUsuario u) {
        try {
            this.conectar();
            String sql = "CALL SP_INSERT_DIRECCION(?,?,?,?,?,?,?)";
            PreparedStatement pre = this.getConexion().prepareStatement(sql);
            pre.setInt(1, u.getUsuario_ID());
            pre.setInt(2, u.getCodigoDepartamento());
            pre.setString(3, u.getMunicipio());
            pre.setString(4,u.getCalle());
            pre.setString(5, u.getLugarRef());
            pre.setString(6, u.getTelefono1());
            pre.setString(7, u.getTelefono2());

            pre.executeUpdate();

        } catch (Exception e) {
            JOptionPane.showConfirmDialog(null, "Error: " + e.getMessage());

        } finally {
            this.desconectar();
        }
    }
}
