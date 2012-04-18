/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import database.entity.CInstitucion;
import database.entity.Plantel;
import database.entity.Usuario;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import usuario.Institucion;
import usuario.Prestador;

/**
 *
 * @author gomezhyuuga
 */
public class BaseDatos extends DBConnection implements OperacionesDB {

    public BaseDatos() {
        inicializarDataSource();
    }
    /*
     * Métodos para obtener información de la BD
     */

    @Override
    public List<CInstitucion> getInstituciones() {
        List<CInstitucion> instituciones = new ArrayList<CInstitucion>();
        // 1) Hacer conexión
        Connection conexion = realizaConexion();
        if (conexion != null) {
            // Solo si se hizo la conexión continuar
            try {
                // Crear Statement
                Statement st = conexion.createStatement();
                // 2) Hacer consulta
                ResultSet rs = st.executeQuery(Querys.SELECT_CInsitucion);
                // 3) Obtener todos los resultados
                while (rs.next()) {
                    CInstitucion institucion = new CInstitucion();
                    institucion.setNombre(rs.getString("nombre"));
                    institucion.setId(rs.getInt("idCInstitucion"));
                    institucion.setCreacion(rs.getDate("creacion"));
                    institucion.setModificadoPor(rs.getString("modificadoPor"));
                    institucion.setUltimaModif(rs.getTimestamp("ultimaModif"));
                    instituciones.add(institucion);
                }
            } catch (SQLException ex) {
                Logger.getLogger(BaseDatos.class.getName()).log(Level.SEVERE, null, ex);
                instituciones = null;
            } finally {
                liberaConexion(conexion);
            }
        }
        // Devolver lista
        return instituciones;
    }

    @Override
    public List<Plantel> getPlantelesInstitucion(int idPlantel) {
        List<Plantel> planteles = new ArrayList<Plantel>();
        // 1) Hacer conexión
        Connection conexion = realizaConexion();
        if (conexion != null) {
            // Solo si se hizo la conexión continuar
            try {
                // Crear PreparedStatement
                PreparedStatement ps = conexion.prepareStatement(Querys.SELECT_PlantelByInstitucion);
                // 2) Establecer condición de idPlantel
                ps.setInt(1, idPlantel);
                // 3) Hacer consulta
                ResultSet rs = ps.executeQuery();
                // 4) Obtener todos los resultados
                while (rs.next()) {
                    Plantel plantel = new Plantel();
                    plantel.setId(rs.getInt("idCPlantel"));
                    plantel.setIdInstitucion(rs.getInt("idInstitucion"));
                    plantel.setNombre(rs.getString("nombre"));
                    plantel.setCreacion(rs.getDate("creacion"));
                    plantel.setModificadoPor(rs.getString("modificadoPor"));
                    plantel.setUltimaModif(rs.getTimestamp("ultimaModif"));
                    planteles.add(plantel);
                }
            } catch (SQLException ex) {
                Logger.getLogger(BaseDatos.class.getName()).log(Level.SEVERE, null, ex);
                planteles = null;
            } finally {
                liberaConexion(conexion);
            }
        }
        // Devolver lista
        return planteles;
    }

    /*
     * Métodos para insertar registros en la BD
     */
    @Override
    public int insertUsuario(Usuario usuario) {
        // 1) Realizar conexión
        Connection conexion = realizaConexion();
        if (conexion != null) {
            // Solo si se realizó continuar
            try {
                PreparedStatement ps = conexion.prepareStatement(Querys.INSERT_USUARIO);
                // 2) Establecer valores a insertar
                ps.setString(1, usuario.getUsuario());
                ps.setString(2, usuario.getPassword());
                ps.setNull(3, Types.NULL);
                ps.setNull(4, Types.NULL);
                ps.setNull(5, Types.NULL);
                ps.setString(6, usuario.getModificadoPor());
                // 3) Realizar query
                int status = ps.executeUpdate();
                status = (status > 0) ? 1 : 0;
                return status;
            } catch (SQLException ex) {
                Logger.getLogger(BaseDatos.class.getName()).log(Level.SEVERE, null, ex);
                return ex.getErrorCode();
            }
        } else {
            return 0;
        }
    }

    @Override
    public int insertPrestador(Prestador prestador) {
        // 1) Realizar conexión
        int status = 0;
        Connection conexion = realizaConexion();
        if (conexion != null) {
            // Solo si se realizó continuar
            try {
                // Crear stamente que devuelva el ID del prestador
                PreparedStatement ps = conexion.prepareStatement(Querys.INSERT_PRESTADOR,
                        PreparedStatement.RETURN_GENERATED_KEYS);
                // 2) Establecer valores a insertar
                ps.setString(1, prestador.getnControl());
                ps.setString(2, prestador.getNombre());
                ps.setString(3, prestador.getaPaterno());
                ps.setString(4, prestador.getaMaterno());
                ps.setString(5, prestador.getEmail());
                ps.setDate(6, prestador.getNacimiento());
                ps.setString(7, String.valueOf(prestador.getSexo()));
                ps.setString(8, prestador.getdCalle());
                ps.setString(9, prestador.getdNumInt());
                ps.setString(10, prestador.getdNumExt());
                ps.setString(11, prestador.getdCP());
                ps.setString(12, prestador.getdDelegacion());
                ps.setString(13, prestador.getdColonia());
                ps.setString(14, prestador.getTelCasa());
                ps.setString(15, prestador.getTelCel());
                ps.setBoolean(16, prestador.getDifundir());
                ps.setString(17, prestador.getModificadoPor());
                // 3) Realizar query
                status = ps.executeUpdate();
                if (status > 0) {
                    // Si se realizó establecer el ID del Prestador
                    ResultSet rs = ps.getGeneratedKeys();
                    while (rs.next()) {
                        status = rs.getInt(1);
                    }
                    prestador.setId(status);
                    // Devolver el ID
                    System.out.println("ID PRESTADOR: " + status);
                    return status;
                }
            } catch (SQLException ex) {
                Logger.getLogger(BaseDatos.class.getName()).log(Level.SEVERE, null, ex);
                return 0;
            }
        }
        return status;
    }

    @Override
    public int insertInstitucion(Institucion institucion) {
        // 1) Realizar conexión
        int status = 0;
        Connection conexion = realizaConexion();
        if (conexion != null) {
            // Solo si se realizó continuar
            try {
                // Crear stamente que devuelva el ID del prestador
                PreparedStatement ps = conexion.prepareStatement(Querys.INSERT_INSTITUCION,
                        PreparedStatement.RETURN_GENERATED_KEYS);
                // 2) Establecer valores a insertar
                if (institucion.getIdPlantel() == 0) {
                    ps.setNull(1, Types.NULL);
                } else {
                    ps.setInt(1, institucion.getIdPlantel());
                }
                ps.setString(2, institucion.getDomicilio());
                ps.setString(3, institucion.getArea());
                ps.setString(4, institucion.getResponsable());
                ps.setString(5, institucion.getCargo());
                ps.setString(6, institucion.getTel());
                ps.setString(7, institucion.getTelExt());
                ps.setString(8, institucion.getEmail());
                ps.setString(9, institucion.getModificadoPor());
                // 3) Realizar query
                status = ps.executeUpdate();
                if (status > 0) {
                    // Si se realizó establecer el ID del Prestador
                    ResultSet rs = ps.getGeneratedKeys();
                    while (rs.next()) {
                        status = rs.getInt(1);
                    }
                    institucion.setId(status);
                    // Devolver el ID
                    System.out.println("ID INSTITUCIÓN: " + status);
                    return status;
                }
            } catch (SQLException ex) {
                Logger.getLogger(BaseDatos.class.getName()).log(Level.SEVERE, null, ex);
                return 0;
            }
        }
        return status;
    }
    
    @Override
    public int insertPlantel(Plantel plantel) {
        // 1) Realizar conexión
        Connection conexion = realizaConexion();
        if (conexion != null) {
            // Solo si se realizó continuar
            try {
                PreparedStatement ps = conexion.prepareStatement(Querys.INSERT_PLANTEL);
                // 2) Establecer valores a insertar
                ps.setInt(1, plantel.getIdInstitucion());
                ps.setString(2, plantel.getNombre());
                ps.setString(3, plantel.getModificadoPor());
                // 3) Realizar query
                int status = ps.executeUpdate();
                status = (status > 0) ? 1 : 0;
                return status;
            } catch (SQLException ex) {
                Logger.getLogger(BaseDatos.class.getName()).log(Level.SEVERE, null, ex);
                return 0;
            }
        } else {
            return 0;
        }
    }

    @Override
    public int insertRol(Usuario usuario, String rol) {
        // 1) Realizar conexión
        Connection conexion = realizaConexion();
        if (conexion != null) {
            // Solo si se realizó continuar
            try {
                PreparedStatement ps = conexion.prepareStatement(Querys.INSERT_ROL);
                // 2) Establecer valores a insertar
                ps.setString(1, usuario.getUsuario());
                ps.setString(2, rol);
                ps.setString(3, usuario.getModificadoPor());
                // 3) Realizar query
                int status = ps.executeUpdate();
                status = (status > 0) ? 1 : 0;
                return status;
            } catch (SQLException ex) {
                Logger.getLogger(BaseDatos.class.getName()).log(Level.SEVERE, null, ex);
                return 0;
            }
        } else {
            return 0;
        }
    }

    public int template() {
        // 1) Realizar conexión
        Connection conexion = realizaConexion();
        if (conexion != null) {
            // Solo si se realizó continuar
            try {
                PreparedStatement ps = conexion.prepareStatement(Querys.INSERT_USUARIO);
                // 2) Establecer valores a insertar

                // 3) Realizar query
                int status = ps.executeUpdate();
                status = (status > 0) ? 1 : 0;
                return status;
            } catch (SQLException ex) {
                Logger.getLogger(BaseDatos.class.getName()).log(Level.SEVERE, null, ex);
                return 0;
            }
        } else {
            return 0;
        }
    }

    /*
     * Métodos para actualizar información
     */
    @Override
    public int updateUsuario(Usuario usuario) {
        // 1) Crear conexión
        Connection conexion = realizaConexion();
        if (conexion != null) {
            int status = 0;
            try {
                PreparedStatement ps = conexion.prepareStatement(Querys.UPDATE_USUARIO);
                // Establecer valores de usuario
                ps.setString(1, usuario.getUsuario());
                ps.setString(2, usuario.getPassword());
                // Identificar el ID y asignarlo
                if (usuario.getTipo().compareTo("prestador") == 0) {
                    ps.setNull(3, Types.NULL);
                    ps.setNull(4, Types.NULL);
                    ps.setInt(5, usuario.getId());
                } else if (usuario.getTipo().compareTo("institucion") == 0) {
                    ps.setInt(3, usuario.getId());
                    ps.setNull(4, Types.NULL);
                    ps.setNull(5, Types.NULL);
                } else if (usuario.getTipo().compareTo("admin") == 0) {
                    ps.setNull(3, Types.NULL);
                    ps.setInt(4, usuario.getId());
                    ps.setNull(5, Types.NULL);
                }
                ps.setString(6, usuario.getModificadoPor());
                ps.setString(7, usuario.getUsuario());
                // Hacer update
                System.out.println("QUERY: " + ps.toString());
                int rs = ps.executeUpdate();
                status = (rs > 0) ? 1 : 0;
                return status;
            } catch (SQLException ex) {
                Logger.getLogger(BaseDatos.class.getName()).log(Level.SEVERE, null, ex);
                return 0;
            }
        } else {
            return 0;
        }
    }
}
