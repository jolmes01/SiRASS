<!DOCTYPE html>
<html lang = "es">
	<head>
		<meta charset="utf-8" />
		<meta name="description" content="Sistema de Registro y Administraci&oacute;n de Servicio Social" />
		<meta name="author" content="Skyforge" />
		<meta name="keywords" content="servicio social, uacm, skyforge, practicas profesionales" />
		<title>SiRASS - Bienvenido</title>
		
		<!-- Estilos CSS -->
		<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" />
		<link href="../css/main.css" rel="stylesheet" />
		<link href="../css/reg.css" rel="stylesheet" />

		<!-- HTML5 shim, para soporte de IE6-8 + HTML5 -->
		<!-- <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script> -->
		<!--[if lt IE 9]>
			<script src="../js/html5.js"></script>
		<![endif]-->
	</head>
	<body>
		<header>
			<!-- Navbar
			=================================================== -->
			<nav>
				<div class = "navbar navbar-fixed-top">
					<div class = "navbar-inner">
						<div class = "container">
							<a class = "brand" href = "../index.html"> SiRASS </a>
							<!-- Secciones -->
							<ul class = "nav">
								<li><a href = "./home/index.html"> Inicio </a></li>
								<li><a href = ".home/programas.html"> Programas </a></li>
								<li><a href = "../ayuda.html"> Ayuda </a></li>
							</ul>
							<!-- Opciones de Cuenta -->
							<ul class = "nav pull-right">
								<li class = "dropdown">
									<a href="#"
										class = "dropdown-toggle" data-toggle = "dropdown">
									<i class = "icon-user icon-white"></i>
										username
										<b class = "caret"></b>
									</a>
									<ul class = "dropdown-menu">
										<li><a href = "./gPerfilInstitucion.html"><i class = "icon-user"></i>
											Perfil personal
											</a>
										</li>
										<li class = "divider"></li>
										<li class = "nav-header">Gestionar Programas</li>
										<li><a href = "./enviarPropuesta.html"><i class = "icon-file"></i>
											Enviar Propuesta
											</a>
										</li>
										<li><a href = "./actualProgramas.html"><i class = "icon-refresh"></i>
											Actualizar Programa
											</a>
										</li>
										<li><a href = "./bajaPrograma.html"><i class = "icon-remove"></i>
											Baja de programa
											</a>
										</li>
										<li class = "divider"></li>
										<li><a href = "#"><i class = "icon-off"></i>
												Cerrar sesi&oacute;n
											</a>
										</li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</nav>
		</header>
		<!-- Container
		================================================== -->
		<div class = "container-fluid">
			<div class = "row-fluid">
				<!-- Sidebar
				================================================== -->
				<div class = "span3">
					<nav class = "well">
						<ul class = "nav nav-list">
							<li>
								<a href = "./Institucion.html">
									<i class = "icon-home icon-black"></i>
								Inicio</a>
							</li>
							<li class = "nav-header"> Gestionar Perfil </li>
								<li><a href = "./gPerfilInstitucion.html">Editar Datos</a></li>
							<li class = "nav-header"> Genestionar Programas </li>
							<li><a href = "./enviarPropuesta.html">Enviar propuesta de programa</a></li>
							<li class = "active"><a href = "./actualProgramas.html"> 
												<i class = "icon-pencil icon-white"></i>
													Actualizar programa
												</a>
							</li>
							<li><a href = "./bajaPrograma.html"> Solicitar baja de programa</a></li>
							<!-- Avisos -->
							<li class = "divider"></li>
							<li class = "nav-header">
								<a href="#notifs">
								<i class = "icon-exclamation-sign"></i>
									Avisos
								</a>
							</li>							
						</ul>
					</nav>
				</div>
				<!-- Contenido
				================================================== -->
				<div class = "container bg span7">
					<header>
						<h1>Actualizar programa</h1>
						<p>Cambia los datos del programa seleccionado</p>
					</header>
					<!-- Formulario
					============================================== -->
					<form class = "form-horizontal" name = "actualProg" id = "actualProg" action="../jspf/forms/dataForm.jsp">
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
													<input type = "text" id = "nombreInsDep" name = "nombreInsDep" maxlength = "100" />
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
												<input type = "text" id = "nomProgIns" name = "nomProgIns" maxlength = "100" />
											</div>
										</div>
										<div class = "control-group">
											<label class = "control-label" for = "objProgIns">  Objetivo General: </label>
											<div class = "controls">
												<textarea  rows = "5" cols="70" maxlength = "400" placeholder = "write information about the objective in max 400 chars"></textarea>
											</div>
										</div>
										<div class = "control-group">
											<label class = "control-label" for = "justProgIns">  Justificaci&oacute;n: </label>
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
											<label class = "control-label" for = "recurProgIns">  Recursos: </label>
											<div class = "controls">
												<textarea id = "recurProgIns" name = "recurProgIns" rows = "5" cols="10" maxlength = "100" placeholder = "write information about this in max 100 chars"></textarea>
											</div>
										</div>
										<div class = "control-group">
											<label class = "control-label" for = "evalProgIns">  Evaluaci&oacute;n: </label>
											<div class = "controls">
												<textarea id = "evalProgIns" name = "evalProgIns" rows = "5" cols="10" maxlength = "400" placeholder = "write information about this in max 400 chars"></textarea>
											</div>
										</div>
										<div class = "control-group">
											<label class = "control-label" for = "resulProgIns">  Resultados: </label>
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
												<select name = "tipoProgIns" id = "tipoProgIns">
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
												<input type="text" name = "otrotipProgIns" id = "otrotipProgIns" maxlength = "30" placeholder = "Otro"/>
											</div>
										</div>
										<div class = "control-group">
											<label class = "control-label" for = "duraProgIns"> Duraci&oacute;n: </label>
											<div class = "controls">
												<select name = "duraProgIns" id = "duraProgIns">
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
											<label class = "control-label" for = "alcanProgIns"> Alcance: </label>
											<div class = "controls">
												<select multiple = "multiAlcan" name = "alcanProgIns" id = "alcanProgIns">
													<option>Zona Rural</option>
													<option>Zona Urbana</option>
													<option>Estatal</option>
													<option>Nacional</option>
													<option>Regional</option>
												</select>
												<p class="help-block"><em>En caso de ser mas de uno mantener presionada la tecla "ctrl".</em></p>
											</div>
										</div>
										<div class = "control-group">
											<label class = "control-label" for = "poblaProgIns"> Poblaci&oacute;n a atender: </label>
											<div class = "controls">
												<select multiple = "multiPobla" name = "poblaProgIns" id = "poblaProgIns">
													<option>Marginada</option>
													<option>No marginada</option>
													<option>Adultos</option>
													<option>Tercera edad</option>
													<option>J&oacute;venes</option>
													<option>Ni&ntilde;os</option>
												</select>
												<p class="help-block"><em>En caso de ser mas de uno mantener presionada la tecla "ctrl".</em></p>
											</div>
										</div>
										<div class = "control-group">
											<label class = "control-label" for = "lugarProgIns"> Lugar de Realizaci&oacute;n: </label>
											<div class = "controls">
												<input type = "text" name = "lugarProgIns" id = "lugarProgIns" maxlength = "45" placeholder = "Lugar o direcci&oacute;n" />
											</div>
										</div>
										<div class = "control-group">
											<label class = "control-label" for = "diasProgIns"> D&iacute;as de asistencia: </label>
											<div class = "controls">
												<select multiple = "multi" name = "diasProgIns" id = "diasProgIns">
													<option value = "L">Lunes</option>
													<option value = "M">Martes</option>
													<option value = "M">Mi&eacute;rcoles</option>
													<option value = "J">Jueves</option>
													<option value = "V">Viernes</option>
													<option value = "S">S&aacute;bado</option>
													<option value = "D">Domingo</option>
												</select>
												<p class="help-block"><em>En caso de ser mas de uno mantener presionada la tecla "ctrl".</em></p>
											</div>
										</div>
										<div class = "control-group">
											<label class = "control-label" for = "horaProgIns"> Horario: </label>
											<div class = "controls">
												<select name = "horaProgIns" id = "horaProgIns">
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
										<button class = "btn btn-info" type = "button"><i class = "icon-plus"></i></button>
										<p class = "help-block"><em> Si quieres agregar otra licenciatura presiona el bot&oacute;n</em></p>
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
										<button class = "btn btn-info" type = "button"><i class = "icon-plus"></i></button>
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
		<!-- Footer
		================================================== -->
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
		<script src="../js/jquery-1.7.1.min.js" type="text/javascript"></script>
		<script src="../bootstrap/js/bootstrap.min.js"></script>
	</body>
</html>