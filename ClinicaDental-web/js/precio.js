leerDatos = (descuento = 0, moneda = "soles") => {
    var rutaPaciente = "http://localhost/serviciosmiley/costo/servicio-preciover.php";
    fetch(rutaPaciente)
    .then(response => response.json())
    .then(datos =>{
        console.log("Datos actualizados:", datos);
        llenarTabla(datos, descuento, moneda);
    });
}
leerDatos();
llenarTabla = (datos, descuento, moneda) => {
    $("#tbody-precio").html(""); 
    
    var precioSubtotal = 0;
    var simboloMoneda = moneda === "dolares" ? "US$" : "S/.";
    
    $(datos).each((index, value) => {
        var fila = "<tr class='letra-dmsam'>";
        fila += "<td class='text-center' style='background-color: #f6f6f6; font-size: 0.8em; padding: 10px;'>" + value.Cantidad + "</td>";
        fila += "<td class='' style='background-color: #f6f6f6; font-size: 0.8em; padding: 10px;'> " + value.Descripcion + "</td>";
        fila += "<td class='text-center' style='background-color: #f6f6f6; font-size: 0.8em; padding: 10px;'> " + simboloMoneda + " " + value.PrecioUni + "</td>";
        fila += "<td class='text-center' style='background-color: #f6f6f6; font-size: 0.8em; padding: 10px;'> " + simboloMoneda + " " + value.PrecioTotal + "</td>";
        fila += "<td class='contenedor-boton' style='font-size: 0.5em;'><i class='bi bi-x-lg boton-eliminartratamiento'></i></td>";
        fila += "</tr>";     
        $("#tbody-precio").append(fila);
        
        var precioTotal = parseFloat(value.PrecioTotal);
        precioSubtotal += precioTotal;
    });
    
    $("#tbody-precio").append("<tr style='height: 10px;'></tr>");
    
    var filaSubtotal = "<tr style='border-top: 10px solid #ffffff;'>";
    filaSubtotal += "<td colspan='2' class='text-center'></td>";
    filaSubtotal += "<td class='letra-dmsam text-center' style='background-color: #f6f6f6; font-size: 0.8em; padding: 10px;'>Subtotal   :</td>";
    filaSubtotal += "<td class='letra-dmsam text-center' style='background-color: #f6f6f6; font-size: 0.8em; padding: 10px;'> " + simboloMoneda + " " + precioSubtotal.toFixed(2) + "</td>";
    filaSubtotal += "</tr>";
    $("#tbody-precio").append(filaSubtotal);

    if (descuento > 0) {
        var filaDescuento = "<tr>";
        filaDescuento += "<td colspan='2' class='text-center'></td>";
        filaDescuento += "<td class='letra-dmsam text-danger text-center' style='background-color: #f6f6f6; font-size: 0.8em; padding: 10px;'>DESCUENTO   :</td>";
        filaDescuento += "<td class='letra-dmsam text-danger text-center' style='background-color: #f6f6f6; font-size: 0.8em; padding: 10px;'>-" + simboloMoneda + " " + descuento.toFixed(2) + "</td>";
        filaDescuento += "<td class='contenedor-boton3' style='font-size: 0.5em; line-height: 1;'><i id='btnEliminarDescuento' class='bi bi-x-lg boton-eliminardescuento'></i></td>";
        filaDescuento += "</tr>";
        $("#tbody-precio").append(filaDescuento);
    }

    var precioTotalFinal = descuento > 0 ? precioSubtotal - descuento : precioSubtotal;
    var filaIGV = "<tr>";
    filaIGV += "<td colspan='2' class='text-start'></td>";
    filaIGV += "<td class='letra-dmsam text-center' style='background-color: #f6f6f6; font-size: 0.8em; padding: 10px;'>IGV </td>";
    filaIGV += "<td class='letra-dmsam text-center' style='background-color: #f6f6f6; font-size: 0.8em; padding: 10px;'>INCLUIDO </td>";
    filaIGV += "</tr>";
    $("#tbody-precio").append(filaIGV);

    var filaTotal = "<tr class='table-responsive' style='border-top: 3px solid #ffffff;'>";
    filaTotal += "<td colspan='2' class='text-start letra-roboto500-italic'></td>"; 
    filaTotal += "<td class='letra-roboto500-italic text-center' style='background-color: #052a99; color: white; font-size: 0.8em; padding: 10px; border-top: 3px solid #052a99; border-bottom: 3px solid #052a99;'>TOTAL FINAL</td>";
    filaTotal += "<td class='letra-dmsam text-center' style='background-color: #052a99; color: white; height: 100%; font-size: 0.8em; padding: 10px; border-top: 3px solid #052a99; border-bottom: 3px solid #052a99;'> " + simboloMoneda + " " + precioTotalFinal.toFixed(2) + "</td>";
    filaTotal += "</tr>";
    $("#tbody-precio").append(filaTotal);

    $(".boton-eliminartratamiento").click(function() {
        var filaActual = $(this).parent().parent();
        var posicion = filaActual.index();
        console.log(posicion);
        console.log(datos[posicion]);
        console.log(datos[posicion].Descripcion);
        var CodigoTra = datos[posicion].CodigoTra;
        var respuesta = confirm("¿Esta seguro que desea eliminar el Tratamiento " 
            + datos[posicion].Descripcion + "?" )
        if(respuesta == true){
            eliminarTratamiento(CodigoTra);
      }
 });
 $("#btnEliminarDescuento").click(function() {
    // Elimina la fila del descuento de la tabla
    $("#filaDescuento").remove();
    
    // Restablece el descuento a 0
    descuento = 0;

    // Elimina el descuento del almacenamiento local
    localStorage.removeItem("descuento");

    // Actualiza la tabla sin descuento
    leerDatos(descuento, $("#selectorMoneda").val());
});
$("#selectorMoneda").change(function() {
    var monedaSeleccionada = $(this).val();
    localStorage.setItem("moneda", monedaSeleccionada);
    leerDatos(parseFloat(localStorage.getItem("descuento")), monedaSeleccionada);
});
}

eliminarTratamiento = (CodigoTra) => {
    var ruta = "http://localhost/serviciosmiley/costo/servicio-precioeliminar.php";

    var formData = new FormData();
    formData.append("codigotra",CodigoTra);
    

    fetch(ruta,{
        method: 'POST', 
        body: formData
    })
    .then(response => response.text())
    .then(() =>{
        leerDatos();
    })
 }
 $("#btnLimpiarTratamientos").click(function() {
    var respuesta = confirm("Una vez descargado se limpiara los datos");
    if (respuesta) {
        eliminarTodosTratamientos();
    }
});

function eliminarTodosTratamientos() {
    var rutaEliminarTratamientos = "http://localhost/serviciosmiley/costo/servicio-eliminartratamientos.php";
    fetch(rutaEliminarTratamientos, {
        method: 'POST'
    })
    .then(response => {
        if (!response.ok) {
            throw new Error('No se pudo eliminar los tratamientos');
        }
        return response.text();
    })
    .then(() => {
        limpiarTabla();
        localStorage.removeItem("descuento");
        leerDatos();
    })
    .catch(error => {
        console.error('Error al eliminar tratamientos:', error);
        alert('Se produjo un error al intentar limpiar los tratamientos.');
    });
}

function limpiarTabla() {
    // Limpia la tabla de tratamientos
    $("#tbody-precio").html("");
    $("#tbody-costo").html(""); 
    $("#tbody-costo2").html(""); 
}
$("#btnDescuento").click((event) => {
    event.preventDefault();

    // Obtener el valor del descuento desde el campo de entrada
    var descuento = parseFloat($("#txtDescuento").val());

    // Validar si el descuento es válido (por ejemplo, si es un número positivo)
    if (isNaN(descuento) || descuento < 0) {
        alert("Por favor, ingrese un descuento válido.");
        return;
    }

    // Almacena el descuento en el almacenamiento local del navegador
    localStorage.setItem("descuento", descuento);

    // Llamar a leerDatos con el descuento proporcionado por el usuario
    leerDatos(descuento, $("#selectorMoneda").val());

    // Limpiar el campo de entrada del descuento
    $("#txtDescuento").val("");

    // Mostrar un mensaje de que el descuento ha sido agregado correctamente
    alert("Descuento agregado correctamente.");
});

// Lee el descuento almacenado en el almacenamiento local cuando la página se carga
$(document).ready(function() {
    var descuentoAlmacenado = localStorage.getItem("descuento");
    var monedaAlmacenada = localStorage.getItem("moneda") || "soles";

    if (descuentoAlmacenado !== null) {
        leerDatos(parseFloat(descuentoAlmacenado), monedaAlmacenada);
    } else {
        leerDatos(0, monedaAlmacenada);
    }

    $("#selectorMoneda").val(monedaAlmacenada);

    $("#selectorMoneda").change(function() {
        var monedaSeleccionada = $(this).val();
        localStorage.setItem("moneda", monedaSeleccionada);
        leerDatos(parseFloat(localStorage.getItem("descuento")), monedaSeleccionada);
    });
});
/*function eliminarDescuento() {
    // Llama a leerDatos sin proporcionar un descuento, lo que hará que la tabla se actualice sin el descuento aplicado
    leerDatos(0); // Pasar 0 como descuento significa que no se aplicará ningún descuento

    // Muestra un mensaje indicando que el descuento ha sido eliminado
    alert("Descuento eliminado correctamente.");
}

// Evento click para el botón o enlace que eliminará el descuento
$("#btnEliminarDescuento").click((event) => {
    event.preventDefault();

    // Confirmación para asegurarse de que el usuario desea eliminar el descuento
    var confirmacion = confirm("¿Está seguro que desea eliminar el descuento?");

    // Si el usuario confirma la eliminación, llamamos a la función eliminarDescuento
    if (confirmacion) {
        eliminarDescuento();
    }
});*/

$("#btnAgregarPrecio").click((event) => {
    event.preventDefault();
    
    // Obtener valores de los campos de entrada
    var cantidad = $("#txtCantidad").val();
    var descripcion = $("#txtDescripcion").val();
    var preciou = $("#txtPrecioU").val();
    
    // Verificar si el campo de cantidad, descripción o precio unitario están vacíos
    if (
        cantidad === "" ||
        descripcion === "" ||
        preciou === ""
    ) {
        alert("Todos los campos son obligatorios");
        return; // Detener la ejecución si hay campos vacíos
    }

    // Obtener el símbolo de la moneda seleccionado
    //var simboloMoneda = $("#selectorMoneda").val() === "dolares" ? "US$" : "S/.";
    
    // Calcular el precio total
    var preciot = cantidad * preciou;

    // Limpiar los campos de entrada
    $("#txtCantidad").val("");
    $("#txtDescripcion").val("");
    $("#txtPrecioU").val("");
    
    // Mostrar el precio total en el campo correspondiente
    $("#txtPrecioTotal").val(preciot);

    // Definir la ruta para la solicitud
    var ruta = "http://localhost/serviciosmiley/costo/servicio-precio.php";

    // Crear un objeto FormData para enviar los datos al servidor
    var formData = new FormData();
    formData.append("cantidad", cantidad);
    formData.append("descripcion", descripcion);
    formData.append("preciou", preciou);
    formData.append("preciot", preciot);
    
    // Enviar los datos al servidor
    fetch(ruta, {
        method: 'POST', 
        body: formData
    })
    .then(response => response.text())
    .then(datos => {
        console.log(datos);
        // Actualizar la tabla con los nuevos datos
        leerDatos();
        // Mostrar un mensaje de éxito
        alert("Reserva Exitosa!");
    })
    .catch(error => {
        console.error('Error al agregar el precio:', error);
        alert("Se produjo un error al agregar el precio.");
    });
});

