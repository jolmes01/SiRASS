<%-- 
    Document   : 404
    Created on : 10-abr-2012, 22:04:23
    Author     : gomezhyuuga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/jspf/head.jsp">
            <jsp:param value="title" name="Error! Datos incorrectos."/>
        </jsp:include>
        <style type="text/css">
            .container {
                margin-top: 60px;
            }
        </style>
    </head>
    <body>
        <div class="container bg">
            <div class="row">
                <div class="hero-unit">
                    <h1>Ha ocurrido un error.</h1>
                    <p>Tu <strong><em>nombre de usuario</em></strong> y/o 
                        <strong><em>contrase&ntilde;a son incorrectos</em></strong>. Intenta de nuevo.</p>
                    <p><strong><a href="<%= application.getContextPath() %>">&lt;-- Regresar</a></strong></p>
                </div>
            </div>
        </div>
        <%@include file="/jspf/footer.jsp" %>
    </body>
</html>
