package database.entity;

import database.BaseDatos_0;

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
        // Conectarse a la BD
        BaseDatos_0 baseDatos = new BaseDatos_0();
        // Realizar el INSERT
        int status = baseDatos.doInsertUsuario(this);
        return status;
    }

    public int baja() {
        // Conectarse a la BD
        BaseDatos_0 baseDatos = new BaseDatos_0();
        // Realizar DELETE
        int status = baseDatos.doDeleteUsuario(this);
        return status;
    }
    
    public void actualizar() {
        
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
