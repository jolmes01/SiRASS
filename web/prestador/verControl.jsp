<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Set"%>
<%@page import="com.sirass.model.RegistroHora"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.sirass.model.ControlHoras"%>
<%@page import="com.sirass.dao.ControlHorasDAO"%>
<%@page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <jsp:include page="/jspf/head.jsp">
            <jsp:param name="title" value="Tus Controles de Horas"/>
        </jsp:include>
        <link href="../css/reg.css" rel="stylesheet" />
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
        <div class="container-fluid">
            <div class="row-fluid">
                <!-- Sidebar
                ================================================== -->
                <jsp:include page="jspf/sidebar.jsp">
                    <jsp:param name="active" value="6" />
                </jsp:include>
                <!-- Contenido
                ================================================== -->
                <div class="container bg span7">
                    <div id="contenido">
                        <%
                            if (request.getParameter("idControl") != null) {
                                ControlHoras controlHoras = null;
                                try {
                                    int id = Integer.parseInt(request.getParameter("idControl"));
                                    ControlHorasDAO dao = new ControlHorasDAO();
                                    controlHoras = dao.getByPK(id);
                                    Set<RegistroHora> horas = controlHoras.getHoras();
                                    SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
                        %>
                        <div class="row">
                            <div class="span6">
                                <%
                                    String label = "label-";
                                    int idEstado = controlHoras.getEstado().getIdEstado();
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
                                <h1>Control de Horas 
                                    <span class="label <%= label%>"><%= controlHoras.getEstado().getDescripcion()%></span>
                                </h1>
                                <h3>Supervisor: <%= controlHoras.getSupervisor()%></h3>
                                <h3>Revisor: <%= controlHoras.getModificadoPor()%></h3>
                            </div>
                            <div class="span2 right">
                                <h4>N&deg; reporte: <%= controlHoras.getnReporte()%></h4>
                                <h4>Del: <%= dateFormat.format(controlHoras.getFechaInicio())%></h4>
                                <h4>Al: <%= dateFormat.format(controlHoras.getFechaFin())%></h4>
                                <h6>id: <%= id%></h6>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="span2">
                                <h4>Mes: <%= controlHoras.getHorasMes()%></h4>
                            </div>
                            <div class="span2 offset1">
                                <h4>Anteriores: <%= controlHoras.getHorasAnteriores()%></h4>
                            </div>
                            <div class="span2 offset1">
                                <h4>Acumuladas: <%= controlHoras.getHorasAcumuladas()%></h4>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="span9">
                                <h2>Registro de horas</h2>
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Fecha</th>
                                            <th>Entrada</th>
                                            <th>Salida</th>
                                            <th>Horas</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            int n = 1;
                                            for (RegistroHora reg : horas) {
                                        %>
                                        <tr>
                                            <td><%= n%></td>
                                            <td><%= dateFormat.format(reg.getFecha())%></td>
                                            <td><%= reg.getHoraEntrada()%></td>
                                            <td><%= reg.getHoraSalida()%></td>
                                            <td><%= reg.getHorasDia()%></td>
                                        </tr>
                                        <%
                                                n++;
                                            }
                                        %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <%
                                } catch (Exception e) {
                                    out.println("<h1>Control de Horas inválido!</h1>");
                                }
                            } else {
                                out.println("<h1>Control de Horas inválido!</h1>");
                            }
                        %>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer
    ================================================== -->
        <%@include file="/jspf/footer.jsp" %>
        <script type="text/javascript" src="../js/navigate.js"></script>
    </body>
</html>
