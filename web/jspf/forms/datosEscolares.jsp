<!-- Datos escolares
================================================== -->
<div class="row form-horizontal">
    <div class="span6 well">
        <fieldset>
            <legend>Datos escolares</legend>
            <div class="control-group">
                <label class="control-label" for="colegio">Colegio o facultad:</label>
                <div class="controls">
                    <input class="input-xlarge" type="text" id="colegio" name="colegio" maxlength="30" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="plantel">Plantel:</label>
                <div class="controls">
                    <input class="input-xlarge" type="text" id="plantel" name="plantel" maxlength="30" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="semestre">Semestre:</label>
                <div class="controls">
                    <select class="span1" id="semestre" name="semestre">
                        <!-- inserter del 1-10 -->
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                        <option>6</option>
                    </select>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="especialidad">Especialidad:</label>
                <div class="controls">
                    <input class="input-xlarge" type="text" id="especialidad" name="especialidad" maxlength="25" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="matricula">Matricula:</label>
                <div class="controls">
                    <input class="input-xlarge" type="text" id="matricula" name="matricula" maxlength="15" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="promedio">Promedio:</label>
                <div class="controls">
                    <div class="input-prepend">
                        <span class="add-on">#.#</span><input class="span1 right" type="text" id="promedio" name="promedio" maxlength="4" />
                    </div>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="avanceCurso">Avance de cursos:</label>
                <div class="controls">
                    <div class="input-append">
                        <input class="span1 right" type="text" id="avanceCurso" name="avanceCurso" maxlength="3" /><span class="add-on">%</span>
                    </div>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="fechaIngreso">Fecha de ingreso:</label>
                <div class="controls">
                    <select class="span1" id="fechaIngreso" name="fechaIngreso">
                        <option>A&ntilde;o</option>
                    </select>
                </div>
            </div>
            <!-- solo en caso de ser práctica profesional -->
            <div id="practicas">
                <div class="control-group">
                    <label class="control-label" for="creditos">Total de cr&eacute;ditos:</label>
                    <div class="controls">
                        <input class="span1" type="text" id="creditos" name="creditos" maxlength="4" />
                    </div>
                </div>
                <p><strong>Total de cursos</strong></p>
                <div class="control-group">
                    <label class="control-label" for="cursosBasico">Ciclo b&aacute;sico:</label>
                    <div class="controls">
                        <input class="span1" type="text" id="cursosBasico" name="cursosBasico" maxlength="3" />
                        <span class="input-inline">Ciclo superior</span>
                        <input class="span1" type="text" id="cursosSuperior" name="cursosSuperior" maxlength="3" />
                    </div>
                </div> <!-- end prácticas profesionales -->
            </div>
        </fieldset> <!-- end datos escolares -->
    </div>
</div>