/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Conexion.ClsConexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author 16ado
 */
public class Signup extends ClsConexion {

    public int getRol(String nickname, String pass) {
        int rol = 0;
        try {
            this.conectar();
            String sql = "SELECT ROL_ID FROM USUARIO WHERE NICKNAME=? AND PASS=?";
            PreparedStatement pre = this.getConexion().prepareStatement(sql);
            pre.setString(1, nickname);
            pre.setString(2, pass);
            ResultSet rs;
            rs = pre.executeQuery();
            while (rs.next()) {
                rol = rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
        } finally {
            this.desconectar();
        }
        return rol;
    }
     public int getCodigoUsuario(String nickname, String pass) {
        int codeUser = 0;
        try {
            this.conectar();
            String sql = "SELECT ID FROM USUARIO WHERE NICKNAME=? AND PASS=?";
            PreparedStatement pre = this.getConexion().prepareStatement(sql);
            pre.setString(1, nickname);
            pre.setString(2, pass);
            ResultSet rs;
            rs = pre.executeQuery();
            while (rs.next()) {
                codeUser = rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
        } finally {
            this.desconectar();
        }
        return codeUser;
    }
}
