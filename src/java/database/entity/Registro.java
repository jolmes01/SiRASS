package database.entity;

import java.sql.Date;
import java.sql.Timestamp;

/**
 *
 * @author gomezhyuuga
 */
public class Registro {

    private String modificadoPor;
    private Timestamp ultimaModif;
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

    public Timestamp getUltimaModif() {
        return ultimaModif;
    }

    public void setUltimaModif(Timestamp ultimaModif) {
        this.ultimaModif = ultimaModif;
    }
}
