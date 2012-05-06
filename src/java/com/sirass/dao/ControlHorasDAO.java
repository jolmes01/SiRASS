package com.sirass.dao;

import com.sirass.HibernateUtil;
import com.sirass.model.ControlHoras;
import org.hibernate.FetchMode;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author gomezhyuuga
 */
public class ControlHorasDAO extends DAO {

    /**
     * Guarda un control de horas en la BD
     *
     * @param controlHoras - El control de horas a guardar con sus registros
     * RegistroHora ya asignados
     * @return - 1 si se guardó correctamente, 0 si hubo un error
     */
    public int insert(ControlHoras controlHoras) {
        return super.insert(controlHoras);
    }

    /**
     * Obtener un control de horas por el ID específico
     *
     * @param id - El id del control de horas
     * @return - ControlHoras con sus datos respectivos y registros de
     * RegistroHora con las horas específicas
     */
    public ControlHoras getByPK(int id) {
        ControlHoras controlHoras = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        // Obtener el control de Horas
        controlHoras = (ControlHoras) session.createCriteria(ControlHoras.class).add(Restrictions.eq("idControlHoras", id)).setFetchMode("horas", FetchMode.JOIN).setFetchMode("estado", FetchMode.JOIN).uniqueResult();
        session.close();
        return controlHoras;
    }
}
