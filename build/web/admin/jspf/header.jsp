<% 
    // Ruta de la app
    String home = request.getContextPath();
    // Nombre de usuario
    String usuario = (String) session.getAttribute("username");
    // Determinar que secci�n est� activa en el navbar
    String inicioActive = "";
    String reportesActive = "";
    String programasActive = "";
    String ayudaActive = "";
    String active = (String) request.getParameter("active");
    if (active != null) {
        if (active.compareTo("inicio") == 0) {
            inicioActive = " class=\"active\"";
        } else if (active.compareTo("reportes") == 0) {
            reportesActive = " class=\"active\"";
        } else if (active.compareTo("programas") == 0) {
            programasActive = " class=\"active\"";
        } else if (active.compareTo("ayuda") == 0) {
            ayudaActive = " class=\"active\"";
        }
    }
    
%>
                <!-- Navbar
		================================================== -->
		<nav>
		<div class="navbar navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">
					<a class="brand" href="<%= home %>">SiRASS</a>
					<!-- secciones -->
					<ul class="nav">
                                            <li<%= inicioActive %>><a href="./">Inicio</a></li>
                                            <li<%= reportesActive %>><a href="reportes.jsp">Reportes</a></li>
                                            <li<%= programasActive %>><a href="../programas.jsp">Programas</a></li>
                                            <li<%= ayudaActive %>><a href="../ayuda.jsp">Ayuda</a></li>
					</ul>
					<!-- busqueda -->
					<form class="navbar-search pull-left">
						<input class="search-query span3" type="text" name="search"
							id="search" placeholder="Buscar..." />
					</form>
					<!-- opciones de cuenta -->
					<ul class="nav pull-right">
						<li class="dropdown">
							<a href="#"
								class="dropdown-toggle" data-toggle="dropdown">
							<i class="icon-user icon-white"></i>
                                                            <%= usuario %>
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li><a href="./perfil.html"><i class="icon-user"></i>
									Perfil personal
									</a>
								</li>
								<li><a href="./baja.html"><i class="icon-remove"></i>
									Gestionar usuarios
									</a>
								</li>
								<li class="divider"></li>
								<li><a href="<%= home + "/Logout" %>"><i class="icon-off"></i>
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