$(document).ready(function() {
    $("#fecha1").datepicker();
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
});

function createHr(id) {
    // Crear elementos HTML
    var tr = $('<tr></tr>');
    var tdNum = $('<td></td>');
    var tdFecha = $('<td></td>');
    var tdHEntrada = $('<td></td>');
    var tdHSalida = $('<td></td>');
    var tdBtn = $('<td></td>');
    var inputFecha = $('<input type="text" class="input-small" />');
    var inputHEntrada = $('<input type="text" class="input-small" />');
    var inputHSalida = $('<input type="text" class="input-small" />');
    var btnEliminar = $('<button class="btn btn-danger" type="button">Eliminar</button>');
    
    // Asignar atributos
    tr.attr('data-horaNum', id);
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
    tr.append(tdBtn);
    
    return tr;
}

// Eliminar un registro de hora
function eliminarHr(elemento) {
    $(elemento).parent().parent().remove();
}