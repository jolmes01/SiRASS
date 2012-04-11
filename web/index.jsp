<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String cPath = application.getContextPath();
    // Detectar si ya se inició sesión
    boolean iniciada = (request.getAuthType() == null) ? false : true;
%>
<!DOCTYPE html>
<html lang="es">
    <!-- Head
    ================================================== -->
    <head>
        <meta http-equiv="Cache-control" content="no-cache" />
        <meta http-equiv="Pragma" content="no-cache" />
        <jsp:include page="/jspf/head.jsp">
            <jsp:param name="title" value="Sistema de Registro y Administraci&oacute;n de Servicio Social" />
        </jsp:include>
        <link href="<%= cPath %>/css/home.css" rel="stylesheet" />
    </head>
<body>
	<!-- Header
	================================================== -->
	<header>
            <div class="container">
                <div class="row">
                    <div class="span9 headFeature">
                        <h1>SiRASS, <em>Servicio Social</em></h1>
                        <p>Servicio Social simplificado. Olv&iacute;date de llenar tus formatos a mano y de las tediosas
                        revisiones.</p>
                        <% if(!iniciada) { %>
                        <a class="btn btn-primary btn-large" data-toggle="modal" href="#loginModal">Iniciar sesi&oacute;n</a>
                        <a class="btn btn-success btn-large" href="<%= cPath %>/signup.jsp">Registrarse</a>
                        <% } else { %>
                        <p><strong>Ya iniciaste sesi&oacute;n.</strong> Ir a mi <em><strong><a 
                                        href="<%= cPath + "/" + session.getAttribute("home") %>">p&aacute;gina de inicio.</a></strong></em></p>
                        <% } %>
                    </div>
                    <div class="span3">
                        <img src="<%=cPath%>/img/logo.png" alt="UACM Servicio Social" />
                    </div>
                </div>
            </div>
	</header>
	<!-- Login oculto
	================================================== -->
	<!-- Login oculto -->
	<div class="modal hide fade" id="loginModal">
		<div class="modal-header">
			<a class="close" data-dismiss="modal">x</a>
			<h3>Iniciar sesi&oacute;n</h3>
		</div>
<!--		<form method="POST" action="j_security_check" class="form-horizontal">-->
		<form method="POST" action="<%= cPath %>/Login" class="form-horizontal">
			<div class="modal-body">
					<fieldset>
						<div class="control-group">
							<label for="user" class="control-label">Usuario: </label>
							<div class="controls">
								<input type="text" name="j_username" placeholder="Usuario"
                                                                       class="input-xlarge" id="user" tabindex="1" autofocus="autofocus"/>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="password">Contrase&ntilde;a: </label>
							<div class="controls">
								<input type="password" name="j_password" placeholder="Contrase&ntilde;a"
                                                                       class="input-xlarge" id="password" tabindex="2" />
							</div>
						</div>
					</fieldset>
			</div>
			<div class="modal-footer">
				<input class="btn btn-primary" type="submit" value="Login" />
                                <button class="btn" data-dismiss="modal">Cancelar</button>
			</div>
		</form>
	</div>
	<div class="container bg">
		<div class="row" id="sections">
			<div class="span4">
				<img src="<%= cPath %>/img/plist.png" alt="" />
				<h2>Programas</h2>
				<p>Conoce todos los programas de Servicio Social que ofrece para ti la UACM.</p>
				<a class="btn btn-info" href="<%= cPath %>/programas.html">Lista de programas &raquo;</a>
			</div>
			<div class="span4">
				<img src="<%= cPath %>/img/process.png" alt="" />
				<h2>Proceso</h2>
				<p>Echa un vistazo a los procesos que se deben llevar a cabo para realizar tu Servicio Social.</p>
				<a class="btn btn-info" href="<%= cPath %>/ayuda.html#proceso">Ver diagramas &raquo;</a>
			</div>
			<div class="span4">
				<img src="<%= cPath %>/img/help.png" alt="" />
				<h2>Ayuda</h2>
				<p>Aclara tus dudas respecto a qu&eacute; necesitas para realizar tu Servicio Social.</p>
				<a class="btn btn-info" href="<%= cPath %>/ayuda.html">Obtener ayuda &raquo;</a>
			</div>
		</div>
	</div>
	<!-- Footer
    ================================================== -->
        <%@include file="jspf/footer.jsp" %>
</body>
</html>
