/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Sergio-Lopez
 */
public class ClsProducto {
    private int codigoProducot;
    private String nombre;

    
    private String descripcion;
    private Double precio;
    private int estadoVenta;
    private String estadoVent;
    private int vecesVendido;
    private int stok;
    private String rutaImagen;
    private String create_at;
    private String update_at;
    private int codigoCategoria;
    private String nombreCategoria;

    public ClsProducto() {
    }
    
    public ClsProducto(int codigoProducot, String nombre, String descripcion, Double precio, int estadoVenta,String estadoVent, int vecesVendido, int stok, String rutaImagen, String create_at, String update_at, int nodigoCategoria, String nombreCategoria) {
        this.codigoProducot = codigoProducot;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.precio = precio;
        this.estadoVenta = estadoVenta;
        this.estadoVent = estadoVent;
        this.vecesVendido = vecesVendido;
        this.stok = stok;
        this.rutaImagen = rutaImagen;
        this.create_at = create_at;
        this.update_at = update_at;
        this.codigoCategoria = nodigoCategoria;
        this.nombreCategoria = nombreCategoria;
    }

    public String getNombreCategoria() {
        return nombreCategoria;
    }

    public void setNombreCategoria(String nombreCategoria) {
        this.nombreCategoria = nombreCategoria;
    }

    public int getCodigoProducot() {
        return codigoProducot;
    }

    public void setCodigoProducot(int codigoProducot) {
        this.codigoProducot = codigoProducot;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public int getEstadoVenta() {
        return estadoVenta;
    }

    public void setEstadoVenta(int estadoVenta) {
        this.estadoVenta = estadoVenta;
    }
    
    public String getEstadoVent() {
        return estadoVent;
    }

    public void setEstadoVent(String estadoVent) {
        this.estadoVent = estadoVent;
    }

    public int getVecesVendido() {
        return vecesVendido;
    }

    public void setVecesVendido(int vecesVendido) {
        this.vecesVendido = vecesVendido;
    }

    public int getStok() {
        return stok;
    }

    public void setStok(int stok) {
        this.stok = stok;
    }

    public String getRutaImagen() {
        return rutaImagen;
    }

    public void setRutaImagen(String rutaImagen) {
        this.rutaImagen = rutaImagen;
    }

    public String getCreate_at() {
        return create_at;
    }

    public void setCreate_at(String create_at) {
        this.create_at = create_at;
    }

    public String getUpdate_at() {
        return update_at;
    }

    public void setUpdate_at(String update_at) {
        this.update_at = update_at;
    }

    public int getCodigoCategoria() {
        return codigoCategoria;
    }

    public void setCodigoCategoria(int codigoCategoria) {
        this.codigoCategoria = codigoCategoria;
    }
    
    
    
}
