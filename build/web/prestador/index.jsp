<!DOCTYPE html>
<html lang="es">
<head>
    <jsp:include page="/jspf/head.jsp">
        <jsp:param name="title" value="Bienvenido"/>
    </jsp:include>
	<link href="../css/reg.css" rel="stylesheet" />
</head>
<body>
	<!-- Header
        ==================================== -->
        <header>
            <jsp:include page="jspf/header.jsp">
                <jsp:param name="active" value="inicio"/>
            </jsp:include>
	</header>
	<!-- Container
    ================================================== -->
    <div class="container-fluid">
    	<div class="row-fluid">
    		<!-- Sidebar
    		================================================== -->
                <jsp:include page="jspf/sidebar.jsp">
                    <jsp:param name="active" value="0" />
                </jsp:include>
    		<!-- Contenido
    		================================================== -->
                <div class="container bg span7">
                    <div id="contenido">
                    <h1>Bienvenido, <%= (String) session.getAttribute("username") %></h1>
    			<p>Actualmente no est&aacute;s inscrito a ning&uacute;n programa de Servicio Social.</p>
    			<p><a class="btn btn-large btn-primary " href="#">Inscribirse a un programa</a></p>
    			<h2>Generar documentos</h2>
    			<p>
    				<a class="btn btn-info btn-small" href="#">Carta de presentaci&oacute;n</a>
    				<a class="btn btn-info btn-small" href="#">Carta compromiso</a>
    			</p>
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