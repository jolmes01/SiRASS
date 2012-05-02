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
                <label class="control-label" for="fInicio">Del:</label>
                <div class="controls">
                    <input type="text" name="fInicio" id="fInicio" class="input-small center" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="fTermino">Al:</label>
                <div class="controls">
                    <input type="text" name="fTermino" id="fTermino" class="input-small center" />
                </div>
            </div>
            <div class="control-group">
                <label for="supervisor">Supervisor o jefe inmediato:</label>
                <div class="controls">
                    <input type="text" name="supervisor" id="supervisor" />
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
            <div class="form-actions">
                <button class="btn btn-primary btn-xlarge" type="button" id="addHr">Agregar</button>
                <button class="btn btn-primary btn-xlarge" type="button" id="smartFill">Llenado inteligente</button>
            </div>
            <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>N&deg;</th>
                        <th>Fecha</th>
                        <th>Hora entrada</th>
                        <th>Hora salida</th>
                        <th>Horas d&iacute;a</th>
                        <th>Eliminar</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th colspan="2">Hrs acumuladas</th>
                        <th>Meses anteriores</th>
                        <th colspan="3">Este mes</th>
                    </tr>
                </tfoot>
                <tbody id="hrs">
                    <tr data-horaNum="1">
                        <td>1</td>
                        <td>
                            <input type="text" id="fecha1" name="fecha1"
                                   class="input-small" readonly="readonly"/>
                        </td>
                        <td>
                            <input type="text" id="hEntrada1" name="hEntrada1"
                                   class="input-small" readonly="readonly"/>
                        </td>
                        <td>
                            <input type="text" id="hSalida1" name="hSalida1"
                                   class="input-small" readonly="readonly"/>
                        </td>
                        <td id="suma1">22</td>
                        <td>
                            <button class="btn btn-danger" type="button" id="elim1">
                                <i class="icon-remove icon-white"></i>
                            </button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </fieldset>
    </div> <!-- end tabla -->
</div> <!-- row end -->
