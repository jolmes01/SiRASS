package database.entity;

import database.BaseDatos;

/**
 *
 * @author gomezhyuuga
 */
public class Usuario {

    // Atributos del usuario
    private int id;
    private String usuario;
    private String password;
    private String[] roles;
    private String tipo;

    /**
     * 
     * @return status : int. Devuelve 1 si se insertó el usuario,
     * 1062 si el usuario ya existe, 0 si hubo un error.
     */
    public int registro() {
        int status = 0;
        // Conectarse a la BD
        BaseDatos baseDatos = new BaseDatos();
        // Realizar el INSERT
        status = baseDatos.doInsertUsuario(this);
        return status;
    }
    /**
     * 
     * @return status : int. 1 si se borró
     */
    public int baja() {
        int status = 0;
        // Conectarse a la BD
        BaseDatos baseDatos = new BaseDatos();
        // Realizar DELETE
        status = baseDatos.doDeleteUsuario(this);
        return status;
    }

    // Getters & setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String[] getRoles() {
        return roles;
    }

    public void setRoles(String[] roles) {
        this.roles = roles;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
}
