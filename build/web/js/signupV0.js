var avisos;
$(document).ready(function() {
	avisos = $('#avisos');
	console.log("It works!");
	// Ocultar alertas
	avisos.hide();
	// llenarForms();
	// Detectar cuando se pulsen los botones de Prestador-Institucion
	$('#btnPrestador, #btnInstitucion').on('click', function() {
		var boton = $(this);
		// Comprobar que no estaba seleccionado anteriormente
		if (!boton.hasClass('active')) {
			logBtn(boton);
			cleanAvisos();
			// Mostrar formulario dependiendo del botón
			mostrarFormulario(boton.data('file'));
		}
	});
});

function llenarForms() {
	$('input[type="text"], input[type="password"]').val('ok');
	$('.controls')
		.find('input[type="radio"]:first')
			.attr('checked', 'checked');
}

function logBtn(btn) {
	console.log(btn.attr('id') + " pulsado");
}

function mostrarFormulario(formFile) {
	var formulario = $('#formulario');
	formulario.hide();
	// Cargar formulario
	formulario
		.load("forms/" + formFile)
		.fadeIn();
}

// Validar formularios
function validar(form) {
	var sendButton = $('#sendButtons button[type="submit"]');
	var action = $(form).attr('action');
	var errores = "";
	var enviar = true;
	// Limpiar avisos
	cleanAvisos();

	// Obtener todos los inputs de tipo texto
	var inputText = $(form).find('input:text, input[type="password"]');
	// Validar campos vacios
	enviar = validarVacios(inputText, new Array("email", "telCel", "dNumInt"), errores);
	// Error. Hay campos vacíos
	if (!enviar) {
		errores = "Por favor llena los campos vacíos.";
		enviar = false;
		addAviso("Error!", errores, "error");
		showAvisos();
	}
	// Si todo está bien hacer el registro
	if (enviar) {
		var tipo = "";
		var msg = "";
		var title = "";
		var jqxhr = $.post(action, $(form).serialize())
			.success(function(data, textStatus, jqXHR) {
				var rq = "data: " + data + " | textStatus: " + textStatus;
				console.log(jqXHR);
				console.log(rq);
				console.log(data);
				// Detectar si hubo un error
				if (data == 1) {	// Se hizo el registro correctamente
					// title = "Bien!";
					// msg = "Te has registrado existosamente.";
					// tipo = "success";
					// Mostrar modal
					var modal = $('#modalRegOK');
					modal.modal('show');
				} else {
					if (data == 2) {	// Error. Usuario repetido
						title = "Error!";
						msg = "El usuario ya existe. Cambiar tu nombre de usuario.";
						tipo = "error";
					} else if (data == 3) {	// Error indefinido.
						title = "Error!";
						msg = "Ha ocurrido un error. Intenta de nuevo";
						tipo = "error";
					} else if (data == 0) {	// Error en conexión con BD.
						tipo = "error";
						title = "Error!";
						msg = "Ups! Hubo un error al conectarse a la base de datos. ";
						msg += "Intenta de nuevo.";
					}
					// Mostrar aviso.
					addAviso(title, msg, tipo);
					showAvisos();
				}
			})
			.error(function() {	// Error al hacer la petición HTTP
				tipo = "error";
				title = "Error!";
				msg = "Ups! Hubo un error al intentar registrarte. ";
				msg += "Intenta de nuevo.";
				addAviso(title, msg, tipo);
				showAvisos();
			});
	}
	return false;
}

function validarVacios(campos, camposVacios, msg) {
	var enviar = true;
	// Iterar por todos los elementos
	campos.each(function(index) {
		// Guardar el campo
		var campo = $(this);
		var nombreCampo = campo.attr('name');	// Su nombre
		var valorCampo = campo.val();	// Su valor
		var labelCampo = $('label[for="' + nombreCampo + '"]').text();	// El label que tiene
		var controlGroup = campo.parents('.control-group').eq(0);	// Y el .control-group en el que está
		// console.log("index: " + index + " name: " + nombreCampo + " value:" + valorCampo);
		// Comprobar solo los campos que no pueden estar vacíos
		if ( camposVacios.indexOf(nombreCampo) == -1 ) {
			// Comprobar que el campo no esté vacío
			if (valorCampo == "") {	// Está vacío
				controlGroup.removeClass('success');
				controlGroup.addClass('error');
				msg += "El campo " + labelCampo + " está vacío.\n";
				enviar = false;
			} else {	// No está vacío
				controlGroup.addClass('success');
			}
		}
	});
	return enviar;
}

function cleanAvisos() {
	avisos.hide().slideUp('fast', function() {
		avisos.removeClass("alert-error");
		avisos.removeClass("alert-success");
		avisos
			.children()
				.text('');
	});
}

function showAvisos() {
	avisos.slideDown();
}

function addAviso(title, msg, tipo) {
	cleanAvisos();
	avisos.addClass("alert-" + tipo);
	avisos.children('h4.alert-heading').text(title);
	avisos.children('p').text(msg);
}