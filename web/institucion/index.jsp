<%-- 
    Document   : index
    Created on : 29/04/2012, 10:14:24 PM
    Author     : JL Macias
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <jsp:include page="/jspf/head.jsp">
        <jsp:param name="title" value="Bienvenido"></jsp:param>
    </jsp:include>
	<link href="../css/reg.css" rel="stylesheet" />
</head>
    <body>
            <header>
                <jsp:include page="jspf/header.jsp">
                    <jsp:param name="active" value="inicio"></jsp:param>
                </jsp:include>
            </header>
            <!-- Container
        ================================================== -->
        <div class="container-fluid">
            <div class="row-fluid">
                    <!-- Sidebar
                    ================================================== -->
                    <jsp:include page="jspf/sidebar.jsp">
                        <jsp:param name="active" value="0"/>
                    </jsp:include>
                    <!-- Contenido
                    ================================================== -->
                    <div class="container bg span7">
                        <div id="contenido">
                            <h1>Bienvenido, <%= (String) session.getAttribute("username") %></h1>
                            <p>Actualmente no tienes inscrito ning&uacute;n programa de Servicio Social.</p>
                            <p><a class="btn btn-large btn-primary " href="#">Inscribir un programa</a></p>
                        </div>
                    </div>
            </div>
        </div>
        <!-- Footer
        ================================================== -->
        <%@include file="/jspf/footer.jsp" %>
        <script type="text/javascript" src="../js/navigate.js"></script>
    </body>
</html>
