<%-- 
    Document   : actualProgramas
    Created on : 29/04/2012, 12:48:39 PM
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
						<h1>Actualizar programa</h1>
						<p>Selecciona el programa que quieres actualizar</p>
					</header>
					<!-- Formulario
					============================================== -->
					<form class = "form-horizontal" name = "actualProg" id = "actualProg">
						<div id = "formulario">
							<!-- Listado de programas
							====================================== -->
							<div class = "row">
								<div class = "span7 ">
									<fieldset>
										<legend> Programas </legend>
										<table align = "center" class = "table table-bordered table-striped">
											<thead>
												<tr>
												  <th> Clave Programa </th>
												  <th> Nombre Programa </th>
												  <th> Actualizar </th>
												</tr>
											</thead>
											<tbody>
											<tr>
											  <td> id_programa </td>
											  <td> name_prog </td>
											  <td><a href = "editarPrograma.jsp"> <button class = "btn btn-info"> Actualizar </button></a></td>
											</tr>
											<tr>
											  <td> id_programa2 </td>
											  <td> name_prog2 </td>
											  <td><a href = ""><button class = "btn btn-info"> Actualizar </button></a> </td>
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