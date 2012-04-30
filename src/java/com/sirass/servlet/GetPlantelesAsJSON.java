/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sirass.servlet;

import com.google.gson.Gson;
import com.sirass.OLD.BaseDatos;
import com.sirass.OLD.OperacionesDB;
import com.sirass.OLD.Plantel;
import com.sirass.dao.CInstitucionDAO;
import com.sirass.model.CInstitucion;
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
public class GetPlantelesAsJSON extends HttpServlet {

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
//        response.setContentType("application/json;charset=UTF-8");
        response.setContentType("application/json");
        // 1) Identificar la institución sobre la cuál se desean obtener los planteles
        int idInstitucion = Integer.parseInt(request.getParameter("idInstitucion"));
        // 2) Obtener lista de planteles
        CInstitucionDAO dao = new CInstitucionDAO();
        CInstitucion cInstitucion = dao.getById(idInstitucion);
        
        // 3) Devolver planteles como JSON
        Gson gson = new Gson();
        String jsonOutString = gson.toJson(cInstitucion.getPlanteles());
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
