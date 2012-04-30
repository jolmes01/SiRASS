/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sirass.dao;

import com.sirass.model.CInstitucion;
import com.sirass.model.Plantel;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.logging.Logger;

/**
 *
 * @author gomezhyuuga
 */
public class TestCInstitucion {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        CInstitucionDAO dao = new CInstitucionDAO();
        CInstitucion inst = dao.getById(1);

        System.out.println("idCInstitucion: " + inst.getIdCInstitucion());
        System.out.println("nombre: " + inst.getNombre());

        Set<Plantel> p = inst.getPlanteles();
        Iterator it = p.iterator();
        while (it.hasNext()) {
            Plantel obj = (Plantel) it.next();
            System.out.println("idPlantel: " + obj.getIdPlantel());
            System.out.println("nombre: " + obj.getNombre());
        }
        
        List<CInstitucion> lista = dao.getAll();
        Iterator listaIt = lista.iterator();
        while(listaIt.hasNext()) {
            CInstitucion object =  (CInstitucion) listaIt.next();
            System.out.println("idCInstitucion: " + object.getIdCInstitucion());
            System.out.println("nombre: " + object.getNombre());
//            System.out.println("planteles: " + object.getPlanteles().size());
        }
    }
}
