package com.sirass.database.model;

import java.util.Date;

/**
 *
 * @author gomezhyuuga
 */
public class Plantel {

    private int id;
    private String nombre;
    private CInstitucion institucion;
    // Del registro
    private String modificadoPor;
    private Date ultimaModif;
    private Date creacion;

    public Plantel() {
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

    public CInstitucion getInstitucion() {
        return institucion;
    }

    public void setInstitucion(CInstitucion institucion) {
        this.institucion = institucion;
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
