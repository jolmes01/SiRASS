<!-- Datos del alumno
================================================== -->
<div class="row">
    <!-- datos personales -->
    <div class="span4">
        <fieldset>
            <legend>Datos del alumno</legend>
            <div class="control-group">
                <label class="control-label" for="nombre">Nombre(s):</label>
                <div class="controls">
                    <input type="text" id="nombre" name="nombre" maxlength="25" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="aPaterno">Apellido paterno:</label>
                <div class="controls">
                    <input type="text" id="aPaterno" name="aPaterno" maxlength="15" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="aMaterno">Apellido materno:</label>
                <div class="controls">
                    <input type="text" id="aMaterno" name="aMaterno" maxlength="15" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="nControl">N&deg; Control</label>
                <div class="controls">
                    <input class="input-large" type="text" id="nControl" name="nControl" maxlength="20" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="colegio">Colegio o facultad:</label>
                <div class="controls">
                    <input class="input-xlarge" type="text" id="colegio" name="colegio" maxlength="30" />
                </div>
            </div>
        </fieldset>
    </div> <!-- end datos personales -->
    <!-- datos del reporte -->
    <div class="span3">
        <fieldset>
            <legend>Datos del reporte</legend>
            <div class="control-group">
                <label class="control-label" for="nReporte">N&deg; de reporte:</label>
                <div class="controls">
                    <input type="text" id="nReporte" name="nReporte" maxlength="2"
                           class="input-small center"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="fInicioDia">Del:</label>
                <div class="controls">
                    <select class="span1" name="fInicioDia" id="fInicioDia">
                        <option value="0">D&iacute;a</option>
                        <% for (int i = 1; i <= 31; i++) {
                        %>
                        <option><%= i%></option>
                        <% }%>
                    </select>
                    <select class="span1" name="fInicioMes" id="fInicioMes">
                        <option value="0">Mes</option>
                        <% for (int i = 1; i <= 12; i++) {
                        %>
                        <option><%= i%></option>
                        <% }%>
                    </select>
                    <select class="span1" name="fInicioAno" id="fInicioAno">
                        <option value="0">A&ntilde;o</option>
                        <% int curYear = (new java.util.GregorianCalendar()).get(java.util.Calendar.YEAR);
                            for (int i = curYear; i >= curYear - 5; i--) {
                        %>
                        <option><%= i%></option>
                        <% }%>
                    </select>
                    <!-- input oculto fechaInicio -->
                    <input type="hidden" name="fInicio" id="fInicio" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="fTerminoDia">Al:</label>
                <div class="controls">
                    <select class="span1" name="fTerminoDia" id="fTerminoDia">
                        <option value="0">D&iacute;a</option>
                        <% for (int i = 1; i <= 31; i++) {
                        %>
                        <option><%= i%></option>
                        <% }%>
                    </select>
                    <select class="span1" name="fTerminoMes" id="fTerminoMes">
                        <option value="0">Mes</option>
                        <% for (int i = 1; i <= 12; i++) {
                        %>
                        <option><%= i%></option>
                        <% }%>
                    </select>
                    <select class="span1" name="fTerminoAno" id="fTerminoAno">
                        <option value="0">A&ntilde;o</option>
                        <% for (int i = curYear; i >= curYear - 5; i--) {
                        %>
                        <option><%= i%></option>
                        <% }%>
                    </select>
                    <!-- input oculto fechaInicio -->
                    <input type="hidden" name="fTermino" id="fTermino" />
                </div>
            </div>
        </fieldset>
    </div> <!-- end datos reporte -->
</div> <!-- row end -->
<!-- Tabla de registro de hroas
================================================== -->
<div class="row">
    <!-- datos del reporte -->
    <div class="span8">
        <fieldset>
            <legend>Registra tus horas</legend>
            <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>N&deg;</th>
                        <th>Fecha</th>
                        <th>Hora entrada</th>
                        <th>Hora salida</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <td colspan="2">2</td>
                        <td>2</td>
                        <td>2</td>
                    </tr>
                    <tr>
                        <th colspan="2">Hrs acumuladas</th>
                        <th>Meses anteriores</th>
                        <th>Este mes</th>
                    </tr>
                </tfoot>
                <tbody>
                    <tr>
                        <td>algo</td>
                        <td>algo</td>
                        <td>algo</td>
                        <td>algo</td>
                    </tr>
                </tbody>
            </table>
        </fieldset>
    </div> <!-- end tabla -->
</div> <!-- row end -->
