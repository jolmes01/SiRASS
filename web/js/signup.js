var errores = "";
$(document).ready(function() {
    console.log("It works!");
    llenarForms();
    // Detectar cuando se pulsa Prestador-Institución
    $('#btnPrestador, #btnInstitucion').on('click', function() {
        // Obtener botón pulsado
        var btn = $(this);
        // Actuar solo si no está seleccionado
        if (!btn.hasClass('active')) {
            // Mostrar formulario dependiendo del botón pulsado
            changeForm("./forms/" + btn.data('file') + ".jsp");
        }
    });
    // Obtener modals para avisos
    var modalOK = $('#modalRegOK');
    var modalERROR = $('#modalRegERROR');
    
    // Evitar enviar el formulario mediante redirección
    var formRegistro = $('#registro');
    var action = formRegistro.attr('action');
    formRegistro.submit(function(e) {
        var enviar = true;
        
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
        enviar = validarRegistro(formRegistro);
        
        // Solo hacer el registro si los campos están ok
        if (enviar) {
            var jqxhr = $.post(action, formRegistro)
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
                    } else if (jqXHR.status == 2) { // Error. Username repetido
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
    });

});

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