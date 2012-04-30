package com.sirass.model;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 *
 * @author gomezhyuuga
 */
public class Usuario implements Serializable {

    private String usuario;
    private String password;
    private Prestador prestador;
    private Institucion institucion;
    private Administrador administrador;
    private Set<Rol> roles = new HashSet<Rol>(0);
    // Del registro
    private String modificadoPor;
    private Date ultimaModif;
    private Date creacion;

    public Usuario() {
    }

    public Usuario(String usuario, String password, Prestador prestador, Institucion institucion, Administrador administrador) {
        this.usuario = usuario;
        this.password = password;
        this.prestador = prestador;
        this.institucion = institucion;
        this.administrador = administrador;
    }

    public Set<Rol> getRoles() {
        return roles;
    }

    public void setRoles(Set<Rol> roles) {
        this.roles = roles;
    }

    public Date getCreacion() {
        return creacion;
    }

    public void setCreacion(Date creacion) {
        this.creacion = creacion;
    }

    public String getModificadoPor() {
        return modificadoPor;
    }

    public void setModificadoPor(String modificadoPor) {
        this.modificadoPor = modificadoPor;
    }

    public Date getUltimaModif() {
        return ultimaModif;
    }

    public void setUltimaModif(Date ultimaModif) {
        this.ultimaModif = ultimaModif;
    }

    public Administrador getAdministrador() {
        return administrador;
    }

    public void setAdministrador(Administrador administrador) {
        this.administrador = administrador;
    }

    public Institucion getInstitucion() {
        return institucion;
    }

    public void setInstitucion(Institucion institucion) {
        this.institucion = institucion;
    }

    public Prestador getPrestador() {
        return prestador;
    }

    public void setPrestador(Prestador prestador) {
        this.prestador = prestador;
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
}