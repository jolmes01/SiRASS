$(document).ready(function() {
    $("#fecha1").datepicker({
        dateFormat: "dd/mm/yy"
    });
    
    $("#fInicio").datepicker({
        dateFormat: "dd/mm/yy"
    });
    
    $("#fTermino").datepicker({
        dateFormat: "dd/mm/yy"
    });
    
    // Obtener la fecha actual
    var curDate = new Date();
    var curDay = curDate.getDate();
    var curMonth = curDate.getMonth();
    var curYear = curDate.getFullYear();
    
    $("#fecha1").datepicker('setDate', '01/' + curMonth.toString() + "/" + curYear.toString());
    $('#hEntrada1').timepicker({});
    $('#hSalida1').timepicker({});
    console.log("ok");
    
    // Crear una nueva entrada para las horas
    $('#addHr').on('click', function() {
        // Obtener la cantidad de hrs en la tabla
        var currentId;
        currentId = $('#hrs tr:last-child').data('horanum');
        currentId++;
        // Crear un nuevo elemento para la hora
        $('#hrs').append(createHr(currentId));
        
        // Agregar los timpicker y datepicker
        $("#fecha" + currentId).datepicker();
        $('#hEntrada' + currentId).timepicker({});
        $('#hSalida' + currentId).timepicker({});
    });
    // Limpiar campos
    $('#reset').on('click', function() {
        $('#hrs tr:first').nextAll().remove();
    });
    
    // Llenado inteligente
    $('#smartFill').on('click', function() {
        var hrInicio = "13";
        var minInicio = "20";
        hrInicio = prompt("Ingresa hora de entrada", "11");
        minInicio = prompt("Ingresa minuto de entrada", "00");
        var inicio = hrInicio + ":" + minInicio;
        var inicioDate = new Date();
        inicioDate.setHours(hrInicio);
        inicioDate.setMinutes(minInicio);
        inicioDate.setSeconds(0);
        inicioDate.setMilliseconds(0);
        
        var finDate = new Date(inicioDate.getTime());
        finDate = new Date(finDate.getTime() + 14400000);
        
        var suma = finDate - inicioDate;
        suma = ((suma/1000)/60)/60
        
        var fin = finDate.getHours() + ":" + finDate.getMinutes();
        
        // Obtener cuántos registros hay
        var currentId = $('#hrs tr:last-child').data('horanum');
        var dia = 2;
        // Llenar de registros hasta que sean 20
        for (var i = currentId; dia <= 30; i++, dia++) {
            console.log(dia);
            var fecha = new Date(curYear.toString() + "/" + curMonth.toString() + "/" + dia.toString());
            console.log(fecha.toLocaleDateString());
            if (fecha.getDay() != 0 && fecha.getDay() != 6) {
            
                $('#hrs').append(createHr(i+1));

                // Agregar los timpicker y datepicker
                $("#fecha" + (i+1)).datepicker({
                    dateFormat: "dd/mm/yy"
                });
                $('#hEntrada' + (i+1)).timepicker({});
                $('#hSalida' + (i+1)).timepicker({});
            
                // Establecer valores
                var cadenaFecha = dia.toString() + "/" + curMonth.toString() + "/" + curYear.toString();
                
                $("#fecha" + (i+1)).datepicker('setDate', cadenaFecha);
                $('#hEntrada' + (i+1)).datetimepicker('setTime', inicio);
                $('#hSalida' + (i+1)).datetimepicker('setTime', fin);
                $('#suma' + (i+1)).text(suma);
                
            } else {
                i--;
            }
        }
    });
});

function createHr(id) {
    // Crear elementos HTML
    var tr = $('<tr></tr>');
    var tdNum = $('<td></td>');
    var tdFecha = $('<td></td>');
    var tdHEntrada = $('<td></td>');
    var tdHSalida = $('<td></td>');
    var tdSuma = $('<td></td>');
    var tdBtn = $('<td></td>');
    var inputFecha = $('<input type="text" class="input-small" />');
    var inputHEntrada = $('<input type="text" class="input-small" />');
    var inputHSalida = $('<input type="text" class="input-small" />');
    var btnEliminar = $('<button class="btn btn-danger" type="button"><i class="icon-remove icon-white"></i></button>');
    
    // Asignar atributos
    tr.attr('data-horaNum', id);
    tdSuma.attr('id', 'suma' + id);
    inputFecha.attr('id', 'fecha' + id);
    inputFecha.attr('name', 'fecha' + id);
    inputFecha.attr('readonly', 'readonly');
    inputHEntrada.attr('id', 'hEntrada' + id);
    inputHEntrada.attr('name', 'hEntrada' + id);
    inputHEntrada.attr('readonly', 'readonly');
    inputHSalida.attr('id', 'hSalida' + id);
    inputHSalida.attr('name', 'hSalida' + id);
    inputHSalida.attr('readonly', 'readonly');
    btnEliminar.attr('id', 'elim' + id);
    btnEliminar.attr('onclick', 'eliminarHr(this)');
    
    // Agregar inputs y botones
    tdNum.append(id)
    tdFecha.append(inputFecha);
    tdHEntrada.append(inputHEntrada);
    tdHSalida.append(inputHSalida);
    tdBtn.append(btnEliminar);
    
    // Conjuntar todo en el TR
    tr.append(tdNum);
    tr.append(tdFecha);
    tr.append(tdHEntrada);
    tr.append(tdHSalida);
    tr.append(tdSuma);
    tr.append(tdBtn);
    
    return tr;
}

// Eliminar un registro de hora
function eliminarHr(elemento) {
    $(elemento).parent().parent().remove();
}