$(function () {
    $("#item-menu-nosotros").click(function (e) {
        e.preventDefault();
        fetch('./nosotros.html')
            .then(function (response) {
                return response.text();
            })
            .then(function (datoshtml) {
                $("#main-content").html(datoshtml);
            });
    });

    $(document).ready(function () {
        $('#seleccionarHorario').on('click', function () {
            $('#horario').datetimepicker({
                format: 'LT', // Formato de 12 horas con AM/PM
                stepping: 60,  // Incremento de minutos
            });
            $('#horario').datetimepicker('show');
        });
    });
});
