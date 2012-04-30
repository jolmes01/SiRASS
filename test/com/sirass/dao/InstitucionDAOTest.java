/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sirass.dao;

import com.sirass.model.CInstitucion;
import com.sirass.model.Institucion;
import com.sirass.model.Plantel;
import java.util.Date;
import static org.junit.Assert.assertEquals;
import org.junit.*;

/**
 *
 * @author gomezhyuuga
 */
public class InstitucionDAOTest {

    public InstitucionDAOTest() {
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
     * Test of insert method, of class InstitucionDAO.
     */
    @Test
    public void testInsertExisteTodo() {
        System.out.println("insert");
        Institucion institucion = null;
        InstitucionDAO instance = new InstitucionDAO();
        institucion = new Institucion();
        CInstitucion cInstitucion = new CInstitucion();
        Plantel plantel = new Plantel();

        institucion.setDomicilio("Mar de Java, 444");
        institucion.setArea("Fisica");
        institucion.setResponsable("Francisco Ayala");
        institucion.setCargo("Kami");
        institucion.setTel("78015349");
        institucion.setEmail("chamuco@666.com");

        String creador = "jUnit";
        Date curDate = new Date(System.currentTimeMillis());
        institucion.setModificadoPor(creador);
        institucion.setUltimaModif(curDate);
        institucion.setCreacion(curDate);

        int expResult = 1;
        int result = instance.insert(institucion);
        assertEquals(expResult, result);
    }
}
