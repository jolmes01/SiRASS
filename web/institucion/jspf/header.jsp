<%-- 
    Document   : header
    Created on : 29/04/2012, 02:25:03 PM
    Author     : JL Macias
    Mail       : jolmes01@gmail.com
--%>

<% 
    // Ruta de la app
    String home = request.getContextPath();
    // Nombre de usuario
    String usuario = (String) session.getAttribute("username");
    // Determinar que sección está activa en el navbar
    String inicioActive = "";
    String ayudaActive = "";
    String active = (String) request.getParameter("active");
    if (active != null) {
        if (active.compareTo("inicio") == 0) {
            inicioActive = " class=\"active\"";
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
					<a class="brand" href=" <%= home %> ">SiRASS</a>
					<!-- secciones -->
					<ul class="nav">
                                            <li<%= inicioActive %>><a href="./">Inicio</a></li>
                                            <li<%= ayudaActive %>><a href="../ayuda.jsp">Ayuda</a></li>
					</ul>
					<!-- Opciones de Cuenta -->
					<ul class = "nav pull-right">
                                            <li class = "dropdown">
						<a href="#"
							class = "dropdown-toggle" data-toggle = "dropdown">
							<i class = "icon-user icon-white"></i>
								<%= usuario %>
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
                                                    <li><a href = "<%= home + "/Logout" %>"><i class = "icon-off"></i>
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
