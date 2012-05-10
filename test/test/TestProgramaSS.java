/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import com.sirass.dao.ProgramaSSDAO;
import com.sirass.dao.ResponsableProgramaDAO;
import com.sirass.model.programass.ProgramaSS;
import com.sirass.model.programass.ResponsablePrograma;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/**
 *
 * @author gomezhyuuga
 */
public class TestProgramaSS {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        ProgramaSSDAO dao = new ProgramaSSDAO();
        ProgramaSS programa = null;
        List<ProgramaSS> programas = null;
        Iterator it = null;
        Iterator it2 = null;
        List<ResponsablePrograma> responsables = null;
        
//        programa = dao.getByPK(2);
//        programa.printInfo();
        
//        programa = dao.getByCve("CVE-4444");
//        programa.printInfo();
        
//        programas = dao.getListFew();
//        it = programas.iterator();
//        while (it.hasNext()) {
//            ProgramaSS obj = (ProgramaSS) it.next();
//            System.out.println(obj.getIdPrograma());
//            System.out.println(obj.getCvePrograma());
//            System.out.println(obj.getNombre());
//        }
        
//        ResponsableProgramaDAO d = new ResponsableProgramaDAO();
//        List<ResponsablePrograma> lista = d.getByPrograma(1);
//        it2 = lista.iterator();
//        while (it2.hasNext()) {
//            ResponsablePrograma object = (ResponsablePrograma) it2.next();
//            System.out.println(object.getResponsable());
//            System.out.println(object.getCargo());
//        }
//        ResponsablePrograma res = (ResponsablePrograma) d.getFirstByPrograma(1);
//        System.out.println(res.getResponsable());
        Date curDate = new Date(System.currentTimeMillis());
        
        ProgramaSS prog = new ProgramaSS();
        prog.setIdInstitucion(1);
        prog.setCvePrograma("CVE-5555");
//        prog.setCategoria(new Categori);
//        prog.setCategoria(cp);
//        prog.setInstitucion(cins.getById(1).getNombre());
        prog.setArea("Programacion");
        prog.setDomicilio("jkhkjhgkjhg");
        prog.setTel("43215678");
        prog.setTelExt("1234");
        prog.setEmail("fgsd@gmail.com");
        prog.setNombre("fgsdfgfg");
        prog.setObjGeneral("fgsdfgfg");
        prog.setJustificacion("fgsdfgfg");
        prog.setDesarrollo("fgsdfgfg");
        prog.setRecursos("fgsdfgfg");
        prog.setEvaluacion("fgsdfgfg");
        prog.setResultados("fgsdfgfg");
        prog.setLugar("fgsdfgfg");
//        prog.setHorario(hp);
        prog.setPlazas(50);
        prog.setVacantes(40);
        prog.setObservaciones("fgdfhgdfhdfg");
//        prog.setTiempo(ctt);
//        prog.setFechaTiempo(fechadate);
        prog.setCreacion(curDate);
        prog.setModificadoPor("System");
        prog.setUltimaModif(curDate);
    }
}
