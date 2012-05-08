<%-- 
    Document   : editarPrograma
    Created on : 29/04/2012, 12:50:10 PM
    Author     : JL Macias
    Mail       : jolmes01@gmail.com
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
		<jsp:include page="/jspf/head.jsp">
                    <jsp:param name="title" value="Bienvenido"></jsp:param>
                </jsp:include>
                <link href="../css/reg.css" rel="stylesheet" />
	</head>
	<body>
		<header>
                    <jsp:include page="jspf/header.jsp">
                        <jsp:param name="active" value="programas"></jsp:param>
                    </jsp:include>
		</header>
                <!-- Sidebar
                ================================================== -->
                <jsp:include page="jspf/sidebar.jsp">
                    <jsp:param name="active" value= "6"/>
                </jsp:include>
		<!-- Container
		================================================== -->
		<div class = "container-fluid">
			<div class = "row-fluid">
				<!-- Contenido
				================================================== -->
				<div class = "container bg span7">
                                    <div id = "contenido">
					<header>
						<h1>Actualizar programa</h1>
						<p>Cambia ciertos datos de alguno de tus programas</p>
					</header>
					<!-- Formulario
					============================================== -->
					<form class = "form-horizontal" name = "actualProg" id = "actualProg">
						<div id = "formulario">
							<!-- Listado de programas
							====================================== -->
							<div class = "row">
								<div class = "span7 well">
									<fieldset>
										<legend> name_Programa </legend>
											<!-- Datos de unidad -->
											<div class = "control-group">
												<label class = "control-label" for = "institucion">Institucion/Dependencia:</label>
												<div class = "controls">
													<input type = "text" id = "nombreInsDep" disabled = "false" value = "sfdgsfdgfg" name = "nombreInsDep" maxlength = "100" />
												</div>
											</div>
											<div class = "control-group">
												<label class = "control-label" for = "areaSubdire"> &Aacute;rea/Subdireccion: </label>
												<div class = "controls">
													<input type = "text" id = "areaSub" name = "areaSub" maxlength = "100"/>
												</div>
											</div>
											<div class = "control-group">
												<label class = "control-label" for = "domiIns"> Domicilio: </label>
												<div class = "controls">
													<input type = "text" id = "domiIns" name = "domiIns" maxlength = "100"/>
												</div>
											</div>
											<div class = "control-group">
												<label class = "control-label" for = "respoIns"> Responsable </label>
												<div class = "controls">
													<input type = "text" id = "respoIns" name = "respoIns" maxlength = "100"/>
												</div>
											</div>
											<div class = "control-group">
												<label class = "control-label" for = "cargoRespoIns"> Cargo: </label>
												<div class = "controls">
													<input type = "text" id = "cargoRespoIns" name = "cargoRespoIns" maxlength = "100"/>
												</div>
											</div>
											<div class = "control-group">
												<label class = "control-label" for = "telRespoIns"> Tel&eacute;fono: </label>
												<div class = "controls">
													<input type = "text" id = "telRespoIns" name = "telRespoIns" maxlength = "100"/>
												</div>
											</div>
											<div class = "control-group">
												<label class = "control-label" for = "areaSubdire"> Correo electr&oacute;nico: </label>
												<div class = "controls">
												<div class="input-prepend">
													<span class="add-on">
														<i class="icon-envelope"></i>
													</span>
												</div><input type = "text" id = "areaSub" name = "areaSub" maxlength = "100"/>
												</div>
											</div>
											
									</fieldset><!-- fin datos de unidad -->
								</div>
								<!-- datos del programa -->
								<div class = "span7 well">
									<fieldset>
										<legend>Datos del programa</legend>
										<div class = "control-group">
											<label class = "control-label" for = "nomProgIns">  Nombre del programa: </label>
											<div class = "controls">
												<input type = "text" disabled = "true" id = "nomProgIns" name = "nomProgIns" maxlength = "100" />
											</div>
										</div>
										<div class = "control-group">
											<label class = "control-label" for = "objProgIns">  Objetivo General: </label>
											<div class = "controls">
												<textarea  rows = "5" cols="70" maxlength = "400" placeholder = "write information about the objective in max 400 chars"></textarea>
											</div>
										</div>
										<div class = "control-group">
											<label class = "control-label" disabled = "true" for = "justProgIns">  Justificaci&oacute;n: </label>
											<div class = "controls">
												<textarea id = "justProgIns" name = "justProgIns" rows = "5" cols="10" maxlength = "300" placeholder = "write information about this in max 300 chars"></textarea>
											</div>
										</div>
										<div class = "control-group">
											<label class = "control-label" for = "desProgIns">  Desarrollo: </label>
											<div class = "controls">
												<textarea id = "desProgIns" name = "desProgIns" rows = "5" cols="10" maxlength = "500" placeholder = "write information about this in max 500 chars"></textarea>
											</div>
										</div>
										<div class = "control-group">
											<label class = "control-label" disabled = "true" for = "recurProgIns">  Recursos: </label>
											<div class = "controls">
												<textarea id = "recurProgIns" name = "recurProgIns" rows = "5" cols="10" maxlength = "100" placeholder = "write information about this in max 100 chars"></textarea>
											</div>
										</div>
										<div class = "control-group">
											<label class = "control-label" disabled = "true" for = "evalProgIns">  Evaluaci&oacute;n: </label>
											<div class = "controls">
												<textarea id = "evalProgIns" name = "evalProgIns" rows = "5" cols="10" maxlength = "400" placeholder = "write information about this in max 400 chars"></textarea>
											</div>
										</div>
										<div class = "control-group">
											<label class = "control-label" disabled = "true" for = "resulProgIns">  Resultados: </label>
											<div class = "controls">
												<textarea id = "resulProgIns" name = "resulProgIns" rows = "5" cols="10" maxlength = "300" placeholder = "write information about this in max 300 chars"></textarea>
											</div>
										</div>
									</fieldset><!-- fin datos del programa -->
								</div>
								<!-- caracteristicas del programa -->
								<div class = "span7 well">
									<fieldset>
										<legend>Caracter&iacute;sticas del programa</legend>
										<div class = "control-group">
											<label class = "control-label" for = "tipoProgIns"> Tipo: </label>
											<div class = "controls">
												<select disabled = "true" name = "tipoProgIns" id = "tipoProgIns">
													<option>H&iacute;brido</option>
													<option>Atenci&oacute;n a la comunidad universitaria</option>
                                                                                                        <option>Administrativo</option>
													<option>Comunitario</option>
													<option>Educativo</option>
													<option>Investigaci&oacute;n</option>
													<option>Operacional</option>
													<option>Otro</option>
												</select>
											</div>
										</div>
										<div class = "control-group">
											<div class = "controls">
												<input type="text" disabled = "true" name = "otrotipProgIns" id = "otrotipProgIns" maxlength = "30" placeholder = "Otro"/>
											</div>
										</div>
										<div class = "control-group">
											<label class = "control-label" for = "duraProgIns"> Duraci&oacute;n: </label>
											<div class = "controls">
												<select disabled="true" name = "duraProgIns" id = "duraProgIns">
													<option>Permanente</option>
													<option>Determinado</option>
												</select>
											</div>
										</div>
										<div class = "control-group">
											<label class = "control-label" for = "timeDurProgIns"> Fecha de Vencimiento: </label>
											<div class = "controls">
												<select class="span1" name="vDia" id="vDia">
													<option value="0">D&iacute;a</option>
												</select>
												<select class="span1" name="vMes" id="vMes">
													<option value="0">Mes</option>
												</select>
												<select class="span1" name="vAno" id="vAno">
													<option value="0">A&ntilde;o</option>
												</select>
												<p class="help-block"><em>SOLO en caso de Determinado.</em></p>
											</div>
										</div>
										<div class = "control-group">
											<label class = "control-label" for = "multAlcan"> Alcance: </label>
											<div class = "controls">
												<select disabled = "true" multiple ="multAlcan" name = "alcanProgIns" id = "alcanProgIns">
                                                                                                    <option>Zona Rural</option>
													<option>Zona Urbana</option>
													<option>Estatal</option>
													<option>Nacional</option>
													<option>Regional</option>
												</select>
											</div>
										</div>
										<div class = "control-group">
											<label class = "control-label" for = "poblaProgIns"> Poblaci&oacute;n a atender: </label>
											<div class = "controls">
												<select disabled = "true" multiple = "multiPobla" name = "poblaProgIns" id = "poblaProgIns">
													<option>Marginada</option>
													<option>No marginada</option>
													<option>Adultos</option>
													<option>Tercera edad</option>
													<option>J&oacute;venes</option>
													<option>Ni&ntilde;os</option>
												</select>
											</div>
										</div>
										<div class = "control-group">
											<label class = "control-label" for = "lugarProgIns"> Lugar de Realizaci&oacute;n: </label>
											<div class = "controls">
												<input disabled = "true" type = "text" name = "lugarProgIns" id = "lugarProgIns" maxlength = "45" placeholder = "Lugar o direcci&oacute;n" />
											</div>
										</div>
										<div class = "control-group">
											<label class = "control-label" for = "diasProgIns"> D&iacute;as de asistencia: </label>
											<div class = "controls">
												<select disabled = "true" multiple = "multiPobla" name = "diasProgIns" id = "diasProgIns">
													<option value = "L">Lunes</option>
													<option value = "M">Martes</option>
													<option value = "M">Mi&eacute;rcoles</option>
													<option value = "J">Jueves</option>
													<option value = "V">Viernes</option>
													<option value = "S">S&aacute;bado</option>
													<option value = "D">Domingo</option>
												</select>
											</div>
										</div>
										<div class = "control-group">
											<label class = "control-label" for = "horaProgIns"> Horario: </label>
											<div class = "controls">
												<select disabled = "true" name = "horaProgIns" id = "horaProgIns">
													<option value = "Matutino">Matutino</option>
													<option value = "Vespertino">Vespertino</option>
													<option value = "Mixto">Mixto</option>
												</select>
											</div>
										</div>
									</fieldset><!-- fin caracteristicas del programa -->
								</div>
								<!-- Perfil academico -->
								<div class = "span7 well">
									<fieldset>
										<legend>Perfil Acad&eacute;mico</legend>
										<div class = "control-group">
											<label class = "control-label" for = "actProgIns"> Actividades: </label>
											<div class = "controls">
												<textarea name = "actProgIns" id = "actProgIns" rows = "5" maxlength = "400" placeholder = "Write 5 activities how min in MAX 400 chars" ></textarea>
											</div>
										</div>
										<div class = "control-group">
											<label class = "control-label" for = "licenProgIns"> Licenciatura: </label>
											<div class = "controls">
												<input type = "text" name = "licenProgIns" id = "licenProgIns" maxlength ="50" />
											</div>
										</div>
										<div class = "control-group">
											<label class = "control-label" for = "vacanProgIns"> No. Vacantes: </label>
											<div class = "controls">
												<input type = "text" name = "licenProgIns" id = "licenProgIns" maxlength ="3" size = "5" />
											</div>
										</div>
										<button class = "btn btn-info" type = "button"><i class="icon-plus icon-white"></i> Agregar</button>
										<p class = "help-block"><em> Si quieres agregar otra licenciatura presiona el bot&oacute;n</em></p>
									</fieldset> <!-- Fin listado -->
								</div>
							</div><!-- end row -->
						</div> <!-- end formulario -->
						<!-- botones de accion -->
						<div class = "row center">
							<div class = "span4 offset3">
								<button class = "btn btn-primary btn-large" type = "submit">Actualizar</button>
							</div>
						</div>
					</form>
				
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
