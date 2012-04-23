/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sirass.OLD;

/**
 *
 * @author gomezhyuuga
 */
public class Administrador extends Persona {
 
    // Atributos propios extra de un admin
    private String cargo;

    public Administrador() {
        this.setTipo("admin");
    }
    
    // Getter & setter
    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }
}
