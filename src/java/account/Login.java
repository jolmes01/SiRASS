package account;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author gomezhyuuga
 */
public class Login extends HttpServlet {

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
        // Obtener nombre de usuario y contraseña
        String usuario = (String) request.getParameter("j_username");
        String pass = (String) request.getParameter("j_password");
        // Login
        try {
            // Intentar hacer login
            request.login(usuario, pass);
            log("######## Sesión iniciada #########");
            log("username: " + usuario);
            log("######## ######## ######## ######## #####\n");
            // Poner usuario como atributo en sesión
            request.getSession().setAttribute("username", usuario);
            String pag = "";
            // Detectar pantalla de inicio del tipo de usuario
            if (request.isUserInRole("prestador")) {
                pag = "prestador";
            } else if (request.isUserInRole("admin")) {
                pag = "admin";
            } else if (request.isUserInRole("institucion")) {
                pag = "institucion";
            }
            // establecer atributo de pag de inicio
            request.getSession().setAttribute("home", pag);
            // Enviar redirección
            response.sendRedirect(request.getContextPath() + "/" + pag);
        } catch (ServletException ex) { // En caso de que no se pueda iniciar sesión
            log("######## Error al iniciar sesión ########");
            log(ex.getMessage());
            log("######## ######## ######## ######## #####\n");
            response.setStatus(401);
            response.addHeader("requestURI", request.getRequestURI());
//            response.sendError(401);
            response.sendRedirect(request.getContextPath() + "/error/401.jsp");
            
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
