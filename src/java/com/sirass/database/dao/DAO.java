package com.sirass.database.dao;

import com.sirass.database.HibernateUtil;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.exception.ConstraintViolationException;

/**
 *
 * @author gomezhyuuga
 */
public class DAO {

    /**
     * Lógica general para hacer las operaciones: 1) Crear y abrir sesión con
     * HibernateUtil 2) Crear y comenzar Transaction 3) Realizar operación
     * (insert, delete, update, select, etc) 4) Hacer commit 5) Cerrar sesión
     */
    /**
     * Realiza un registro en la BD del objeto pasado como parámetro
     *
     * @param obj - El objeto a regsitrar en la BD
     * @return - Devuelve 1 si se registra, 0 si hay un error.
     */
    public int insert(Object obj) {
        int status = 0;
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            session.save(obj);
            transaction.commit();
            status = 1;
        } catch (ConstraintViolationException e) {
            transaction.rollback();
            System.out.println("#### --- ####");
            System.out.println("Error haciendo insert. Motivo:");
            System.out.println(e.getLocalizedMessage());
            System.out.println("#### --- ####");
            return e.getErrorCode();
        } finally {
            session.close();
        }
        return status;
    }
}
