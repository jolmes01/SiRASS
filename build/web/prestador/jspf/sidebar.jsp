                <div class="span3" id="sidebar">
    			<nav class="well well-small">
    				<ul class="nav nav-list">
                                    <li id="home">
    						<a href="./">
	    						<i class="icon-home"></i>
    						Inicio</a>
    					</li>
                                        <li id="inscripcion"><a href="inscripcion.jsp">Inscripci&oacute;n</a></li>
                                        <li class="nav-header">Gestionar perfil</li>
    					<li id="perfil">
    						<a href="#perfil">
    							<i class="icon-pencil"></i>
    							Editar datos
    						</a>
    					</li>
    					<li class="nav-header">Generar reportes</li>
                                        <li id="controlHoras"><a href="controlHoras.jsp">Control Mensual de Horas</a></li>
                                        <li id="informeBim"><a href="informeBim.jsp">Informe Bimensual</a></li>
    					<li id="informeFin"><a href="informeFin.jsp">Informe Final</a></li>
    					<li class="divider"></li>
    					<!-- pendientes -->
    					<li class="nav-header">Revisiones</li>
    					<li id="revControl">
    						<a href="revControl.jsp">
    							<i class="icon-pencil"></i>
    							Control de Horas
    						</a>
    					</li>
                                        <li id="revBim"><a href="revBimensual.jsp"><i class="icon-pencil"></i>
    							Informe Bimensual
    						</a>
    					</li>
                                        <li id="revFin"><a href="revFinal.jsp">
    						<i class="icon-pencil"></i>
    							Informe Final
    						</a>
    					</li>
    					<!-- avisos -->
    					<li class="divider"></li>
                                        <li id="avisos">
    						<a href="avisos.jsp">
    						<i class="icon-exclamation-sign"></i>
    							Avisos
    						</a>
    					</li>
    					<li class="divider"></li>
    				</ul>
    			</nav>
    		</div>
<!-- input oculto que indica qué elemento estará activo -->
<% String active = (request.getParameter("active") != null) ? request.getParameter("active"): ""; %>
<input type="hidden" id="active" value="<%= active %>" />