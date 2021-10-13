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
public class productoDAO extends ClsConexion {

    public ArrayList<ClsProducto> productosHome() {
        ArrayList<ClsProducto> lista = new ArrayList<>();
        try {
            this.conectar();
            String sql = "SELECT \n"
                    + "    P.ID,\n"
                    + "    P.NOMBRE,\n"
                    + "    DESCRIPCION,\n"
                    + "    PRECIO,\n"
                    + "    IF(ESTADO = 1,\n"
                    + "        'Disponible',\n"
                    + "        'No disponible') as estado,\n"
                    + "	STOK,\n"
                    + "    FOTO,\n"
                    + "    C.NOMBRE AS CATEGORIA\n"
                    + "FROM\n"
                    + "    PRODUCTOS P\n"
                    + "        INNER JOIN\n"
                    + "    CATEGORIA C\n"
                    + "WHERE\n"
                    + "    P.CATEGORIA_ID = C.ID;";
            PreparedStatement pre = this.getConexion().prepareStatement(sql);
            ResultSet rs;

            rs = pre.executeQuery();

            while (rs.next()) {
                ClsProducto c = new ClsProducto();
                c.setCodigoProducot(rs.getInt(1));
                c.setNombre(rs.getString(2));
                c.setDescripcion(rs.getString(3));
                c.setPrecio(rs.getDouble(4));
                c.setEstadoVent(rs.getString(5));
                c.setStok(rs.getInt(6));
                c.setRutaImagen(rs.getString(7));
                c.setNombreCategoria(rs.getString(8));
                lista.add(c);
            }

        } catch (Exception e) {
            JOptionPane.showConfirmDialog(null, "Error: " + e.getMessage());

        } finally {
            this.desconectar();
        }
        return lista;
    }
    
    public void insertProductos(ClsProducto p) {
        try {
            this.conectar();
            String sql = "CALL SP_INSERT_PRODUCTO(?,?,?,?,?,?,?)";
            PreparedStatement pre = this.getConexion().prepareStatement(sql);
            pre.setString(1, p.getNombre());
            pre.setString(2, p.getDescripcion());
            pre.setDouble(3, p.getPrecio());
            pre.setInt(4, p.getEstadoVenta());
            pre.setInt(5, p.getStok());
            pre.setString(6, p.getRutaImagen());
            pre.setInt(7, p.getCodigoCategoria());

            pre.executeUpdate();

        } catch (Exception e) {
            JOptionPane.showConfirmDialog(null, "Error: " + e.getMessage());

        } finally {
            this.desconectar();
        }
    }
        public void updateProduct(ClsProducto p) {
        try {
            this.conectar();
            String sql = "CALL SP_UPDATE_PRODUCTO(?,?,?,?,?,?,?,?)";
            PreparedStatement pre = this.getConexion().prepareStatement(sql);
            pre.setInt(1, p.getCodigoProducot());
            pre.setString(2, p.getNombre());
            pre.setString(3, p.getDescripcion());
            pre.setDouble(4, p.getPrecio());
            pre.setInt(5, p.getEstadoVenta());
            pre.setInt(6, p.getStok());
            pre.setString(7, p.getRutaImagen());
            pre.setInt(8, p.getCodigoCategoria());

            pre.executeUpdate();

        } catch (Exception e) {
            JOptionPane.showConfirmDialog(null, "Error: " + e.getMessage());

        } finally {
            this.desconectar();
        }
    }
    
    public ArrayList<ClsProducto> traerInfo(int codigo) {
        ArrayList<ClsProducto> lista = new ArrayList<>();
        try {
            this.conectar();
            String sql = "SELECT \n"
                    + "    P.ID,\n"
                    + "    P.NOMBRE,\n"
                    + "    DESCRIPCION,\n"
                    + "    PRECIO,\n"
                    + "    IF(ESTADO = 1,\n"
                    + "        'Disponible',\n"
                    + "        'No disponible') as estado,\n"
                    + "	STOK,\n"
                    + "    FOTO,\n"
                    + "    C.ID AS CATEGORIA\n"
                    + "FROM\n"
                    + "    PRODUCTOS P\n"
                    + "        INNER JOIN\n"
                    + "    CATEGORIA C\n"
                    + "ON\n"
                    + "    P.CATEGORIA_ID = C.ID\n"
                    + "WHERE P.ID = "+codigo;
            PreparedStatement pre = this.getConexion().prepareStatement(sql);
            ResultSet rs;

            rs = pre.executeQuery();

            while (rs.next()) {
                ClsProducto c = new ClsProducto();
                c.setCodigoProducot(rs.getInt(1));
                c.setNombre(rs.getString(2));
                c.setDescripcion(rs.getString(3));
                c.setPrecio(rs.getDouble(4));
                c.setEstadoVent(rs.getString(5));
                c.setStok(rs.getInt(6));
                c.setRutaImagen(rs.getString(7));
                c.setCodigoCategoria(rs.getInt(8));
                lista.add(c);
            }

        } catch (Exception e) {
            JOptionPane.showConfirmDialog(null, "Error: " + e.getMessage());

        } finally {
            this.desconectar();
        }
        return lista;
    }
}
