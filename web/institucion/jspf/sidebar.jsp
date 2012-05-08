<%-- 
    Document   : sidebar
    Created on : 29/04/2012, 11:24:41 AM
    Author     : JL Macias
    Mail       : jolmes01@gmail.com
--%>

<%  String active = "";
    int li = 0;
    String liActives[] = {"","","","","","",""};
    String iconActive[] = {"","","","","","",""};
    active = (String) request.getParameter("active");
    // Detectar qué li debe estar activo
    if (active != null) {
        li = Integer.parseInt(active);
        liActives[li] = " class=\"active\"";
        iconActive[li] = " icon-white";
    }
    
%>

<div class = "span3" id="sidebar">
    <nav class = "well">
	<ul class = "nav nav-list">
        	<li <%= liActives[0]%> >
                    <a href = "./">
                    <i class = "icon-home <%= iconActive[0]%>"></i>
			Inicio</a>
		</li>
		<li class = "nav-header"> Gestionar Perfil </li>
                
		<li <%= liActives[1] %>><a href="#perfilInst">
                           <i class = "icon-pencil <%= iconActive[1] %> "></i> 
                                Editar Datos</a>
                </li>
		<li class = "nav-header"> Genestionar Programas </li>
		<li <%= liActives[2] %>><a href="#enviarPropuesta">
                           <i class = "icon-pencil <%= iconActive[2]%> "></i> 
                        
                                Enviar propuesta de programa</a></li>
		<li <%= liActives[3] %>><a href="#actualProgramas"> 
                           <i class = "icon-refresh <%= iconActive[3]%> "></i> 
				Actualizar programa</a>
		</li>
		<li <%= liActives[4] %>><a href="#bajaPrograma"> 
                           <i class = "icon-remove <%= iconActive[4] %>"></i> 
                                Solicitar baja de programa</a>
                </li>
		<!-- Avisos -->
		<li class = "divider"></li>
		<li <%= liActives[5] %>>
			<a href="#notifs">
				<i class = "icon-exclamation-sign <%= iconActive[5] %>"></i>
					Avisos
			</a>
		</li>		
                <li class="divider"></li>
	</ul>
    </nav>
</div>
