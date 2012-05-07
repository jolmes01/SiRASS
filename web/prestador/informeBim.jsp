<%@page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <jsp:include page="/jspf/head.jsp">
            <jsp:param name="title" value="ControlHoras"/>
            <jsp:param name="datepicker" value="true" />
            <jsp:param name="timepicker" value="true" />
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
                    <jsp:param name="active" value="5" />
                </jsp:include>
                <!-- Contenido
                ================================================== -->
                <div class="container bg span9">
                    <div id="contenido">
                        <h1>Informe Bimensual</h1>
                        <form action="../jspf/forms/dataForm.jsp" method="post">
                            <div id="row">
                                <%@include file="jspf/informeBim.jsp" %>
                                <div class="span9 center">
                                    <div class="form-actions">
                                        <button type="submit" class="btn btn-primary btn-large">Enviar</button>
                                        <button type="reset" id="reset" class="btn btn-primary btn-large">Limpiar campos</button>
                                    </div>
                                </div>
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
                    formatDate: "dd-mm-yy"
                });
                $('#inicioPeriodo, #terminoPeriodo').datepicker();
            });
        </script>
    </body>
</html>
