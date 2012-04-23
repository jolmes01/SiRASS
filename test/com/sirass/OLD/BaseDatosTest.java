/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sirass.OLD;

import com.sirass.OLD.BaseDatos;
import com.sirass.OLD.CInstitucion;
import com.sirass.OLD.Plantel;
import java.util.Iterator;
import java.util.List;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNotSame;
import org.junit.*;

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
        System.out.println("#####\t\t\t#####");
        System.out.println("#####\tTesting...\t#####");
        System.out.println("#####\t\t\t#####");
        System.out.println("");
    }

    @After
    public void tearDown() {
    }

    /**
     * Prueba para la obtención del catálogo de instituciones cuando hay al
     * menos una institución almacenada en la BD.
     */
    @Test
    public void testGetInstitucionesLleno() {
        System.out.println("testGetInstitucionesLleno..");
        BaseDatos instance = new BaseDatos();
        List<CInstitucion> instituciones = instance.getInstituciones();
        // Esperar que el tamaño sea al menos de 1 o más
        int expResult = 1;
        List result = instituciones;
        // Comprobar que no sea nulo
        assertNotNull(result);
        // Y que el tamaño no sea cero
        assertNotSame(0, result.size());
        // Imprimir los datos
        Iterator<CInstitucion> it = instituciones.iterator();
        while (it.hasNext()) {
            CInstitucion el = it.next();
            System.out.println("Nombre: " + el.getNombre());
            System.out.println("id: " + el.getId());
            System.out.println("Creación: " + el.getCreacion());
            System.out.println("UltimaModif: " + el.getUltimaModif());
            System.out.println("ModificadoPor: " + el.getModificadoPor());
            System.out.println("");
        }
    }
    /**
     * Prueba para la obtención del catálogo de instituciones cuando hay al
     * menos una institución almacenada en la BD.
     */
    @Test
    public void testGetPlantelesInstitucionLleno() {
        System.out.println("testGetPlantelesInstitucionLleno..");
        int idPlantel = 1;
        BaseDatos instance = new BaseDatos();
        List<Plantel> planteles = instance.getPlantelesInstitucion(idPlantel);
        // Esperar que el tamaño sea al menos de 1 o más
        int expResult = 1;
        List result = planteles;
        // Comprobar que no sea nulo
        assertNotNull(result);
        // Y que el tamaño no sea cero
        assertNotSame(0, result.size());
        // Imprimir los datos
        Iterator<Plantel> it = planteles.iterator();
        while (it.hasNext()) {
            Plantel el = it.next();
            System.out.println("Nombre: " + el.getNombre());
            System.out.println("id: " + el.getId());
            System.out.println("idInstitucion: " + el.getIdInstitucion());
            System.out.println("Creación: " + el.getCreacion());
            System.out.println("UltimaModif: " + el.getUltimaModif());
            System.out.println("ModificadoPor: " + el.getModificadoPor());
        }
    }
}
