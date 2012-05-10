package com.sirass.dao;

import com.sirass.HibernateUtil;
import com.sirass.model.programass.ProgramaSS;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.transform.AliasToBeanResultTransformer;

/**
 *
 * @author gomezhyuuga
 */
public class ProgramaSSDAO {
    
    public List<ProgramaSS> getListFew() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        ProgramaSS programa = null;
        List<ProgramaSS> programas = null;
        ProjectionList plist = Projections.projectionList();
        plist.add(Projections.property("p.nombre").as("nombre"));
        plist.add(Projections.property("p.idPrograma").as("idPrograma"));
        plist.add(Projections.property("p.cvePrograma").as("cvePrograma"));
        programas = (List<ProgramaSS>) session.createCriteria(ProgramaSS.class, "p")
                .setProjection(plist)
                .setResultTransformer(new AliasToBeanResultTransformer(ProgramaSS.class))
                .list();
        session.close();
        return programas;
    }

    /**
     * Obtener un programa a partir de su ID
     * 
     * @param id - ID del programa
     * @return - El programa solicitado con todos sus datos (incluyendo:
     * responsables, actividades, dias....)
     */
    public ProgramaSS getByPK(int id) {
        Criterion criterios[] = new Criterion[1];
        criterios[0] = Restrictions.eq("idPrograma", id);
        return this.getWithRestrictions(criterios);
    }
    
    /**
     * Obtener un programa a partir de su clave
     * 
     * @param id - ID del programa
     * @return - El programa solicitado con todos sus datos (incluyendo:
     * responsables, actividades, dias....)
     */
    public ProgramaSS getByCve(String cvePrograma) {
        Criterion criterios[] = new Criterion[1];
        criterios[0] = Restrictions.eq("cvePrograma", cvePrograma);
        return this.getWithRestrictions(criterios);
    }
    
    private ProgramaSS getWithRestrictions(Criterion crit[]) {
        ProgramaSS programa = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        // Obtener el control de Horas
        Criteria criteria = session.createCriteria(ProgramaSS.class)
                .setFetchMode("tipo", FetchMode.JOIN)
                .setFetchMode("alcance", FetchMode.JOIN)
                .setFetchMode("poblacion", FetchMode.JOIN)
                .setFetchMode("dias", FetchMode.JOIN)
                .setFetchMode("responsables", FetchMode.JOIN)
                .setFetchMode("actividad", FetchMode.JOIN)
                .setFetchMode("horario", FetchMode.JOIN)
                .setFetchMode("tiempo", FetchMode.JOIN);
        // Agregar todos los criterios
        for (Criterion criterion : crit) {
            criteria.add(criterion);
        }
        // Devolver un solo resultado
        programa = (ProgramaSS) criteria.uniqueResult();
        session.close();
        return programa;
    }
}
