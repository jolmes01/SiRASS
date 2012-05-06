package com.sirass.model;

/**
 *
 * @author gomezhyuuga
 */
public class EstadoReporte {

    private String descripcion;
    private short idEstado;

    public EstadoReporte() {
    }

    public EstadoReporte(short idEstado) {
        this.idEstado = idEstado;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public short getIdEstado() {
        return idEstado;
    }

    public void setIdEstado(short idEstado) {
        this.idEstado = idEstado;
    }
}
