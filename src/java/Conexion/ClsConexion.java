/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author Sergio-Lopez
 */
public class ClsConexion {
    private Connection conexion;

    public Connection getConexion() {
        return conexion;
    }

    public void setConexion(Connection conexion) {
        this.conexion = conexion;
    }

    public void conectar() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String db = "PROYECTO_DAUTE";
            String user = "root";
            String pass = "";
            String url = "jdbc:mysql://localhost/" + db + "?user=" + user + "&password=" + pass;
            conexion = DriverManager.getConnection(url);
        } catch (ClassNotFoundException | SQLException e) {
            JOptionPane.showMessageDialog(null, "Error conexion " + e.getMessage());
        }
    }

    public void desconectar() {
        try {
            if (!conexion.isClosed()) {
                conexion.close();
            }
        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}
