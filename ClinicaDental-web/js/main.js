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

    
});
