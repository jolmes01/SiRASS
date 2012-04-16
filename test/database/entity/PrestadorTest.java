/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database.entity;

import usuario.Prestador;
import database.BaseDatos_0;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import static org.junit.Assert.assertEquals;
import org.junit.*;

/**
 *
 * @author gomezhyuuga
 */
public class PrestadorTest {
    
    private String usuario;
    private int idPrestador;
    private Prestador prestador = new Prestador();
    
    public PrestadorTest() {
        usuario = "jUnitUser";
        // Establecer valores
        prestador.setUsuario(usuario);
        prestador.setPassword("jUnitPass");
        String[] roles = {"prestador"};
        prestador.setRoles(roles);
        prestador.setNombre("Fernando");
        prestador.setaPaterno("Gómez");
        prestador.setaMaterno("Herrera");
        prestador.setEmail("gomezhyuuga@me.com");
        // Convertir a Date
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-DD");
        Date nacimiento = null;
        try {
            nacimiento = new Date(dateFormat.parse("1994-2-4").getTime());
        } catch (ParseException ex) {
            System.out.println("Nacimiento incorrecto!");
        }
        prestador.setNacimiento(nacimiento);
        prestador.setSexo('M');
        prestador.setdCalle("Victor Hernández Covarrubias");
        prestador.setdNumInt("A3-101");
        prestador.setdNumExt("S/N");
        prestador.setdCP("02430");
        prestador.setdDelegacion("Azcapotzalco");
        prestador.setdColonia("Presidente Madero");
        prestador.setTelCasa("46229731");
        prestador.setTelCel("5510697423");
        prestador.setDifundir(false);
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
     * Test of registro method, of class Prestador.
     */
    @Test
    public void testRegistroOK() {
        System.out.println("registroOK...");
        int expResult = 1;
        int result = prestador.registro();
        assertEquals(expResult, result);
        idPrestador = prestador.getId();
        prestador.baja();
    }
//    /**
//     * Test of baja method, of class Prestador.
//     */
//    @Test
//    public void testBaja() {
//        System.out.println("testBaja..." + prestador.getNombre());
//        prestador.registro();
//        int expResult = 1;
//        // Dar de baja
//        int result = prestador.baja();
//        assertEquals(expResult, result);
//    }
}
