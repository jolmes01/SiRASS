<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.sirass.model.ControlHoras"%>
<%@page import="com.sirass.dao.ControlHorasDAO"%>
<%@page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <jsp:include page="/jspf/head.jsp">
            <jsp:param name="title" value="Tus Controles de Horas"/>
            <jsp:param name="datepicker" value="true" />
            <jsp:param name="timepicker" value="true" />
            <jsp:param name="reg" value="true" />
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
                    <jsp:param name="active" value="revControl" />
                </jsp:include>
                <!-- Contenido
                ================================================== -->
                <div class="container bg span7">
                    <div id="contenido">
                        <h1>Historial de Control de Horas</h1>
                        <%
                            String username = (String) session.getAttribute("username");
                            if (username != null) {
                            ControlHorasDAO dao = new ControlHorasDAO();
                            //dao.getListByUsername(session.getAttribute("username"))
                            List<ControlHoras> lista = dao.getListByUsername(username);
                            if (!lista.isEmpty() || lista != null) {
                                Iterator<ControlHoras> it = lista.iterator();
                        %>
                        <!--                        <form action="../jspf/forms/dataForm.jsp" method="post">-->
                        <form action="./verControl.jsp" method="post">
                            <div id="formulario">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>Reporte</th>
                                            <th>Inicio</th>
                                            <th>Fin</th>
                                            <th>Horas</th>
                                            <th>Estado</th>
                                            <th>Acci&oacute;n</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
                                            while (it.hasNext()) {
                                                ControlHoras c = it.next();
                                        %>
                                        <tr>
                                            <td><%= c.getnReporte()%></td>
                                            <td><%= dateFormat.format(c.getFechaInicio())%></td>
                                            <td><%= dateFormat.format(c.getFechaFin())%></td>
                                            <td><%= c.getHorasMes()%></td>
                                            <td><%
                                                String label = "label-";
                                                int id = c.getIdControlHoras();
                                                int idEstado = c.getEstado().getIdEstado();
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
                                                <span class="label <%= label%>"><%= c.getEstado().getDescripcion()%></span>
                                            </td>
                                            <td>
                                                <div class="btn-group left centerDiv">
                                                    <button name="idControl" class="btn btn-small btn-warning"
                                                            value="<%= id%>" type="submit">
                                                        <i class="icon-info-sign icon-white"></i>
                                                        Ver
                                                    </button>
                                                    <button class="btn dropdown-toggle btn-small btn-warning" data-toggle="dropdown">
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li>
                                                            <a href="#download" id="descargar">
                                                                <i class="icon-download-alt"></i>
                                                                Descargar
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#editar" id="editar">
                                                                <i class="icon-edit"></i>
                                                                Editar
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                        <% }%>
                                    </tbody>
                                </table>
                            </div>
                        </form>
                        <%
                            } }
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
