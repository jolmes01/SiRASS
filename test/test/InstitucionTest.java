/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import com.sirass.dao.DAO;
import com.sirass.model.CInstitucion;
import com.sirass.model.Institucion;
import com.sirass.model.Plantel;
import com.sirass.model.Usuario;
import java.util.Date;

/**
 *
 * @author gomezhyuuga
 */
public class InstitucionTest {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Usuario usuario = new Usuario();
        Institucion institucion = new Institucion();
        CInstitucion cInstitucion = new CInstitucion();
        Plantel plantel = new Plantel();
        DAO dao = new DAO();
        int random = (int) (Math.random() * 1000);
        int instOpc = 0;    // La institucion existe
//        instOpc = 1;    // La institucion no existe
        int plantelOpc = 0;     // El plantel existe
        plantelOpc = 1;     // El plantel no existe
        int status = 0;
        String idCInstitucionStr = "1";
        String idPlantelStr = "1";
        String nombreInstitucion = "institucionPrueba" + random;
        String nombrePlantel = "plantelPrueba" + random;
        
        // Atributos generales
        String username = "user" + random;
//        username = "gomezhyuuga";
        String passwrod = "1234";
        String modificadoPor = "system";
        Date curDate = new Date(System.currentTimeMillis());
        
        // Atributos de la institucion
        String domicilio = "domicilioPrueba" + random;
        String area = "areaPrueba" + random;
        String responsable = "responsablePrueba" + random;
        String cargo = "cargoPrueba" + random;
        String tel = "telPrueba" + random;
        String telExt = "" + random;
        String email = "emailPrueba" + random;
        
        // 1) Asignar atributos a usuario
        usuario.setUsuario(username);
        usuario.setPassword(passwrod);
        usuario.setModificadoPor(modificadoPor);
        usuario.setUltimaModif(curDate);
        usuario.setCreacion(curDate);
        
        // 2) Asingar atributos de institucion
        institucion.setDomicilio(domicilio);
        institucion.setArea(area);
        institucion.setResponsable(responsable);
        institucion.setCargo(cargo);
        institucion.setTel(tel);
        institucion.setTelExt(telExt);
        institucion.setEmail(email);
        institucion.setModificadoPor(modificadoPor);
        institucion.setUltimaModif(curDate);
        institucion.setCreacion(curDate);
        
        // 3) Detectar CInstitucion y Plantel
        // Si se seleccionó una institución existene...
        if (idCInstitucionStr != null && instOpc == 0) {
            int idInstitucion = Integer.parseInt(idCInstitucionStr);
            // Establecer el ID
            institucion.setIdCInstitucion(idInstitucion);
        } else if (instOpc == 1) { // Si la institución no existe registrar nueva
            cInstitucion.setNombre(nombreInstitucion);
            cInstitucion.setModificadoPor("system");
            cInstitucion.setUltimaModif(curDate);
            cInstitucion.setCreacion(curDate);
            // Registrar
            status = dao.insert(cInstitucion);
            // Establecer el ID a la institucion
            System.out.println("idCInstitucion registrada: " + cInstitucion.getIdCInstitucion());
            institucion.setIdCInstitucion(cInstitucion.getIdCInstitucion());
        }
        // Si plantel está en la lista
        if (plantelOpc == 0 && idPlantelStr != null) {
            int idPlantel = Integer.parseInt(idPlantelStr);
            institucion.setIdPlantel(idPlantel);
        } // Si no está en la lista, registrar
        else if (plantelOpc == 1) {
            plantel.setIdCInstitucion(institucion.getIdCInstitucion());
            plantel.setNombre(nombrePlantel);
            plantel.setModificadoPor("system");
            plantel.setUltimaModif(curDate);
            plantel.setCreacion(curDate);
            // Registrar
            status = dao.insert(plantel);
            // Establecer ID del plantel a la institucion
            System.out.println("idPlantel registrado: " + plantel.getIdPlantel());
            institucion.setIdPlantel(plantel.getIdPlantel());
        }
        
        // 4) Establecer la institucion al usuario
        usuario.setInstitucion(institucion);

        // Imprimir info final
        institucion.getInfo();
        
        // 5) Registrar institucion
        status = dao.insert(usuario);
        System.out.println("status: " + status);
    }
}
