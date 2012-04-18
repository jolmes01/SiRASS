var errores = "";
$(document).ready(function() {
    console.log("It works!");
//    llenarForms();
    // Detectar cuando se pulsa Prestador-Institución
    $('#btnPrestador, #btnInstitucion').on('click', function() {
        // Obtener botón pulsado
        var btn = $(this);
        // Actuar solo si no está seleccionado
        if (!btn.hasClass('active')) {
            // Mostrar formulario dependiendo del botón pulsado
            changeForm("./jspf/forms/" + btn.data('file') + ".jsp");
        }
    });
    
    // Evitar enviar el formulario mediante redirección
    var formRegistro = $('#registro');
    var action = formRegistro.attr('action');
    formRegistro.submit(envioHandler);

});

function envioHandler(e) {
    var enviar = true;
    // Obtener modals para avisos
    var modalOK = $('#modalRegOK');
    var modalERROR = $('#modalRegERROR');
    var formRegistro = $('#registro');
    var action = formRegistro.attr('action');
    // Evitar enviar el formulario
    e.preventDefault();
    // Obtener la acción del form
    var submitButton = formRegistro.find('button[type="submit"]');
    // Al enviar cambiar estado de boton
    submitButton.button('loading');
    var nacimiento = "";
    // Establecer la fecha de nacimiento
    nacimiento += formRegistro.find('#nAno').val();
    nacimiento += "-";
    nacimiento += formRegistro.find('#nMes').val();
    nacimiento += "-";
    nacimiento += formRegistro.find('#nDia').val();
    formRegistro.find('#nacimiento').val(nacimiento);
        
    // Hacer validaciones del form
//    enviar = validarRegistro(formRegistro);
        
    // Solo hacer el registro si los campos están ok
    if (enviar) {
        var jqxhr = $.post(action, formRegistro.serialize())
        .success(function(data, textStatus, jqXHR) {
            console.log("########## Request de registro #############");
            console.log("data: " + data);
            console.log("textStatus: " + textStatus);
            // Detectar si se realizó el registro correctamente
            if (data == 1) {    // Se realizó correctamente
                // Mostrar modalDialog
                modalOK.modal('show');
            }
            // Regresar el botón a su estado original
            submitButton.button('reset');
        })
        .error(function(jqXHR, textStatus, errorThrown) {
            console.error("########## ERROR #############");
            console.log("errorCode: " + jqXHR.status);
            console.log("textStatus: " + textStatus);
            var msg = "Error desconocido. Intenta nuevamente.";
            // Detectar si se realizó el registro correctamente
            if (jqXHR.status == 0) { // Hubo un error con la BD
                msg = "Hubo un problema con la base de datos.";
                msg += " Intenta nuevamente.";
            } if (jqXHR.status == 1062) { // Error. Username repetido
                msg = "El usuario que escogiste ya existe. Utiliza otro."
            }
            // Insertar mensaje en modal
            modalERROR
            .children('.modal-body')
            .children('p')
            .text(msg);
            // Mostrar modalDialog
            modalERROR.modal('show');
            // Regresar el botón a su estado original
            submitButton.button('reset');
        });
    } else {
        modalERROR
        .children('.modal-body')
        .children('p')
        .html(errores);
        modalERROR.modal('show');
        // Regresar el botón a su estado original
        submitButton.button('reset');
    }
}

function validarRegistro(form) {
    var enviar = true;
    errores = "";
    // Validar campos vacios
    if (!validarVacios(form, new Array("telCel", "dNumInt"))) {
        enviar = false;
        errores += "Hay campos obligatorios que no pueden estar en blanco.<br/>";
    }
    // Validar que la contraseña sea correcta
    var inputs = $(form).find('input[type="password"]');
    if (!validarPassword(inputs)) {
        enviar = false;
        errores += "Las contrase\u00f1as no coinciden.<br/>"
    }
    // Validar que el email sea correcto
    var email = form.find('#email');
    if (!validarEmail(email)) {
        enviar = false;
        errores += "El email es incorrecto.<br/>";
    }
    // Error. Hay campos vacíos
    return enviar;
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
        $.getJSON("./GetPlantelesAsJSON?idInstitucion=" + selIn)
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