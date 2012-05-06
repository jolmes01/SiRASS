package com.sirass.dao;

import com.sirass.HibernateUtil;
import com.sirass.model.Prestador;
import com.sirass.model.Usuario;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author gomezhyuuga
 */
public class PrestadorDAO extends DAO {

    /**
     * Registra un prestador en su respectiva tabla en la BD, junto con su
     * usuario, contraseña y roles
     *
     * @param prestador : Prestador - El prestador que desea registrarse
     * @return status : int - Devuelve 1 si se agregó, 0 si hubo un error, 1062
     * si el usuario ya existe.
     */
    public int insert(Prestador prestador) {
        return super.insert(prestador);
    }
    
    /**
     * Devuelve el ID de la inscripción actual del prestador
     * 
     * @param username - El nombre de usuario del prestador
     * @return - ID de la inscripción
     */
    public int getCurrentInscripcion(String username) {
        return this.getCurrentInscripcion(
                Restrictions.eq("usuario", username)
                );
    }
    
    /**
     * Devuelve el ID de la inscripción actual del prestador
     * 
     * @param idPrestador - El id del prestador
     * @return - ID de la inscripción
     */
    public int getCurrentInscripcion(int idPrestador) {
        return this.getCurrentInscripcion(
                Restrictions.eq("idPrestador", idPrestador)
                );
    }
    
    private int getCurrentInscripcion(Criterion crit) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Usuario p = (Usuario) session.createCriteria(Usuario.class)
                .add(crit)
                .uniqueResult();
        int idInscripcion = p.getPrestador().getInscripcion();        
        session.close();
        return idInscripcion;
    }
}
