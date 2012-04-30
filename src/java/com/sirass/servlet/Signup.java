package com.sirass.servlet;

import com.sirass.dao.CInstitucionDAO;
import com.sirass.dao.PlantelDAO;
import com.sirass.dao.UsuarioDAO;
import com.sirass.model.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
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
public class Signup extends HttpServlet {

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
    int status = 0;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/plain;charset=utf-8");
        // Crear objetos
        Usuario usuario = new Usuario();
        Set<Rol> roles = new HashSet<Rol>();
        UsuarioDAO usuarioDAO = new UsuarioDAO();

        status = 1;
        // TODO 0) Validar datos
        // 1) Obtener parámetros genéricos: usuario, pass y tipo
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String userType = request.getParameter("userType");

        usuario.setUsuario(username);
        usuario.setPassword(password);
        usuario.setModificadoPor("system");
        usuario.setUltimaModif(new Date(System.currentTimeMillis()));
        usuario.setCreacion(new Date(System.currentTimeMillis()));

        // 2) Detectar el tipo de usuario y crear objeto
        if (userType.compareTo("prestador") == 0) { // Prestador
            // TODO 2.1) Validar datos prestador
            // 2.2) Guardar parámetros del prestador y crear objeto
            Prestador prestador = crearPrestador(request);
            prestador.setModificadoPor("system");
            prestador.setUltimaModif(new Date(System.currentTimeMillis()));
            prestador.setCreacion(new Date(System.currentTimeMillis()));

            // Roles
            roles.add(new Rol("prestador"));
            usuario.setRoles(roles);
            usuario.setPrestador(prestador);

            // 2.4) Dar de alta al prestador
            status = usuarioDAO.insert(usuario);
        } else if (userType.compareTo("institucion") == 0) {    // Institucion
            // TODO 2.1) Validar datos institucion
            // Roles
            roles.add(new Rol("institucion"));
            usuario.setRoles(roles);

            // 2.2) Guardar parámetros de la institución y crear objeto
            Institucion institucion = crearInstitucion(request);
            institucion.setModificadoPor("system");
            institucion.setUltimaModif(new Date(System.currentTimeMillis()));
            institucion.setCreacion(new Date(System.currentTimeMillis()));

            usuario.setInstitucion(institucion);
            // Registrar
            status = usuarioDAO.insert(usuario);
            status = 1;
        }
//        response.sendError(status);
        if (status == 1) {
            PrintWriter out = response.getWriter();
            try {
                out.print(status);
            } finally {
                out.close();
            }
        } else {
            response.sendError(status);
        }
    }

    private Prestador crearPrestador(HttpServletRequest request) {
        Prestador prestador = new Prestador();
        String nombre = request.getParameter("nombre");
        String aPaterno = request.getParameter("aPaterno");
        String aMaterno = request.getParameter("aMaterno");
        String email = request.getParameter("email");
        String nacimientoString = request.getParameter("nacimiento");
        // Convertir a Date
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-DD");
        Date nacimiento = null;
        try {
            nacimiento = dateFormat.parse(nacimientoString);
        } catch (ParseException ex) {
            Logger.getLogger(Signup.class.getName()).log(Level.SEVERE, null, ex);
        }
        char sexo = request.getParameter("sexo").charAt(0);
        String dCalle = request.getParameter("dCalle");
        String dNumInt = request.getParameter("dNumInt");
        String dNumExt = request.getParameter("dNumExt");
        String dCP = request.getParameter("dCP");
        String dDelegacion = request.getParameter("dDelegacion");
        String dColonia = request.getParameter("dColonia");
        String telCasa = request.getParameter("telCasa");
        String telCel = request.getParameter("telCel");
        String difundirStr = request.getParameter("difundir");
        boolean difundir = (difundirStr.compareTo("1") == 0) ? true : false;
        // Establecer valores
        prestador.setNombre(nombre);
        prestador.setaPaterno(aPaterno);
        prestador.setaMaterno(aMaterno);
        prestador.setEmail(email);
        prestador.setNacimiento(nacimiento);
        prestador.setSexo(sexo);
        prestador.setdCalle(dCalle);
        prestador.setdNumInt(dNumInt);
        prestador.setdNumExt(dNumExt);
        prestador.setdCP(dCP);
        prestador.setdDelegacion(dDelegacion);
        prestador.setdColonia(dColonia);
        prestador.setTelCasa(telCasa);
        prestador.setTelCel(telCel);
        prestador.setDifundir(difundir);
        return prestador;
    }

    private Institucion crearInstitucion(HttpServletRequest request) {
        Institucion institucion = new Institucion();
        // IDs
        String idCInstitucionStr = request.getParameter("institucionList");
        String idPlantelStr = request.getParameter("plantelesList");

        // Valores en caso de que el no existan
        String nombrePlantel = request.getParameter("nombrePlantel");
        String nombreInstitucion = request.getParameter("nombreInstitucion");
        String instOpcStr = request.getParameter("institucionOpc");
        String plantelOpcStr = request.getParameter("plantelOpc");
        int instOpc = Integer.parseInt(instOpcStr);
        int plantelOpc = Integer.parseInt(plantelOpcStr);

        // Atributos de la institucion
        String domicilio = request.getParameter("domicilio");
        String area = request.getParameter("area");
        String responsable = request.getParameter("responsable");
        String cargo = request.getParameter("cargo");
        String tel = request.getParameter("tel");
        String telExt = request.getParameter("telExt");
        String email = request.getParameter("email");

        // Establecer valores
        institucion.setDomicilio(domicilio);
        institucion.setArea(area);
        institucion.setResponsable(responsable);
        institucion.setCargo(cargo);
        institucion.setTel(tel);
        institucion.setTelExt(telExt);
        institucion.setEmail(email);

        // Si se seleccionó una institución existene...
        if (idCInstitucionStr != null && instOpc == 0) {
            int idInstitucion = Integer.parseInt(idCInstitucionStr);
            // Establecer el ID
            institucion.setIdCInstitucion(idInstitucion);
        } else if (instOpc == 1) { // Si la institución no existe registrar nueva
            CInstitucion cInstitucion = new CInstitucion();
            cInstitucion.setNombre(nombreInstitucion);
            cInstitucion.setModificadoPor("system");
            cInstitucion.setUltimaModif(new Date(System.currentTimeMillis()));
            cInstitucion.setCreacion(new Date(System.currentTimeMillis()));
            // Registrar
            CInstitucionDAO dao = new CInstitucionDAO();
            status = dao.insert(cInstitucion);
            institucion.setIdCInstitucion(cInstitucion.getIdCInstitucion());
        }
        // Si plantel está en la lista
        if (plantelOpc == 0 && idPlantelStr != null) {
            int idPlantel = Integer.parseInt(idPlantelStr);
            institucion.setIdPlantel(idPlantel);
        } // Si no está en la lista
        else if (plantelOpc == 1) {
            Plantel plantel = new Plantel();
            plantel.setIdCInstitucion(institucion.getIdCInstitucion());
            plantel.setNombre(nombrePlantel);
            plantel.setModificadoPor("system");
            plantel.setUltimaModif(new Date(System.currentTimeMillis()));
            plantel.setCreacion(new Date(System.currentTimeMillis()));
            // Registrar
            PlantelDAO daoP = new PlantelDAO();
            status = daoP.insert(plantel);
            institucion.setIdPlantel(plantel.getIdPlantel());
        }
        return institucion;
    }
//
//    private Administrador crearAdministrador(HttpServletRequest request) {
//        Administrador admin = new Administrador();
//        // Obtener valores
//        String nombre = request.getParameter("nombre");
//        String aPaterno = request.getParameter("aPaterno");
//        String aMaterno = request.getParameter("aMaterno");
//        String email = request.getParameter("email");
//        String nacimientoString = request.getParameter("nacimiento");
//        // Convertir a Date
//        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-DD");
//        Date nacimiento = null;
//        try {
//            nacimiento = new Date(dateFormat.parse(nacimientoString).getTime());
//        } catch (ParseException ex) {
//            Logger.getLogger(Signup.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        char sexo = request.getParameter("sexo").charAt(0);
//        String cargo = request.getParameter("cargo");
//        // Establecer valores
//        admin.setNombre(nombre);
//        admin.setaPaterno(aPaterno);
//        admin.setaMaterno(aMaterno);
//        admin.setEmail(email);
//        admin.setNacimiento(nacimiento);
//        admin.setSexo(sexo);
//        admin.setCargo(cargo);
//        return admin;
//    }
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
