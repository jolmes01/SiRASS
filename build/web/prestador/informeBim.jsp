<%@page import="com.sirass.dao.PrestadorDAO"%>
<%@page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <jsp:include page="/jspf/head.jsp">
            <jsp:param name="title" value="ControlHoras"/>
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
                    <jsp:param name="active" value="informeBim" />
                </jsp:include>
                <!-- Contenido
                ================================================== -->
                <div class="container bg span7">
                    <div id="contenido">
                        <h1>Informe Bimensual</h1>
                        <!--                        <form action="../jspf/forms/dataForm.jsp" method="post">-->
                        <form action="../FormCatcher" method="get">
                            <input type="hidden" name="username" value="<%= session.getAttribute("username")%>" />
                            <%                                
                                Integer idInscripcion = (Integer) session.getAttribute("inscripcion");
                                if (idInscripcion == null) {
                                    PrestadorDAO dao = new PrestadorDAO();
                                    idInscripcion = dao.getCurrentInscripcion((String) session.getAttribute("username"));
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

                            <input type="hidden" name="clase" value="com.sirass.model.InformeBimensual"/>
                            <%@include file="jspf/informeBim.jsp" %>
                            <div class="form-actions center">
                                <button type="submit" class="btn btn-primary btn-large">Enviar</button>
                                <button type="reset" id="reset" class="btn btn-primary btn-large">Limpiar campos</button>
                            </div>
                        </form>
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
