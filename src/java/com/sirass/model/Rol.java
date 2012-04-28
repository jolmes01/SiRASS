/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sirass.model;

import java.util.Date;

/**
 *
 * @author gomezhyuuga
 */
public class Rol {

    private String nombreRol;
    // Del registro
    private String modificadoPor;
    private Date ultimaModif;
    private Date creacion;

    public Rol() {
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

    public Rol(String nombreRol) {
        this.nombreRol = nombreRol;
    }

    public String getNombreRol() {
        return nombreRol;
    }

    public void setNombreRol(String nombreRol) {
        this.nombreRol = nombreRol;
    }
}
