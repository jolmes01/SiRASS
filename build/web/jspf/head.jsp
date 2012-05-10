<% 
    String path = application.getContextPath(); 
    String dpickerParam = request.getParameter("datepicker");
    String tpickerParam = request.getParameter("timepicker");
    String regParam = request.getParameter("reg");
    
    boolean datepicker = (dpickerParam != null && dpickerParam.equals("true")) ? true : false;
    boolean timepicker = (tpickerParam != null && tpickerParam.equals("true")) ? true : false;
    boolean reg = (regParam != null && regParam.equals("true")) ? true : false;
%>
        <meta charset="utf-8" />
	<meta name="description" content="Sistema de Registro y Administraci&oacute;n de Servicio Social" />
	<meta name="author" content="Skyforge" />
	<meta name="keywords" content="servicio social, uacm, skyforge, practicas profesionales" />
        <title>SiRASS - <%= request.getParameter("title") %></title>
	
	<!-- Estilos CSS -->
	<link href="/SiRASS/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="<%= path %>/css/main.css" rel="stylesheet" />
        <% if (datepicker) { %>
	<link href="<%= path %>/css/ui-lightness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
<!--	<link href="<%= path %>/css/custom-theme/jquery-ui-1.8.16.custom.css" rel="stylesheet" />-->
        <% } %>
        <% if (timepicker) { %>
            <link href="<%= path %>/css/jquery-ui-timepicker-addon.css" rel="stylesheet" />
        <% } %>
        <% if (reg) { %>
	<link href="<%= path %>/css/reg.css" rel="stylesheet" />
        <% } %>
        <link rel="icon" href="<%= path %>/favicon.ico" type="image/x-icon" />

        <!-- HTML5 shim, para soporte de IE6-8 + HTML5 -->
        <!-- <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script> -->
        <!--[if lt IE 9]>
            <script src="<%= path %>/js/html5.js"></script>
        <![endif]-->