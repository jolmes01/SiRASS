<%-- 
    Document   : perfilInst
    Created on : 29/04/2012, 10:14:24 PM
    Author     : JL Macias
--%>

<%@page import="com.sirass.model.Institucion"%>
<%@page import="com.sirass.model.Usuario"%>
<%@page import="com.sirass.dao.UsuarioDAO"%>
<% UsuarioDAO dao = new UsuarioDAO();
   Usuario user = dao.getByUsername(String.valueOf(session.getAttribute("username")));
   String plantel = String.valueOf(user.getInstitucion().getIdPlantel());
   String valorP = "";
   Institucion ins = user.getInstitucion();
   if (plantel == null){
       plantel = "sin plantel";
       valorP = "NULL";
   }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = "es">
    <head>
        <jsp:include page="/jspf/head.jsp">
            <jsp:param name="title" value="Bienvenido"/>
        </jsp:include>
	<link href="../css/reg.css" rel="stylesheet" />
    </head>
    <body>       
	<!-- Header
        ==================================== -->
	<header>
            <jsp:include page="jspf/header.jsp">
                <jsp:param name="active" value="inicio"></jsp:param>
            </jsp:include>
	</header>
        <!-- Container
	================================================== -->
        <div class = "container-fluid">
            <div class = "row-fluid">
                <!-- Sidebar
                ================================================== -->
                    <jsp:include page="jspf/sidebar.jsp">
                        <jsp:param name="active" value= "0"/>
                    </jsp:include>
                    <!-- Contenido -->
                        <div class = "container bg span7">
                            <div id = "contenido">
                                <header>
                                    <h1>Configuración de Perfil</h1>
                                    <p>Cambia tus datos personales o datos de usuario.</p>
				</header>
				<div id="formulario">
                                    <form method="post" action ="../jspf/forms/dataForm.jsp" class="form-horizontal">
						<!-- Datos de la Unidad
						================================================== -->
						<div class="row well">
							<fieldset>
								<legend>Datos de la unidad prestataria</legend>
								<div class="control-group">
                                        				<label class="control-label" for="nombreU">Unidad prestataria:</label>
									<div class="controls">
										<input type="text" disabled="true" id="nombreU" value =" <%= ins.getIdPlantel() %> " name="nombreU" maxlength="25" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label" for="areaSub">Area/Subdirecci&oacute;n:</label>
									<div class="controls">
										<input type="text" disabled = "true" id="areaSub" value ="<%= ins.getArea() %>" name="areaSub" maxlength="15" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label" for="domiU">Domicilio:</label>
									<div class="controls">
										<input type="text" id="domiU" name="domiU" value =" <%= ins.getDomicilio() %> " maxlength="50" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label" for="responU">Responsable:</label>
									<div class="controls">
										<input type="text" id="responU" name="responU" value =" <%= ins.getResponsable() %> " maxlength="50" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label" for="cargoResU">Cargo:</label>
									<div class="controls">
										<input type="text" id="cargoResU" name="cargoResU" value =" <%= ins.getCargo() %> " maxlength="50" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label" for="telU">Telefono: </label>
									<div class="controls">
										<input class = "input-small" type="text" id="telU" name="telU" value =" <%= ins.getTel() %> " maxlength="10" />
										<input class = "input-small" type="text" id="telExtU" name="telExtU" maxlength="7" value =" <%= ins.getTelExt() %> " placeholder = "Ext."/>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label" for="emailInst">Email:</label>
									<div class="controls">
										<div class="input-prepend">
											<span class="add-on">
												<i class="icon-envelope"></i>
											</span>
										</div><input class="input-large" type="text" id="emailInst" name="emailInst" value =" <%= ins.getEmail() %> " maxlength="30" />
									</div>
								</div>
							</fieldset> <!-- end datos de Unidad -->
						</div>
						<!-- Datos de usuario
						================================================== -->
						<div class="row well">
							<!-- usuario -->
							<fieldset>
								<legend>Informacion de usuario</legend>
								<div class="control-group">
									<label class="control-label" for="usuario">Nombre de usuario:</label>
									<div class="controls">
										<input type="text" id="usuario" name="usuario" disabled = "true" maxlength="15" placeholder=" <%= session.getAttribute("username")%> " />
										<p class="help-block"><em>6-15 caracteres.</em></p>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label" for="password">Nueva Contrase&ntilde;a:</label>
									<div class="controls">
										<input type="password" id="npassword" name="npassword" maxlength="15" placeholder="password" />
										<p class="help-block"><em>6-15 caracteres.</em></p>
									</div>
								</div>					
								<div class="control-group">
									<label class="control-label" for="passwordVeif">Verifica contrase&ntilde;a:</label>
									<div class="controls">
										<input type="password" id="passwordVeif" name="passwordVeif" maxlength="15" placeholder = "verify password" />
									</div>
								</div>
							</fieldset> <!-- end usuario -->
						</div> <!-- row end -->
						<div class="row center">
								<button class="btn btn-primary btn-large input-large" type="submit">Actualizar datos</button>
						</div> <!-- end row -->
					</form>
				</div>
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
    </body>
</html>
