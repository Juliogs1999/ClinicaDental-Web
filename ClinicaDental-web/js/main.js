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
    $("#item-menu-tratamiento").click(function (e) {
        e.preventDefault();
        fetch('./tratamiento.html')
            .then(function (response) {
                return response.text();
            })
            .then(function (datoshtml) {
                $("#main-content").html(datoshtml);
            });
    });

    $("#item-menu-galeriadesonrisas").click(function (e) {
        e.preventDefault();
        fetch('./galeriadesonrisas.html')
            .then(function (response) {
                return response.text();
            })
            .then(function (datoshtml) {
                $("#main-content").html(datoshtml);
            });
    });

    $("#item-menu-blog").click(function (e) {
        e.preventDefault();
        fetch('./blog.html')
            .then(function (response) {
                return response.text();
            })
            .then(function (datoshtml) {
                $("#main-content").html(datoshtml);
            });
    });

    
});
