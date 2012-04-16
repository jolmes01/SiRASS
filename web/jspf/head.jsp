<% String path = application.getContextPath(); %>
        <meta charset="utf-8" />
	<meta name="description" content="Sistema de Registro y Administraci&oacute;n de Servicio Social" />
	<meta name="author" content="Skyforge" />
	<meta name="keywords" content="servicio social, uacm, skyforge, practicas profesionales" />
        <title>SiRASS - <%= request.getParameter("title") %></title>
	
	<!-- Estilos CSS -->
	<link href="<%= path %>/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="<%= path %>/css/main.css" rel="stylesheet" />
        <link rel="icon" href="<%= path %>/favicon.ico" type="image/x-icon" />

        <!-- HTML5 shim, para soporte de IE6-8 + HTML5 -->
        <!-- <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script> -->
        <!--[if lt IE 9]>
            <script src="<%= path %>/js/html5.js"></script>
        <![endif]-->