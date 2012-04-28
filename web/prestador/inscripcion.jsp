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
            <h1>Inscripci&oacute;n a programa de Servicio Social</h1>
            <form action="../jspf/forms/dataForm.jsp">
            <div id="formulario">
                <%@include file="/jspf/forms/datosGenerales.jsp" %>
                <%@include file="/jspf/forms/datosEscolares.jsp" %>
                <%@include file="/jspf/forms/datosPrograma.jsp" %>
                <div class="form-actions">
                    <button type="submit" name="submit" class="btn btn-primary btn-large">Enviar</button>
                </div>
            </div>
            </form>
        </div>
    </body>
</html>