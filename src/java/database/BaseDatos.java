package database;

import database.entity.Prestador;
import database.entity.Usuario;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author gomezhyuuga
 */
public class BaseDatos extends DBConnection {

    private String queryInsertUsuario = "INSERT INTO `SiRASS`.`MUsuario` (`MUsuario`, "
            + "`password`, `idInstitucion`, `idAdministrador`, "
            + "`idPrestador`, `creacion`, `modificadoPor`, `ultimaModif`) "
            + "VALUES (?, ?, ?, ?, ?, NOW(), "
            + "DEFAULT, CURRENT_TIMESTAMP);";
    private String queryInsertPrestador = "INSERT INTO `SiRASS`.`MPrestador` "
            + "(`idPrestador`, `nControl`, `nombre`, `aPaterno`, `aMaterno`, "
            + "`email`, `nacimiento`, `sexo`, `dCalle`, `dNumInt`, `dNumExt`, "
            + "`dCP`, `dDelegacion`, `dColonia`, `telCasa`, `telCel`, `difundir`, "
            + "`creacion`, `modificadoPor`, `ultimaModif`) VALUES (NULL, NULL, "
            + "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NOW(), DEFAULT, "
            + "CURRENT_TIMESTAMP);";
    private String queryDeleteUsuario = "DELETE FROM `SiRASS`.`MUsuario` "
            + "WHERE `SiRASS`.`MUsuario` = ?";
    private String queryDeletePrestador = "DELETE `SiRASS`.`MUsuario`, "
            + "`SiRASS`.`MRolUsuario`, `SiRASS`.`MPrestador` FROM `SiRASS`.`MRolUsuario` "
            + "STRAIGHT_JOIN `SiRASS`.`MUsuario` STRAIGHT_JOIN `SiRASS`.`MPrestador` "
            + "ON `SiRASS`.`MPrestador`.`idPrestador` = `SiRASS`.`MUsuario`.`idPrestador` "
            + "AND `SiRASS`.`MRolUsuario`.`MUsuario` = `SiRASS`.`MUsuario`.`MUsuario` AND "
            + "`SiRASS`.`MPrestador`.`idPrestador` = ?";
    private String queryDeleteAdmin = "DELETE `SiRASS`.`MUsuario`, "
            + "`SiRASS`.`MRolUsuario`, `SiRASS`.`MAdministrador` FROM `SiRASS`.`MRolUsuario` "
            + "STRAIGHT_JOIN `SiRASS`.`MUsuario` STRAIGHT_JOIN `SiRASS`.`MAdministrador` "
            + "ON `SiRASS`.`MAdministrador`.`idAdministrador` = `SiRASS`.`MUsuario`.`idAdministrador` "
            + "AND `SiRASS`.`MRolUsuario`.`MUsuario` = `SiRASS`.`MUsuario`.`MUsuario` AND "
            + "`SiRASS`.`MAdministrador`.`idAdministrador` = ?";
    private String queryDeleteInstitucion = "DELETE `SiRASS`.`MUsuario`, "
            + "`SiRASS`.`MRolUsuario`, `SiRASS`.`MInstitucion` FROM `SiRASS`.`MRolUsuario` "
            + "STRAIGHT_JOIN `SiRASS`.`MUsuario` STRAIGHT_JOIN `SiRASS`.`MInstitucion` "
            + "ON `SiRASS`.`MInstitucion`.`idInstitucion` = `SiRASS`.`MUsuario`.`idInstitucion` "
            + "AND `SiRASS`.`MRolUsuario`.`MUsuario` = `SiRASS`.`MUsuario`.`MUsuario` AND "
            + "`SiRASS`.`MInstitucion`.`idInstitucion` = ?";

    public BaseDatos() {
        inicializarDataSource();
    }

    /**
     * Este metodo realiza el registro de un prestador en la BD
     *
     * @param prestador : Prestador - Los datos del prestador que desea
     * inscribirse
     * @return status - Devuelve 0 si no se pudo guardar, 1 si todo fue
     * correcto.
     */
    public int inscripcion(Prestador prestador) {
        int status = 0;
        return status;
    }
    /**
     * Método para insertar un prestador en su tabla de la BD.
     * @param prestador : Prestador. El prestador que desea insertarse. Una vez insertado
     * se le asigna su ID.
     * @return status : int. Devuelve 1 si se insertó, 0 si hubo un error.
     */
    public int doInsertPrestador(Prestador prestador) {
        int status = 0;
        // Realizar conexion
        Connection conexion = realizaConexion();
        // Solo si la conexión es correcta realizar INSERT
        if (conexion != null) {
            try {
                // Establecer tabla y valores
                // Crear el statement
                PreparedStatement preparedStatement = conexion.prepareStatement(queryInsertPrestador,
                        PreparedStatement.RETURN_GENERATED_KEYS);
                // Establecer valores
                preparedStatement.setString(1, prestador.getNombre());
                preparedStatement.setString(2, prestador.getaPaterno());
                preparedStatement.setString(3, prestador.getaMaterno());
                preparedStatement.setString(4, prestador.getEmail());
                preparedStatement.setDate(5, prestador.getNacimiento());
                preparedStatement.setString(6, Character.toString(prestador.getSexo()));
                preparedStatement.setString(7, prestador.getdCalle());
                preparedStatement.setString(8, prestador.getdNumInt());
                preparedStatement.setString(9, prestador.getdNumExt());
                preparedStatement.setString(10, prestador.getdCP());
                preparedStatement.setString(11, prestador.getdDelegacion());
                preparedStatement.setString(12, prestador.getdColonia());
                preparedStatement.setString(13, prestador.getTelCasa());
                preparedStatement.setString(14, prestador.getTelCel());
                preparedStatement.setBoolean(15, prestador.getDifundir());
                // Realizar el query
                status = preparedStatement.executeUpdate();
                if (status > 0) {
                    // Si se realizó establecer el ID del Prestador
                    ResultSet rs = preparedStatement.getGeneratedKeys();
                    while (rs.next()) {
                        prestador.setId(rs.getInt(1));
                    }
                }
            } catch (SQLException ex) {
                // Establecer el código de error de MySQL
                status = ex.getErrorCode();
                System.out.println("Error al insertar prestador");
                Logger.getLogger(BaseDatos.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                liberaConexion(conexion);
            }
        } else {    // No se pudo hacer la conexión
            status = 0;
        }
        return status;
    }

    /**
     * Registra un usuario en la tabla usuario
     *
     * @param usuario : Usuario - El usuario que desea registrarse
     * @return status : int - Devuelve 1 si se hizo el registro, 0 si hubo un
     * error
     */
    public int doInsertUsuario(Usuario usuario) {
        int status = 0;
        // Realizar conexion
        Connection conexion = realizaConexion();
        // Solo si la conexión es correcta realizar INSERT
        if (conexion != null) {
            try {
                // Establecer tabla y valores
                // Crear el statement
                PreparedStatement preparedStatement = conexion.prepareStatement(queryInsertUsuario);
                // Establecer valores
                preparedStatement.setString(1, usuario.getUsuario());
                preparedStatement.setString(2, usuario.getPassword());
                preparedStatement.setNull(3, Types.NULL);
                preparedStatement.setNull(4, Types.NULL);
                preparedStatement.setNull(5, Types.NULL);
                // Realizar el query
                int ok = preparedStatement.executeUpdate();
                status = (ok > 0) ? 1 : 0;
            } catch (SQLException ex) {
                // Establecer el código de error de MySQL
                status = ex.getErrorCode();
                System.out.println("Error al insertar usuario");
                Logger.getLogger(BaseDatos.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                liberaConexion(conexion);
            }
        } else {    // No se pudo hacer la conexión
            status = 0;
        }
        return status;
    }

    /**
     * Método para dar de baja a un usuario de la tabla usuario
     *
     * @param usuario : Usuario. El usuario que desea darse de baja
     * @return status : int. Devuelve 1 si se borró, 0 si hubo un error.
     */
    public int doDeleteUsuario(Usuario usuario) {
        int status = 0;
        // Realizar conexion
        Connection conexion = realizaConexion();
        // Solo si la conexión es correcta realizar INSERT
        if (conexion != null) {
            try {
                // Crear el statement
                PreparedStatement ps = conexion.prepareStatement(queryDeleteUsuario);
                // Establecer valores
                ps.setString(1, usuario.getUsuario());
                // Realizar el query
                int ok = ps.executeUpdate();
                status = (ok > 0) ? 1 : 0;
            } catch (SQLException ex) {
                // Establecer el código de error de MySQL
                status = ex.getErrorCode();
                Logger.getLogger(BaseDatos.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                liberaConexion(conexion);
            }
        } else {    // No se pudo hacer la conexión
            status = 0;
        }
        return status;
    }

    /**
     * Método para dar de baja a un prestador de la tabla usuario, prestador y
     * rolUsuario
     *
     * @param usuario : Usuario. El usuario que desea darse de baja
     * @return status : int. Devuelve 1 si se borró, 0 si hubo un error.
     */
    public int doDeleteUsuarioAll(Usuario usuario) {
        int status = 0;
        // Realizar conexion
        Connection conexion = realizaConexion();
        // Solo si la conexión es correcta realizar INSERT
        if (conexion != null) {
            try {
                // Crear el statement detectando el tipo de usuario
                String query = "";
                if (usuario.getTipo().compareTo("prestador") == 0) {
                    query = queryDeletePrestador;
                } else if (usuario.getTipo().compareTo("institucion") == 0) {
                    query = queryDeleteInstitucion;
                } else if (usuario.getTipo().compareTo("prestador") == 0) {
                    query = queryDeleteAdmin;
                }
                PreparedStatement ps = conexion.prepareStatement(query);
                // Establecer valores
                ps.setInt(1, usuario.getId());
                System.out.println("Dando de baja a usuario con ID: " + usuario.getId());
                System.out.println(ps.toString());
                // Realizar el query
                int ok = ps.executeUpdate();
                status = (ok > 0) ? 1 : 0;
            } catch (SQLException ex) {
                // Establecer el código de error de MySQL
                status = ex.getErrorCode();
                Logger.getLogger(BaseDatos.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                liberaConexion(conexion);
            }
        } else {    // No se pudo hacer la conexión
            status = 0;
        }
        return status;
    }

    /**
     * Método genérico para hacer un UPDATE en la BD
     *
     * @param table : String. Base de datos y nombe de la tabla.
     * @param condition : String. Condición para hacer el DELETE.
     * @param newValues : String. Las columnas a actualizar y su nuevo valor
     * @return status : int. Devuelve # > 0 si se hizó el delete con las filas
     * borradas , -1 si no se borró ninguna por la condición y 0 si hubo un
     * error.
     */
    public int doUpdate(String table, String newValues, String condition) {
        int status = 0;
        // Realizar conexion
        Connection conexion = realizaConexion();
        // Solo si la conexión es correcta realizar INSERT
        if (conexion != null) {
            try {
                // Crear el statement
                Statement statement = conexion.createStatement();
                // Establecer tabla y valores
                String query = "UPDATE " + table + " SET " + newValues + " WHERE " + condition + ";";
                // Realizar el query
                status = statement.executeUpdate(query);
//                status = (ok > 0) ? 1 : 0;
            } catch (SQLException ex) {
                // Establecer el código de error de MySQL
                status = ex.getErrorCode();
                Logger.getLogger(BaseDatos.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                liberaConexion(conexion);
            }
        } else {    // No se pudo hacer la conexión
            status = 0;
        }
        return status;
    }

    /**
     * Método genérico para hacer un DELETE en la BD
     *
     * @param table : String. Base de datos y nombe de la tabla.
     * @param condition : String. Condición para hacer el DELETE.
     * @return status : int. Devuelve # > 0 si se hizó el delete con las filas
     * borradas , -1 si no se borró ninguna por la condición y 0 si hubo un
     * error.
     */
    public int doDelete(String table, String condition) {
        int status = 0;
        // Realizar conexion
        Connection conexion = realizaConexion();
        // Solo si la conexión es correcta realizar INSERT
        if (conexion != null) {
            try {
                // Crear el statement
                Statement statement = conexion.createStatement();
                // Establecer tabla y valores
                String query = "DELETE FROM " + table + " WHERE " + condition + ";";
                // Realizar el query
                status = statement.executeUpdate(query);
//                status = (ok > 0) ? 1 : 0;
            } catch (SQLException ex) {
                // Establecer el código de error de MySQL
                status = ex.getErrorCode();
                Logger.getLogger(BaseDatos.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                liberaConexion(conexion);
            }
        } else {    // No se pudo hacer la conexión
            status = 0;
        }
        return status;
    }

    /**
     * Método genérico para hacer un INSERT a la BD
     *
     * @param statement.
     * @return
     */
    public int doInsert(String table, String values) {
        int status = 0;
        // Realizar conexion
        Connection conexion = realizaConexion();
        // Solo si la conexión es correcta realizar INSERT
        if (conexion != null) {
            try {
                // Crear el statement
                Statement statement = conexion.createStatement();
                // Establecer tabla y valores
                String query = "INSERT INTO " + table + " VALUES(" + values + ");";
                // Realizar el query
                int ok = statement.executeUpdate(query);
                status = (ok > 0) ? 1 : 0;
            } catch (SQLException ex) {
                // Establecer el código de error de MySQL
                status = ex.getErrorCode();
                Logger.getLogger(BaseDatos.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                liberaConexion(conexion);
            }
        } else {    // No se pudo hacer la conexión
            status = 0;
        }
        return status;
    }
}