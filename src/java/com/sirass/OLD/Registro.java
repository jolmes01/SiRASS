package com.sirass.OLD;

import java.sql.Date;
import java.sql.Timestamp;

/**
 *
 * @author gomezhyuuga
 */
public class Registro {

    private String modificadoPor;
    private Date ultimaModif;
    private Date creacion;

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
}
