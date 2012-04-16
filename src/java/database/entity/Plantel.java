package database.entity;

/**
 *
 * @author gomezhyuuga
 */
public class Plantel extends Registro {

    private String nombre;
    private int idInstitucion;
    private int idPlantel;

    public int getIdPlantel() {
        return idPlantel;
    }

    public void setIdPlantel(int idPlantel) {
        this.idPlantel = idPlantel;
        super.setId(idPlantel);
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
