<!-- Datos del programa de SS
================================================== -->
<div class="row form-horizontal">
    <div class="span8">
        <fieldset>
            <legend>Datos del Programa de Servicio Social</legend>
            <div class="control-group">
                <label class="control-label" for="idPrograma">Programa:</label>
                <div class="controls">
                    <select class="span4" name="idPrograma">
                        <option value="0">-- Seleccionar programa --</option>
                        <option value="1">Programa 1</option>
                        <option value="2">Programa 2</option>
                    </select>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="cvePrograma">Clave:</label>
                <div class="controls">
                    <input class="input-xlarge" type="text" id="cvePrograma" name="cvePrograma" maxlength="30"
                           disabled="disabled"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="responsable">Responsable:</label>
                <div class="controls">
                    <input class="input-xlarge" type="text" id="responsable" name="planresponsabletel" maxlength="30"
                           disabled="disabled" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="cargoResponsable">Cargo:</label>
                <div class="controls">
                    <input class="input-xlarge" type="text" id="cargoResponsable" name="cargoResponsable" maxlength="30"
                           disabled="disabled"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="area">&Aacute;rea:</label>
                <div class="controls">
                    <input class="input-xlarge" type="text" id="plantel" name="area" maxlength="30" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="programaInst">Programa institucional:</label>
                <div class="controls">
                    <input class="input-xlarge" type="text" id="programaInst" name="programaInst" maxlength="30" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="cveProgramaInst">Clave:</label>
                <div class="controls">
                    <input class="input-xlarge" type="text" id="cveProgramaInst" name="cveProgramaInst" maxlength="30" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="plantel">D&iacute;as de asistencia:</label>
                <div class="controls">
                    <div class="btn-group" data-toggle="buttons-checkbox">
                        <select multiple="multiple" size="7" class="input-medium" name="diasAsistencia">
                            <option value="1">Lunes</option>
                            <option value="2">Martes</option>
                            <option value="3">Mi&eacute;rcoles</option>
                            <option value="4">Jueves</option>
                            <option value="5">Viernes</option>
                            <option value="6">S&aacute;bado</option>
                            <option value="7">Domingo</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="horaEntrada">Hora de entrada:</label>
                <div class="controls">
                    <select class="input-mini" name="horaEntrada">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                    </select>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="horaSalida">Hora de salida:</label>
                <div class="controls">
                    <select class="input-mini" name="horaSalida">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                    </select>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="fInicioDia">Fecha de inicio:</label>
                <div class="controls">
                    <select class="span1" name="fInicioDia" id="nDia">
                        <option value="0">D&iacute;a</option>
                        <% for (int i = 1; i <= 31; i++) {
                        %>
                        <option><%= i%></option>
                        <% }%>
                    </select>
                    <select class="span1" name="fInicioMes" id="nMes">
                        <option value="0">Mes</option>
                        <% for (int i = 1; i <= 12; i++) {
                        %>
                        <option><%= i%></option>
                        <% }%>
                    </select>
                    <select class="span1" name="fInicioAno" id="nAno">
                        <option value="0">A&ntilde;o</option>
                        <% for (int i = 2000; i >= 1960; i--) {
                        %>
                        <option><%= i%></option>
                        <% }%>
                    </select>
                    <!-- input oculto fechaInicio -->
                    <input type="hidden" name="fInicio" id="nacimiento" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="fTerminoDia">Fecha de t&eacute;rmino</label>
                <div class="controls">
                    <select class="span1" name="fTerminoDia" id="nDia">
                        <option value="0">D&iacute;a</option>
                        <% for (int i = 1; i <= 31; i++) {
                        %>
                        <option><%= i%></option>
                        <% }%>
                    </select>
                    <select class="span1" name="fTerminoMes" id="nMes">
                        <option value="0">Mes</option>
                        <% for (int i = 1; i <= 12; i++) {
                        %>
                        <option><%= i%></option>
                        <% }%>
                    </select>
                    <select class="span1" name="fTerminoAno" id="nAno">
                        <option value="0">A&ntilde;o</option>
                        <% for (int i = 2000; i >= 1960; i--) {
                        %>
                        <option><%= i%></option>
                        <% }%>
                    </select>
                    <!-- input oculto fechaInicio -->
                    <input type="hidden" name="fTermino" id="nacimiento" />
                </div>
            </div>
        </fieldset> <!-- end datos del programa SS -->
    </div>
</div>