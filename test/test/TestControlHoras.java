/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import com.sirass.dao.ControlHorasDAO;
import com.sirass.model.prestador.ControlHoras;
import com.sirass.model.prestador.EstadoReporte;
import com.sirass.model.prestador.RegistroHora;
import java.sql.Time;
import java.util.*;
import sun.tools.tree.ThisExpression;

/**
 *
 * @author gomezhyuuga
 */
public class TestControlHoras {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
//        
        ControlHorasDAO dao = new ControlHorasDAO();
        ControlHoras control = new ControlHoras();
        
//        control = dao.getByPK(1);
//        control.printInfo();
//        control.printHoras();
        
//        System.out.println("id: " + control.getIdControlHoras());
//        System.out.println("supervisor: " + control.getSupervisor());
//        System.out.println("estado: " + control.getEstado().getIdEstado() + " - " + control.getEstado().getDescripcion());
//        System.out.println("horas: " + control.getHoras().size());
//        System.out.println("fechaInicio: " + control.getFechaInicio());
//        Iterator it = control.getHoras().iterator();
//        while (it.hasNext()) {
//            RegistroHora registro = (RegistroHora) it.next();
//            System.out.println("idControlHoras: " + registro.getControlHoras().getIdControlHoras());
//            System.out.println("fecha: " + registro.getFecha());
//            System.out.println("horaEntrada: " + registro.getHoraEntrada());
//            System.out.println("horaSalida: " + registro.getHoraSalida());
//            System.out.println("horas: " + registro.getHorasDia());
//        }
//        System.out.println("-----------------");
//        System.out.println("-----------------");
//        System.out.println("-----------------");
//        ControlHoras controlRegistro = new ControlHoras();
//        int random = (int) (Math.random() * 1000);
//        String modificadoPor = "system";
//        Date curDate = new Date(System.currentTimeMillis());
//        
//        controlRegistro.setCreacion(curDate);
//        controlRegistro.setUltimaModif(curDate);
//        controlRegistro.setModificadoPor(modificadoPor);
//        controlRegistro.setEstado(new EstadoReporte((short) 3));
//        controlRegistro.setFechaFin(curDate);
//        controlRegistro.setFechaInicio(curDate);
//        controlRegistro.setHorasAcumuladas(20);
//        controlRegistro.setHorasAnteriores(10);
//        controlRegistro.setHorasMes(100);
//        controlRegistro.setIdInscripcion(1);
//        controlRegistro.setnReporte((short) 2);
//        controlRegistro.setSupervisor("Martha Tera Ponce");
//        
//        RegistroHora hora = null;
//        Set<RegistroHora> horas = new HashSet<RegistroHora>();
//        for (int i = 0; i < 10; i++) {
//            hora = new RegistroHora();
//            Date h = new java.sql.Date(curDate.getTime() + (i * 1000));
//            hora.setFecha(h);
//            hora.setHoraEntrada(new Time(12, 22, 33));
//            hora.setHoraSalida(new Time(17, 10, 00));
//            hora.setHorasDia(5);
//            hora.setControlHoras(controlRegistro);
//            horas.add(hora);
//        }
//        controlRegistro.setHoras(horas);
//        
//        dao.insert(controlRegistro);
        System.out.println("-----------------");
        System.out.println("-----------------");
        System.out.println("-----------------");
        List<ControlHoras> lista = null;
        EstadoReporte estado = new EstadoReporte((short) 1);
//        lista = dao.getListByInscripcion(1);

        lista = dao.getListByUsername("prestador1");
        
        
//        lista = dao.getListByState(estado, "prestador1");
        
        Iterator<ControlHoras> it = lista.iterator();
        while (it.hasNext()) {
            ControlHoras object = it.next();
            object.printInfo();
            System.out.println("-----------------");
        }
        
    }
}
