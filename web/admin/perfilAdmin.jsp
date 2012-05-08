<%-- 
    Document   : perfilAdmin
    Created on : 29/04/2012, 10:14:24 PM
    Author     : JL Macias
--%>

<%@page import="com.sirass.model.Administrador"%>
<%@page import="com.sirass.model.Usuario"%>
<%@page import="com.sirass.dao.UsuarioDAO"%>
<%  UsuarioDAO dao = new UsuarioDAO();
    //Busca el username en la BD
    Usuario user = dao.getByUsername(String.valueOf(session.getAttribute("username")));
    //si existe me obtiene los datos de la BD del administrador
    Administrador admin = user.getAdministrador();
    //Obtiene sexo, define si es M o F para validarlo en el form
    char sexo;
    sexo = admin.getSexo();
    String m = "";
    String f = "";
    if (sexo == 'M') {
        m = "checked=\"checked\"";
    }
    if (sexo == 'F') {
        f = "checked=\"checked\"";
    }
%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <jsp:include page="/jspf/head.jsp">
            <jsp:param name="title" value="Editar perfil"></jsp:param>
        </jsp:include>
        <link href="../css/reg.css" rel="stylesheet" />
    </head>
    <body>
        <header>
            <jsp:include page="jspf/header.jsp"></jsp:include>
        </header>
        <!-- Container
    ================================================== -->
        <div class="container-fluid">
            <div class="row-fluid">
                <!-- Sidebar
                ================================================== -->
                <jsp:include page="jspf/sidebar.jsp"></jsp:include>
                <!-- Contenido
                ================================================== -->

                <div class="container bg span7">
                    <div id="contenido">
                        <header>
                            <h1>Configuración de Perfil</h1>
                            <p>Cambia tus datos personales o datos de usuario.</p>
                        </header>
                        <div id="formulario">
                            <form method="post" id="actualAdmin" name="actualAdmin" action="/SiRASS/actualDate" class="form-horizontal">
                                <div id= "formularioP">
                                    <!-- Datos personales y domicilio
                                    ================================================== -->
                                    <div class= "row">
                                        <!-- Datos Personales-->
                                        <div class= "span7 well">
                                            <fieldset>
                                                <legend>Datos personales</legend>
                                                <input type="hidden" id="idAdmin" name="idAdmin" value ="<%= admin.getIdAdmin() %>" />
                                                <input type="hidden" id="processProfile" name ="processProfile" value ="Administrador" />
                                                <div class="control-group">
                                                    <label class="control-label" for="nombre">Nombre(s):</label>
                                                    <div class="controls">
                                                        <input type="text" readonly = "readonly" id="nombre" name="nombre" value = "<%= admin.getNombre()%>" maxlength="25" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="aPaterno">Apellido paterno:</label>
                                                    <div class="controls">
                                                        <input type="text" readonly = "readonly" id="aPaterno" name="aPaterno" value = "<%= admin.getaPaterno()%>" maxlength="15" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="aMaterno">Apellido materno:</label>
                                                    <div class="controls">
                                                        <input type="text" readonly = "readonly" id="aMaterno" name="aMaterno" value = "<%= admin.getaMaterno()%>" maxlength="15" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="email">Email:</label>
                                                    <div class="controls">
                                                        <div class="input-prepend">
                                                            <span class="add-on">
                                                                <i class="icon-envelope"></i>
                                                            </span>
                                                        </div><input class="input-large" type="text" id="email" name="email" value = "<%= admin.getEmail()%>" maxlength="30" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="nDia">Fecha de nacimiento:</label>
                                                    <div class="controls">
                                                        <input type="text" name="nacimiento" id="nacimiento" class="input-small center"
                                                               value="<%= admin.getNacimientoStr()%>" readonly="readonly"/>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="sexo">Sexo:</label>
                                                    <div class="controls">
                                                        <label class="radio inline">
                                                            <input type="radio" disabled = "true" id="sexo" name="sexo" value="M" <%= m%> />
                                                            Masculino
                                                        </label>
                                                        <label class="radio inline">
                                                            <input type="radio" disabled = "true" name="sexo" value="F" <%= f%> />
                                                            Femenino
                                                        </label>
                                                            <input type="hidden" id="sex" name="sex" value ="<%= sexo%>" />
                                                    </div>
                                                </div>
                                            </fieldset><!-- fin datos personales -->
                                        </div>
                                    </div> <!-- row end -->
                                    <!-- Datos corporativos
                                    ================================================== -->
                                    <div class = "row">
                                        <div class = "span7 well">
                                            <fieldset>
                                                <legend>Datos corporativos</legend>
                                                <div class = "control-group">
                                                    <label class = "control-label" for = "cargoA"> Cargo: </label>
                                                    <div class = "controls">
                                                        <input type = "text" readonly = "readonly" id = "areaA" name = "areaA" value = "<%= admin.getCargo()%>" maxlength = "30">
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </div>
                                    </div>
                                    <!-- Datos de usuario
                                    ================================================== -->
                                    <div class="row">
                                        <div class="span7 well">
                                            <!-- usuario -->
                                            <fieldset>
                                                <legend>Informacion de usuario</legend>
                                                <div class="control-group">
                                                    <label class="control-label" for="usuario">Nombre de usuario:</label>
                                                    <div class="controls">
                                                        <input type="text" id="usuario" name="usuario" maxlength="15" readonly = "readonly" value="<%= session.getAttribute("username")%>" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="password">Nueva contrase&ntilde;a:</label>
                                                    <div class="controls">
                                                        <input type="password" id="password" name="password" maxlength="15" placeholder="password" />
                                                        <p class="help-block"><em>6-15 caracteres.</em></p>
                                                    </div>
                                                </div>					
                                                <div class="control-group">
                                                    <label class="control-label" for="passwordVeif">Verifica contrase&ntilde;a:</label>
                                                    <div class="controls">
                                                        <input type="password" id="passwordVeif" name="passwordVeif" maxlength="15" placeholder = "verify password" />
                                                    </div>
                                                </div>
                                            </fieldset> <!-- end usuario -->
                                        </div>
                                    </div> <!-- row end -->
                                    <!-- inputs oculto -->
                                    <input type="hidden" name="userType" value="prestador" />
                                </div> <!-- end formulario -->
                                <!-- botones de acci&oacute;n -->
                                <div class="row center">
                                    <button class="btn btn-primary btn-large input-large" type="submit">Actualizar datos</button>
                                </div> <!-- end row -->
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer
    ================================================== -->
        <%@include file="/jspf/footer.jsp" %>
    </body>
</html>