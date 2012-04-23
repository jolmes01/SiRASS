<%-- 
    Document   : AyudaRegistrarProgramas
    Created on : 16/04/2012, 11:23:32 PM
    Author     : Saul Alberto Campos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String cPath = application.getContextPath();
    // Detectar si ya se inició sesión
    boolean iniciada = (request.getAuthType() == null) ? false : true;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8" />
	<meta name="description" content="Sistema de Registro y Administraci&oacute;n de Servicio Social" />
	<meta name="author" content="Skyforge" />
	<meta name="keywords" content="servicio social, uacm, skyforge, practicas profesionales" />
	<title>Ayuda Registro de Programas</title>
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
			<li><a href="./Ayuda.jsp">Ayuda</a></li>
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
	<div class="container-fluid">
            <header>
                <div class="hero-unit">
                    <h1>Ayuda Registro de Programas de Servicio Social</h1>
                    <p>Aqui está toda la información que necesitas saber para poder registrar programas de Servicio Social correctamente.</p>
		</div>
            </header>
            <img src="<%=cPath%>/img/Diagramas/12 Registro de nuevos programas.png" alt="Proceso Registrar programas de Servicio Social" />
            <p>
               El responsable de Servicio Social define los lineamientos para la publicación de la convocatoria para el Registro y/o Renovación de Programas de Servicio Social y se envía a la Coordinación de Comunicación de la UACM.
               <br>
               <br>
               Las instituciones que tengan interés sobre participar en los programas o proponer alguno(s) nuevo(s) envían respuesta al responsable de Servicio Social de la Unidad Receptora, a través de un formulario en el sistema, posteriormente se realiza la validación sobre el cumplimiento de la metodología indicada.
               <br>
               <br>
               Se asigna una clave única a cada programa y el encargado de Servicio Social envía el respectivo formato de solicitud a las instituciones interesadas y les solicita llevar a las Oficinas de Servicio Social dos copias del formato previamente enviado con firma y sello.
               <br>
               <br>
               Se convoca a una reunión con el Comité de Servicio Social, que es quien decidirá si los posibles programas cumplen con las metodologías establecidas. Durante la sesión se llevará una minuta. Cuando las propuestas son aprobadas, el Comité las firma, en caso contrario se especifica en la minuta el motivo por el cual no pudo ser aprobada la propuesta y se notifica a la institución que haya realizado dicha propuesta para que repita el proceso correctamente.
               <br>
               <br>
               Finalmente se actualiza el catálogo de los programas en el sistema con la información antes recibida en formato PDF. 
            </p>
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
