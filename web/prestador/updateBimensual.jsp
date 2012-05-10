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
                            if (request.getParameter("idInforme") != null) {
                                try {
                                    int idInforme = Integer.parseInt(request.getParameter("idInforme"));
                                    InformeBimensualDAO dao = new InformeBimensualDAO();
                                    informe = dao.getByPK(idInforme);
                        %>
                        <h1>Actualizar Informe Bimensual</h1>
                        <!--                        <form action="../jspf/forms/dataForm.jsp" method="post">-->
                        <form action="/SiRASS/Update" method="get">
                            <input type="hidden" name="username" value="<%= session.getAttribute("username")%>" />
                            <input type="hidden" name="idInforme" value="<%= informe.getIdInformeBimensual()%>" />
                            <%
                                Integer idInscripcion = (Integer) session.getAttribute("inscripcion");
                                if (idInscripcion == null) {
                                    PrestadorDAO daoPrestador = new PrestadorDAO();
                                    idInscripcion = daoPrestador.getCurrentInscripcion((String) session.getAttribute("username"));
                                    session.setAttribute("inscripcion", idInscripcion);
                            %>
                            <input type="hidden" name="inscripcion" value="<%= idInscripcion%>" />        
                            <%
                            } else {
                            %> 
                            <input type="hidden" name="inscripcion" value="<%= (Integer) session.getAttribute("inscripcion")%>" />        
                            <%
                                }
                            %>

                            <input type="hidden" name="clase" value="com.sirass.model.prestador.InformeBimensual"/>
                            <div class="row">
                                <div class="span3 pull-left">
                                    <fieldset>
                                        <legend>Reporte</legend>
                                        <div class="control-group">
                                            <label for="terminoPeriodo">N&deg; reporte:</label>
                                            <div class="controls">
                                                <input type="text" name="numReporte" id="numReporte" class="input-medium" 
                                                       value="<%= informe.getNumReporte()%>"/>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label for="inicioPeriodo">De la fecha:</label>
                                            <div class="controls">
                                                <input type="text" name="inicioPeriodo" id="inicioPeriodo" class="input-medium" 
                                                       value="<%= informe.getInicioPeriodo()%>"/>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label for="terminoPeriodo">A la fecha:</label>
                                            <div class="controls">
                                                <input type="text" name="terminoPeriodo" id="terminoPeriodo" class="input-medium" 
                                                       value="<%= informe.getTerminoPeriodo()%>"/>
                                            </div>
                                        </div>
                                </div>
                                <div class="span2 offset1">
                                    <fieldset>
                                        <legend>Horas</legend>
                                        <div class="control-group">
                                            <label for="acumuladas">Acumuladas:</label>
                                            <div class="controls">
                                                <input type="text" name="acumuladas" id="acumuladas" class="input-medium" 
                                                       value="<%= informe.getHorasAcumuladas()%>"/>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label for="horasBimestre">Bimestre:</label>
                                            <div class="controls">
                                                <input type="text" name="horasBimestre" id="horasBimestre" class="input-medium" 
                                                       value="<%= informe.getHorasBimestre()%>"/>
                                            </div>
                                        </div>
                                    </fieldset>
                                </div>

                                <div class="span8">
                                    <fieldset>
                                        <legend>Actividades</legend>
                                        <textarea rows="10" class="input-xxlarge" name="actividades" 
                                                  placeholder="Describe las actividades que realizaste"
                                                  style="resize: none;"><%= informe.getActividades()%></textarea>
                                    </fieldset>
                                </div>
                            </div>
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
