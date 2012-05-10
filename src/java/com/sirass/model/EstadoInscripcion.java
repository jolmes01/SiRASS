/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sirass.model;

/**
 *
 * @author gomezhyuuga
 */
class EstadoInscripcion {

    private int idEstado;
    private String descripcion;

    public EstadoInscripcion() {
    }

    public EstadoInscripcion(int idEstado) {
        this.idEstado = idEstado;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getIdEstado() {
        return idEstado;
    }

    public void setIdEstado(int idEstado) {
        this.idEstado = idEstado;
    }
}
