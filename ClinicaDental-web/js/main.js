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
    $("#item-menu-nosotros2").click(function (e) {
        e.preventDefault();
    
        // Cargar la página "nosotros.html" en el contenedor principal
        fetch('./nosotros.html')
            .then(function (response) {
                return response.text();
            })
            .then(function (datoshtml) {
                $("#main-content").html(datoshtml);
                $("#item-menu-nosotros").addClass("active");
                
                // Quitar la clase "active" del botón "Home"
                $("#item-menu-home").removeClass("active");
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

    $("#item-menu-tratamiento2").click(function (e) {
        e.preventDefault();
        fetch('./tratamiento.html')
            .then(function (response) {
                return response.text();
            })
            .then(function (datoshtml) {
                $("#main-content").html(datoshtml);
                $("#item-menu-tratamiento").addClass("active");
                 // Quitar la clase "active" del botón "Home"
                 $("#item-menu-home").removeClass("active");
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
    $("#item-menu-galeriadesonrisas2").click(function (e) {
        e.preventDefault();
        fetch('./galeriadesonrisas.html')
            .then(function (response) {
                return response.text();
            })
            .then(function (datoshtml) {
                $("#main-content").html(datoshtml);
                $("#item-menu-galeriadesonrisas").addClass("active");
                 // Quitar la clase "active" del botón "Home"
                 $("#item-menu-home").removeClass("active");
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
    $("#item-menu-blog2").click(function (e) {
        e.preventDefault();
        fetch('./blog.html')
            .then(function (response) {
                return response.text();
            })
            .then(function (datoshtml) {
                $("#main-content").html(datoshtml);
                $("#item-menu-blog").addClass("active");
                 // Quitar la clase "active" del botón "Home"
                 $("#item-menu-home").removeClass("active");
            });
    });

    $("#item-menu-contacto").click(function (e) {
        e.preventDefault();
        fetch('./contacto.html')
            .then(function (response) {
                return response.text();
            })
            .then(function (datoshtml) {
                $("#main-content").html(datoshtml);
                
            });
    });

    $("#item-menu-nosotros3").click(function (e) {
        e.preventDefault();
    
        // Cargar la página "nosotros.html" en el contenedor principal
        fetch('./nosotros.html')
            .then(function (response) {
                return response.text();
            })
            .then(function (datoshtml) {
                $("#main-content").html(datoshtml);
                $("#item-menu-nosotros").addClass("active");
                
                // Quitar la clase "active" del botón "Home"
                $("#item-menu-home").removeClass("active");
            });
    });

    $("#item-menu-tratamiento3").click(function (e) {
        e.preventDefault();
        fetch('./tratamiento.html')
            .then(function (response) {
                return response.text();
            })
            .then(function (datoshtml) {
                $("#main-content").html(datoshtml);
                $("#item-menu-tratamiento").addClass("active");
                 // Quitar la clase "active" del botón "Home"
                 $("#item-menu-home").removeClass("active");
            });
    });

    $("#item-menu-galeriadesonrisas3").click(function (e) {
        e.preventDefault();
        fetch('./galeriadesonrisas.html')
            .then(function (response) {
                return response.text();
            })
            .then(function (datoshtml) {
                $("#main-content").html(datoshtml);
                $("#item-menu-galeriadesonrisas").addClass("active");
                 // Quitar la clase "active" del botón "Home"
                 $("#item-menu-home").removeClass("active");
            });
    });


    $("#item-menu-blog3").click(function (e) {
        e.preventDefault();
        fetch('./blog.html')
            .then(function (response) {
                return response.text();
            })
            .then(function (datoshtml) {
                $("#main-content").html(datoshtml);
                $("#item-menu-blog").addClass("active");
                 // Quitar la clase "active" del botón "Home"
                 $("#item-menu-home").removeClass("active");
            });
    });

    $("#item-menu-contacto2").click(function (e) {
        e.preventDefault();
        fetch('./contacto.html')
            .then(function (response) {
                return response.text();
            })
            .then(function (datoshtml) {
                $("#main-content").html(datoshtml);
                $("#item-menu-contacto").addClass("active");
                 // Quitar la clase "active" del botón "Home"
                 $("#item-menu-home").removeClass("active");
            });
    });

    // Obtén una lista de todos los elementos con la clase "nav-link"
// Obtén una lista de todos los elementos con la clase "nav-link"
var navLinks = document.querySelectorAll('.nav-link');

// Recorre la lista de elementos y agrega un controlador de eventos a cada uno
navLinks.forEach(function(navLink) {
  navLink.addEventListener('click', function() {
    // Elimina la clase "active" de todos los elementos
    navLinks.forEach(function(link) {
      link.classList.remove('active');
    });
    
    // Agrega la clase "active" al elemento actual
    this.classList.add('active');
  });
});
    
});
