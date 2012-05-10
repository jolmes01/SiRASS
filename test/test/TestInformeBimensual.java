/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import com.sirass.dao.InformeBimensualDAO;
import com.sirass.model.prestador.InformeBimensual;
import java.util.Iterator;
import java.util.List;

/**
 *
 * @author gomezhyuuga
 */
public class TestInformeBimensual {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        InformeBimensualDAO dao = new InformeBimensualDAO();
        List<InformeBimensual> lista = null;
        
        lista = dao.getByUsername("prestador1");
        
        System.out.println("-----------");
        System.out.println("-----------");
        Iterator<InformeBimensual> it = lista.iterator();
        while (it.hasNext()) {
            InformeBimensual obj = it.next();
            obj.printInfo();
        }
    }
}
