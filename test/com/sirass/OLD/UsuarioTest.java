/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sirass.OLD;

import com.sirass.OLD.Usuario;
import com.sirass.OLD.BaseDatos_0;
import org.junit.*;
import static org.junit.Assert.*;

/**
 *
 * @author gomezhyuuga
 */
public class UsuarioTest {
    
    String usuario = "jUnitUser";
    
    public UsuarioTest() {
    }

    @BeforeClass
    public static void setUpClass() throws Exception {
    }

    @AfterClass
    public static void tearDownClass() throws Exception {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test para el registro de un Usuario cualquiera
     */
    @Test
    public void testRegistroOK() {
        System.out.println("registroOK...");
        Usuario instance = new Usuario();
        instance.setUsuario(usuario);
        instance.setPassword("passJUnit");
        int expResult = 1;
        int result = instance.registro();
        assertEquals(expResult, result);
    }
    /**
     * Test que comprueba que el registro no se pudo hacer debido a que
     * el usuario ya existe
     */
    @Test
    public void testRegistroUserExist() {
        System.out.println("registroUserExist...");
        Usuario instance = new Usuario();
        instance.setUsuario(usuario);
        instance.setPassword("root");
        int expResult = 1062;
        int result = instance.registro();
        System.out.println("result: " + result);
        assertEquals(expResult, result);
    }
    /**
     * Test que comprueba que el usuario sea borrado de la BD
     */
    @Test
    public void testBajaOK() {
        System.out.println("testBajaOK...");
        Usuario instance = new Usuario();
        instance.setUsuario(usuario);
        instance.setPassword("root");
        int expResult = 1;
        int result = instance.baja();
        System.out.println("result: " + result);
        assertEquals(expResult, result);
    }
    /**
     * Test que comprueba que el usuario sea borrado de la BD
     */
    @Test
    public void testBajaERR() {
        System.out.println("testBajaERR...");
        Usuario instance = new Usuario();
        instance.setUsuario(usuario);
        instance.setPassword("root");
        int expResult = 0;
        int result = instance.baja();
        System.out.println("result: " + result);
        assertEquals(expResult, result);
    }
}
