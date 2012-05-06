/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import com.sirass.dao.PrestadorDAO;

/**
 *
 * @author gomezhyuuga
 */
public class TestPrestador {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        PrestadorDAO dao = new PrestadorDAO();
        int idInscripcion = dao.getCurrentInscripcion("prestador1");
        System.out.println("idInscripcion: " + idInscripcion);
    }
}
