var totalEgresos = 0;


leerEgre = () => {
    var rutaEgre = "http://localhost/serviciosmiley/egreso/servicio-ver-egreso.php"
    fetch(rutaEgre)
    .then(response => response.json())
    .then(datos =>{ 
        console.log(datos);
        datosEgresos = datos;
        datos.sort((a, b) => new Date(a.Fechaegre) - new Date(b.Fechaegre));
        llenarTablaEgreso(datos);
    });
}
leerEgre();
llenarTablaEgreso = (datos) => {
    //$("#tbody-costo").html(""); 
    $("#tbody-egreso").html(""); // Limpiar el contenido de ambas tablas
    $("#tbody-total-egreso").html("");
    totalEgresos = 0;
    $(datos).each((index, value) => {
    
        var fila2 = "<tr>";
        function formatDate(dateString) {
            // Verificar si la cadena de fecha es nula o vacía
            if (!dateString || dateString.trim() === "" || !/^\d{4}-\d{2}-\d{2}$/.test(dateString)) {
                return "dd/mm/aaaa"; // Devuelve "dd/mm/aaaa" si la cadena de fecha no es válida
            }
        
            // Dividir la cadena de fecha para obtener día, mes y año
            var parts = dateString.split('-');
        
            // Crear un nuevo objeto Date con los componentes de fecha obtenidos
            var date = new Date(parts[0], parts[1] - 1, parts[2]);
        
            // Validar si la fecha es válida
            if (isNaN(date.getTime()) || date.getFullYear() < 2000) {
                return "dd/mm/aaaa"; // Devuelve "dd/mm/aaaa" si la fecha es inválida
            }
        
            // Obtener el día del mes
            var day = String(date.getDate()).padStart(2, '0');
        
            // Obtener el nombre del mes
            var monthNames = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio",
                "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"];
            var monthIndex = date.getMonth();
            var month = monthNames[monthIndex];
        
            // Obtener el año
            var year = date.getFullYear();
        
            // Formatear la fecha como "dia de mes de año"
            return day + ' ' + month + ' ' + year;
        }
        fila2 += "<td class='contenedor-egreso' style='border: none;'><i class='bi bi-x-lg boton-eliminaregreso'></i></td>";
       
        fila2 += "<td class='letra-oswald700' style='font-size: 1.2em; padding-top: 0px; letter-spacing: -1px;'>" + formatDate(value.Fechaegre) + "</td>";
        fila2 += "<td class='letra-oswald700' style='font-size: 1.2em; padding-top: 0px; letter-spacing: -1px;'>" + value.Descripcionegre + "</td>";
        fila2 += "<td class='letra-oswald700' style='font-size: 1.2em; padding-top: 0px; letter-spacing: -1px;'>" + value.Tipoegre + "</td>";
        
        fila2 += "<td class='letra-oswald700' style='font-size: 1.2em; color: red; padding-top: 0px; letter-spacing: -1px;'>" + "-S/. " + value.Precioegre + "</td>";
        
        fila2 += "<td class='contenedor-egreso2' style='border: none;'><i class='bi bi-pencil-fill boton-actualizaregreso' data-bs-toggle='modal' data-bs-target='#modal-actualizarseegreso'></i></td>";
        
        fila2 += "</tr>";     
        $("#tbody-egreso").append(fila2);

        totalEgresos += parseFloat(value.Precioegre) || 0;
    });

    $("#tbody-total-egreso").html("<tr><td class='text-center' style='color:red;'>-S/. " + totalEgresos.toFixed(2) + "</td></tr>");
    actualizarDiferencia();
    let codigoEgresoAEliminar = null;
    // Asignar evento de clic al botón de eliminar en ambas tablas
    $(".boton-eliminaregreso").click(function() {
        var filaActual = $(this).parent().parent();
        var posicion = filaActual.index();
        codigoEgresoAEliminar = datos[posicion].Codigoegre;

    // Mostrar el modal de confirmación
    $("#modal-confirmar-eliminacion-egreso").modal('show');
 });
 $("#btnConfirmarEliminarEgreso").click(function() {
    // Obtener la contraseña ingresada
    var password = $("#inputContraseña").val();

    // Verificar la contraseña (esto debe ser hecho en el servidor por seguridad)
    // Ejemplo simple, para fines demostrativos
    if (password === "smiley.1234") {
        eliminarEgreso(codigoEgresoAEliminar);
        $("#modal-confirmar-eliminacion-egreso").modal('hide');
    } else {
        alert("Contraseña incorrecta. Inténtalo de nuevo.");
    }
});
 $(".boton-actualizaregreso").click(function() {
    var filaActual = $(this).parent().parent();
    var posicion = filaActual.index();
    $("#txtCodigoegreActualizar").val(datos[posicion].Codigoegre);
    $("#txtFechaegreActualizar").val(datos[posicion].Fechaegre);
    $("#txtDescripcionegreActualizar").val(datos[posicion].Descripcionegre);
    $("#txtTipoegreActualizar").val(datos[posicion].Tipoegre);
    $("#txtPrecioegreActualizar").val(datos[posicion].Precioegre);
   
    
    
    

   
});
}




// Función para eliminar el paciente
eliminarEgreso = (Codigoegre) => {
    var rutaeliminaregreso = "http://localhost/serviciosmiley/egreso/servicio-eliminar-egreso.php";

    var formData = new FormData();
    formData.append("codigoegre",Codigoegre);
    

    fetch(rutaeliminaregreso,{
        method: 'POST', 
        body: formData
    })
    .then(response => response.text())
    .then(() =>{
        leerEgre();
    })
 }



$("#btnAgregarEgre").click((event) => {
    event.preventDefault();
    var fechaegre = $("#txtFechaegre").val();
    var descripcionegre = $("#txtDescripcionegre").val();
    var tipoegre = $("#txtTipoegre").val();
    var precioegre = $("#txtPrecioegre").val();
    
    if (
        fechaegre === "" ||
        descripcionegre === "" ||
        tipoegre === "" ||
        precioegre === ""
    ) {
        // Mostrar un mensaje de error o realizar alguna acción si algún campo está vacío
        alert("Todos los campos son obligatorios");
        return; // Detener la ejecución si hay campos vacíos
    }

    $("#txtFechaegre").val("");
    $("#txtDescripcionegre").val("");
    $("#txtTipoegre").val("");
    $("#txtPrecioegre").val("");
    

    var rutaegreso = "http://localhost/serviciosmiley/egreso/servicio-agregar-egreso.php";
    var formData = new FormData();
    
    formData.append("fechaegre",fechaegre);
    formData.append("descripcionegre",descripcionegre);
    formData.append("tipoegre",tipoegre);
    formData.append("precioegre",precioegre);
    
    fetch(rutaegreso,{
        method: 'POST', 
        body: formData
    })
    .then(response => response.text())
    .then(datos =>{      
        console.log(datos);
        leerEgre();
        alert("Egreso Añadido!");
    });
});
// Mostrar el modal para confirmar la actualización
$("#btnActualizarEgre").click((event) => {
    event.preventDefault();
    
    // Mostrar el modal de confirmación
    $("#modal-confirmar-actualizacion-egreso").modal('show');
});

// Manejar la confirmación de la actualización
$("#btnConfirmarActualizarEgreso").click(function() {
    // Obtener la contraseña ingresada
    var password = $("#inputContraseñaActualizar").val();

    
    if (password === "smiley.1234") {
        var codigoegre = $("#txtCodigoegreActualizar").val();
        var fechaegre = $("#txtFechaegreActualizar").val();
        var descripcionegre = $("#txtDescripcionegreActualizar").val();
        var tipoegre = $("#txtTipoegreActualizar").val();
        var precioegre = $("#txtPrecioegreActualizar").val();

        var rutaactualizaregre = "http://localhost/serviciosmiley/egreso/servicio-actualizar-egreso.php";

        var formData = new FormData();
        formData.append("codigoegre", codigoegre);
        formData.append("fechaegre", fechaegre);
        formData.append("descripcionegre", descripcionegre);
        formData.append("tipoegre", tipoegre);
        formData.append("precioegre", precioegre);

        fetch(rutaactualizaregre, {
            method: 'POST',
            body: formData
        })
        .then(response => response.text())
        .then(() => {
            leerEgre();
            $("#modal-confirmar-actualizacion-egreso").modal('hide');
        });
    } else {
        alert("Contraseña incorrecta. Inténtalo de nuevo.");
    }
});


      

        