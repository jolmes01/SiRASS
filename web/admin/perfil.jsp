<!DOCTYPE html>
<html lang="es">
<head>
    <jsp:include page="/jspf/head.jsp">
        <jsp:param name="title" value="Editar perfil"></jsp:param>
    </jsp:include>
	<link href="../css/reg.css" rel="stylesheet" />
</head>
<body>
	<header>
            <jsp:include page="jspf/header.jsp"></jsp:include>
	</header>
	<!-- Container
    ================================================== -->
    <div class="container-fluid">
    	<div class="row-fluid">
    		<!-- Sidebar
    		================================================== -->
                <jsp:include page="jspf/sidebar.jsp"></jsp:include>
    		<!-- Contenido
    		================================================== -->

    		<div class="container bg span7">
                    <div id="contenido">
    			<header>
		    		<h1>Configuración de Perfil</h1>
		    		<p>Cambia tus datos personales o datos de usuario.</p>
	    		</header>
	    		<div id="formulario">
	    			<form method="post" class="form-horizontal">
	    				<!-- Datos personales y domicilio
	    				================================================== -->
	    				<!-- datos personales -->
	    				<div class="row well">
	    					<fieldset>
	    						<legend>Datos personales</legend>
	    						<div class="control-group">
	    							<label class="control-label" for="nombre">Nombre(s):</label>
	    							<div class="controls">
	    								<input type="text" id="nombre" name="nombre" maxlength="25" />
	    							</div>
	    						</div>
	    						<div class="control-group">
	    					  		<label class="control-label" for="aPaterno">Apellido paterno:</label>
	    							<div class="controls">
	    								<input type="text" id="aPaterno" name="aPaterno" maxlength="15" />
	    							</div>
	    						</div>
	    						<div class="control-group">
	    						  	<label class="control-label" for="aMaterno">Apellido materno:</label>
	    							<div class="controls">
	    								<input type="text" id="aMaterno" name="aMaterno" maxlength="15" />
	    							</div>
	    						</div>
	    						<div class="control-group">
	    						  	<label class="control-label" for="email">Email:</label>
	    							<div class="controls">
	    								<div class="input-prepend">
	    									<span class="add-on">
	    										<i class="icon-envelope"></i>
	    									</span>
	    								</div><input class="input-large" type="text" id="email" name="email" maxlength="30" />
	    							</div>
	    						</div>
	    						<div class="control-group">
	    						  	<label class="control-label" for="nDia">Fecha de nacimiento:</label>
	    							<div class="controls">
	    								<select class="span1" name="nDia" id="nDia">
	    									<option value="0">D&iacute;a</option>
	    								</select>
	    								<select class="span1" name="nMes" id="nMes">
	    									<option value="0">Mes</option>
	    								</select>
	    								<select class="span1" name="nAno" id="nAno">
	    									<option value="0">A&ntilde;o</option>
	    								</select>
	    							</div>
	    						</div>
	    						<div class="control-group">
	    						  	<label class="control-label" for="sexo">Sexo:</label>
	    							<div class="controls">
	    								<label class="radio inline">
	    									<input type="radio" id="sexo" name="sexo" value="M" checked="checked" />
	    										Masculino
	    								</label>
	    								<label class="radio inline">
	    									<input type="radio" name="sexo" value="F" />
	    						  				Femenino
	    								</label>
	    							</div>
	    						</div>
	    					</fieldset> <!-- end datos personales -->
	    				</div>
	    				<!-- domicilio -->
	    				<div class="row well">
	    					<fieldset>
	    						<legend>Domicilio</legend>
	    						<div class="control-group">
	    						  	<label class="control-label" for="dCalle">Calle:</label>
	    							<div class="controls">
	    								<input type="text" id="dCalle" name="dCalle" maxlength="40" />
	    							</div>
	    						</div>
	    						<div class="control-group">
	    						  	<label class="control-label" for="dNumExt">N&uacute;mero:</label>
	    							<div class="controls">
	    								<input class="input-small" type="text" id="dNumExt" name="dNumExt" maxlength="7" placeholder="Ext." />
	    								<input class="input-small" type="text" id="dNumInt" name="dNumInt" maxlength="7" placeholder="Int." />
	    							</div>
	    						</div>
	    						<div class="control-group">
	    							<label class="control-label" for="dCP">C&oacute;digo postal:</label>
	    							<div class="controls">
	    								<input class="input-small" type="text" id="dCP" name="dCP" maxlength="5" />
	    							</div>
	    						</div>
	    						<div class="control-group">
	    						  	<label class="control-label" for="dDelegacion">Delegaci&oacute;n:</label>
	    							<div class="controls">
	    								<input type="text" id="dDelegacion" name="dDelegacion" maxlength="20" />
	    							</div>
	    						</div>
	    						<div class="control-group">
	    						  	<label class="control-label" for="dColonia">Colonia:</label>
	    							<div class="controls">
	    								<input type="text" id="dColonia" name="dColonia" maxlength="20" />
	    							</div>
	    						</div>
	    						<div class="control-group">
	    					  		<label class="control-label" for="telCasa">Tel&eacute;fono:</label>
	    							<div class="controls">
	    								<input class="input-small" type="text" id="telCasa" name="telCasa" maxlength="8" placeholder="Casa" />
	    								<input class="input-small" type="text" id="telCel" name="telCel" maxlength="13" placeholder="Celular" />
	    							</div>
	    						</div>
	    					</fieldset> <!-- end domicilio -->
	    				</div> <!-- row end -->
	    				<!-- Datos de usuario
	    				================================================== -->
	    				<div class="row well">
	    					<!-- usuario -->
	    					<fieldset>
	    						<legend>Informacion de usuario</legend>
	    						<div class="control-group">
	    							<label class="control-label" for="usuario">Nombre de usuario:</label>
	    							<div class="controls">
	    								<input type="text" id="usuario" name="usuario" maxlength="15" placeholder="username" />
	    								<p class="help-block"><em>6-15 caracteres.</em></p>
	    							</div>
	    						</div>
	    						<div class="control-group">
	    							<label class="control-label" for="password">Contrase&ntilde;a:</label>
	    							<div class="controls">
	    								<input type="password" id="password" name="password" maxlength="15" placeholder="password" />
	    								<p class="help-block"><em>6-15 caracteres.</em></p>
	    							</div>
	    						</div>					
	    						<div class="control-group">
	    							<label class="control-label" for="passwordVeif">Verifica contrase&ntilde;a:</label>
	    							<div class="controls">
	    								<input type="password" id="passwordVeif" name="passwordVeif" maxlength="15" />
	    							</div>
	    						</div>
	    						<div class="control-group">
	    							<label class="control-label" for="difundir">Autorizo que mis datos sean difundidos:</label>
	    							<div class="controls">
	    								<label class="radio inline">
	    									<input type="radio" id="difundir" name="difundir" value="1" checked="checked" /> S&iacute;
	    								</label>
	    								<label class="radio inline">
	    									<input type="radio" name="difundir" value="0" /> No
	    								</label>
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
</body>
</html>