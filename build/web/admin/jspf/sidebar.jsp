<%  String active = "";
    int li = 0;
    String liActives[] = {"","","","","","","","","","","",""};
    String iconActive[] = {"","","","","","","","","","","",""};
    // Obtener el activo
    active = (String) request.getParameter("active");
    // Detectar qué li debe estar activo
    if (active != null) {
        li = Integer.parseInt(active);
        liActives[li] = " class=\"active\"";
        iconActive[li] = " icon-white";
    }
    
%>
                <div class="span3" id="sidebar">
    			<nav class="well">
    				<ul class="nav nav-list">
    					<li<%=liActives[0]%>>
    						<a href="./">
	    						<i class="icon-home<%=iconActive[0]%>"></i>
    						Inicio</a>
    					</li>
    					<li class="nav-header">Gestionar perfil</li>
    					<li<%=liActives[1]%>>
    						<a href="#perfilAdmin">
    							<i class="icon-pencil<%=iconActive[1]%>"></i>
    							Editar datos
    						</a>
    					</li>
    					<li class="nav-header">Generar reportes</li>
                                        <li<%=liActives[2]%>><a href="#gemPresentacion">Carta de Presentaci&oacute;n</a></li>
    					<li<%=liActives[3]%>><a href="#genAceptacion">Carta de Aceptaci&oacute;n</a></li>
    					<li<%=liActives[4]%>><a href="#genTermino">Carta de T&eacute;rmino</a></li>
    					<li<%=liActives[5]%>><a href="#genKardex">K&aacute;rdex</a></li>
    					<li<%=liActives[6]%>><a href="#genBaja">Formato de baja</a></li>
    					<li class="divider"></li>
    					<!-- pendientes -->
    					<li class="nav-header">Pendientes</li>
    					<li<%=liActives[7]%>>
    						<a href="#control">
    							<i class="icon-pencil<%=iconActive[7]%>"></i>
    							Control de Horas
    						</a>
    					</li>
    					<li<%=liActives[8]%>>
                                                <a href="#bimensual">
                                                        <i class="icon-pencil<%=iconActive[8]%>"></i>
    							Informe Bimensual
    						</a>
    					</li>
    					<li<%=liActives[9]%>><a href="#final">
    						<i class="icon-pencil<%=iconActive[9]%>"></i>
    							Informe Final
    						</a>
    					</li>
    					<!-- buscar -->
    					<li<%=liActives[10]%>>
    						<a href="#buscar">
    							<i class="icon-search<%=iconActive[10]%>"></i>
    							Buscar
    						</a>
    					</li>
    					<!-- avisos -->
    					<li class="divider"></li>
    					<li<%=liActives[11]%>>
    						<a href="#avisos">
    						<i class="icon-exclamation-sign<%=iconActive[11]%>"></i>
    							Avisos
    						</a>
    					</li>
    					<li class="divider"></li>
    				</ul>
    			</nav>
    		</div>