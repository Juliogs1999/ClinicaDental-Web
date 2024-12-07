$(document).ready(function() {
    var pacienteCodigo = obtenerParametroURL('paciente'); // Obtener el código del paciente de la URL
    
    // Función para llenar la tabla de procedimientos
    function llenarTabla(datos) {
        $("#tbody-procedimiento").html(""); // Limpiar el contenido anterior de la tabla

        datos.procedimientos.sort(function(a, b) {
            // Convertir las fechas a objetos Date para poder compararlas
            var dateA = new Date(a.Fechaproc);
            var dateB = new Date(b.Fechaproc);
            return dateA - dateB; // Orden ascendente por fecha
        });
        $(datos.procedimientos).each((index,value) => {
            var fila = "<tr>";   
            fila += "<td class='contenedor-procedimiento2' style='border: none;'><i class='bi bi-x-lg boton-eliminarproc text-danger'></i></td>";
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
                var monthNames = ["enero", "febrero", "marzo", "abril", "mayo", "junio",
                    "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre"];
                var monthIndex = date.getMonth();
                var month = monthNames[monthIndex];
            
                // Obtener el año
                var year = date.getFullYear();
            
                // Formatear la fecha como "dia de mes de año"
                return day + ' ' + month + ' ' + year;
            }      
            fila += "<td class='bg-warning'>" + formatDate(value.Fechaproc) + "</td>";
            fila += "<td style='background-color: #f6f6f6'>" + value.Descripcionproc + "</td>";
            fila += "<td style='background-color: #f6f6f6'>" + value.Doctorproc + "</td>";
            fila += "<td style='background-color: #f6f6f6'>" + value.Nota + "</td>";
            fila += "<td class='contenedor-procedimiento' style='border: none;'><i class='bi bi-pencil-fill boton-actualizarproc' data-bs-toggle='modal' data-bs-target='#modal-actualizarse'></i></td>";
            fila += "</tr>";
            $("#tbody-procedimiento").append(fila);
        });
        $(".boton-eliminarproc").click(function() {
            var filaActual = $(this).parent().parent();
            var posicion = filaActual.index();
            var Codproc = datos.procedimientos[posicion].Codproc;
            var respuesta = confirm("¿Está seguro que desea eliminar el Procedimiento " 
                + datos.procedimientos[posicion].Descripcionproc + "?" );
            if (respuesta == true) {
                eliminarPacienteProc(Codproc);
            }
        });

        $(".boton-actualizarproc").click(function() {
            var filaActual = $(this).parent().parent();
            var posicion = filaActual.index();
            var procedimientos = datos.procedimientos; // Obtener procedimientos del objeto datos
            var procedimiento = procedimientos[posicion]; // Obtener el procedimiento específico
            $("#txtCodigoprocActualizar").val(procedimiento.Codproc);
            $("#txtFechaprocActualizar").val(procedimiento.Fechaproc);
            $("#txtDescripcionprocActualizar").val(procedimiento.Descripcionproc);
            $("#txtDoctorprocActualizar").val(procedimiento.Doctorproc);
            $("#txtNotaprocActualizar").val(procedimiento.Nota);
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
    
   
    function obtenerDatosPaciente() {
        var rutaProc = "http://localhost/serviciosmiley/tratamientos/ver-procedimientos.php?paciente=" + pacienteCodigo;
        fetch(rutaProc)
            .then(response => response.json())
            .then(datos => {
                console.log(datos);
                llenarTabla(datos);
                
            })
            .catch(error => console.error('Error al obtener los datos:', error));
    }
    // Leer los procedimientos del paciente al cargar la página
    obtenerDatosPaciente();
    
    function eliminarPacienteProc(Codproc) {
        var rutaproc = "http://localhost/serviciosmiley/tratamientos/eliminar-tratamiento.php?paciente=" + pacienteCodigo;
    
        var formData = new FormData();
        formData.append("codproc", Codproc);
    
        fetch(rutaproc, {
            method: 'POST',
            body: formData
        })
        .then(response => response.text())
        .then(() => {
            obtenerDatosPaciente(); // Actualizar la tabla después de eliminar un procedimiento
        })
        .catch(error => console.error('Error al eliminar procedimiento:', error));
    }
    $("#btnAgregarProc").click(function(event) {
        event.preventDefault();

        var fechaproc = $("#txtFechaproc").val();
        var descrip = $("#txtDescripcionproc").val();
        var doctorproc = $("#txtDoctorproc").val();
        var notaproc = $("#txtNotaproc").val();

        if (
            fechaproc === "" ||
            descrip === "" ||
            doctorproc === "" 
        ) {
            // Mostrar un mensaje de error o realizar alguna acción si algún campo está vacío
            alert("Todos los campos son obligatorios");
            return; // Detener la ejecución si hay campos vacíos
        }

        $("#txtFechaproc").val("");
        $("#txtDescripcionproc").val("");
        $("#txtDoctorproc").val("");
        $("#txtNotaproc").val("");        

    
        var rutatrata = "http://localhost/serviciosmiley/tratamientos/insertar-tratamiento.php?paciente=" + pacienteCodigo;

        var formData = new FormData();
        formData.append("fechaproc", fechaproc);
        formData.append("descrip", descrip);
        formData.append("doctorproc",doctorproc);
        formData.append("notaproc",notaproc);
        formData.append("paciente", pacienteCodigo); // Agregar el código del paciente al formulario

        
        fetch(rutatrata, {
            method: 'POST',
            body: formData
        })
        .then(response => response.text())
        .then(datos =>{
            console.log(datos);
            obtenerDatosPaciente();// Actualizar la tabla después de agregar un nuevo procedimiento
            alert("Reserva Exitosa!");
        });
    });
    $("#btnActualizarProc").click(function(event) {
        event.preventDefault();
        var codproc = $("#txtCodigoprocActualizar").val(); // Obtener el código del procedimiento
        var fechaproc = $("#txtFechaprocActualizar").val();
        var descrip = $("#txtDescripcionprocActualizar").val();
        var doctorproc = $("#txtDoctorprocActualizar").val();
        var notaproc = $("#txtNotaprocActualizar").val();
    
        var ruta = "http://localhost/serviciosmiley/tratamientos/update-tratamiento.php?paciente=" + pacienteCodigo;
    
        var formData = new FormData();
        formData.append("codproc", codproc); // Incluir el código del procedimiento en los datos del formulario
        formData.append("fechaproc", fechaproc);
        formData.append("descrip", descrip);
        formData.append("doctorproc", doctorproc);
        formData.append("notaproc", notaproc);
        
    
        fetch(ruta,{
            method: 'POST', 
            body: formData
        })
        .then(response => response.text())
        .then(() => {
            
            obtenerDatosPaciente();
        })
    });
    
    
});

