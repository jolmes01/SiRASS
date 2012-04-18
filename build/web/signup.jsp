<%@page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <jsp:include page="/jspf/head.jsp">
        <jsp:param name="title" value="Registrarse" />
    </jsp:include>
    <link href="./css/signup.css" rel="stylesheet" />
</head>
<body>
	<!-- Navbar
	================================================== -->
	<nav>
		<div class="navbar navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">
					<a class="brand" href="./index.jsp">SiRASS</a>
					<ul class="nav">
						<li><a href="./index.jsp">Inicio</a></li>
						<li><a href="./programas.jsp">Programas</a></li>
						<li><a href="./ayuda.jsp">Ayuda</a></li>
					</ul>
					<span class="navbar-text pull-right">
						<a href="#">Reg&iacute;strate</a>
					</span>
				</div>
			</div>
		</div>
	</nav>
	<!-- Container
    ================================================== -->
    <div class="container bg">
		<!-- Header
		================================================== -->
		<header>
			<div class="hero-unit">
				<h1>Inicia tu registro</h1>
				<p>Proporciona la siguiente informaci&oacute;n para convertirte en usuario del sistema.</p>
			</div>
		</header>
		<!-- Contenido
		================================================== -->
		<!-- Tipo de usuario
		================================================== -->
		<div class="row center tipoUsuario">
			<div class="span4 offset4">
				<h1>Tipo de usuario</h1>
					<div class="btn-group" data-toggle="buttons-radio">
						<button class="btn btn-primary btn-large active" id="btnPrestador" data-file="registroPrestador">
							Prestador
							<i class="icon-user icon-white"></i>
						</button>
						<button class="btn btn-primary btn-large" id="btnInstitucion" data-file="registroInstitucion">
							Instituci&oacute;n
							<i class="icon-road icon-white"></i>
						</button>
					</div>
			</div>
		</div>
		<div class="modal fade" id="modalRegOK" style="display: none;">
		  <div class="modal-header">
		    <a class="close" data-dismiss="modal">×</a>
		    <h3>Registro exitosos!</h3>
		  </div>
		  <div class="modal-body">
		    <p>Te has registrado correctamente en el sistema. Ya puedes <strong>iniciar sesión</strong>.</p>
		  </div>
		  <div class="modal-footer">
		    <a href="./" class="btn btn-success btn-large">Iniciar sesión</a>
		  </div>
		</div>
		<div class="modal fade" id="modalRegERROR" style="display: none;">
		  <div class="modal-header">
		    <a class="close" data-dismiss="modal">×</a>
                    <h3>Whups! Ocurri&oacute; un error :-(</h3>
		  </div>
		  <div class="modal-body">
		    <p></p>
		  </div>
		  <div class="modal-footer">
                      <button class="btn btn-danger btn-large" data-dismiss="modal">Cerrar</button>
		  </div>
		</div>
		<!-- Formulario
		================================================== -->
		<form class="form-horizontal" name="registro" id="registro" data-form="prestador" action="Signup" method="post">
<!--		<form class="form-horizontal" name="registro" id="registro" data-form="prestador" action="./jspf/forms/dataForm.jsp" method="post">-->
			<!-- inputs oculto -->
                        <input type="hidden" name="file" value="registro" />
			<div id="formulario">
                            <%@include file="/jspf/forms/registroPrestador.jsp" %>
			</div> <!-- end formulario -->
			<!-- botones de acci&oacute;n -->
			<div class="row center" id="sendButtons">
				<div class="span4 offset4">
					<button class="btn btn-primary btn-large" type="submit"
                                                data-loading-text="Registrando...">Registrarse</button>
					<button class="btn btn-large" type="reset">Limpiar campos</button>
				</div>
			</div> <!-- end row -->
		</form>
    </div>
	<!-- Footer
    ================================================== -->
        <%@include file="/jspf/footer.jsp" %>
        <script src="./js/signup.js"></script>
        <script src="./js/validaciones.js"></script>
</body>
</html>