<!-- Datos personales y domicilio
			================================================== -->
			<div class="row">
				<!-- datos personales -->
				<div class="span6 well">
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
								<% for (int i=1; i <= 31; i++) { 
								%>
								<option><%= i %></option>
								<% } %>
							</select>
							<select class="span1" name="nMes" id="nMes">
								<option value="0">Mes</option>
								<% for (int i=1; i <= 12; i++) { 
								%>
								<option><%= i %></option>
								<% } %>
							</select>
							<select class="span1" name="nAno" id="nAno">
								<option value="0">A&ntilde;o</option>
								<% for (int i=2000; i >= 1960; i--) { 
								%>
								<option><%= i %></option>
								<% } %>
							</select>
                                                        <!-- input oculto nacimiento -->
                                                        <input type="hidden" name="nacimiento" id="nacimiento" />
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
				<div class="span5 well">
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
				</div>
			</div> <!-- row end -->
			<!-- Datos de usuario
			================================================== -->
			<div class="row">
				<div class="span6 well">
					<!-- usuario -->
					<fieldset>
					<legend>Informacion de usuario</legend>
					<div class="control-group">
						<label class="control-label" for="usuario">Nombre de usuario:</label>
						<div class="controls">
							<input type="text" id="username" name="username" maxlength="15" placeholder="username" />
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
				</div>
			</div> <!-- row end -->
                        <!-- input oculto -->
                        <input type="hidden" name="userType" value="prestador" />