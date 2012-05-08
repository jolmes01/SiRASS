<%-- 
    Document   : perfil
    Created on : 29/04/2012, 10:14:24 PM
    Author     : JL Macias
--%>

<%@page import="com.sirass.model.Prestador"%>
<%@page import="com.sirass.model.Usuario"%>
<%@page import="com.sirass.dao.UsuarioDAO"%>
<%
// Obtener datos del prestador
    UsuarioDAO daoUser = new UsuarioDAO();
    Usuario user = daoUser.getByUsername(String.valueOf(session.getAttribute("username")));
    Prestador prestador = user.getPrestador();
    char sexo;

    sexo = prestador.getSexo();
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
                            <form method="post" class="form-horizontal" id="gPrestador" name ="gPrestador" action="/SiRASS/actualDate" >
                                <!-- Datos personales y domicilio
                                ================================================== -->
                                <div class="row form-horizontal">
                                    <!-- datos personales -->
                                    <div class="span7 well">
                                        <fieldset>
                                            <legend>Datos personales</legend>
                                            <input type="hidden" id="idPrestador" name="idPrestador" value ="<%= prestador.getIdPrestador()%>" />
                                            <input type="hidden" id="processProfile" name ="processProfile" value ="Prestador" />
                                            <div class="control-group">
                                                <label class="control-label" for="nombre">Nombre(s):</label>
                                                <div class="controls">
                                                    <input type="text" id="nombre" name="nombre" maxlength="25"
                                                           value="<%= prestador.getNombre()%>" readonly="readonly"/>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label" for="aPaterno">Apellido paterno:</label>
                                                <div class="controls">
                                                    <input type="text" id="aPaterno" name="aPaterno" maxlength="15"
                                                           value="<%= prestador.getaPaterno()%>" readonly="readonly"/>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label" for="aMaterno">Apellido materno:</label>
                                                <div class="controls">
                                                    <input type="text" id="aMaterno" name="aMaterno" maxlength="15"
                                                           value="<%= prestador.getaMaterno()%>" readonly="readonly"/>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label" for="email">Email:</label>
                                                <div class="controls">
                                                    <div class="input-prepend">
                                                        <span class="add-on">
                                                            <i class="icon-envelope"></i>
                                                        </span>
                                                    </div><input class="input-large" type="text" id="email" name="email" maxlength="30"
                                                                 value="<%= prestador.getEmail()%>" />
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label" for="nDia">Fecha de nacimiento:</label>
                                                <div class="controls">
                                                    <input type="text" name="nacimiento" id="nacimiento" class="input-small center"
                                                           value="<%= prestador.getNacimientoStr()%>" readonly="readonly"/>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label" for="sexo">Sexo:</label>
                                                <div class="controls">
                                                    <label class="radio inline">
                                                        <input type="radio" disabled="disabled" id="sexo" <%= m%> />
                                                        Masculino
                                                    </label>
                                                    <label class="radio inline">
                                                        <input type="radio" disabled="disabled" <%= f%> />
                                                        Femenino
                                                    </label>
                                                    <input type="hidden" id="sexo" name="sexo" value="<%= sexo%>" />
                                                </div>
                                            </div>
                                        </fieldset> <!-- end datos personales -->
                                    </div>
                                    <!-- domicilio -->
                                    <div class="span7 well">
                                        <fieldset>
                                            <legend>Domicilio</legend>
                                            <div class="control-group">
                                                <label class="control-label" for="dCalle">Calle:</label>
                                                <div class="controls">
                                                    <input type="text" id="dCalle" name="dCalle" maxlength="40" 
                                                           value="<%= prestador.getdCalle()%>" />
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label" for="dNumExt">N&uacute;mero:</label>
                                                <div class="controls">
                                                    <input class="input-small" type="text" id="dNumExt" name="dNumExt" maxlength="7" placeholder="Ext." 
                                                           value="<%= prestador.getdNumExt()%>" />
                                                    <input class="input-small" type="text" id="dNumInt" name="dNumInt" maxlength="7" placeholder="Int." 
                                                           value="<%= prestador.getdNumInt()%>" />
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label" for="dCP">C&oacute;digo postal:</label>
                                                <div class="controls">
                                                    <input class="input-small" type="text" id="dCP" name="dCP" maxlength="5" value="<%= prestador.getdCP()%>" />
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label" for="dDelegacion">Delegaci&oacute;n:</label>
                                                <div class="controls">
                                                    <input type="text" id="dDelegacion" name="dDelegacion" maxlength="20" value="<%= prestador.getdDelegacion()%>" />
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label" for="dColonia">Colonia:</label>
                                                <div class="controls">
                                                    <input type="text" id="dColonia" name="dColonia" maxlength="20" 
                                                           value="<%= prestador.getdColonia()%>" />
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label" for="telCasa">Tel&eacute;fono:</label>
                                                <div class="controls">
                                                    <input class="input-small" type="text" id="telCasa" name="telCasa" maxlength="8" placeholder="Casa" 
                                                           value="<%= prestador.getTelCasa()%>" />
                                                    <input class="input-small" type="text" id="telCel" name="telCel" maxlength="13" placeholder="Celular" 
                                                           value="<%= prestador.getTelCel()%>" />
                                                </div>
                                            </div>
                                        </fieldset> <!-- end domicilio -->
                                    </div>
                                    <!-- Datos de usuario
                                    ================================================== -->
                                    <div class="span7 well">
                                        <!-- usuario -->
                                        <fieldset>
                                            <legend>Informacion de usuario</legend>
                                            <div class="control-group">
                                                <label class="control-label" for="usuario">Nombre de usuario:</label>
                                                <div class="controls">
                                                    <input type="text" readonly = "readonly" id="usuario" name="usuario" maxlength="15" value="<%= session.getAttribute("username")%>" />
                                                    <p class="help-block"><em>6-15 caracteres.</em></p>
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
                                                    <input type="password" id="passwordVeif" name="passwordVeif" maxlength="15" />
                                                </div>
                                            </div>
                                        </fieldset> <!-- end usuario -->
                                    </div> 
                                </div> <!-- row end -->
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