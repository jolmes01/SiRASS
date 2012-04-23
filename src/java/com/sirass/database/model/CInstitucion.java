package com.sirass.database.model;

import java.util.Date;
import java.util.List;

/**
 *
 * @author gomezhyuuga
 */
public class CInstitucion {

    private int id;
    private String nombre;
    // Del registro
    private String modificadoPor;
    private Date ultimaModif;
    private Date creacion;

    public CInstitucion() {
    }

    public Date getCreacion() {
        return creacion;
    }

    public void setCreacion(Date creacion) {
        this.creacion = creacion;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getModificadoPor() {
        return modificadoPor;
    }

    public void setModificadoPor(String modificadoPor) {
        this.modificadoPor = modificadoPor;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Date getUltimaModif() {
        return ultimaModif;
    }

    public void setUltimaModif(Date ultimaModif) {
        this.ultimaModif = ultimaModif;
    }
}
