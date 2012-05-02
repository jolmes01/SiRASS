<%@page import="java.util.Iterator"%>
<%@page import="com.sirass.model.CInstitucion"%>
<%@page import="java.util.List"%>
<%@page import="com.sirass.dao.CInstitucionDAO"%>
<!-- Datos escolares
================================================== -->
<div class="row form-horizontal">
    <div class="span6 well">
        <fieldset>
            <legend>Datos escolares</legend>
            <!--            <div class="control-group">
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
                        </div>-->
            <div class="control-group">
                <label class="control-label" for="institucionList">Instituci&oacute;n o dependencia:</label>
                <div class="controls">
                    <select class="span4" id="institucionList" name="institucionList" onchange="obtenerPlanteles(this)">
                        <!-- Lista de instituciones -->
                        <% CInstitucionDAO dao = new CInstitucionDAO();
                            List<CInstitucion> lista = dao.getAll();
                            if (lista.isEmpty()) {%>
                        <option value="0">-- Sin instituciones --</option>
                        <%  } else {%>
                        <option value="0">-- Elegir alguna existente --</option>
                        <% Iterator it = lista.iterator();
                            while (it.hasNext()) {
                                CInstitucion cInstitucion = (CInstitucion) it.next();%>
                        <option value="<%= cInstitucion.getIdCInstitucion()%>"><%= cInstitucion.getNombre()%></option>
                        <%}
                        %>
                        <%  }%>
                    </select>
                    <label class="radio inline">
                        <input type="radio" name="institucionOpc" id="institucionRadioLista" checked="checked"
                               onclick="switchRadio(this)" value="0" /> En la lista
                    </label>
                    <label class="radio inline">
                        <input type="radio" name="institucionOpc" id="institucionRadioOtra" 
                               onclick="switchRadio(this)" value="1" /> Otra
                    </label>
                    <input class="span4" type="text" id="nombreInstitucion" name="nombreInstitucion" maxlength="100"
                           placeholder="Nombre de instituci&oacute;n o depedencia" style="margin-top: 6px" disabled="disabled"/>
                    <p class="help-block"><em>Marcar <em>otra</em> si tu instituci&oacute;n <strong>no se encuentra</strong></em></p>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="plantelesList">Plantel:</label>
                <div class="controls">
                    <select class="span4" id="plantelesList" name="plantelesList">
                        <option value="0">-- Elegir alguno existente --</option>
                        <option value="0">Ninguno</option>
                    </select>
                    <label class="radio inline">
                        <input type="radio" name="plantelOpc" id="plantelRadioLista" checked="checked"
                               onclick="switchRadio(this)" value="0" /> En la lista
                    </label>
                    <label class="radio inline">
                        <input type="radio" name="plantelOpc" id="plantelRadioOtro"
                               onclick="switchRadio(this)" value="1" /> Otro
                    </label>
                    <input class="span4" type="text" id="nombrePlantel" name="nombrePlantel" maxlength="50"
                           placeholder="Nombre del plantel" style="margin-top: 6px" disabled="disabled"/>
                    <p class="help-block"><em>Marcar <em>otro</em> si el plantel <strong>no se encuentra</strong></em></p>
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
                    <div class="input-append">
                        <input class="span1 right" type="text" id="promedio" name="promedio" maxlength="4" /><span class="add-on">#.#</span>
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