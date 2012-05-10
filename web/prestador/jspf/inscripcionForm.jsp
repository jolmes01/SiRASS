<%@page import="com.sirass.model.prestador.Prestador"%>
<%@page import="com.sirass.model.Usuario"%>
<%@page import="com.sirass.dao.UsuarioDAO"%>
<%
// Obtener datos del prestador
    UsuarioDAO daoUser = new UsuarioDAO();
    Usuario user = daoUser.getByUsername((String) session.getAttribute("username"));
    user.getInfo();
    user.getPrestador().getInfo();
    Prestador prestador = user.getPrestador();
%>

<!-- Datos personales y domicilio
================================================== -->
<div class="row form-horizontal">
    <!-- datos personales -->
    <div class="span6 well">
        <fieldset>
            <legend>Datos personales</legend>
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
                                 value="<%= prestador.getEmail()%>" readonly="readonly"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="nDia">Fecha de nacimiento:</label>
                <div class="controls">
                    <input type="text" name="nacimiento" id="nacimiento" class="input-small center"
                           value="<%= prestador.getNacimientoStr() %>" readonly="readonly"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="sexo">Sexo:</label>
                <div class="controls">
                    <%
                        String sexo = "" + prestador.getSexo();
                        if (sexo.equals("M")) {
                            sexo = "Masculino";
                        } else {
                            sexo = "Femenino";
                        }
                    %>
                    <input type="hidden" name="sexo" value="<%= prestador.getSexo()%>" />
                    <input type="text" name="sexoL" value="<%= sexo%>" readonly="readonly" class="input-small"/>
                </div>
            </div>
        </fieldset> <!-- end datos personales -->
    </div>
    <!-- domicilio -->
    <div class="span5 well">
        <fieldset>
            <legend>Domicilio</legend>
            <div class="control-group">
                <label class="control-label" for="dCalle">Calle:</label>
                <div class="controls">
                    <input type="text" id="dCalle" name="dCalle" maxlength="40" 
                           value="<%= prestador.getdCalle()%>" readonly="readonly"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="dNumExt">N&uacute;mero:</label>
                <div class="controls">
                    <input class="input-small" type="text" id="dNumExt" name="dNumExt" maxlength="7" placeholder="Ext." 
                           value="<%= prestador.getdNumExt()%>" readonly="readonly"/>
                    <input class="input-small" type="text" id="dNumInt" name="dNumInt" maxlength="7" placeholder="Int." 
                           value="<%= prestador.getdNumInt()%>" readonly="readonly"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="dCP">C&oacute;digo postal:</label>
                <div class="controls">
                    <input class="input-small" type="text" id="dCP" name="dCP" maxlength="5" 
                           value="<%= prestador.getdCP()%>" readonly="readonly"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="dDelegacion">Delegaci&oacute;n:</label>
                <div class="controls">
                    <input type="text" id="dDelegacion" name="dDelegacion" maxlength="20" 
                           value="<%= prestador.getdDelegacion()%>" readonly="readonly"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="dColonia">Colonia:</label>
                <div class="controls">
                    <input type="text" id="dColonia" name="dColonia" maxlength="20" 
                           value="<%= prestador.getdColonia()%>" readonly="readonly"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="telCasa">Tel&eacute;fono:</label>
                <div class="controls">
                    <input class="input-small" type="text" id="telCasa" name="telCasa" maxlength="8" placeholder="Casa" 
                           value="<%= prestador.getTelCasa()%>" readonly="readonly"/>
                    <input class="input-small" type="text" id="telCel" name="telCel" maxlength="13" placeholder="Celular" 
                           value="<%= prestador.getTelCel()%>" readonly="readonly"/>
                </div>
            </div>
        </fieldset> <!-- end domicilio -->
    </div>
</div> <!-- row end -->