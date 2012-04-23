<%-- 
    Document   : AyudaRealizacionSS
    Created on : 16/04/2012, 11:10:21 PM
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
        <meta charset="utf-8" />
	<meta name="description" content="Sistema de Registro y Administraci&oacute;n de Servicio Social" />
	<meta name="author" content="Skyforge" />
	<meta name="keywords" content="servicio social, uacm, skyforge, practicas profesionales" />
	<title>Ayuda Realización Servicio Social</title>
	
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
                    <h1>Ayuda Realización de Servicio Social</h1>
                    <p>Aqui está toda la información que necesitas saber para poder realizar tu Servicio Social correctamente.</p>
		</div>
            </header>
            <img src="<%=cPath%>/img/Diagramas/01 Proceso general.png" alt="Proceso General de Servicio Social" />
            <p>
                El alumno interesado en realizar su Servicio Social en la U.A.C.M. ingresa a la página de la U.A.C.M. para ver las opciones que ofrece, después se registra en el sistema llenando los formularios de datos personales y escolares. Después de registrarse en el sistema se hará una pre-inscripción a algún programa de S.S. y de ahora en adelante se le llamará prestador de servicio social al alumno.
                <br>
                <br>
                El sistema indica todo el proceso de servicio social para que el prestador lo conozca y no haya dudas sobre como hacerlo.
                <br>
                <br>
                El prestador de servicio social acude a la unidad prestataria y/o receptora de servicio social con toda la documentación necesaria para ser formalmente inscrito en los programas de servicio social. Ya formalmente inscrito el prestador acude diariamente a la unidad receptora a realizar su servicio social y registra sus horas de entrada y salida en el formato de Control de Horas Mensuales. Después de dos meses de realización de servicio social o su equivalente en horas (160 horas), el prestador llena el formato de Informe Bimensual y lo entrega en la unidad receptora y/o prestataria, este proceso se repite durante toda la realización de servicio social.
                <br>
                <br>
                Una vez acabado el servicio social el prestador llena el Informe Final de Actividades y lo entrega en la unidad receptora y/o prestataria, la unidad receptora entrega carta de liberación de servicio social al prestador, el prestador entrega la carta de liberación de servicio social a la unidad prestataria para realizar trámite de titulación.
            </p>
            <br>
            <br>
            <br>
            <img src="<%=cPath%>/img/Diagramas/02 Registro al sistema.png" alt="Proceso Registro al Sistema" />
            <p>
              Primero el alumno que desea realizar su servicio social, acude al área respectiva de su institución que se encarga del Servicio Social. Dicha institución de la cual proviene el prestador, desde ahora se le denominará como Unidad Prestataria. El alumno busca el lugar donde desea realizar su Servicio Social, que desde ahora se denominará como Unidad Receptora, y realiza el respectivo proceso que se maneja en su institución para inscribirse.
              <br>
                <br>
              El alumno revisa la oferta de la U.A.C.M. en su página con todos los programas de servicio social que se tienen en la U.A.C.M. y las compara.
              <br>
                <br>
              El alumno interesado en realizar su servicio social en la U.A.C.M. como unidad receptora y/o prestataria entra a la página de la U.A.C.M. y llena el formulario para registrase en la página, el sistema valida la información del formulario, si el formulario está correctamente llenado se registra en el sistema como usuario nuevo; si el formulario está llenado erróneamente el sistema indica cuál es el error y lo regresa al usuario hasta que este llenado correctamente.  
            </p>
            <br>
            <br>
            <br>
            <img src="<%=cPath%>/img/Diagramas/03 Pre-Registro al SS.png" alt="Proceso Pre-Registro al SS" />
            <p>
               El usuario ya registrado en el sistema de la U.A.C.M., ingresa al sistema y entra al apartado de registrarse a un programa de servicio social, llena la solicitud de registro y el sistema valida y llena algunos campos automáticamente, la solicitud que contiene la información del programa al que el usuario desea inscribirse.
               <br>
               <br>
               Si la solicitud está correctamente llenada, el sistema lo acepta y guarda los datos en la Base de Datos y deja que el usuario pueda imprimir la solicitud; si no está llenada correctamente, el sistema regresa la solicitud e indica en donde hay errores hasta que este llenado correctamente la solicitud.
               <br>
               <br>
               Si la solicitud es para ser prestador externo el prestador solicita una carta de presentación a su escuela o unidad prestataria, y si la solicitud es para ser prestador interno el sistema genera la carta de presentación y el usuario imprime la carta de presentación para llevarla a la unidad receptora. 
            </p>
            <br>
            <br>
            <br>
            <img src="<%=cPath%>/img/Diagramas/04 Inscripción al programa de SS.png" alt="Proceso Inscripcion Programa SS" />
            <p>
                El prestador acude a la Unidad Receptora, se presenta formalmente y entrega una Carta de Presentación   y la demás documentación que pida la unidad receptora para que la unidad receptora lo acepte como prestador del servicio social. La unidad receptor valida los documentos que el prestador entrega y los acepta si so correctos, sino los regresa. Una vez que es aceptado oficialmente, se le dan al prestador los formatos del Control Mensual de Horas, Informe Bimensual de Actividades e Informe Final de Actividades. 
            </p>
            <br>
            <br>
            <br>
            <img src="<%=cPath%>/img/Diagramas/05 Actividades Mensuales.png" alt="Proceso Actividades Mensuales" />
            <p>
                Durante este proceso el prestador acude diariamente a la Unidad Receptora y firma en las bitácoras de asistencia, así diariamente se da un control de los horarios de entrada y salida. Comúnmente el prestador realiza su servicio social por cuatro horas diarias durante un mes y al mes cumplido, o su equivalente en horas (80), el prestador ingresa al sistema al apartado de control mensual y llena el formato de Control Mensual de Horas .
                <br>
                <br>
                El sistema valida el formato si está correctamente llenado, si está correctamente llenado el sistema lo acepta y guarda en base de datos, el sistema deja que el prestador pueda imprimir documento para llevarlo a la unidad receptora; si esta llenado erróneamente el sistema indica los errores y regresa el formato hasta que se llene correctamente. El prestador repite este proceso hasta llegar a un total de dos meses o su equivalente, 160 horas.
            </p>
            <br>
            <br>
            <br>
            <img src="<%=cPath%>/img/Diagramas/06 Informe Bimensual de Actividades.png" alt="Proceso Bimensual de Actividades" />
            <p>
               Una vez que el prestador ha cumplido con las respectivas horas, el prestado ingresa al sistema y llena el Informe Bimensual de Actividades en el que hay campos como las actividades que se realizaron en el bimestre, comentarios sobre sus actividades, los nombres de los encargados del Servicio Social y sus respectivas firmas.
               <br>
               <br>
               El sistema llena automáticamente ciertos campos del informe con base a la información del prestador, el sistema valida el informe si esta llenado correctamente, si no tiene errores lo acepta, guarda en base de datos y permite al prestador imprimir el informe bimensual; si no es correcto el sistema indica en donde hay errores y regresa el informe bimensual hasta que se llene correctamente.
               <br>
               <br>
               Después el prestador debe llevar el reporte a la Unidad Receptora y/o Prestataria para que sea archivado en el expediente del prestador. El prestador sigue realizando sus actividades diarias de servicio social. 
            </p>
            <br>
            <br>
            <br>
            <img src="<%=cPath%>/img/Diagramas/07 Informe Final de Actividades.png" alt="Proceso Final de Actividades" />
            <p>
               El prestador repite los procesos de Actividades Mensuales e Informe Bimensual de Actividades durante el periodo de Servicio Social. Una vez cumplido con esto se necesita llenar el Informe Final de Actividades . Éste implica haber entregado tres informes bimensuales y seis controles de horas mensuales. 
               <br>
               <br>
               El prestador accede al sistema y entra al apartado de informe final de actividades, en el Informe Final de Actividades el prestador informa sobre lo que realizó durante todo su servicio social y contiene campos como: conclusiones del prestador, actividades realizadas durante todo el servicio social, comentarios, observaciones y firmas de todos los encargados del servicio social.
               <br>
               <br>
               Igual que con los Informes Bimensuales, tiene que ser validado y será aceptado hasta que esté correctamente llenado. El sistema valida el informe final de actividades si esta correctamente llenado, si es correcto el sistema registra en la base de datos y se le permite al prestador imprimirlo, si no es correcto el sistema indica donde hay errores y regresa el informe hasta que este correctamente llenado.
               <br>
               <br>
               Una vez aceptado por la Unidad Receptora, dicha unidad expedirá y entregará al prestador su carta de término del servicio social y el prestador ya no tendrá nada más que hacer en la Unidad Receptora. 
            </p>
            <br>
            <br>
            <br>
            <img src="<%=cPath%>/img/Diagramas/08 Término del Servicio Social.png" alt="Proceso Termino de Serviccio Social" />
            <p>
               Después de que el prestador termina su servicio social y la unidad receptora entrega la carta de término de servicio social y lo archiva en el expediente, el prestador debe llevar la carta de término a las oficinas la unidad prestataria en donde empezarán los trámites de titulación necesarios. 
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
