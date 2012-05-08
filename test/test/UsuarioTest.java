/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import com.sirass.dao.UsuarioDAO;
import com.sirass.model.Usuario;

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
    }
}
