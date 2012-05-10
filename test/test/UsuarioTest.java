/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import com.sirass.dao.UsuarioDAO;
import com.sirass.model.Usuario;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author gomezhyuuga
 */
public class UsuarioTest {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        UsuarioDAO dao = new UsuarioDAO();
        
//        System.out.println(dao.exists("gomezhyuuga"));
//        
        Usuario usuario = dao.getByUsername("gomezhyuuga1234");
        Usuario usuario2 = dao.getByUsername("institucion1");
        usuario2.getInfo();
//        usuario.getPrestador().getInfo();
//        System.out.println(dao.getIdPrestador("gomezhyuuga"));
        System.out.println("--------");
        String d = "04-05-2012";
        SimpleDateFormat dateFormat = new SimpleDateFormat();
        dateFormat.applyPattern("dd-MM-yyyy");

        Date f = null;
        try {
            f = dateFormat.parse(d);
            System.out.println(f.toLocaleString());
        } catch (ParseException ex) {
            Logger.getLogger(UsuarioTest.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
