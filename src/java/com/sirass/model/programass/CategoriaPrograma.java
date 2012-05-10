package com.sirass.model.programass;

/**
 *
 * @author JL Macias
 */
class CategoriaPrograma {

    private int idCategoria;
    private String descripcion;

    public CategoriaPrograma() {
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }
}
