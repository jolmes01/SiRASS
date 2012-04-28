/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sirass.dao;

import com.sirass.model.Prestador;
import com.sirass.model.Rol;
import com.sirass.model.RolUsuario;
import com.sirass.model.Usuario;
import java.util.*;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.fail;
import org.junit.*;

/**
 *
 * @author gomezhyuuga
 */
public class UsuarioDAOTest {

    public UsuarioDAOTest() {
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
     * Test of insert method, of class UsuarioDAO.
     */
    @Test
    public void testInsert() {
        System.out.println("insert");
        UsuarioDAO instance = new UsuarioDAO();
        
        Prestador prestador = new Prestador();
        Usuario usuario = new Usuario();
        Set<Rol> roles = new HashSet<Rol>();
        roles.add(new Rol("prestador"));

        usuario.setUsuario("testhhh" + (int) (Math.random() * 1000));
//            usuario.setUsuario("gomezhyuuga");
        usuario.setPassword("okokok");
        
        prestador.setNombre("Fernando");
        prestador.setaPaterno("Gómez");
        prestador.setaMaterno("Herrera");
        prestador.setEmail("gomezhyuuga@me.com");
        prestador.setNacimiento(new Date(System.currentTimeMillis()));
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

        // Datos de registro
        Date curDate = new Date(System.currentTimeMillis());
        String creador = "system";
        
        usuario.setModificadoPor(creador);
        usuario.setUltimaModif(curDate);
        usuario.setCreacion(curDate);
        prestador.setModificadoPor(creador);
        prestador.setUltimaModif(curDate);
        prestador.setCreacion(curDate);
        
        usuario.setRoles(roles);
        usuario.setPrestador(prestador);
        
        int expResult = 1;
        int result = instance.insert(usuario);
        assertEquals(expResult, result);
    }
}
