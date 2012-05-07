<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.sirass.model.InformeBimensual"%>
<%@page import="com.sirass.dao.InformeBimensualDAO"%>
<%@page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <jsp:include page="/jspf/head.jsp">
            <jsp:param name="title" value="Informe Bimensual"/>
            <jsp:param name="reg" value="true" />
        </jsp:include>
    </head>
    <body>
        <!-- Header
        ==================================== -->
        <header>
            <jsp:include page="jspf/header.jsp">
                <jsp:param name="active" value="inicio"/>
            </jsp:include>
        </header>
        <!-- Container
    ================================================== -->
        <div class="container">
            <div class="row-fluid">
                <!-- Sidebar
                ================================================== -->
                <jsp:include page="jspf/sidebar.jsp">
                    <jsp:param name="active" value="7" />
                </jsp:include>
                <!-- Contenido
                ================================================== -->
                <div class="container bg span9">
                    <div id="contenido">
                        <%
                            if (request.getParameter("idBimensual") != null) {
                                InformeBimensual informe = null;
                                try {
                                    int id = Integer.parseInt(request.getParameter("idBimensual"));
                                    InformeBimensualDAO dao = new InformeBimensualDAO();
                                    informe = dao.getByPK(id);
                                    SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
                        %>
                        <div class="row">
                            <div class="span7">
                                <%
                                    String label = "label-";
                                    int idEstado = informe.getEstado().getIdEstado();
                                    switch (idEstado) {
                                        case 1:
                                            label += "info";
                                            break;
                                        case 2:
                                            label += "important";
                                            break;
                                        case 3:
                                            label += "success";
                                    }
                                %>
                                <h1>Informe Bimensual 
                                    <span class="label <%= label%>"><%= informe.getEstado().getDescripcion()%></span>
                                </h1>
                                <h3>Revisor: <%= informe.getModificadoPor()%></h3>
                            </div>
                            <div class="span5 right">
                                <h4>N&deg; reporte: <%= informe.getNumReporte() %></h4>
                                <h4>Del: <%= dateFormat.format(informe.getInicioPeriodo())%></h4>
                                <h4>Al: <%= dateFormat.format(informe.getTerminoPeriodo())%></h4>
                                <h6>id: <%= id%></h6>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="span4">
                                <h4>Mes: <%= informe.getHorasBimestre() %></h4>
                            </div>
                            <div class="span4 offset2">
                                <h4>Acumuladas: <%= informe.getHorasAcumuladas()%></h4>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="span12">
                                <h2>Actividades</h2>
                                <p class="actividades"><%= informe.getActividades() %></p>
                            </div>
                        </div>
                        <%
                                } catch (Exception e) {
                                    e.printStackTrace();
                                    out.println("<h1>Informe Bimensual inválido! (" + request.getParameter("idBimensual") + ")</h1>");
                                }
                            } else {
                                out.println("<h1>Informe Bimensual inválido!</h1>");
                            }
                        %>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer
    ================================================== -->
        <jsp:include page="/jspf/footer.jsp">
            <jsp:param name="mav" value="true" />
        </jsp:include>
    </body>
</html>
