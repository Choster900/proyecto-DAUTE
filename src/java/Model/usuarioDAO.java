/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Conexion.ClsConexion;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.sql.PreparedStatement;
import javax.swing.JOptionPane;

/**
 *
 * @author 16ado
 */
public class usuarioDAO extends ClsConexion {

    public void insertUser(ClsUsuarios u) {
        try {
            this.conectar();
            String sql = "CALL SP_INSERT_USUARIO(?,?,?,?,?,?,?)";
            PreparedStatement pre = this.getConexion().prepareStatement(sql);
            pre.setString(1, u.getName());
            pre.setString(2, u.getEmail());
            pre.setString(3, u.getFoto());
            pre.setString(4,getMD5(u.getPass()) );
            pre.setInt(5, u.getRol());
            pre.setInt(6, u.getTypeSub());
            pre.setString(7, u.getGenero());

            pre.executeUpdate();

        } catch (Exception e) {
            JOptionPane.showConfirmDialog(null, "Error: " + e.getMessage());

        } finally {
            this.desconectar();
        }
    }

    public String getMD5(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] encBytes = md.digest(password.getBytes());
            BigInteger numero = new BigInteger(1, encBytes);
            String encString = numero.toString(16);
            while (encString.length() < 32) {
                encString = "0" + encString;
            }
            return encString;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
