<%-- 
    Document   : ProgramasSS
    Created on : 13-abr-2012, 16:46:24
    Author     : Saúl Alberto Campos Martínez
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String cPath = application.getContextPath();
    // Detectar si ya se inició sesión
    boolean iniciada = (request.getAuthType() == null) ? false : true;
%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8" />
	<meta name="description" content="Sistema de Registro y Administraci&oacute;n de Servicio Social" />
	<meta name="author" content="Skyforge" />
	<meta name="keywords" content="servicio social, uacm, skyforge, practicas profesionales" />
	<title>Consulta de Programas de Servicio Social</title>
	
	<!-- Estilos CSS -->
	<link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="./css/main.css" rel="stylesheet" />
	<link href="./css/home.css" rel="stylesheet" />
        <jsp:include page="/jspf/head.jsp">
            <jsp:param name="title" value="Sistema de Registro y Administraci&oacute;n de Servicio Social" />
        </jsp:include>
        <link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="./css/main.css" rel="stylesheet" />
	<link href="./css/home.css" rel="stylesheet" />
    </head>
    <body>
        <nav>
	<div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="brand" href="./index.html">SiRASS</a>
                    <ul class="nav">
                    <li><a href="./index.html">Inicio</a></li>
                    <li><a href="./ayuda.html">Ayuda</a></li>
                    </ul>
                    <span class="navbar-text pull-right">
                        <a href="#">Reg&iacute;strate</a>
                    </span>
		</div>
            </div>
	</div>
	</nav>
	<br>
	<h1 align="center">Consulta de Programas de Servicio Social
	<br>
	<br>
	<div class="container bg">
            <div class="row" id="sections">
                <div class="span6">
                    <img src="./img/plist.png" alt="" />
                    <form action="ServletProgramaInterno" method="Post">
                    <h2>Programas Internos</h2>
                    <p>Conoce todos los programas internos de servicio social que ofrece para ti la UACM.</p>
                    <a class="btn btn-info" href="#">Programas Internos &raquo;</a>
                    </form>
                </div>
		<div class="span6">
                    <img src="./img/plist.png" alt="" />
                    <form action="ServletProgramaExterno" method="Post">
                    <h2>Programas Externos</h2>
                    <p>Conoce todos los programas externos de servicio social que ofrece para ti la UACM.</p>
                    <a class="btn btn-info" href="#">Programas Externos &raquo;</a>
                    </form>
                </div>
            </div>
	</div>
	<footer>
            <div class="container">
            <hr />
                <div class="row">
                    <div class="span4">
			<h6>Skyforge - 2012</h6>
                    </div>
                    <div class="span4 offset4 right">
                        <h6><a href="http://www.uacm.edu.mx/">UACM - "Nada humano me es ajeno</a></h6>
                    </div>
		</div>
            </div>
	</footer>
	<!-- Bibliotecas Javascript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>-->
	<script src="./js/jquery-1.7.1.min.js" type="text/javascript"></script>
	<script src="./bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
