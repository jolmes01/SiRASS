
<%-- 
    Document   : AyudaRealizacionSS
    Created on : 16/04/2012, 11:10:21 PM
    Author     : Saul Alberto Campos
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/jspf/head.jsp">
            <jsp:param name="title" value="Proceso" />
        </jsp:include>
        <style type="text/css">
            
        </style>
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
	<div class="container bg">
            <header>
                <div class="hero-unit">
                    <h1>Ayuda de Procesos</h1>
                    <p>Aqui está toda la información que necesitas sobre los procesos que se llevan a cabo.</p>
		</div>
            </header>
            <div id="myCarousel" class="carousel">
                <!-- Carousel items -->
                <div class="carousel-inner">
                    <div class="active item">
                        <img src="./img/Diagramas/01.png" alt="Proceso General de Servicio Social" />
                        <div class="carousel-caption">
                            <h4>Proceso General</h4>
                            <p>El alumno interesado en realizar 
                            su Servicio Social en la U.A.C.M. ingresa a la página de la U.A.C.M. 
                            para ver las opciones que ofrece, después se registra en el 
                            sistema llenando los formularios de datos personales y escolares. 
                            Después de registrarse en el sistema se hará una pre-inscripción 
                            a algún programa de S.S.y realiza sus actividades en el Servicio Social
                            con sus formatos en cada tiempo.</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="./img/Diagramas/01.png" alt="Proceso Registro al Sistema" />
                        <div class="carousel-caption">
                            <h4>Registro al Sistema</h4>
                            <p>
                                El alumno interesado en realizar su servicio social en 
                                la U.A.C.M. como unidad receptora y/o prestataria entra a
                                la página de la U.A.C.M. y llena el formulario para 
                                registrase en la página, el sistema valida la información 
                                del formulario, si el formulario está correctamente llenado 
                                se registra en el sistema como usuario nuevo.
                            </p>
                        </div>
                    </div>
                <!-- Carousel nav -->
                <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                <a class="carousel-control right" href="#myCarousel" data-slide="next">&gt;</a>
            </div>
        </div>
            <jsp:include page="/jspf/footer.jsp" />
    </body>
</html>