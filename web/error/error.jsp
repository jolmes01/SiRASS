<%-- 
    Document   : error
    Created on : 05-abr-2012, 19:37:56
    Author     : gomezhyuuga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/jspf/head.jsp">
            <jsp:param value="title" name="Ha ocurrido un error"/>
        </jsp:include>
        <style type="text/css">
            .container {
                margin-top: 60px;
            }
        </style>
    </head>
    <%
        String desc = "Ha ocurrido un error inesperado. Por favor intenta de nuevo.";
        String reason = "";
        reason = request.getParameter("r");
        if (reason != null && reason.compareTo("incorrect") == 0) {
            desc = "Tus datos de inicio de sesi&oacute;n son incorrectos. ";
            desc += "<a href=\"" + request.getContextPath() + "\">Intentar de nuevo.</a>";
        } else if (response.getStatus() == 404) {
            desc = "La p&aacute;gina que haz solicitado no existe.";
            desc += "<a href=\"" + request.getRequestURI() + "\">Regresar.</a>";
        }
    %>
    <body>
        <div class="container bg">
            <div class="row">
                <div class="hero-unit">
                    <h1>Ha ocurrido un error.</h1>
                    <p><%= desc%></p>
                </div>
            </div>
        </div>
        <%@include file="/jspf/footer.jsp" %>
    </body>
</html>
