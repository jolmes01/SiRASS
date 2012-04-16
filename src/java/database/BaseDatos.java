/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.PreparedStatement;
import database.entity.CInstitucion;
import database.entity.Plantel;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

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
                    plantel.setIdPlantel(rs.getInt("idCPlantel"));
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
}
