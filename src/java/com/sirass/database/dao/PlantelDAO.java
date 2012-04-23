package com.sirass.database.dao;

import com.sirass.database.model.Plantel;

/**
 *
 * @author gomezhyuuga
 */
public class PlantelDAO extends DAO {

    /**
     * Registra un plantel en la base de datos
     *
     * @param plantel - El plantel a registrar
     * @return - Devuelve 1 si se registró, 0 si hubo un error.
     */
    public int insert(Plantel plantel) {
        return super.insert(plantel);
    }
}
