/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sirass.servlet;

import com.sirass.model.Test;
import com.sirass.service.ProcessRequest;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author gomezhyuuga
 */
public class FormCatcher extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        // Obtener los nombres de los parámetros
        Enumeration<String> e = request.getParameterNames();

        Map<String, String[]> map;

        String key = null;
        String values[] = null;

        ProcessRequest processRequest = new ProcessRequest();
        Test test = null;
        map = request.getParameterMap();

        // Obtener todos los elementos enviados
        while (e.hasMoreElements()) {
            key = e.nextElement();
            values = request.getParameterValues(key);
            // Para cada parametro establecer su valor
//            map.put(key, values);
//            System.out.println("key: " + key);
//            for (String s : values) {
//                System.out.println("value: " + s);
//            }
        }
        // Obtener objeto con sus valores establecidos
        test = (Test) processRequest.getObject(map);
        System.out.println("name=" + test.getName());
        System.out.println("edad=" + test.getEdad());
        String[] dias = test.getDias();
        System.out.print("dias: " + dias.length);
        System.out.println("");
        System.out.print("dias= ");
        for (String s : dias) {
            System.out.print(s + ", ");
        }
        PrintWriter out = response.getWriter();
        try {
            /*
             * TODO output your page here. You may use following sample code.
             */
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet FormCatcher</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet FormCatcher at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
