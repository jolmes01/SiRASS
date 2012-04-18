<%@page import="database.OperacionesDB"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="database.entity.CInstitucion"%>
<%@page import="database.BaseDatos"%>
<!-- Datos de unidad prestataria
                                ================================================== -->
<div class="row">
    <!-- datos personales -->
    <div class="span6 well">
        <fieldset>
            <legend>Datos de la unidad Prestataria</legend>
            <div class="control-group">
                <label class="control-label" for="nombreInstitucion">Instituci&oacute;n o dependencia:</label>
                <div class="controls">
                    <select class="span4" id="institucionList" name="institucionList" onchange="obtenerPlanteles(this)">
                        <option value="0">-- Elegir alguna existente --</option>
                        <!-- Lista de instituciones -->
                        <%  OperacionesDB odb = new BaseDatos();
                            List<CInstitucion> instituciones = odb.getInstituciones();
                            Iterator it = instituciones.iterator();
                            while(it.hasNext()) {
                                CInstitucion institucion = (CInstitucion) it.next(); %>
                                <option value="<%= institucion.getId() %>"><%= institucion.getNombre() %></option>
                        <%  } %>
                    </select>
                    <label class="radio inline">
                        <input type="radio" name="institucionOpc" id="institucionRadioLista" checked="checked"
                               onclick="switchRadio(this)" /> En la lista
                    </label>
                    <label class="radio inline">
                        <input type="radio" name="institucionOpc" id="institucionRadioOtra" 
                               onclick="switchRadio(this)" /> Otra
                    </label>
                    <input class="span4" type="text" id="nombreInstitucion" name="nombreInstitucion" maxlength="100"
                           placeholder="Nombre de instituci&oacute;n o depedencia" style="margin-top: 6px" disabled="disabled"/>
                    <p class="help-block"><em>Marcar <em>otra</em> si tu instituci&oacute;n <strong>no se encuentra</strong></em></p>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="nombrePlantel">Plantel:</label>
                <div class="controls">
                    <select class="span4" id="plantelesList" name="plantelesList">
                        <option value="0">-- Elegir alguno existente --</option>
                    </select>
                    <label class="radio inline">
                        <input type="radio" name="plantelOpc" id="plantelRadioLista" checked="checked"
                               onclick="switchRadio(this)" /> En la lista
                    </label>
                    <label class="radio inline">
                        <input type="radio" name="plantelOpc" id="plantelRadioOtro"
                               onclick="switchRadio(this)" /> Otro
                    </label>
                    <input class="span4" type="text" id="nombrePlantel" name="nombrePlantel" maxlength="50"
                           placeholder="Nombre del plantel" style="margin-top: 6px" disabled="disabled"/>
                    <p class="help-block"><em>Marcar <em>otro</em> si el plantel <strong>no se encuentra</strong></em></p>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="domicilio">Domicilio:</label>
                <div class="controls">
                    <input class="span4" type="text" id="domicilio" name="domicilio" maxlength="60" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="area">&Aacute;rea o subdirecci&oacute;n:</label>
                <div class="controls">
                    <input class="span4" type="text" id="area" name="area" maxlength="50" placeholder="Subdirecci&oacute;n administrativa" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="responsable">Responsable(s) del programa:</label>
                <div class="controls">
                    <input class="span4" type="text" id="responsable" name="responsable" maxlength="50" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="cargo">Cargo:</label>
                <div class="controls">
                    <input class="span4" type="text" id="cargo" name="cargo" maxlength="50" placeholder="Responsable de Administraci&oacute;n" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="tel">Tel&eacute;fono:</label>
                <div class="controls">
                    <input class="span4" type="text" id="tel" name="tel" maxlength="25" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="email">Email:</label>
                <div class="controls">
                    <div class="input-prepend">
                        <span class="add-on">
                            <i class="icon-envelope"></i>
                        </span><input class="span3" type="text" id="email" name="email" maxlength="30" />
                    </div>
                </div>
            </div>
        </fieldset>
    </div>
    <!-- Datos de usuario
    ================================================== -->
    <div class="span5 well">
        <!-- usuario -->
        <fieldset>
            <legend>Informacion de usuario</legend>
            <div class="control-group">
                <label class="control-label" for="usuario">Nombre de usuario:</label>
                <div class="controls">
                    <input type="text" id="usuario" name="usuario" maxlength="15" placeholder="username" />
                    <p class="help-block"><em>6-15 caracteres.</em></p>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="password">Contrase&ntilde;a:</label>
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
    <!-- input oculto -->
    <input type="hidden" name="userType" value="institucion" />
</div> <!-- row end -->