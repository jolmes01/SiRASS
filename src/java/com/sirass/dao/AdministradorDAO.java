/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sirass.dao;

import com.sirass.HibernateUtil;
import com.sirass.model.Administrador;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author JL Macias
 */
public class AdministradorDAO {

    public int upAdminDat(Administrador administrador, String comand) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        transaction.begin();
        int updateDates = session.createQuery(comand)
                .setString("mail", administrador.getEmail())
                .setString("modifBy", administrador.getModificadoPor())
                .setString("ultimod", String.valueOf(administrador.getUltimaModif()))
                .setString("idAdmin", String.valueOf(administrador.getIdAdmin()))
                .executeUpdate();
        transaction.commit();
        session.close();
        return updateDates;
        
    }
    
}
