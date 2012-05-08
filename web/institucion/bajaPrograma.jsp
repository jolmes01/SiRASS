<%-- 
    Document   : bajaPrograma
    Created on : 29/04/2012, 12:49:50 PM
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
			<!-- Navbar
			=================================================== -->
			
		</header>
		<!-- Container
		================================================== -->
		<div class = "container-fluid">
			<div class = "row-fluid">
				<!-- Sidebar
				================================================== -->
				
				<!-- Contenido
				================================================== -->
				<div class = "container bg span7">
                                    <div id = "contenido">
					<header>
						<h1>Solicita la baja de alg&uacute;n programa</h1>
						<p>&iquest;Quieres dar de baja un programa?, Selecciona uno y se enviara la solicitud a las oficinas</p>
					</header>
					<!-- Formulario
					============================================== -->
					<form class = "form-horizontal" name = "bajaProg" id = "bajaProg">
						<div id = "formulario">
							<!-- Datos del programa y caracteristicas
							====================================== -->
							<div class = "row">
								<div class = "span7 ">
									<fieldset>
										<legend> Programas </legend>
										<table align = "center" class="table table-bordered table-striped">
											<thead>
												<tr>
												  <th> Clave Programa </th>
												  <th> Nombre Programa </th>
												  <th> Baja </th>
												</tr>
											</thead>
											<tbody>
											<tr>
											  <td> id_programa </td>
											  <td> name_prog </td>
											  <td><button class = "btn btn-danger"> Baja </button></td>
											</tr>
											<tr>
											  <td> id_programa2 </td>
											  <td> name_prog2 </td>
											  <td><button class = "btn btn-danger"> Baja </button></td>
											</tr>
											</tbody>
										</table>
									</fieldset> <!-- Fin listado -->
								</div>
							</div><!-- end row -->
						</div> <!-- end formulario -->
						<!-- botones de accion -->
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
