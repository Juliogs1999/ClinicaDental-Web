$(document).ready(function() {
    var pacienteCodigo = obtenerParametroURL('paciente'); // Obtener el código del paciente de la URL
    var datos; 
    // Función para llenar la tabla de procedimientos
    function llenarRadiografia(datosRecibidos) {
        datos = datosRecibidos; // Almacenar los datos en la variable global
        $("#tbody-radiografia").html(""); // Limpiar el contenido anterior de la tabla

    
        $(datos.radiografias).each((index,value) => {
            var fila = "<tr>";   
            fila += "<td class='contenedor-radiografia2' style='border: none;'><i class='bi bi-x-lg eliminarradiografia text-danger' data-codigoradiografia='" + value.CodigoRadiografia + "'></i></td>";
           
            if (value.NomRadiografia !== "") {
            
                fila += "<td><a href='http://localhost/serviciosmiley/archivoradiografia/radiografiaimg/" + value.NombreRadiografia + "' target='_blank'>" + value.NombreRadiografia + "</a></td>";
             } else {
                fila += "<td>Sin imagen</td>"; // Mostrar un mensaje si no hay imagen
            }
            fila += "<td class='contenedor-radiografia' style='border: none;'><i class='bi bi-pencil-fill boton-actualizarradiografia' data-bs-toggle='modal' data-bs-target='#modal-actualizarse'></i></td>";
           
             fila += "</tr>";
            $("#tbody-radiografia").append(fila);
        });

        $(".eliminarradiografia").click(function() {
            var CodigoRadiografia = $(this).data("codigoradiografia");
            var respuesta = confirm("¿Está seguro que desea eliminar el radiografia?");
            if (respuesta) {
                eliminarRadiografia(CodigoRadiografia);
            }
        });
        $(".boton-actualizarradiografia").click(function() {
            var filaActual = $(this).parent().parent();
            var posicion = filaActual.index();
            var radiografiaActual = datos.radiografias[posicion]; // Obtener el archivo específico

            // Establecer solo el nombre (sin la extensión) en el campo de texto
            var nombreSinExtension = radiografiaActual.NombreRadiografia.split('.').slice(0, -1).join('.'); // Obtener el nombre sin la extensión
            $("#txtCodigoradiografiaActualizar").val(radiografiaActual.CodigoRadiografia);
            $("#txtRadiografiaActualizar").val(nombreSinExtension); 
        });
       
        $("#nombre-apellido-paciente-codigo").html("<h5 class='text-danger'>HISTORIA CLINICA: " + pacienteCodigo + "</h5>");
        $("#nombre-apellido-paciente").html("<h5>" + datos.paciente.Nombre + " " + datos.paciente.Apellido + "</h5>");

       
    }
   
    // Función para obtener parámetros de la URL
    function obtenerParametroURL(parametro) {
        var urlParams = new URLSearchParams(window.location.search);
        return urlParams.get(parametro);
    }
   
    // Función para obtener los datos del paciente y procedimientos
    
   
    function obtenerDatosRadiografia() {
        var rutaRadio = "http://localhost/serviciosmiley/archivoradiografia/servicio-ver-radiografia.php?paciente=" + pacienteCodigo;
        fetch(rutaRadio)
            .then(response => response.json())
            .then(datos => {
                console.log(datos);
                llenarRadiografia(datos);
                
            })
            .catch(error => console.error('Error al obtener los datos:', error));
    }
    // Leer los procedimientos del paciente al cargar la página
    obtenerDatosRadiografia();
    
    function eliminarRadiografia(CodigoRadiografia) {
        var rutaeliminarradio = "http://localhost/serviciosmiley/archivoradiografia/servicio-eliminar-radiografia.php?paciente=" + pacienteCodigo;
    
        var formData = new FormData();
        formData.append("codigoradiografia", CodigoRadiografia);
    
        fetch(rutaeliminarradio, {
            method: 'POST',
            body: formData
        })
        .then(response => response.text())
        .then(() => {
            obtenerDatosRadiografia(); // Actualizar la tabla después de eliminar un procedimiento
        })
        .catch(error => console.error('Error al eliminar presupuesto:', error));
    }
    $("#btnAgregarRadiografia").click(function(event) {
        event.preventDefault();
    
        var nombreRadiografia = $("#txtRadiografia")[0].files[0];
    
        // Validar si se ha seleccionado un archivo
        if (!nombreRadiografia) {
            alert("Por favor, selecciona un archivo antes de enviar.");
            return; // Salir de la función si no se seleccionó un archivo
        }
    
        $("#txtRadiografia").val(""); // Limpiar el campo de archivo después de la selección
    
        var rutaradiografia = "http://localhost/serviciosmiley/archivoradiografia/servicio-agregar-radiografia.php?paciente=" + pacienteCodigo;
    
        var formData = new FormData();
        formData.append("txtRadiografia", nombreRadiografia);
        formData.append("paciente", pacienteCodigo); // Agregar el código del paciente al formulario
    
        fetch(rutaradiografia, {
            method: 'POST',
            body: formData
        })
        .then(response => response.text())
        .then(datos => {
            console.log(datos);
            obtenerDatosRadiografia(); // Actualizar la tabla después de agregar un nuevo procedimiento
            alert("Radiografia subido exitosamente!");
        })
        .catch(error => {
            console.error('Error:', error);
            alert("Ocurrió un error al subir el radiografia.");
        });
    });
    
    $("#btnActualizarRadiografia").click(function(event) {
        event.preventDefault();
        
        var codigoradiografia = $("#txtCodigoradiografiaActualizar").val(); // Obtener el código del archivo
        var nuevoNombre = $("#txtRadiografiaActualizar").val(); // Obtener el nuevo nombre del archivo
    
        // Asegúrate de que 'datos' esté definido
        if (!datos) {
            alert("No se han cargado los datos correctamente.");
            return;
        }
    
        // Obtener la extensión del archivo existente
        var radiografiaExistente = datos.radiografias.find(radiografia => radiografia.CodigoRadiografia === codigoradiografia);
        if (!radiografiaExistente) {
            alert("Radiografia no encontrado.");
            return;
        }
        var extension = radiografiaExistente.NombreRadiografia.split('.').pop(); // Obtener la extensión
    
        // Concatenar el nuevo nombre con la extensión existente
        var nombreCompletoNuevo = nuevoNombre + '.' + extension;
    
        var rutaactual = "http://localhost/serviciosmiley/archivoradiografia/servicio-actualizar-radiografia.php?paciente=" + pacienteCodigo;
    
        var formData = new FormData();
        formData.append("codigoradiografia", codigoradiografia); // Incluir el código del archivo en los datos del formulario
        formData.append("nombreradiografianuevo", nombreCompletoNuevo); // Usar el nuevo nombre con la extensión
    
        fetch(rutaactual, {
            method: 'POST',
            body: formData
        })
        .then(response => response.text())
        .then(() => {
            obtenerDatosRadiografia();
        })
        .catch(error => console.error('Error al actualizar el radiografia:', error));
    });
});
    
    
    


