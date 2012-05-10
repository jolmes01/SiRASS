/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sirass.servlet;

import com.sirass.dao.AdministradorDAO;
import com.sirass.dao.InstitucionDAO;
import com.sirass.dao.PrestadorDAO;
import com.sirass.dao.UsuarioDAO;
import com.sirass.model.Administrador;
import com.sirass.model.prestador.Prestador;
import com.sirass.model.Usuario;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author gomezhyuuga
 */
public class actualDate extends HttpServlet {

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
    java.util.Date utilDate = new java.util.Date();
    java.sql.Timestamp sqlTimestamp = new java.sql.Timestamp(utilDate.getTime());

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/plain;charset=utf-8");

        String process = request.getParameter("processProfile");
        PrestadorDAO pdao = new PrestadorDAO();
        InstitucionDAO idao = new InstitucionDAO();
        AdministradorDAO adao = new AdministradorDAO();
        UsuarioDAO udao = new UsuarioDAO();
        Usuario user = new Usuario();
        String presta = "Prestador";
        String admin = "Administrador";
        String institu = "Institucion";
        int stat = 0;


        if (process.equals(presta)) {

            Prestador prestador = updPrestador(request);
            prestador.setModificadoPor(request.getParameter("usuario"));
            prestador.setUltimaModif(sqlTimestamp);
            prestador.setIdPrestador(Integer.parseInt(request.getParameter("idPrestador")));

            String comand = "UPDATE Prestador SET email = :mail, dCalle = :calle, dNumInt = :numInt,"
                    + "dNumExt = :numExt, dCP = :cp, dDelegacion = :del, dColonia = :col, telCasa = :telcas,"
                    + "telCel = :tecel, modificadoPor = :modifBy, ultimaModif = :ultimod "
                    + "WHERE idPrestador = :idPresta";
            if (prestador != null) {
                stat = pdao.upPrestador(prestador, comand);
            } else {
                response.sendRedirect("/SiRASS/jspf/Forms/dataForm.jsp");
            }

            String pass = request.getParameter("password");
            if (pass != "") {
                String npass = request.getParameter("passwordVeif");
                user.setPassword(npass);
                user.setUsuario(request.getParameter("usuario"));
                user.setModificadoPor(request.getParameter("usuario"));
                user.setUltimaModif(sqlTimestamp);

                String command = "UPDATE Usuario SET password = :npass, modificadoPor = :modifyBy, ultimaModif = :ultimod "
                        + "WHERE usuario = :usuario";
                udao.upPass(user, command);
            }
            if (stat == 1) {
                response.sendRedirect("/SiRASS/prestador/perfil.jsp");
            }
            if (stat != 1) {
                response.sendRedirect("/SiRASS/jspf/forms/dataForm.jsp");
            }

        }
        if (process.equals(admin)) {
            Administrador administrador = upAdmin(request);
            administrador.setModificadoPor(request.getParameter("usuario"));
            administrador.setUltimaModif(sqlTimestamp);

            String comand = "UPDATE Administrador SET email = :mail, "
                    + "modificadoPor = :modifBy, ultimaModif = :ultimod "
                    + "WHERE idAdmin = :idAdmin";
            stat = adao.upAdminDat(administrador, comand);
            String pass = request.getParameter("password");
            if (!"".equals(pass)) {
                String npass = request.getParameter("passwordVeif");
                user.setPassword(npass);
                user.setUsuario(request.getParameter("usuario"));
                user.setModificadoPor(request.getParameter("usuario"));
                user.setUltimaModif(sqlTimestamp);

                String command = "UPDATE Usuario SET password = :npass, modificadoPor = :modifyBy, ultimaModif = :ultimod "
                        + "WHERE usuario = :usuario";
                udao.upPass(user, command);
            }
            if (stat == 1) {
                response.sendRedirect("/SiRASS/admin/perfilAdmin.jsp");
            }
            if (stat != 1) {
                response.sendRedirect("/SiRASS/jspf/forms/dataForm.jsp");
            }
        }

    }

    private Prestador updPrestador(HttpServletRequest request) {
        Prestador prestador = new Prestador();
        String email = request.getParameter("email");
        String calle = request.getParameter("dCalle");
        String numExt = request.getParameter("dNumExt");
        String numInt = request.getParameter("dNumInt");
        String codePost = request.getParameter("dCP");
        String delega = request.getParameter("dDelegacion");
        String colo = request.getParameter("dColonia");
        String telcas = request.getParameter("telCasa");
        String telcel = request.getParameter("telCel");

        prestador.setEmail(email);
        prestador.setdCalle(calle);
        prestador.setdNumExt(numExt);
        prestador.setdNumInt(numInt);
        prestador.setdCP(codePost);
        prestador.setdDelegacion(delega);
        prestador.setdColonia(colo);
        prestador.setTelCasa(telcas);
        prestador.setTelCel(telcel);

        return prestador;
    }

    private Administrador upAdmin(HttpServletRequest request) {
        Administrador administrador = new Administrador();

        administrador.setEmail(request.getParameter("email"));
        administrador.setIdAdmin(Integer.parseInt(request.getParameter("idAdmin")));

        return administrador;

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
