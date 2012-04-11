$(document).ready(function() {
    // Obtener sidebar
    var sidebarLinks = $('#sidebar a');
    // Captar cuando se pulsa click
    sidebarLinks.on('click', function() {
        // Obtener el link que se pulsó
        var link = $(this);
        // Obtener el URL y eliminar el #
        var url = link.attr('href');
        url = url.substr(1, url.length);
        url = url + ".jsp #contenido";
        // Cargar contenido
        $('#contenido').hide().load(url, function() {
            // Quitar link activo de otras opciones
            link.parent().siblings('li')
                .removeClass('active')
                .children('a')
                    .children('i')  // Cambiar el icono
                        .removeClass('icon-white')
                        .end();
            // Activar link
            link
                .parent()
                    .addClass('active')
                    .children('a')  // Cambiar icono
                        .children('i')
                            .addClass('icon-white')
                            .end();
        }).fadeIn();
    });
});