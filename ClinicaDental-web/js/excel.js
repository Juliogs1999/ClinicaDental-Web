var datosPacientes = [];

// Leer Excel
function leerExcel() {
    var rutaExcel = "http://localhost/serviciosmiley/archivoexcel/servicio-ver-excel.php";
    fetch(rutaExcel)
        .then(response => response.json())
        .then(datos => {
            console.log(datos);
            datosPacientes = datos;
            llenarExcel(datos);
        })
        .catch(error => console.error("Error al cargar los datos:", error));
}

function llenarExcel(datos) {
    $("#tbody-excel").html(""); // Limpiar la tabla
    $(datos).each((index, value) => {
        var fila = "<tr>";
        fila += "<td><i class='bi bi-x-lg boton-eliminar-excel text-danger' data-codigoexcel='" + value.CodigoExcel + "'></i></td>";
        if (value.NomExcel !== "") {
            fila += "<td><a href='http://localhost/serviciosmiley/archivoexcel/excelimg/" + value.NombreExcel + "' target='_blank'>" + value.NombreExcel + "</a></td>";
        } else {
            fila += "<td>Sin archivo</td>";
        }
        fila += "<td><i class='bi bi-pencil-fill boton-actualizar-excel' data-bs-toggle='modal' data-bs-target='#modal-actualizarse'></i></td>";
        fila += "</tr>";
        $("#tbody-excel").append(fila);
    });
    $(".boton-eliminar-excel").click(function() {
        var filaActual = $(this).parent().parent();
        var posicion = filaActual.index();
        console.log(posicion);
        console.log(datos[posicion]);
        console.log(datos[posicion].NomExcel);
        var CodigoExcel = datos[posicion].CodigoExcel;
        var respuesta = confirm("¿Esta seguro que desea eliminar el excel " 
            + datos[posicion].NombreExcel + "?" )
        if(respuesta == true){
            eliminarExcel(CodigoExcel);
      }
 });
 
 $(".boton-actualizar-excel").click(function () {
    var filaActual = $(this).closest("tr"); // Obtener la fila actual
    var posicion = filaActual.index(); // Obtener la posición de la fila
    var excelActual = datosPacientes[posicion]; // Obtener los datos del archivo seleccionado

    if (!excelActual) {
        alert("No se pudo encontrar el archivo Excel seleccionado.");
        return;
    }

    var nombreSinExtension = excelActual.NomExcel.split('.').slice(0, -1).join('.'); // Eliminar la extensión
    $("#txtCodigoExcelActualizar").val(excelActual.CodigoExcel); // Establecer el código
    $("#txtExcelActualizar").val(nombreSinExtension); // Establecer el nombre sin extensión
});
}
eliminarExcel = (CodigoExcel) => {
    var ruta = "http://localhost/serviciosmiley/archivoexcel/servicio-eliminar-excel.php";

    var formData = new FormData();
    formData.append("codigoexcel",CodigoExcel);
    

    fetch(ruta,{
        method: 'POST', 
        body: formData
    })
    .then(response => response.text())
    .then(() =>{
        leerExcel();
    })
 }
// Agregar Excel
$("#btnAgregarExcel").click((event) => {
    event.preventDefault();
    var nombreExcel = $("#txtExcel")[0].files[0];

    if (!nombreExcel) {
        alert("Por favor, selecciona un archivo antes de enviar.");
        return;
    }

    if (!nombreExcel.name.endsWith(".xlsx") && !nombreExcel.name.endsWith(".xls")) {
        alert("Solo se permiten archivos Excel (.xls, .xlsx).");
        return;
    }

    $("#txtExcel").val(""); // Limpiar el campo después de la selección

    var rutaexcel = "http://localhost/serviciosmiley/archivoexcel/servicio-agregar-excel.php";
    var formData = new FormData();
    formData.append("txtExcel", nombreExcel);

    fetch(rutaexcel, {
        method: "POST",
        body: formData,
    })
        .then(response => response.text())
        .then(datos => {
            console.log(datos);
            leerExcel(); // Actualizar la tabla
            alert("¡Excel subido exitosamente!");
        })
        .catch(error => {
            console.error("Error:", error);
            alert("Ocurrió un error al subir el archivo.");
        });
});

// Inicializar
leerExcel();
$("#btnActualizarExcel").click(function(event) {
    event.preventDefault();

    // Obtener los valores de los campos
    var codigoexcel = $("#txtCodigoExcelActualizar").val(); 
    var nuevoNombreSinExtension = $("#txtExcelActualizar").val().trim(); 

    if (!codigoexcel || !nuevoNombreSinExtension) {
        alert("Por favor, completa todos los campos.");
        return;
    }

    var excel = datosPacientes.find(excel => excel.CodigoExcel === codigoexcel);
    if (!excel) {
        alert("Archivo Excel no encontrado.");
        return;
    }

    var extensionOriginal = excel.NomExcel.split('.').pop(); // Obtener la extensión original
    var nuevoNombreCompleto = `${nuevoNombreSinExtension}.${extensionOriginal}`; // Agregar extensión

    var rutaactual = "http://localhost/serviciosmiley/archivoexcel/servicio-actualizar-excel.php";
    var formData = new FormData();
    formData.append("codigoexcel", codigoexcel);
    formData.append("nombreexcel", nuevoNombreCompleto);

    // Enviar la solicitud
    fetch(rutaactual, {
        method: 'POST',
        body: formData
    })
    .then(response => response.text())
    .then(() => {
       
        leerExcel(); // Recargar la tabla
        alert("¡Nombre del archivo actualizado exitosamente!");
    })
    .catch(error => {
        console.error("Error al actualizar el archivo Excel:", error);
        alert("Ocurrió un error al actualizar el archivo.");
    });
});


    
    
    


