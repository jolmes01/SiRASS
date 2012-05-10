$(document).ready(function() {
    $.datepicker.setDefaults({
        dateFormat: "dd-mm-yy"
    });
    $('#fInicio, #fTermino').datepicker();
    $('#horaEntrada, #horaSalida').timepicker({});
    
    var practicasDiv = $('#practicas');
    practicasDiv.hide();
    var practicasInputs = practicasDiv.contents().find('input');
    
    // Cuando se pulse en servicio Social o practicas profeionales
    $('#ss, #pp').on('click', function() {
        var button = $(this);
        // Comprobar si ya estaba seleccionado
        if (!button.hasClass('active')) {
            // Mostrar u ocultar sección de prácticas profesionales
            if (button.attr('id') == "pp") {
                practicasDiv.slideDown();
            } else {
                practicasDiv.slideUp();
                // Restablecer los valores de los campos en caso de ocultarlo
                practicasInputs.val('');
            }
        }
    });
});

function changePrograma(programas) {
    // Obtener el index seleccionado
    var seleccionado = programas.selectedIndex;
    console.log(seleccionado);
    // Obtener la clave del programa
    var clave = programas.options.item(seleccionado).getAttribute("data-cve");
    // Obtener el id del programa
    var idPrograma = programas.options.item(seleccionado).getAttribute("value");
    // Cambiar la clave del programa
    $('#cvePrograma').val(clave);
    var responsable = $('#responsable');
    var cargo = $('#cargoResponsable');
    // Obtener el responsable y su cargo
    $.getJSON("/SiRASS/JSONDispatcher?get=responsablePrograma&idPrograma=" + idPrograma)
    .success(function(data, textStatus, jqXHR) {
        console.log(data);
        // Obtener el responsable, su cargo y establecerlos
        if (data.responsable != null || responsable != "") {
        responsable.val(data.responsable);
        } else {
            responsable.val('');
        }
        if (data.cargo != null || cargo != "") {
            cargo.val(data.cargo);
        } else {
            responsable.val('');
        }
    });
}

function obtenerPlanteles(instituciones) {
    // Lista de instituciones
    var listaInstituciones = $(instituciones);
    // Lista de planteles
    var listaPlanteles = $('#plantelesList');
    // Tomar el elemento seleccionado
    var selIn = listaInstituciones.prop('selectedIndex');
    console.log(selIn);
    // Si no es cero, hacer consulta para obtener planteles
    if (selIn != 0) {
        $.getJSON("/SiRASS/GetPlantelesAsJSON?idInstitucion=" + selIn)
        .success(function(data, textStatus, jqXHR) {
            //            console.log("########## Request de planteles #############");
            //            console.log("data: " + data);
            //            console.log("textStatus: " + textStatus);
            //            console.log("JQXHR");
            //            console.log(jqXHR);
            // Obtener lista de planteles
            var items = [];
            items.push('<option value="ninguno">Ninguno</option>');
            $.each(data, function() {
                items.push('<option value="' + $(this).prop('idPlantel') + '">' + $(this).prop('nombre') +'</option>');
            });
            //            console.log(items);
            // Cambiar lista de planteles
            if(items.length == 1) {    // Si está vacía agregar leyenda "sin planteles""
                items.push('<option value="0">Sin planteles</option>');
            }
            actualizarSelect(listaPlanteles, items);
        });
    } else {    // En caso de que index=0 limpiar lista de planteles
        var items = [];
        actualizarSelect(listaPlanteles, items);
    }
}

function actualizarSelect(select, options) {
    select.empty();
    for(var i = 0; i < options.length; i++) {
        select.append(options[i]);
        console.log(options[i]);
    }
    select.prepend('<option value="0">-- Elegir alguno existente --</option>');
}
// Habilitar/Deshabilitar el select de plantel-institución
function switchRadio(radio) {
    var plantelesList = $('#plantelesList');
    var institucionesList = $('#institucionList');
    var nombrePlantel = $('#nombrePlantel');
    var nombreInstitucion = $('#nombreInstitucion');
    if(radio.id == "plantelRadioOtro" ) {
        // Deshabilitar select
        plantelesList.attr('disabled', 'disabled');
        // Reiniciar la selección del select
        plantelesList.prop('selectedIndex', '0');
        // Habilitar input text
        nombrePlantel.removeAttr('disabled');
    } else if (radio.id == "institucionRadioOtra") {
        // Deshabilitar select
        institucionesList.attr('disabled', 'disabled');
        // Reiniciar selección
        institucionesList.prop('selectedIndex', '0');
        // Habilitar inputText
        nombreInstitucion.removeAttr('disabled');
        // Cambiar la lista de planteles
        actualizarSelect(plantelesList, []);
        $('#plantelRadioOtro').prop('checked', 'checked');
        nombrePlantel.val('')
        nombrePlantel.removeAttr('disabled');
    } else if (radio.id == "plantelRadioLista") {
        // Habilitar select
        plantelesList.removeAttr('disabled');
        // Deshabilitar inputText y limpiar
        nombrePlantel.val('')
        nombrePlantel.attr('disabled', 'disabled');
    } else if (radio.id == "institucionRadioLista") {
        // Habilitar select
        institucionesList.removeAttr('disabled');
        // Deshabilitar inputText y limpiar
        nombreInstitucion.val('')
        nombreInstitucion.attr('disabled', 'disabled');
    }
}