package com.sirass.service;

import com.sirass.model.EstadoReporte;
import com.sirass.model.InformeBimensual;
import com.sirass.util.FormReflection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author gomezhyuuga
 */
public class ProcessRequest {

    public ProcessRequest() {
    }

    public Object getObject(Map<String, String[]> map) {
        if (map.get("clase")[0].equals("com.sirass.model.InformeBimensual")) {
            return this.generar(map);
        } else {
            System.out.println("NOT FOUND");
            return null;
        }
//        FormReflection myReflection = new FormReflection(map);
//        System.out.println("ok");
//        return myReflection.process();
//        return myReflection.process();
    }

    public InformeBimensual generar(Map<String, String[]> map) {
        Date curDate = new Date(System.currentTimeMillis());
        InformeBimensual informe = new InformeBimensual();
        informe.setActividades(map.get("actividades")[0]);
        informe.setEstado(new EstadoReporte((short) 1));
        short acumuladas = 0;
        acumuladas = Short.parseShort(map.get("acumuladas")[0]);
        informe.setHorasAcumuladas(acumuladas);
        short bimestre = 0;
        bimestre = Short.parseShort(map.get("horasBimestre")[0]);
        informe.setHorasBimestre(bimestre);
        int idInscripcion = Integer.parseInt(map.get("inscripcion")[0]);
        informe.setIdInscripcion(idInscripcion);
        Date de = new Date();
        Date al = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy");
        try {
//            simpleDateFormat.parse(null)
            de = simpleDateFormat.parse(map.get("inicioPeriodo")[0]);
            informe.setInicioPeriodo(de);
            al = simpleDateFormat.parse(map.get("terminoPeriodo")[0]);
            informe.setTerminoPeriodo(al);
        } catch (ParseException ex) {
            Logger.getLogger(ProcessRequest.class.getName()).log(Level.SEVERE, null, ex);
        }
        short numReporte = 0;
        numReporte = Short.parseShort(map.get("numReporte")[0]);
        informe.setNumReporte(numReporte);
        
        informe.setModificadoPor(map.get("username")[0]);
        informe.setCreacion(curDate);
        informe.setUltimaModif(curDate);
        return informe;
    }
}