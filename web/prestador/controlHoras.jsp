<%-- 
    Document   : controlHoras
    Created on : 06-abr-2012, 9:27:36
    Author     : gomezhyuuga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <div id="contenido">
            <h1>Control de Horas</h1>
            <form action="../jspf/forms/dataForm.jsp">
                <div id="formulario">
                    <%@include file="/jspf/forms/controlHoras.jsp" %>
                    <div class="form-actions">
                        <button type="submit" name="submit" class="btn btn-primary btn-xlarge">Enviar</button>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
