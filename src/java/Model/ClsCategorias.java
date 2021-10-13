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
public class ClsCategorias {
    private int id;
    private String nombre;
    private String create_at;
    private String update_at;

    public ClsCategorias() {
    }

    public ClsCategorias(int id, String nombre, String create_at, String update_at) {
        this.id = id;
        this.nombre = nombre;
        this.create_at = create_at;
        this.update_at = update_at;
    }

    public String getUpdate_at() {
        return update_at;
    }

    public void setUpdate_at(String update_at) {
        this.update_at = update_at;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCreate_at() {
        return create_at;
    }

    public void setCreate_at(String create_at) {
        this.create_at = create_at;
    }
    
    
}
