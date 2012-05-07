<%@page import="com.sirass.model.InformeBimensual"%>
<%@page import="com.sirass.dao.InformeBimensualDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <jsp:include page="/jspf/head.jsp">
            <jsp:param name="title" value="Tus Informes Bimensuales"/>
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
                        <h1>Historial de Informes Bimensuales</h1>
                        <%
                            String username = (String) session.getAttribute("username");
                            if (username != null) {
                            InformeBimensualDAO dao = new InformeBimensualDAO();
                            //dao.getListByUsername(session.getAttribute("username"))
                            List<InformeBimensual> lista = dao.getByUsername(username);
                            if (!lista.isEmpty() || lista != null) {
                                Iterator<InformeBimensual> it = lista.iterator();
                        %>
                        <!--                        <form action="../jspf/forms/dataForm.jsp" method="post">-->
                        <form action="./verBimensual.jsp" method="get">
                            <div id="formulario">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>Reporte</th>
                                            <th>Inicio</th>
                                            <th>Fin</th>
                                            <th>Horas</th>
                                            <th>Acumuladas</th>
                                            <th>Estado</th>
                                            <th>Acci&oacute;n</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
                                            while (it.hasNext()) {
                                                InformeBimensual c = it.next();
                                        %>
                                        <tr>
                                            <td><%= c.getNumReporte() %></td>
                                            <td><%= dateFormat.format(c.getInicioPeriodo())%></td>
                                            <td><%= dateFormat.format(c.getTerminoPeriodo())%></td>
                                            <td><%= c.getHorasBimestre()%></td>
                                            <td><%= c.getHorasAcumuladas()%></td>
                                            <td><%
                                                String label = "label-";
                                                int id = c.getIdInformeBimensual();
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
                                                    <button name="idBimensual" class="btn btn-small btn-warning"
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
