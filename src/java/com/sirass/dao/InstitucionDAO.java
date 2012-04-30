/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sirass.dao;

import com.sirass.model.Institucion;

/**
 *
 * @author gomezhyuuga
 */
public class InstitucionDAO extends DAO {

    public int insert(Institucion institucion) {
        int status = super.insert(institucion);
        if (status == 1) {
            // Registrar CInstitucion
            // Registrar plantel
            // Actualizar registro con ID de Institucion y Plantel
        }
        return status;
    }
}