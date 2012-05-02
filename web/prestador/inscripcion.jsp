<%@page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="/jspf/head.jsp">
            <jsp:param name="title" value="ControlHoras"/>
        </jsp:include>
        <link rel="stylesheet" href="../css/ui-lightness/jquery-ui-1.8.19.custom.css" />
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
                    <jsp:param name="active" value="1" />
                </jsp:include>
                <!-- Contenido
                ================================================== -->
                <div class="container bg span7">
                    <div id="contenido">
                        <h1>Control de Horas</h1>
                        <form action="../jspf/forms/dataForm.jsp" method="post">
                            <div id="formulario">
                                <%@include file="jspf/inscripcionForm.jsp" %>
                                <%@include file="/jspf/forms/datosEscolares.jsp" %>
                                <%@include file="/jspf/forms/datosPrograma.jsp" %>
                                <div class="form-actions">
                                    <button type="submit" class="btn btn-primary btn-large">Enviar</button>
                                    <button type="reset" id="reset" class="btn btn-primary btn-large">Limpiar campos</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer
    ================================================== -->
        <%@include file="/jspf/footer.jsp" %>
        <script src="../js/inscripcion.js" type="text/javascript"></script>
        <script src="../js/jquery-ui-1.8.19.custom.min.js" type="text/javascript"></script>
        <script src="../js/jquery-ui-timepicker-addon.js" type="text/javascript"></script>
    </body>
</html>
