/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sirass.servlet;

import com.sirass.dao.InformeBimensualDAO;
import com.sirass.model.prestador.EstadoReporte;
import com.sirass.model.prestador.InformeBimensual;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author gomezhyuuga
 */
public class Update extends HttpServlet {

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
        response.setContentType("text/plain;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        int status = 0;
        if (request.getParameter("clase") != null
                && request.getParameter("clase").equals("com.sirass.model.prestador.InformeBimensual")) {
            System.out.println("ok!");
            InformeBimensualDAO dao = new InformeBimensualDAO();
            InformeBimensual informe = new InformeBimensual();
            informe.setIdInformeBimensual(Integer.parseInt(request.getParameter("idInforme")));
            informe.setActividades(request.getParameter("actividades"));
            informe.setHorasAcumuladas(Short.parseShort(request.getParameter("acumuladas")));
            informe.setHorasBimestre(Short.parseShort(request.getParameter("horasBimestre")));
            informe.setEstado(new EstadoReporte(Short.parseShort(request.getParameter("idEstado"))));
            informe.setModificadoPor(request.getUserPrincipal().getName());
            informe.setNumReporte(Short.parseShort(request.getParameter("numReporte")));
            SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
            try {
                Date d = dateFormat.parse(request.getParameter("inicioPeriodo"));
                informe.setInicioPeriodo(d);
                d = dateFormat.parse(request.getParameter("terminoPeriodo"));
                informe.setTerminoPeriodo(d);
            } catch (ParseException ex) {
                Logger.getLogger(Update.class.getName()).log(Level.SEVERE, null, ex);
            }
            status = dao.update(informe);
        }

        PrintWriter out = response.getWriter();
        try {
            out.print(status);
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
