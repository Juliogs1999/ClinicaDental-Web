var datosPacientes = [];
leerDatos = () => {
        var rutaPaciente = "http://localhost/serviciosmiley/registro-paciente.php"
        fetch(rutaPaciente)
        .then(response => response.json())
        .then(datos =>{
            console.log(datos);
            datosPacientes = datos;
            llenarTabla(datos);
        });
}
leerDatos();

    llenarTabla = (datos) => {
        $("#tbody-paciente").html("");
        $(datos).each((index,value) => {
            var fila = "<tr>";
            fila += "<td><i class='bi bi-x-lg boton-eliminar text-danger'></i></td>";
            fila += "<td class='bg-warning'>" + value.Codigo + "</td>";
            fila += "<td>" + value.Nombre + "</td>";
            fila += "<td>" + value.Apellido + "</td>";
            fila += "<td>" + value.Correo + "</td>";
            fila += "<td>" + value.Dni + "</td>";
           
            /*fila += "<td>" + value.Telefono + "</td>";
            fila += "<td>" + value.Sede + "</td>";
            fila += "<td>" + value.Direccion + "</td>";           
            fila += "<td>" + value.Especialidad + "</td>";  */
            // Función para formatear la fecha
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
                if (isNaN(date.getTime()) || date.getFullYear() < 1900) {
                    return "dd/mm/aaaa"; // Devuelve "dd/mm/aaaa" si la fecha es inválida
                }
            
                // Obtener el día del mes
                var day = String(date.getDate()).padStart(2, '0');
            
                // Obtener el nombre del mes
                var monthNames = ["enero", "febrero", "marzo", "abril", "mayo", "junio",
                    "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre"];
                var monthIndex = date.getMonth();
                var month = monthNames[monthIndex];
            
                // Obtener el año
                var year = date.getFullYear();
            
                // Formatear la fecha como "dia de mes de año"
                return day + ' ' + month + ' ' + year;
            }
        fila += "<td>" + formatDate(value.Fechanac) + "</td>";
        fila += "<td><a href='pagina_perfil.html?paciente=" + value.Codigo + "' class='btn btn-outline-warning' >Ver Más</a></td>";
        /*fila += "<td>" + formatDate(value.Fecha) + "</td>";
        fila += "<td>" + formatDate(value.Fechafin) + "</td>";
        fila += "<td>" + formatDate(value.Fechalimpieza) + "</td>";
        
        fila += "<td><a href='pagina_presupuesto.html?paciente=" + value.Codigo + "'>Ver Presupuesto de Paciente</a></td>";        
         fila += "<td><a href='pagina_tratamientos.html?paciente=" + value.Codigo + "'>Ver tratamientos</a></td>"; 
            fila += "<td>" + value.Atender + "</td>"; */
            fila += "<td><i class='bi bi-pencil-fill boton-actualizar' data-bs-toggle='modal' data-bs-target='#modal-actualizar'></i></td>";
            fila += "</tr>";
            $("#tbody-paciente").append(fila);
        });

        $(".boton-eliminar").click(function() {
            var filaActual = $(this).parent().parent();
            var posicion = filaActual.index();
            console.log(posicion);
            console.log(datos[posicion]);
            console.log(datos[posicion].Nombre);
            var Codigo = datos[posicion].Codigo;
            var respuesta = confirm("¿Esta seguro que desea eliminar el Paciente " 
                + datos[posicion].Nombre + "?" )
            if(respuesta == true){
                eliminarPaciente(Codigo);
          }
     });
     
     $(".boton-actualizar").click(function() {
        var filaActual = $(this).parent().parent();
        var posicion = filaActual.index();
        $("#txtCodigoActualizar").val(datos[posicion].Codigo);
        $("#txtNombreActualizar").val(datos[posicion].Nombre);
        $("#txtApellidoActualizar").val(datos[posicion].Apellido);
        $("#txtDniActualizar").val(datos[posicion].Dni);
        $("#txtCorreoActualizar").val(datos[posicion].Correo);
        $("#txtTelefonoActualizar").val(datos[posicion].Telefono);
        $("#txtSedeActualizar").val(datos[posicion].Sede);
        $("#txtDireccionActualizar").val(datos[posicion].Direccion);
        $("#txtEspecialidadActualizar").val(datos[posicion].Especialidad);
        $("#txtFechanacActualizar").val(datos[posicion].Fechanac);
        $("#txtFechaActualizar").val(datos[posicion].Fecha);
        $("#txtFechafinActualizar").val(datos[posicion].Fechafin);
        $("#txtFechalimpiezaActualizar").val(datos[posicion].Fechalimpieza);
        $("#txtNombrePadreActualizar").val(datos[posicion].NombrePadre);
        $("#txtDniPadreActualizar").val(datos[posicion].DniPadre);
        
        
        

       
    });
    
     
 }
 // Capturar el evento de envío del formulario de búsqueda
 $('form[role="search"]').submit(function(event) {
    event.preventDefault(); // Evitar el envío del formulario por defecto
    
    // Obtener el valor ingresado en el campo de búsqueda
    var terminoBusqueda = $('#txtBusqueda').val().trim();
    
    // Realizar la búsqueda por apellido, nombre o código utilizando el valor ingresado
    buscarPorApellidoONombre(terminoBusqueda);
});

function buscarPorApellidoONombre(terminoBusqueda) {
    var terminoBusquedaLower = terminoBusqueda.toLowerCase();
    // Filtrar los datos de los pacientes por apellido, nombre o código
    var resultados = datosPacientes.filter(function(paciente) {
        var apellido = paciente.Apellido.toLowerCase();
        var nombre = paciente.Nombre.toLowerCase();
        var codigo = paciente.Codigo.toLowerCase(); // Suponiendo que tienes un campo 'Codigo' en tus datos
        
        // Convertir el término de búsqueda a minúsculas para comparación
        var termino = terminoBusqueda.toLowerCase();
        
        // Verificar si el apellido, nombre o código del paciente incluye el término de búsqueda
        return apellido.includes(terminoBusquedaLower) || nombre.includes(terminoBusquedaLower) || codigo.includes(terminoBusquedaLower);
    });
    $('#tbody-paciente').empty();
    // Llenar la tabla con los resultados de la búsqueda
    llenarTabla(resultados);
}
function llenarTabla(resultados) {
    var tbody = $('#tbody-paciente');
    
    // Recorrer los resultados y agregar filas a la tabla
    resultados.forEach(function(paciente) {
        var tr = $('<tr></tr>');
        
        // Aquí deberías añadir las celdas correspondientes a cada campo del paciente
        // Por ejemplo:
        tr.append('<td>' + paciente.HistoriaClinica + '</td>'); // Ejemplo con el campo HistoriaClinica
        tr.append('<td>' + paciente.Nombre + '</td>'); // Ejemplo con el campo HistoriaClinica
        tr.append('<td>' + paciente.Apellido + '</td>'); // Ejemplo con el campo HistoriaClinica
        
        // Añadir más celdas según los campos que tengas en tus datos de pacientes
        
        // Agregar la fila a la tabla
        tbody.append(tr);
    });
}

 eliminarPaciente = (Codigo) => {
    var ruta = "http://localhost/serviciosmiley/eliminarpaciente.php";

    var formData = new FormData();
    formData.append("Codigo",Codigo);
    

    fetch(ruta,{
        method: 'POST', 
        body: formData
    })
    .then(response => response.text())
    .then(() =>{
        leerDatos();
    })
 }
 $("#btnAgregarPaciente").click((event) => {
    event.preventDefault();
    var nombre = $("#txtNombre").val();
    var apellido = $("#txtApellido").val();
    var dni = $("#txtDni").val();
    var correo = $("#txtCorreo").val();
    var telefono = $("#txtTelefono").val();
    var sede = $("#txtSede").val();
    var direccion = $("#txtDireccion").val();
    var especialidad = $("#txtEspecialidad").val();
    var fechanac = $("#txtFechanac").val();
    var fecha = $("#txtFecha").val();
    var fechafin = $("#txtFechafin").val();
    var fechalimpieza = $("#txtFechalimpieza").val();
    var nombrepadre = $("#txtNombrePadre").val();
    var dnipadre = $("#txtDniPadre").val();

    //var img = $("#txtImg")[0].files[0];
    //var img2= $("#txtImg2")[0].files[0];
    //var nota = $("#txtNota").val();
    //var atender = $("input[name='seAtendio']:checked").val();
    var checkbox = document.getElementById('checkbox').checked;
    
   
    if (
        nombre === "" ||
        apellido === "" ||
        dni === "" || 
        telefono === "" ||
        sede === null || sede === "" ||
        fecha === "" ||
        fechafin === "" ||
        especialidad === null || especialidad === "" ||
        !checkbox
    ) {
        // Mostrar un mensaje de error o realizar alguna acción si algún campo está vacío
        alert("Todos los campos son obligatorios");
        return; // Detener la ejecución si hay campos vacíos
    }

    $("#txtNombre").val("");
    $("#txtApellido").val("");
    $("#txtDni").val("");
    $("#txtCorreo").val("");
    $("#txtTelefono").val("");
    $("#txtSede").val("");
    $("#txtDireccion").val("");
    $("#txtEspecialidad").val("");
    $("#txtFechanac").val("");
    $("#txtFecha").val("");
    $("#txtFechafin").val("");
    $("#txtFechalimpieza").val("");
    $("#txtNombrePadre").val("");
    $("#txtDniPadre").val("");
  
  
    //$("input[name='seAtendio']").prop("checked", false);
    
    document.getElementById('checkbox').checked = false;
    
   
    if (dni !== "") {
        // Realizar la solicitud para verificar si el DNI ya existe

        var rutaVerificarDNI = "http://localhost/serviciosmiley/verificar-dni.php";

        var formDataDNI = new FormData();
        formDataDNI.append("dni", dni);

        fetch(rutaVerificarDNI, {
            method: 'POST',
            body: formDataDNI
        })
        .then(response => response.json())
        .then(resultado => {
            if (resultado.existe) {
                alert("El DNI ya está registrado. No se puede agregar un paciente con el mismo DNI.");
            } else {
                var ruta = "http://localhost/serviciosmiley/paciente.php";
  
            var formData = new FormData();
            formData.append("nom",nombre);
            formData.append("ape",apellido);
            formData.append("dni",dni);
            formData.append("correo",correo);
            formData.append("telefono",telefono);
            formData.append("sede",sede);
            formData.append("direccion",direccion);   
            formData.append("especialidad",especialidad);
            formData.append("fechanac", fechanac);
            formData.append("fecha", fecha);
            formData.append("fechafin", fechafin);
            formData.append("fechalimpieza", fechalimpieza);
            formData.append("nombrepadre",nombrepadre);
            formData.append("dnipadre",dnipadre);

            
            fetch(ruta,{
                method: 'POST', 
                body: formData
            })
            .then(response => response.text())
            .then(datos =>{
                console.log(datos);
                leerDatos();
                alert("Reserva Exitosa!");
            })
        }
    })
     .catch(error => {
         console.error('Error al verificar el DNI:', error);
        });
    }
});

    

$("#btnActualizar").click((event) => {
    event.preventDefault(); 
    var codigo = $("#txtCodigoActualizar").val();
    var nombre = $("#txtNombreActualizar").val();
    var apellido = $("#txtApellidoActualizar").val();
    var dni = $("#txtDniActualizar").val();
    var correo = $("#txtCorreoActualizar").val();
    var telefono = $("#txtTelefonoActualizar").val();
    var sede = $("#txtSedeActualizar").val();
    var direccion = $("#txtDireccionActualizar").val();
    var especialidad = $("#txtEspecialidadActualizar").val();
    var fechanac = $("#txtFechanacActualizar").val();
    var fecha = $("#txtFechaActualizar").val();
    var fechafin = $("#txtFechafinActualizar").val();
    var fechalimpieza = $("#txtFechalimpiezaActualizar").val();
    var nombrepadre = $("#txtNombrePadreActualizar").val();
    var dnipadre = $("#txtDniPadreActualizar").val();
  


    var ruta = "http://localhost/serviciosmiley/actualizar-paciente.php";

    var formData = new FormData();
    formData.append("codigo",codigo);
    formData.append("nom",nombre);
    formData.append("ape",apellido);
    formData.append("dni",dni);
    formData.append("correo",correo);
    formData.append("telefono",telefono);
    formData.append("sede",sede);
    formData.append("direccion",direccion);
    formData.append("especialidad",especialidad);
    formData.append("fechanac",fechanac);
    formData.append("fecha",fecha);
    formData.append("fechafin",fechafin);
    formData.append("fechalimpieza",fechalimpieza);
    formData.append("nombrepadre",nombrepadre);
    formData.append("dnipadre",dnipadre);
    //formData.append("txtImgActualizar",imgActualizar);
    //formData.append("txtImg2Actualizar",img2Actualizar);
    //formData.append("nota",nota);
    //formData.append("atender",atender);
   
    // Solo añadir archivos si se seleccionaron
     // Enviar los archivos solo si se seleccionaron
  
    
    fetch(ruta, {
        method: 'POST', 
        body: formData
    })
    .then(response => response.text())
    .then(() => {
        leerDatos();
        alert("Paciente actualizado exitosamente!");
    })
    .catch(error => {
        console.error('Error al actualizar el paciente:', error);
    });
});




     
