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
            pre.setString(2, getMD5(pass));
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
            pre.setString(2, getMD5(pass));
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
     public int getTypeSuscri(String nickname, String pass) {
        int typeSub = 0;
        try {
            this.conectar();
            String sql = "SELECT TIPO_SUSCRIPCION FROM USUARIO WHERE NICKNAME=? AND PASS=?";
            PreparedStatement pre = this.getConexion().prepareStatement(sql);
            pre.setString(1, nickname);
            pre.setString(2, getMD5(pass));
            ResultSet rs;
            rs = pre.executeQuery();
            while (rs.next()) {
                typeSub = rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
        } finally {
            this.desconectar();
        }
        return typeSub;
    }
     
     public String getMD5(String password){
         try {
             MessageDigest md = MessageDigest.getInstance("MD5");
             byte[] encBytes = md.digest(password.getBytes());
             BigInteger numero = new BigInteger(1,encBytes);
             String encString = numero.toString(16);
             while (encString.length()<32) {
                 encString = "0"+encString;
             }
             return encString;
         } catch (Exception e) {
             throw new RuntimeException(e);
         }
     }
}
