/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

/**
 *
 * @author gomezhyuuga
 */
public class Querys {

    /*
     * INSERTS
     */
    public final static String INSERT_USUARIO = "INSERT INTO `SiRASS`.`MUsuario` (`MUsuario`, "
            + "`password`, `idInstitucion`, `idAdministrador`, "
            + "`idPrestador`, `creacion`, `modificadoPor`, `ultimaModif`) "
            + "VALUES (?, ?, ?, ?, ?, NOW(), "
            + "DEFAULT, CURRENT_TIMESTAMP);";
    public final static String INSERT_PRESTADOR = "INSERT INTO `SiRASS`.`MPrestador` "
            + "(`idPrestador`, `nControl`, `nombre`, `aPaterno`, `aMaterno`, "
            + "`email`, `nacimiento`, `sexo`, `dCalle`, `dNumInt`, `dNumExt`, "
            + "`dCP`, `dDelegacion`, `dColonia`, `telCasa`, `telCel`, `difundir`, "
            + "`creacion`, `modificadoPor`, `ultimaModif`) VALUES (NULL, NULL, "
            + "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NOW(), DEFAULT, "
            + "CURRENT_TIMESTAMP);";
    public final static String INSERT_ROL = "INSERT INTO `SiRASS`.`MRolUsuario` "
            + "(`usuario`, `rol`, `creacion`, `modificadoPor`, `ultimaModif`) "
            + "VALUES (?, ?, ?, ?, CURRENT_TIMESTAMP);";
    /*
     * DELETES
     */
    public final static String DELETE_USUARIO = "DELETE FROM `SiRASS`.`MUsuario` "
            + "WHERE `SiRASS`.`MUsuario` = ?";
    public final static String DELETE_PRESTADOR = "DELETE `SiRASS`.`MUsuario`, "
            + "`SiRASS`.`MRolUsuario`, `SiRASS`.`MPrestador` FROM `SiRASS`.`MRolUsuario` "
            + "STRAIGHT_JOIN `SiRASS`.`MUsuario` STRAIGHT_JOIN `SiRASS`.`MPrestador` "
            + "ON `SiRASS`.`MPrestador`.`idPrestador` = `SiRASS`.`MUsuario`.`idPrestador` "
            + "AND `SiRASS`.`MRolUsuario`.`MUsuario` = `SiRASS`.`MUsuario`.`MUsuario` AND "
            + "`SiRASS`.`MPrestador`.`idPrestador` = ?";
    public final static String DELETE_ADMIN = "DELETE `SiRASS`.`MUsuario`, "
            + "`SiRASS`.`MRolUsuario`, `SiRASS`.`MAdministrador` FROM `SiRASS`.`MRolUsuario` "
            + "STRAIGHT_JOIN `SiRASS`.`MUsuario` STRAIGHT_JOIN `SiRASS`.`MAdministrador` "
            + "ON `SiRASS`.`MAdministrador`.`idAdministrador` = `SiRASS`.`MUsuario`.`idAdministrador` "
            + "AND `SiRASS`.`MRolUsuario`.`MUsuario` = `SiRASS`.`MUsuario`.`MUsuario` AND "
            + "`SiRASS`.`MAdministrador`.`idAdministrador` = ?";
    public final static String DELETE_INSTITUCION = "DELETE `SiRASS`.`MUsuario`, "
            + "`SiRASS`.`MRolUsuario`, `SiRASS`.`MInstitucion` FROM `SiRASS`.`MRolUsuario` "
            + "STRAIGHT_JOIN `SiRASS`.`MUsuario` STRAIGHT_JOIN `SiRASS`.`MInstitucion` "
            + "ON `SiRASS`.`MInstitucion`.`idInstitucion` = `SiRASS`.`MUsuario`.`idInstitucion` "
            + "AND `SiRASS`.`MRolUsuario`.`MUsuario` = `SiRASS`.`MUsuario`.`MUsuario` AND "
            + "`SiRASS`.`MInstitucion`.`idInstitucion` = ?";
    /*
     * UPDATES
     */
    /*
     * SELECTS
     */
    public final static String SELECT_CInsitucion = "SELECT * FROM `SiRASS`.`CInstitucion`";
    public final static String SELECT_PlantelByInstitucion = "SELECT * FROM `SiRASS`.`CPlantel` "
            + "WHERE `SiRASS`.`CPlantel`.`idInstitucion` = ?";
}
