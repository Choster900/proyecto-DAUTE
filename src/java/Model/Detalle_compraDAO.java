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
public class Detalle_compraDAO extends ClsConexion{
    public void insertarOrden(ClsOrden_Detalleorden orden) {
        try {
            this.conectar();
            String sql = "CALL SP_ORDENES(?,?)";
            PreparedStatement pre = this.getConexion().prepareStatement(sql);
            pre.setInt(1, orden.getCodigoUsuario());
            pre.setInt(2, orden.getMetodoPago());
            

            pre.executeUpdate();

        } catch (Exception e) {
            JOptionPane.showConfirmDialog(null, "Error: " + e.getMessage());

        } finally {
            this.desconectar();
        }
    }
    public void generarFactura(ClsOrden_Detalleorden orden) {
        try {
            this.conectar();
            String sql = "CALL SP_DETALLES(?)";
            PreparedStatement pre = this.getConexion().prepareStatement(sql);
            pre.setInt(1, orden.getCodigoUsuario());            

            pre.executeUpdate();

        } catch (Exception e) {
            JOptionPane.showConfirmDialog(null, "Error: " + e.getMessage());

        } finally {
            this.desconectar();
        }
    }
}
