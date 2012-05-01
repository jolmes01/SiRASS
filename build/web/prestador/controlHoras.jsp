<%-- 
    Document   : controlHoras
    Created on : 06-abr-2012, 9:27:36
    Author     : gomezhyuuga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/jspf/head.jsp">
            <jsp:param name="title" value="ControlHoras"/>
        </jsp:include>
        <link href="../css/reg.css" rel="stylesheet" />
        <link href="../css/ui-lightness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
        <style type="text/css">
            table tbody tr td {
                text-align: center !important;
                padding-top: 16px !important;
            }
            table tbody tr td input[readonly="readonly"] {
                background-color: #fff;
                cursor: pointer;
                text-align: center;
            }
        </style>
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
                    <jsp:param name="active" value="0" />
                </jsp:include>
                <!-- Contenido
                ================================================== -->
                <div class="container bg span7">
                    <div id="contenido">
                        <h1>Control de Horas</h1>
                        <form action="../jspf/forms/dataForm.jsp">
                            <div id="formulario">
                                <%@include file="/jspf/forms/controlHoras.jsp" %>
                                <div class="form-actions">
                                    <button type="submit" name="submit" class="btn btn-primary btn-large">Enviar</button>
                                    <button type="reset" name="reset" class="btn btn-primary btn-large">Limpiar campos</button>
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
        <script type="text/javascript" src="../js/jquery-ui-1.8.19.custom.min.js"></script>
        <script type="text/javascript" src="../js/jquery-ui-timepicker-addon.js"></script>
        <script type="text/javascript" src="../js/navigate.js"></script>
        <script type="text/javascript" src="../js/controlHoras.js"></script>
    </body>
</html>
