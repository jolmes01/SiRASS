<%  String active = "";
    int li = 0;
    String liActives[] = {"","","","","","","","",""};
    String iconActive[] = {"","","","","","","","",""};
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
    						<a href="#perfil">
    							<i class="icon-pencil<%=iconActive[1]%>"></i>
    							Editar datos
    						</a>
    					</li>
    					<li class="nav-header">Generar reportes</li>
    					<li<%=liActives[2]%>><a href="#controlHoras">Control Mensual de Horas</a></li>
    					<li<%=liActives[3]%>><a href="#informeBim">Informe Bimensual</a></li>
    					<li<%=liActives[4]%>><a href="#informeFin">Informe Final</a></li>
    					<li class="divider"></li>
    					<!-- pendientes -->
    					<li class="nav-header">Revisiones</li>
    					<li<%=liActives[5]%>>
    						<a href="#revControl">
    							<i class="icon-pencil<%=iconActive[5]%>"></i>
    							Control de Horas
    						</a>
    					</li>
    					<li<%=liActives[6]%>><a href="#revBimensual"><i class="icon-pencil<%=iconActive[6]%>"></i>
    							Informe Bimensual
    						</a>
    					</li>
    					<li<%=liActives[7]%>><a href="#revFinal">
    						<i class="icon-pencil<%=iconActive[7]%>"></i>
    							Informe Final
    						</a>
    					</li>
    					<!-- avisos -->
    					<li class="divider"></li>
    					<li<%=liActives[8]%>>
    						<a href="#avisos">
    						<i class="icon-exclamation-sign<%=iconActive[8]%>"></i>
    							Avisos
    						</a>
    					</li>
                                        <li><a href="#inscripcion">Inscripci&oacute;n</a></li>
    					<li class="divider"></li>
    				</ul>
    			</nav>
    		</div>