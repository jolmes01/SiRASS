<%-- 
    Document   : AyudaProceso
    Created on : 16/04/2012, 11:09:27 PM
    Author     : Saul Alberto Campos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8" />
	<meta name="description" content="Sistema de Registro y Administraci&oacute;n de Servicio Social" />
	<meta name="author" content="Skyforge" />
	<meta name="keywords" content="servicio social, uacm, skyforge, practicas profesionales" />
	<title>Ayuda</title>
	
	<!-- Estilos CSS -->
	<link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="./css/main.css" rel="stylesheet" />
	<link href="./css/signup.css" rel="stylesheet" />
    </head>
    <body>
        <nav>
	<div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="brand" href="./index.html">SiRASS</a>
                        <ul class="nav">
			<li><a href="./index.html">Inicio</a></li>
			<li><a href="./ConsultaProgramasSS.html">Programas</a></li>
			</ul>
			<span class="navbar-text pull-right">
                            <a href="#">Reg&iacute;strate</a>
			</span>
		</div>
            </div>
	</div>
	</nav>
	<br>
	<br>
	<div class="container bg">
            <header>
                <div class="hero-unit">
                    <h1>Tipos de Procesos</h1>
                    <p>Elige un tipo de Proceso para ver como se debe llevar a cabo.</p>
                </div>
            </header>
            <div class="row" id="sections">
                <div class="span4">
                    <img src="./img/help.png" alt="" />
                    <h2>Realización de Servicio Social</h2>
                    <p>Conoce todos los procesos para realizar correctamente tu Servicio Social.</p>
                    <a class="btn btn-info" href="AyudaRealizacionSS.jsp">Realización Servicio Social &raquo;</a>
                </div>
                <div class="span4">
                    <img src="./img/help.png" alt="" />
                    <h2>Registro de Programas de Servicio Social</h2>
                    <p>Conoce todos los procesos para registrar nuevos programas de Servicio Social siendo una institución.</p>
                    <a class="btn btn-info" href="AyudaRegistrarProgramas.jsp">Registro de Programas &raquo;</a>
                </div>
                <div class="span4">
                    <img src="./img/help.png" alt="" />
                    <h2>Procesos Especiales de Servicio Social</h2>
                    <p>Conoce todos los procesos para realizar procesos especiales como: Baja de Programas, Suspensión Temporal,etc..</p>
                    <a class="btn btn-info" href="AyudaProcesosEspeciales.jsp">Procesos Especiales &raquo;</a>
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
