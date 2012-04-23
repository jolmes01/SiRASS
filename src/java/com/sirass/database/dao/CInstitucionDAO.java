package com.sirass.database.dao;

import com.sirass.database.model.CInstitucion;

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
}
