/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.Connection;
import org.junit.*;
import static org.junit.Assert.*;

/**
 *
 * @author gomezhyuuga
 */
public class BaseDatosTest {
    
    public BaseDatosTest() {
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
    // TODO add test methods here.
    // The methods must be annotated with annotation @Test. For example:
    //
    // @Test
    // public void hello() {}
    @Test
    public void testConnectOK() {
        System.out.print("Probando la conexión a la BD...");
        // Crear un objeto de tipo DBConnection
        BaseDatos connection = new BaseDatos();
        // Establecer parámetros
        connection.setDriverClassName("com.mysql.jdbc.Driver");
        connection.setUrl("jdbc:mysql://localhost:3306/SiRASS");
        connection.setUsername("root");
        connection.setPassword("root");
        // Inicializar DataSource
        connection.inicializarDataSource();
        // Obtener conexión
        Connection conexion = connection.realizaConexion();
        // La conexión no debería ser nula
        assertNotNull(conexion);
        connection.liberaConexion(conexion);
    }
    // Probar que la conexión no se establezca
    @Test
    public void testConnectBAD() {
        System.out.println("Probando conexión fallida a la BD...");
        // Crear un objeto de tipo DBConnection
        BaseDatos connection = new BaseDatos();
        // Establecer parámetros
        connection.setDriverClassName("com.mysql.jdbc.Driver");
        connection.setUrl("jdbc:mysql://localhost:3306");
        // Mal pass
        connection.setUsername("doku");
        connection.setPassword("doku");
        // Inicializar DataSource
        connection.inicializarDataSource();
        // Obtener conexión
        Connection conexion = connection.realizaConexion();
        // La conexión debería ser nula
        assertNull(conexion);
        connection.liberaConexion(conexion);
    }
}
