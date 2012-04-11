<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <jsp:include page="/jspf/head.jsp">
        <jsp:param name="title" value="Bienvenido"></jsp:param>
    </jsp:include>
	<link href="../css/reg.css" rel="stylesheet" />
</head>
<body>
	<header>
            <jsp:include page="jspf/header.jsp">
                <jsp:param name="active" value="inicio"></jsp:param>
            </jsp:include>
	</header>
	<!-- Container
    ================================================== -->
    <div class="container-fluid">
    	<div class="row-fluid">
    		<!-- Sidebar
    		================================================== -->
                <jsp:include page="jspf/sidebar.jsp">
                    <jsp:param name="active" value="0"/>
                </jsp:include>
    		<!-- Contenido
    		================================================== -->
    		<div class="container bg span7">
                    <div id="contenido">
    			<h1>Title</h1>
    			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
    			tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
    			quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
    			consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
    			cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
    			proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
    			</p>
                    </div>
    		</div>
    	</div>
    </div>
	<!-- Footer
    ================================================== -->
        <%@include file="/jspf/footer.jsp" %>
        <script src="../js/navigate.js" type="text/javascript"></script>
</body>
</html>