package com.sirass.model.programass;

/**
 *
 * @author JL Macias
 */
class HorarioPrograma {

    private short idHorario;
    private String descripcion;

    public HorarioPrograma() {
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public short getIdHorario() {
        return idHorario;
    }

    public void setIdHorario(short idHorario) {
        this.idHorario = idHorario;
    }
}
