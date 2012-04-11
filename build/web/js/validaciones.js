function changeForm(formFile) {
    // Contenedor
    var form = $('#formulario');
    // Ocultar y continuar
    form.slideToggle('slow', function() {
        // Cargar el formulario dentro el contenedor
        form.load(formFile, function() {
            // Mostrar una vez cargado
            form.slideToggle('slow');
        });
    });
}

function validarVacios(form, camposVacios) {
        // Obtener todos los campos de texto input y textarea
        var campos = $(form).find('input:text, input[type="password"], textarea');
        var ok = true;
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
                                ok = false;
			} else {	// No está vacío
				controlGroup.addClass('success');
			}
		}
	});
	return ok;
}

function validarPassword(inputs) {
    // Comprobar que las contraseñas sean iguales
    if ( inputs.eq(0).val() == inputs.eq(1).val() 
        && inputs.eq(0).val() != "" 
        && inputs.eq(1).val() != "" ) {
        inputs.each(function() {
            var controlGroup = inputs.parents('.control-group');	// .control-group en el que está
            controlGroup.removeClass('error');
            controlGroup.addClass('success');
        });
        return true
    } else {
        inputs.each(function() {
            var controlGroup = inputs.parents('.control-group');	// .control-group en el que está
            controlGroup.removeClass('success');
            controlGroup.addClass('error');
        });
        return false;
    }
}

function validarEmail(email) {
    var controlGroup = email.parents('.control-group').eq(0);	// .control-group en el que está
    var emailVal = email.val();
    var atpos = emailVal.indexOf("@");
    var dotpos = emailVal.lastIndexOf(".");
    if (atpos < 1 || dotpos < atpos + 2 || dotpos+2 >= emailVal.length)
    {
        controlGroup.removeClass('success');
        controlGroup.addClass('error');
        return false;
    } else {
        controlGroup.removeClass('error');
        controlGroup.addClass('success');
        return true;
    }

}

function validarSelCheck(form, vaciosPermitidos) {
    // Obtener los selects y checkboxs
    var selects = form.find('select');
    var checkboxs = form.find('input:checkbox');
}

function llenarForms() {
	$('input[type="text"], input[type="password"]').val('ok');
	$('.controls')
		.find('input[type="radio"]:first')
			.attr('checked', 'checked');
}