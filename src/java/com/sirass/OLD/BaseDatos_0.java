package com.sirass.OLD;

import com.sirass.OLD.Prestador;
import com.sirass.OLD.Usuario;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author gomezhyuuga
 */
public class BaseDatos_0 extends DBConnection {

    public BaseDatos_0() {
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
     *
     * @param prestador : Prestador. El prestador que desea insertarse. Una vez
     * insertado se le asigna su ID.
     * @return idPrestador : int. Devuelve el id del prestador si se insertó, 0
     * si hubo un error.
     */
    public int doInsertPrestador(Prestador prestador) {
        int id = 0;
        // Realizar conexion
        Connection conexion = realizaConexion();
        // Solo si la conexión es correcta realizar INSERT
        if (conexion != null) {
            try {
                // Establecer tabla y valores
                // Crear el statement
                PreparedStatement preparedStatement = conexion.prepareStatement(Querys.INSERT_PRESTADOR,
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
                int status = preparedStatement.executeUpdate();
                if (status > 0) {
                    // Si se realizó establecer el ID del Prestador
                    ResultSet rs = preparedStatement.getGeneratedKeys();
                    while (rs.next()) {
                        id = rs.getInt(1);
                    }
                }
            } catch (SQLException ex) {
                // Establecer el código de error de MySQL
                int status = ex.getErrorCode();
                System.out.println("Error al insertar prestador");
                Logger.getLogger(BaseDatos_0.class.getName()).log(Level.SEVERE, null, ex);
                return status;
            } finally {
                liberaConexion(conexion);
            }
        } else {    // No se pudo hacer la conexión
            int status = 0;
            return status;
        }
        return id;
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
                PreparedStatement preparedStatement = conexion.prepareStatement(Querys.INSERT_USUARIO);
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
                Logger.getLogger(BaseDatos_0.class.getName()).log(Level.SEVERE, null, ex);
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
                PreparedStatement ps = conexion.prepareStatement(Querys.DELETE_USUARIO);
                // Establecer valores
                ps.setString(1, usuario.getUsuario());
                // Realizar el query
                int ok = ps.executeUpdate();
                status = (ok > 0) ? 1 : 0;
            } catch (SQLException ex) {
                // Establecer el código de error de MySQL
                status = ex.getErrorCode();
                Logger.getLogger(BaseDatos_0.class.getName()).log(Level.SEVERE, null, ex);
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
                    query = Querys.DELETE_PRESTADOR;
                } else if (usuario.getTipo().compareTo("institucion") == 0) {
                    query = Querys.DELETE_INSTITUCION;
                } else if (usuario.getTipo().compareTo("admin") == 0) {
                    query = Querys.DELETE_ADMIN;
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
                Logger.getLogger(BaseDatos_0.class.getName()).log(Level.SEVERE, null, ex);
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
                Logger.getLogger(BaseDatos_0.class.getName()).log(Level.SEVERE, null, ex);
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
                Logger.getLogger(BaseDatos_0.class.getName()).log(Level.SEVERE, null, ex);
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
                Logger.getLogger(BaseDatos_0.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                liberaConexion(conexion);
            }
        } else {    // No se pudo hacer la conexión
            status = 0;
        }
        return status;
    }

    public int insertRolUsuario(String usuario, String rol, String creacion,
            String modificadoPor) {
        int status = 0;
        // Realizar conexion
        Connection conexion = realizaConexion();
        // Solo si la conexión es correcta realizar INSERT
        if (conexion != null) {
            try {
                // Crear el PreparedStatement
                PreparedStatement ps = conexion.prepareStatement(Querys.INSERT_ROL);
                // Establecer valores
                ps.setString(1, usuario);
                ps.setString(2, rol);
                ps.setString(3, creacion);
                ps.setString(4, modificadoPor);
                // Realizar el query
                int ok = ps.executeUpdate();
                status = (ok > 0) ? 1 : 0;
            } catch (SQLException ex) {
                // Establecer el código de error de MySQL
                status = ex.getErrorCode();
                Logger.getLogger(BaseDatos_0.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                liberaConexion(conexion);
            }
        } else {    // No se pudo hacer la conexión
            status = 0;
        }
        return status;
    }
}