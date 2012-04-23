/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sirass.OLD;

import com.sirass.OLD.CInstitucion;
import com.sirass.OLD.Plantel;
import java.util.List;
import com.sirass.OLD.Institucion;
import com.sirass.OLD.Prestador;
import com.sirass.OLD.Usuario;

/**
 *
 * @author gomezhyuuga
 */
public interface OperacionesDB {

    /*
     * Métodos para insertar registros en la BD
     */
    /**
     * Registra un usuario en su respectiva tabla en la BD
     *
     * @param usuario : Usuario - El usuario con nombre y contraseña a agregar
     * @param creador : Usuario - El usuario que dio de alta al usuario
     * @return status : int - Devuelve 1 si se agregó, 1062 si el usuario ya
     * existe, 0 si hubo un error
     */
    public int insertUsuario(Usuario usuario);

    /**
     * Registra un prestador en su respectiva tabla en la BD
     *
     * @param prestador : Prestador - El prestador que desea registrarse
     * @param creador : String - El usuario que dio de alta al prestador
     * @return status : int - Devuelve 1 si se agregó, 0 si hubo un error
     */
    public int insertPrestador(Prestador prestador);

    /**
     * Registra a una institución en su tabla correspondiente
     *
     * @param institucion : Institucion - La institucion que desea registrarse
     * @param creador : String - El usuario que está haciendo el registor
     * @return status : int - Devuelve 1 si se agregó , 0 si hubo un error.
     */
    public int insertInstitucion(Institucion institucion);

    /**
     * Registra a un plantel en su tabla correspondiente
     *
     * @param plantel : Plantel - El plantel a registrar
     * @return status : int - Devuelve 1 si se agregó, 0 si hubo un error
     */
    public int insertPlantel(Plantel plantel);

    /**
     * Registra un rol asociado a un usuario en específico
     *
     * @param usuario : String - El nombre de usuario para asignar el rol
     * @param rol : String - El rol asignado al usuario
     * @param creador : String - El usuario que asignó el rol
     * @return status : int - Devuelve 1 si se asignó, 0 si hubo un error
     */
    public int insertRol(Usuario usuario, String rol);
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

    /*
     * Métodos para actualizar información de la BD
     */
    /**
     * Actualizar la información de un usuario
     *
     * @param usuario : Usuario - El usuario con los nuevos datos modificación
     * @return status : int - Devuelve 1 si se actualizó, 0 si hubo un error
     */
    public int updateUsuario(Usuario usuario);
}
