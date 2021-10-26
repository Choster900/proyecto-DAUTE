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
public class ClsDireccionUsuario {
    private int usuario_ID;
    private int CodigoDepartamento;
    private String nombredepartamento;
    private String municipio;
    private String calle;
    private String lugarRef;
    private String telefono1;
    private String telefono2;

    public ClsDireccionUsuario() {
    }

    public ClsDireccionUsuario(int usuario_ID, int CodigoDepartamento, String nombredepartamento, String municipio, String calle, String lugarRef, String telefono1, String telefono2) {
        this.usuario_ID = usuario_ID;
        this.CodigoDepartamento = CodigoDepartamento;
        this.nombredepartamento = nombredepartamento;
        this.municipio = municipio;
        this.calle = calle;
        this.lugarRef = lugarRef;
        this.telefono1 = telefono1;
        this.telefono2 = telefono2;
    }

    public String getTelefono2() {
        return telefono2;
    }

    public void setTelefono2(String telefono2) {
        this.telefono2 = telefono2;
    }

    public int getUsuario_ID() {
        return usuario_ID;
    }

    public void setUsuario_ID(int usuario_ID) {
        this.usuario_ID = usuario_ID;
    }

    public int getCodigoDepartamento() {
        return CodigoDepartamento;
    }

    public void setCodigoDepartamento(int CodigoDepartamento) {
        this.CodigoDepartamento = CodigoDepartamento;
    }

    public String getNombredepartamento() {
        return nombredepartamento;
    }

    public void setNombredepartamento(String nombredepartamento) {
        this.nombredepartamento = nombredepartamento;
    }

    public String getMunicipio() {
        return municipio;
    }

    public void setMunicipio(String municipio) {
        this.municipio = municipio;
    }

    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public String getLugarRef() {
        return lugarRef;
    }

    public void setLugarRef(String lugarRef) {
        this.lugarRef = lugarRef;
    }

    public String getTelefono1() {
        return telefono1;
    }

    public void setTelefono1(String telefono1) {
        this.telefono1 = telefono1;
    }
    
    
    
    
}
