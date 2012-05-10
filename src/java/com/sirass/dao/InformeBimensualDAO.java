package com.sirass.dao;

import com.sirass.HibernateUtil;
import com.sirass.model.prestador.InformeBimensual;
import java.util.Collections;
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
public class InformeBimensualDAO extends DAO {
    
    /**
     * Guarda un informe bimensual en la BD
     * 
     * @param informe - El informe a guardar
     * @return - Devuelve 1 si se guardó, 0 si hubo un error
     */
    public int insert(InformeBimensual informe) {
        return super.insert(informe);
    }
    
    public InformeBimensual getByPK(int id) {
        InformeBimensual informe = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        // Obtener el control de Horas
        informe = (InformeBimensual) session.createCriteria(InformeBimensual.class)
                .add(Restrictions.eq("idInformeBimensual", id))
                .setFetchMode("estado", FetchMode.JOIN)
                .uniqueResult();
        session.close();
        return informe;
    }
    
    public List<InformeBimensual> getByUsername(String username) {
        List<InformeBimensual> informes = null;
        int idInscripcion = 0;
        Session session = HibernateUtil.getSessionFactory().openSession();
        PrestadorDAO pdao = new PrestadorDAO();
        idInscripcion = pdao.getCurrentInscripcion(username);
        // Obtener el control de Horas
        Criterion crit[] = new Criterion[1];
        crit[0] = Restrictions.eq("idInscripcion", idInscripcion);
        informes = this.getListWithRestriction(crit, FetchMode.SELECT);
        session.close();
        return informes;
    }
    
    private List<InformeBimensual> getListWithRestriction(Criterion res[], FetchMode mode) {
        List<InformeBimensual> lista = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        // Obtener el control de Horas
        Criteria criteria = session.createCriteria(InformeBimensual.class)
                .setFetchMode("estado", FetchMode.JOIN);
        for (Criterion crit : res) {
            criteria.add(crit);
        }
        lista = Collections.checkedList(criteria.list(), InformeBimensual.class);
        session.close();
        return lista;
    }
}
