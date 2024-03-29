package com.sirass.dao;

import com.sirass.HibernateUtil;
import com.sirass.model.programass.ResponsablePrograma;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author gomezhyuuga
 */
public class ResponsableProgramaDAO {

    public List<ResponsablePrograma> getByPrograma(int id) {
        Criterion criterio = Restrictions.eq("programa.idPrograma", id);
        return this.getWithRestriction(criterio, null);
    }
    public ResponsablePrograma getFirstByPrograma(int id) {
        Criterion criterio = Restrictions.eq("programa.idPrograma", id);
        return this.getWithRestriction(criterio, 1).get(0);
    }
    
    private List<ResponsablePrograma> getWithRestriction(Criterion crit, Integer maxResults) {
        List<ResponsablePrograma> responsables = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        // Obtener los responsables de programas
        Criteria criteria = session.createCriteria(ResponsablePrograma.class)
                .setFetchMode("programa", FetchMode.SELECT)
                .add(crit);
        // Establecer un máximo de resultados si se puso
        if (maxResults != null) {
            criteria.setMaxResults(maxResults);
        }
        // Devolver lista
        responsables = (List<ResponsablePrograma>) criteria.list();
        session.close();
        return responsables;
    }
}
