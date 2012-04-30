/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sirass.dao;

import com.sirass.HibernateUtil;
import com.sirass.model.Usuario;
import org.hibernate.FetchMode;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

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
    
    /**
     * Comprueba si un usuario determinado existe
     * @param username - El nombre de usuario a comprobar
     * @return true si existe, false si no existe
     */
    public boolean exists(String username) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        // Comprobar si el usuario existe
        Usuario usuario = (Usuario) session.createCriteria(Usuario.class)
                .add(Restrictions.eq("usuario", username))
                .setFetchMode("prestador", FetchMode.SELECT)
                .setFetchMode("institucion", FetchMode.SELECT)
                .setFetchMode("administrador", FetchMode.SELECT)
                .setFetchMode("roles", FetchMode.SELECT)
                .uniqueResult();
        transaction.commit();
        session.close();
        if (usuario != null) {
            System.out.println("El usuario existe!");
            return true;
        } else {
            System.out.println("El usuario no existe!");
            return false;
        }
    }
}
