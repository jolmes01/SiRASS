package com.sirass.dao;

import com.sirass.HibernateUtil;
import com.sirass.model.ControlHoras;
import com.sirass.model.EstadoReporte;
import com.sirass.model.Prestador;
import com.sirass.model.Usuario;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Order;
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
        controlHoras = (ControlHoras) session.createCriteria(ControlHoras.class)
                .add(Restrictions.eq("idControlHoras", id))
                .setFetchMode("horas", FetchMode.JOIN)
                .setFetchMode("estado", FetchMode.JOIN)
                .uniqueResult();
        session.close();
        return controlHoras;
    }

    /**
     * Devuelve todos los controles de horas de una inscripción. Solo contiene
     * los datos generales del reporte, no los registros de horas.
     *
     * @param idInscripcion - El id de la inscripcion sobre la cual obtener los
     * reportes
     * @return - Lista con los controles de horas pero sin registros de horas
     */
    public List<ControlHoras> getListByInscripcion(int idInscripcion) {
        List<ControlHoras> lista = null;
        Criterion crit[] = new Criterion[1];
        crit[0] = Restrictions.eq("idInscripcion", idInscripcion);
        lista = this.getListWithRestriction(crit, FetchMode.SELECT);
        return lista;
    }

    /**
     * Devuelve todos los controles de horas de una inscripción. Solo contiene
     * los datos generales del reporte, no los registros de horas.
     *
     * @param username - Nombre de un usuario inscrito a un programa de servicio
     * @return - Lista con los controles de horas
     */
    public List<ControlHoras> getListByUsername(String username) {
        List<ControlHoras> lista = null;
        int idInscripcion = 0;
        Session session = HibernateUtil.getSessionFactory().openSession();
        PrestadorDAO pdao = new PrestadorDAO();
        idInscripcion = pdao.getCurrentInscripcion(username);
        // Obtener el control de Horas
        Criterion crit[] = new Criterion[1];
        crit[0] = Restrictions.eq("idInscripcion", idInscripcion);
        lista = this.getListWithRestriction(crit, FetchMode.SELECT);
        session.close();
        return lista;
    }

    /**
     * Devuelve la lista de todos los informes en un estado en específico de un
     * usuario
     *
     * @param estado - Estado en el que se encuentra el reporte
     * @param username - Nombre de usuario que envío los reportes
     * @return
     */
    public List<ControlHoras> getListByState(EstadoReporte estado, String username) {
        List<ControlHoras> lista = null;
        Criterion crit[] = new Criterion[2];
        PrestadorDAO pdao = new PrestadorDAO();
        int idInscripcion = pdao.getCurrentInscripcion(username);
        crit[0] = Restrictions.eq("estado", estado);
        crit[1] = Restrictions.eq("idInscripcion", idInscripcion);
        lista = this.getListWithRestriction(crit, FetchMode.SELECT);
        return lista;
    }

    private List<ControlHoras> getListWithRestriction(Criterion res[], FetchMode mode) {
        List<ControlHoras> lista = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        // Obtener el control de Horas
        Criteria criteria = session.createCriteria(ControlHoras.class)
                .setFetchMode("horas", mode)
                .setFetchMode("estado", FetchMode.JOIN);
        for (Criterion crit : res) {
            criteria.add(crit);
        }
        lista = criteria.list();
        session.close();
        return lista;
    }
}
