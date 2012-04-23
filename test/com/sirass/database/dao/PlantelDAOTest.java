/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sirass.database.dao;

import com.sirass.database.model.CInstitucion;
import com.sirass.database.model.Plantel;
import java.util.Date;
import static org.junit.Assert.assertEquals;
import org.junit.*;

/**
 *
 * @author gomezhyuuga
 */
public class PlantelDAOTest {
    
    public PlantelDAOTest() {
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
     * Test of insert method, of class PlantelDAO.
     */
    @Test
    public void testInsertInstitucionExiste() {
        System.out.println("insertInstitucionExiste");
        Plantel plantel = null;
        PlantelDAO instance = new PlantelDAO();
        
        plantel = new Plantel();
        CInstitucion institucion = new CInstitucion();
        institucion.setId(1);
        institucion.setNombre("Existente no deberia modificarse nombre");
        institucion.setModificadoPor("system");
        institucion.setCreacion(new Date(System.currentTimeMillis()));
        institucion.setUltimaModif(new Date(System.currentTimeMillis()));
        
        plantel.setNombre("CECyT 2" + (int) (Math.random() * 1000));
        plantel.setModificadoPor("system");
        plantel.setCreacion(new Date(System.currentTimeMillis()));
        plantel.setUltimaModif(new Date(System.currentTimeMillis()));
        plantel.setInstitucion(institucion);

        int expResult = 1;
        // Insertar
        int result = instance.insert(plantel);
        assertEquals(expResult, result);
    }
    @Test
    public void testInsertInstitucionNoExiste() {
        System.out.println("insertInstitucionExiste");
        Plantel plantel = null;
        PlantelDAO instance = new PlantelDAO();
        
        plantel = new Plantel();
        CInstitucion institucion = new CInstitucion();
        institucion.setId((int) (Math.random() * 100));
        institucion.setNombre("No existente " + (int) (Math.random() * 100));
        institucion.setModificadoPor("system");
        institucion.setCreacion(new Date(System.currentTimeMillis()));
        institucion.setUltimaModif(new Date(System.currentTimeMillis()));
        
        plantel.setNombre("dsadsa 2" + (int) (Math.random() * 1000));
        plantel.setModificadoPor("system");
        plantel.setCreacion(new Date(System.currentTimeMillis()));
        plantel.setUltimaModif(new Date(System.currentTimeMillis()));
        plantel.setInstitucion(institucion);
        CInstitucionDAO cInstitucionDAO = new CInstitucionDAO();
        cInstitucionDAO.insert(institucion);

        int expResult = 1;
        // Insertar
        int result = instance.insert(plantel);
        assertEquals(expResult, result);
    }
}
