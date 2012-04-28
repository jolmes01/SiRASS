/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sirass.dao;

import com.sirass.model.Usuario;

/**
 *
 * @author gomezhyuuga
 */
public class UsuarioDAO extends DAO {

    /**
     * Registra un usuario en su respectiva tabla en la BD
     *
     * @param usuario : Usuario - El usuario que desea registrarse
     * @return status : int - Devuelve 1 si se agregó, 0 si hubo un error, 1062
     * si el usuario ya existe.
     */
    public int insert(Usuario usuario) {
        return super.insert(usuario);
    }
}
