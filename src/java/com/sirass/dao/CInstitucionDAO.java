package com.sirass.dao;

import com.sirass.HibernateUtil;
import com.sirass.model.CInstitucion;
import java.util.Collections;
import java.util.List;
import org.hibernate.*;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author gomezhyuuga
 */
public class CInstitucionDAO extends DAO {

    /**
     * Registra una institución en la base de datos
     *
     * @param institucion - La institucion a registrar
     * @return - Devuelve 1 si se registró, 0 si hubo un error.
     */
    public int insert(CInstitucion institucion) {
        return super.insert(institucion);
    }

    /**
     * Obteniene los datos de una institucion del catálogo, junto con sus
     * planteles asignados
     *
     * @param id - El ID de la institucion
     * @return CInsitucion - El objeto con los datos de la institucion
     */
    public CInstitucion getById(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        CInstitucion cInstitucion = null;
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Criteria criteria = session.createCriteria(CInstitucion.class);
            criteria.setFetchMode("planteles", FetchMode.JOIN);
            cInstitucion = (CInstitucion) criteria.add(Restrictions.eq("idCInstitucion", id)).uniqueResult();
            transaction.commit();
        } catch (HibernateException ex) {
            System.out.println("Error obteniendo institucion");
        } finally {
            session.close();
        }
        return cInstitucion;
    }

    /**
     * Obtiene la lista de todas las instituciones en el catálogo
     *
     * @return lista de objetos CInstitucion
     */
    public List<CInstitucion> getAll() {
        List<CInstitucion> lista = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Criteria criteria = session.createCriteria(CInstitucion.class);
            lista = Collections.checkedList(criteria.list(), CInstitucion.class);
            transaction.commit();
        } catch (HibernateException ex) {
            System.out.println("Error obteniendo institucion");
        } finally {
            session.close();
        }
        return lista;
    }
}
