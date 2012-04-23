package com.sirass;

//import database.DBConnection;
import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

/**
 * Web application lifecycle listener.
 *
 * @author gomezhyuuga
 */
public class ContextListener implements ServletContextListener,
        ServletContextAttributeListener,
        HttpSessionAttributeListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("########");
        System.out.println("Iniciando SiRASS...");
        System.out.println("########");
//        // Crear un objeto de DBConnection para que se puedan obtener las conexiones
//        DBConnection db = new DBConnection();
//        // Establecer parámetros de configuración
//        db.setDriverClassName("com.mysql.jdbc.Driver");
//        db.setUrl("jdbc:mysql://localhost:3306/SiRASS");
//        db.setUsername("root");
//        db.setPassword("root");
//        // Inicializar el dataSource
//        db.inicializarDataSource();
//        // Ponerlo como atributo en el context
//        sce.getServletContext().setAttribute("baseDatos", db);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("######## Context destroyed ########");
        System.out.println("######## ######## ######## ######## #####\n");
//        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public void attributeAdded(ServletContextAttributeEvent event) {
        System.out.println("######## Context Attribute added ########");
        System.out.println("name: " + event.getName());
        System.out.println("######## ######## ######## ######## #####\n");
//        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public void attributeRemoved(ServletContextAttributeEvent event) {
        System.out.println("######## Context Attribute removed ########");
        System.out.println("name: " + event.getName());
        System.out.println("######## ######## ######## ######## #####\n");
//        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public void attributeReplaced(ServletContextAttributeEvent event) {
        System.out.println("######## Context Attribute replaced ########");
        System.out.println("name: " + event.getName());
        System.out.println("######## ######## ######## ######## #####\n");
//        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public void attributeAdded(HttpSessionBindingEvent event) {
        System.out.println("######## Session Attribute added ########");
        System.out.println("name: " + event.getName());
        System.out.println("######## ######## ######## ######## #####\n");
//        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent event) {
        System.out.println("######## Session Attribute removed ########");
        System.out.println("name: " + event.getName());
        System.out.println("######## ######## ######## ######## #######\n");
    }

    @Override
    public void attributeReplaced(HttpSessionBindingEvent event) {
        System.out.println("######## Session Attribute replaced ########");
        System.out.println("name: " + event.getName());
        System.out.println("######## ######## ######## ######## #####\n");
    }
}
