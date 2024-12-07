$(document).ready(function() {
    var pacienteCodigo = obtenerParametroURL('paciente'); // Obtener el código del paciente de la URL
    var datos; 
    // Función para llenar la tabla de procedimientos
    function llenarArchivo(datosRecibidos) {
        datos = datosRecibidos; // Almacenar los datos en la variable global
        $("#tbody-archivo").html(""); // Limpiar el contenido anterior de la tabla

    
        $(datos.archivos).each((index,value) => {
            var fila = "<tr>";   
            fila += "<td class='contenedor-archivo2' style='border: none;'><i class='bi bi-x-lg eliminararchivo text-danger' data-codigoarchivo='" + value.CodigoArchivo + "'></i></td>";
           
            if (value.NomArchivo !== "") {
                // Mostrar el nombre del archivo como un enlace para descargar
                fila += "<td><a href='http://localhost/serviciosmiley/archivo/imagen/" + value.NombreArchivo + "' target='_blank'>" + value.NombreArchivo + "</a></td>";
             } else {
                fila += "<td>Sin imagen</td>"; // Mostrar un mensaje si no hay imagen
            }
            fila += "<td class='contenedor-archivo' style='border: none;'><i class='bi bi-pencil-fill boton-actualizararchivo' data-bs-toggle='modal' data-bs-target='#modal-actualizarse'></i></td>";
           
             fila += "</tr>";
            $("#tbody-archivo").append(fila);
        });

        $(".eliminararchivo").click(function() {
            var CodigoArchivo = $(this).data("codigoarchivo");
            var respuesta = confirm("¿Está seguro que desea eliminar el archivo?");
            if (respuesta) {
                eliminarArchivo(CodigoArchivo);
            }
        });
        $(".boton-actualizararchivo").click(function() {
            var filaActual = $(this).parent().parent();
            var posicion = filaActual.index();
            var archivoActual = datos.archivos[posicion]; // Obtener el archivo específico

            // Establecer solo el nombre (sin la extensión) en el campo de texto
            var nombreSinExtension = archivoActual.NombreArchivo.split('.').slice(0, -1).join('.'); // Obtener el nombre sin la extensión
            $("#txtCodigoarchivoActualizar").val(archivoActual.CodigoArchivo);
            $("#txtArchivoActualizar").val(nombreSinExtension); 
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
    
   
    function obtenerDatosArchivo() {
        var rutaArchi = "http://localhost/serviciosmiley/archivo/servicio-ver-archivo.php?paciente=" + pacienteCodigo;
        fetch(rutaArchi)
            .then(response => response.json())
            .then(datos => {
                console.log(datos);
                llenarArchivo(datos);
                
            })
            .catch(error => console.error('Error al obtener los datos:', error));
    }
    // Leer los procedimientos del paciente al cargar la página
    obtenerDatosArchivo();
    
    function eliminarArchivo(CodigoArchivo) {
        var rutaproc = "http://localhost/serviciosmiley/archivo/servicio-eliminar-archivo.php?paciente=" + pacienteCodigo;
    
        var formData = new FormData();
        formData.append("codigoarchivo", CodigoArchivo);
    
        fetch(rutaproc, {
            method: 'POST',
            body: formData
        })
        .then(response => response.text())
        .then(() => {
            obtenerDatosArchivo(); // Actualizar la tabla después de eliminar un procedimiento
        })
        .catch(error => console.error('Error al eliminar presupuesto:', error));
    }
    $("#btnAgregarArchivo").click(function(event) {
        event.preventDefault();
    
        var nombreArchivo = $("#txtArchivo")[0].files[0];
    
        // Validar si se ha seleccionado un archivo
        if (!nombreArchivo) {
            alert("Por favor, selecciona un archivo antes de enviar.");
            return; // Salir de la función si no se seleccionó un archivo
        }
    
        $("#txtArchivo").val(""); // Limpiar el campo de archivo después de la selección
    
        var rutaarchivo = "http://localhost/serviciosmiley/archivo/servicio-agregar-archivo.php?paciente=" + pacienteCodigo;
    
        var formData = new FormData();
        formData.append("txtArchivo", nombreArchivo);
        formData.append("paciente", pacienteCodigo); // Agregar el código del paciente al formulario
    
        fetch(rutaarchivo, {
            method: 'POST',
            body: formData
        })
        .then(response => response.text())
        .then(datos => {
            console.log(datos);
            obtenerDatosArchivo(); // Actualizar la tabla después de agregar un nuevo procedimiento
            alert("Archivo subido exitosamente!");
        })
        .catch(error => {
            console.error('Error:', error);
            alert("Ocurrió un error al subir el archivo.");
        });
    });
    
    $("#btnActualizarArchivo").click(function(event) {
        event.preventDefault();
        
        var codigoarchivo = $("#txtCodigoarchivoActualizar").val(); // Obtener el código del archivo
        var nuevoNombre = $("#txtArchivoActualizar").val(); // Obtener el nuevo nombre del archivo
    
        // Asegúrate de que 'datos' esté definido
        if (!datos) {
            alert("No se han cargado los datos correctamente.");
            return;
        }
    
        // Obtener la extensión del archivo existente
        var archivoExistente = datos.archivos.find(archivo => archivo.CodigoArchivo === codigoarchivo);
        if (!archivoExistente) {
            alert("Archivo no encontrado.");
            return;
        }
        var extension = archivoExistente.NombreArchivo.split('.').pop(); // Obtener la extensión
    
        // Concatenar el nuevo nombre con la extensión existente
        var nombreCompletoNuevo = nuevoNombre + '.' + extension;
    
        var ruta = "http://localhost/serviciosmiley/archivo/servicio-actualizar-archivo.php?paciente=" + pacienteCodigo;
    
        var formData = new FormData();
        formData.append("codigoarchivo", codigoarchivo); // Incluir el código del archivo en los datos del formulario
        formData.append("nombrearchivonuevo", nombreCompletoNuevo); // Usar el nuevo nombre con la extensión
    
        fetch(ruta, {
            method: 'POST',
            body: formData
        })
        .then(response => response.text())
        .then(() => {
            obtenerDatosArchivo();
        })
        .catch(error => console.error('Error al actualizar el archivo:', error));
    });
});
    
    
    


