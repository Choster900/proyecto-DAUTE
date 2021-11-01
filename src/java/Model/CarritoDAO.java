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
public class CarritoDAO extends ClsConexion {

    public ArrayList<ClsCart> showCart(int code) {
        ArrayList<ClsCart> lista = new ArrayList<>();
        try {
            this.conectar();
            String sql = "SELECT \n"
                    + "    C.ID,\n"
                    + "    P.ID,\n"
                    + "    P.NOMBRE,\n"
                    + "    CA.NOMBRE,\n"
                    + "    P.FOTO,\n"
                    + "    C.PRECIO,\n"
                    + "    FORMAT(C.DESCUENTO,2)\n"
                    + "FROM\n"
                    + "    CARRITO_DE_COMPRAS C\n"
                    + "        INNER JOIN\n"
                    + "    PRODUCTOS P ON P.ID = C.ID_PRODUCTO\n"
                    + "		INNER JOIN CATEGORIA CA ON CA.ID = P.CATEGORIA_ID WHERE ESTADO_VENTA = 0 AND C.ID_USUARIO = " + code + " ORDER BY C.ID ASC";
            PreparedStatement pre = this.getConexion().prepareStatement(sql);
            ResultSet rs;

            rs = pre.executeQuery();

            while (rs.next()) {
                ClsCart C = new ClsCart();
                C.setCodigoCarrito(rs.getInt(1));
                C.setCodigoProducto(rs.getInt(2));
                C.setNombreProd(rs.getString(3));
                C.setCategoria(rs.getString(4));
                C.setFoto(rs.getString(5));
                C.setPrecio(rs.getDouble(6));
                C.setDescuento(rs.getDouble(7));

                lista.add(C);
            }

        } catch (Exception e) {
            JOptionPane.showConfirmDialog(null, "Error: " + e.getMessage());

        } finally {
            this.desconectar();
        }
        return lista;
    }

    public void insertCarrito_de_compras(ClsCart c) {
        try {
            this.conectar();
            String sql = "CALL SP_INSERT_CARRITO(?,?,?)";
            PreparedStatement pre = this.getConexion().prepareStatement(sql);
            pre.setInt(1, c.getCodigoProducto());
            pre.setInt(2, c.getCodigoUsuario());
            pre.setInt(3, c.getTipo_suscripcion());

            pre.executeUpdate();

        } catch (Exception e) {
            JOptionPane.showConfirmDialog(null, "Error: " + e.getMessage());

        } finally {
            this.desconectar();
        }
    }

    public void delete_carrito(ClsCart c) {
        try {
            this.conectar();
            String sql = "CALL SP_DELETE_CARRITO(?)";
            PreparedStatement pre = this.getConexion().prepareStatement(sql);
            pre.setInt(1, c.getCodigoCarrito());

            pre.executeUpdate();

        } catch (Exception e) {
            JOptionPane.showConfirmDialog(null, "Error: " + e.getMessage());

        } finally {
            this.desconectar();
        }
    }

    public double getTotalCarrito(int code) {
        double total = 0;
        try {
            this.conectar();
            String sql = "SELECT FORMAT(SUM(PRECIO-DESCUENTO),2) FROM CARRITO_DE_COMPRAS WHERE ID_USUARIO = "+code+ " AND ESTADO_VENTA = 0";
            PreparedStatement pre = this.getConexion().prepareStatement(sql);
            ResultSet rs;
            rs = pre.executeQuery();
            while (rs.next()) {
                total = rs.getDouble(1);
            }
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
        } finally {
            this.desconectar();
        }
        return total;
    }

}
