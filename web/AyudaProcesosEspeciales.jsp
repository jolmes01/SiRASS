<%-- 
    Document   : AyudaProcesosEspeciales
    Created on : 16/04/2012, 11:10:01 PM
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
	<title>Ayuda Procesos Especiales Servicio Social</title>
	
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
                    <h1>Ayuda Procesos Especiales</h1>
                    <p>Aqui está toda la información que necesitas saber para poder realizar algún proceso especial de Servicio Social correctamente.</p>
                </div>
            </header>
            <img src="<%=cPath%>/img/Diagramas/09 Baja de Servicio Social.png" alt="Proceso Baja de Servicio Social" />
            <p>
                En este proceso el prestador no interviene directamente; ya que puede o no solicitar ser dado de baja definitivamente del programa de Servicio Social en el que esté inscrito. 
                <br>
                <br>
                De ser el caso en el que el prestador solicita la baja, el prestador ingresa al sistema y accede al apartado de mi cuenta, en la opción de baja del programa, llena un formulario donde puede explicar sus razones. El sistema guarda el movimiento en la base de datos.
                <br>
                <br>
                De ser el caso en el que el prestador no solicita la baja, pero se da de baja por sanción en las conductas de desempeño de servicio social u otro motivo para dar de baja, el trámite solo lo hará la unidad receptora.
                <br>
                <br>
                La Unidad Receptora genera el oficio de baja de Servicio Social y lo envía a la Unidad Prestataria para dar de baja al prestador. El movimiento es archivado en el expediente del prestador que conservará la Unidad Receptora.
            </p>
            <br>
            <br>
            <br>
            <img src="<%=cPath%>/img/Diagramas/10 Suspensión temporal.png" alt="Proceso Suspension Temporal de Servicio Social" />
            <p>
                El prestador realiza su Servicio Social y si no le convence o se le dificulta dar seguimiento al programa al que se haya afiliado, puede darse de baja siguiendo el proceso respectivo. Después de darse de baja selecciona un nuevo programa al cuál inscribirse realizando el procedimiento común de inscripción. La Unidad Receptora modifica el número de control previamente asignado al prestador agregando el sufijo BIS para indicar que dicha persona ya había participado previamente en algún otro programa de Servicio Social, ya sea interno o externo.
                <br>
                <br>
                En caso de que el prestador provenga de un programa interno y su cambio sea a otro interno, las horas que acumuló se le contabilizarán. De caso contrario la contabilización se reiniciará.
            </p>
            <br>
            <br>
            <br>
            <img src="<%=cPath%>/img/Diagramas/11 Cambio de programa.png" alt="Proceso Cambio de Programa de Servicio Social" />
            <p>
               El proceso de solicitar una suspensión temporal puede realizarlo cualquier prestador, ya sea por motivos personales u otra situación, de modo que podrá truncar el periodo de su Servicio Social. Después de solicitar en el sistema y llenar el formato respectivo, y sea validado por el sistema, lo entrega a la Unidad Prestataria y/o Receptora, los prestadores internos de la UACM entregarán el formato a la misma Unidad que fungirá como Prestataria y Receptora. Cuando se valida que el formato haya sido correctamente llenado y el motivo de la suspensión, la Unidad Prestataria y/o Receptora entrega el acuse al prestador para archivarlo en su expediente.
               <br>
               <br>
               El sistema registra el movimiento en la base de datos, el prestador se compromete a reanudar su Servicio Social en la fecha que él mismo indique, y la fecha de término será cambiada.  
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
