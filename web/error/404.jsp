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
            <jsp:param value="title" name="Error! La página solicitada no existe."/>
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
                    <p>La p&aacute;gina que haz solicitado no existe.</p>
                    <p><strong><a href="<%= request.getHeader("Referer") %>">&lt;-- Regresar</a></strong></p>
                </div>
            </div>
        </div>
        <%@include file="/jspf/footer.jsp" %>
    </body>
</html>
