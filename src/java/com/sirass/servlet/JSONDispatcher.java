/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sirass.servlet;

import com.google.gson.Gson;
import com.sirass.dao.ResponsableProgramaDAO;
import com.sirass.model.programass.ResponsablePrograma;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author gomezhyuuga
 */
public class JSONDispatcher extends HttpServlet {

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
        response.setContentType("application/json");
        Gson gson = new Gson();
        String jsonOutString = "";
        List lista = null;
        if (request.getParameter("get").equals("responsablePrograma")) {
            int id = 0;
            id = Integer.parseInt(request.getParameter("idPrograma"));
            System.out.println(id);
            System.out.println("responsablePrograma requested...");
            ResponsableProgramaDAO dao = new ResponsableProgramaDAO();
            ResponsablePrograma responsable = new ResponsablePrograma();
            ResponsablePrograma r = dao.getFirstByPrograma(id);
            responsable.setCargo(r.getCargo());
            responsable.setResponsable(r.getResponsable());
            responsable.setIdResponsable(r.getIdResponsable());
            System.out.println(responsable.getResponsable());
            jsonOutString = gson.toJson(responsable);
        }
        
        // 3) Devolver planteles como JSON
        
//        String jsonOutString = gson.toJson(lista);
        System.out.println(jsonOutString);
        PrintWriter out = response.getWriter();
        try {
            out.println(jsonOutString);
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
