/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import com.sirass.dao.UsuarioDAO;

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
        
        System.out.println(dao.exists("gomezhsyuuga"));
    }
}
