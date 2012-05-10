/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import com.sirass.dao.InscripcionDAO;
import com.sirass.dao.PrestadorDAO;
import com.sirass.dao.UsuarioDAO;
import com.sirass.model.CInstitucion;
import com.sirass.model.Plantel;
import com.sirass.model.prestador.EstadoInscripcion;
import com.sirass.model.prestador.Inscripcion;
import com.sirass.model.prestador.Prestador;
import com.sirass.model.prestador.TipoInscripcion;
import java.util.Date;

/**
 *
 * @author gomezhyuuga
 */
public class TestInscripcion {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Inscripcion inscripcion = null;
        InscripcionDAO dao = new InscripcionDAO();
        Date curDate = new Date(System.currentTimeMillis());
        String modificadoPor = "test";
        Prestador prestador = null;
        UsuarioDAO userDAO = new UsuarioDAO();
        prestador = userDAO.getByUsername("prestador1").getPrestador();
        
        inscripcion = new Inscripcion();
        inscripcion.setAnioIngreso(2009);
        inscripcion.setAvanceCursos(75.6);
        inscripcion.setCargoResponsable("Algun cargo");
        inscripcion.setCarrera("Técnico en Sistemas Digitales");
        inscripcion.setCreacion(curDate);
        inscripcion.setCreditos((short) 100);
        inscripcion.setCvePrograma("CVE-PROGRAMAX");
        inscripcion.setCveProgramaInst("02d44sd03");
        inscripcion.setDifundir(false);
        inscripcion.setEdad(18);
        inscripcion.setEmail("gomezhyuuga@me.com");
        inscripcion.setEstado(new EstadoInscripcion((short) 1));
        inscripcion.setFechaFin(curDate);
        inscripcion.setFechaInicio(curDate);
        inscripcion.setIdPrograma(1);
        inscripcion.setInstitucion(new CInstitucion(1));
        inscripcion.setMatricula("2010090251");
        inscripcion.setModificadoPor(modificadoPor);
        inscripcion.setPlantel(new Plantel(1, inscripcion.getInstitucion().getIdCInstitucion()));
        inscripcion.setPrestador(prestador);
        inscripcion.setPrograma("Algun programa");
        inscripcion.setPromedio(8.6);
        inscripcion.setObservaciones("Observación :O");
        inscripcion.setProgramaInst("El programa Inst");
        inscripcion.setResponsable("Algun responsable");
        inscripcion.setSemestre((short) 6);
        inscripcion.setSexo('M');
        inscripcion.setTelCasa("45667788");
        inscripcion.setTipo(new TipoInscripcion((short) 1));
        inscripcion.setUltimaModif(curDate);
        inscripcion.setnCursosBasicos((short) 34);
        inscripcion.setnCursosSuperior((short) 40);
        
        // INSERT
        dao.insert(inscripcion);
    }
}
