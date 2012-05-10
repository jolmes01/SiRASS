<%@page import="com.sirass.dao.InformeBimensualDAO"%>
<%@page import="com.sirass.model.prestador.InformeBimensual"%>
<%@page import="com.sirass.dao.PrestadorDAO"%>
<%@page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <jsp:include page="/jspf/head.jsp">
            <jsp:param name="title" value="Actualizar Informe Bimensual"/>
            <jsp:param name="datepicker" value="true" />
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
        <div class="container-fluid">
            <div class="row-fluid">
                <!-- Sidebar
                ================================================== -->
                <jsp:include page="jspf/sidebar.jsp">
                    <jsp:param name="active" value="revBim" />
                </jsp:include>
                <!-- Contenido
                ================================================== -->
                <div class="container bg span7">
                    <div id="contenido">
                        <%
                            InformeBimensual informe = null;
                            boolean informeValido = false;
                            if (request.getParameter("idInforme") != null) {
                                try {
                                    int idInforme = Integer.parseInt(request.getParameter("idInforme"));
                                    informeValido = true;
                                    InformeBimensualDAO dao = new InformeBimensualDAO();
                                    informe = dao.getByPK(idInforme);
                        %>
                        <h1>Actualizar Informe Bimensual</h1>
                        <!--                        <form action="../jspf/forms/dataForm.jsp" method="post">-->
                        <form action="../FormCatcher" method="get">
                            <input type="hidden" name="username" value="<%= session.getAttribute("username")%>" />
                            <%
                                Integer idInscripcion = (Integer) session.getAttribute("inscripcion");
                                if (idInscripcion == null) {
                                    PrestadorDAO daoPrestador = new PrestadorDAO();
                                    idInscripcion = daoPrestador.getCurrentInscripcion((String) session.getAttribute("username"));
                            %>
                            <input type="hidden" name="inscripcion" value="<%= idInscripcion%>" />        
                            <%
                            } else {
                            %> 
                            <input type="hidden" name="inscripcion" value="<%= (Integer) session.getAttribute("inscripcion")%>" />        
                            <%
                                }
                            %>

                            <input type="hidden" name="clase" value="com.sirass.model.InformeBimensual"/>
                            <%@include file="jspf/informeBim.jsp" %>
                            <div class="form-actions center">
                                <button type="submit" class="btn btn-primary btn-large">Enviar</button>
                                <button type="reset" id="reset" class="btn btn-primary btn-large">Limpiar campos</button>
                            </div>
                        </form>
                        <%
                                } catch (Exception e) {
                                    out.print("<h1>Informe inválido!</h1>");
                                }
                            } else {
                                out.print("<h1>Informe inválido!</h1>");
                            }
                        %>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer
    ================================================== -->
        <jsp:include page="/jspf/footer.jsp">
            <jsp:param name="datepicker" value="true" />
            <jsp:param name="nav" value="true" />
        </jsp:include>
        <script>
            $(document).ready(function() {
                $.datepicker.setDefaults({
                    dateFormat: "dd-mm-yy"
                });
                $('#inicioPeriodo, #terminoPeriodo').datepicker();
            });
        </script>
    </body>
</html>
