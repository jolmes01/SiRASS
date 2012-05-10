<%@page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="/jspf/head.jsp">
            <jsp:param name="title" value="ControlHoras"/>
            <jsp:param name="datepicker" value="true" />
            <jsp:param name="timepicker" value="true" />
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
                    <jsp:param name="active" value="inscripcion" />
                </jsp:include>
                <!-- Contenido
                ================================================== -->
                <div class="container bg span7">
                    <div id="contenido">
                        <h1>Inscripci&oacute;n a un programa</h1>
                        <p>Para inscribirte en un programa de Servicio Social llena los siguientes datos:</p>
                        <form action="../jspf/forms/dataForm.jsp" method="get">
                            <div id="formulario">
                                <div class="row tipoServicio">
                                    <div class="offset2">
                                        <div class="btn-group" data-toggle="buttons-radio">
                                            <button type="button" name="ss" id="ss" class="btn btn-large btn-info active">Servicio Social</button>
                                            <button type="button" name="pp" id="pp" class="btn btn-large btn-info">Pr&aacute;ctica Profesional</button>
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <div class="tabbable">
                                    <ul class="nav nav-tabs">
                                        <li class="active">
                                            <a href="#datosEscolares" data-toggle="tab">Datos escolares</a>
                                        </li>
                                        <li>
                                            <a href="#datosPrograma" data-toggle="tab">Datos del programa</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="datosEscolares">
                                        <%@include file="/jspf/forms/datosEscolares.jsp" %>
                                    </div>
                                    <div class="tab-pane fade ac" id="datosPrograma">
                                        <%@include file="/jspf/forms/datosPrograma.jsp" %>
                                    </div>
                                </div>
                                <div class="form-actions center">
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
        <jsp:include page="/jspf/footer.jsp">
            <jsp:param name="datepicker" value="true" />
            <jsp:param name="timepicker" value="true" />
            <jsp:param name="nav" value="true" />
        </jsp:include>
        <script src="../js/inscripcion.js" type="text/javascript"></script>
    </body>
</html>
