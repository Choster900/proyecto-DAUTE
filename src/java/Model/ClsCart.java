/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;
/**
 *
 * @author 16ado
 */
public class ClsCart{
    private int codigoCarrito;
    private int codigoProducto;
    private int codigoUsuario;
    private String categoria;
    private String nombreProd;
    private String foto;
    private Double precio;
    private Double descuento;
    private int tipo_suscripcion;

    public ClsCart() {
    }

    public ClsCart(int codigoCarrito, int codigoProducto, int codigoUsuario, String categoria, String nombreProd, String foto, Double precio, Double descuento, int tipo_suscripcion) {
        this.codigoCarrito = codigoCarrito;
        this.codigoProducto = codigoProducto;
        this.codigoUsuario = codigoUsuario;
        this.categoria = categoria;
        this.nombreProd = nombreProd;
        this.foto = foto;
        this.precio = precio;
        this.descuento = descuento;
        this.tipo_suscripcion = tipo_suscripcion;
    }

    

    public Double getDescuento() {
        return descuento;
    }

    public void setDescuento(Double descuento) {
        this.descuento = descuento;
    }

    public int getCodigoCarrito() {
        return codigoCarrito;
    }

    public void setCodigoCarrito(int codigoCarrito) {
        this.codigoCarrito = codigoCarrito;
    }

    public int getCodigoProducto() {
        return codigoProducto;
    }

    public void setCodigoProducto(int codigoProducto) {
        this.codigoProducto = codigoProducto;
    }

    public int getCodigoUsuario() {
        return codigoUsuario;
    }

    public void setCodigoUsuario(int codigoUsuario) {
        this.codigoUsuario = codigoUsuario;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getNombreProd() {
        return nombreProd;
    }

    public void setNombreProd(String nombreProd) {
        this.nombreProd = nombreProd;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public int getTipo_suscripcion() {
        return tipo_suscripcion;
    }

    public void setTipo_suscripcion(int tipo_suscripcion) {
        this.tipo_suscripcion = tipo_suscripcion;
    }
    
    
}
