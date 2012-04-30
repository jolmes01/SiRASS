package com.sirass.dao;

import com.sirass.HibernateUtil;
import com.sirass.model.CInstitucion;
import com.sirass.model.Plantel;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.hibernate.exception.ConstraintViolationException;

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
     * @return
     */
    public List<CInstitucion> getAll() {
        List<CInstitucion> lista = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        CInstitucion cInstitucion = null;
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Criteria criteria = session.createCriteria(CInstitucion.class);
            lista = criteria.list();
        } catch (HibernateException ex) {
            System.out.println("Error obteniendo institucion");
        } finally {
            session.close();
        }
        return lista;
    }
}
