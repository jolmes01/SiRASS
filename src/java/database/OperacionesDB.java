/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import database.entity.CInstitucion;
import database.entity.Plantel;
import java.util.List;

/**
 *
 * @author gomezhyuuga
 */
public interface OperacionesDB {

    /*
     * Métodos para obtener información de la BD
     */
    /**
     * Obtener el catálogo de las instituciones. Conteniendo solo nombre y datos
     * del registro (creacion, ultimaModif, modificadoPor).
     *
     * @return List<CInstitucion> Lista de nombres de las instituciones
     * almacenadas en el sistema. Devuelve la lista vacía si no hay o null si
     * hubo un error.
     */
    public List<CInstitucion> getInstituciones();

    /**
     * * Obtener el catálogo de planteles asociados a una institución. plantel.
     *
     * @param idPlantel : int - El ID del plantel que se quiere obtener los
     * planteles.
     * @return List<Plantel> Lista con los nombres de los planteles asociados al
     */
    public List<Plantel> getPlantelesInstitucion(int idPlantel);
}
