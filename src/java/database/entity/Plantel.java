package database.entity;

import database.BaseDatos;
import database.OperacionesDB;

/**
 *
 * @author gomezhyuuga
 */
public class Plantel extends Registro {

    private String nombre;
    private int idInstitucion;
    private int id;

    public int registro() {
        int status = 0;
        // 1) Conectarse a la BD
        OperacionesDB odb = new BaseDatos();
        status = odb.insertPlantel(this);
        return status;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdInstitucion() {
        return idInstitucion;
    }

    public void setIdInstitucion(int idInstitucion) {
        this.idInstitucion = idInstitucion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}
