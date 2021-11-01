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
public class ClsUsuarios {

    private int codigoUsuario;
    private String name;
    private String foto;
    private String email;
    private String pass;
    private int rol;
    private int typeSub;
    private String typeSubNombre;
    private String genero;

    private String create_at;
    private String update_at;

    public ClsUsuarios() {
    }

    public ClsUsuarios(int codigoUsuario, String name, String foto, String email, String pass, int rol, int typeSub, String genero, String create_at, String update_at) {
        this.codigoUsuario = codigoUsuario;
        this.name = name;
        this.foto = foto;
        this.email = email;
        this.pass = pass;
        this.rol = rol;
        this.typeSub = typeSub;
        this.genero = genero;
        this.create_at = create_at;
        this.update_at = update_at;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUpdate_at() {
        return update_at;
    }

    public void setUpdate_at(String update_at) {
        this.update_at = update_at;
    }

    public int getCodigoUsuario() {
        return codigoUsuario;
    }

    public void setCodigoUsuario(int codigoUsuario) {
        this.codigoUsuario = codigoUsuario;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getRol() {
        return rol;
    }

    public void setRol(int rol) {
        this.rol = rol;
    }

    public int getTypeSub() {
        return typeSub;
    }

    public void setTypeSub(int typeSub) {
        this.typeSub = typeSub;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getCreate_at() {
        return create_at;
    }

    public void setCreate_at(String create_at) {
        this.create_at = create_at;
    }
    public String getTypeSubNombre() {
        return typeSubNombre;
    }

    public void setTypeSubNombre(String typeSubNombre) {
        this.typeSubNombre = typeSubNombre;
    }

}
