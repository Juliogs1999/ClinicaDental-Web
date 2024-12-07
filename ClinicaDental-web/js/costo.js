var datosPacientes = [];
leerCosto = () => {
    var rutaCosto = "http://localhost/serviciosmiley/costo/servicio-costover.php";
    fetch(rutaCosto)
    .then(response => response.json())
    .then(datos =>{ 
        console.log(datos);
        datosPacientes = datos;
        llenarTabla1(datos);
    });
}
leerCosto();
llenarTabla1 = (datos) => {
    //$("#tbody-costo").html(""); 
    $("#tbody-costo2").html(""); // Limpiar el contenido de ambas tablas

    $(datos).each((index, value) => {
        /*var fila1 = "<tr>";
        fila1 += "<td class='letra-oswald700' style='font-size: 1.2em; padding-top: 0px; padding-bottom: 2px; letter-spacing: -1px;'>" + value.NombreApellido + "</td>";
        fila1 += "<td class='letra-oswald700' style='font-size: 1.2em; padding-top: 0px; padding-bottom: 2px; letter-spacing: -1px;'>" + value.SedeCli + "</td>";
        fila1 += "</tr>";     
        $("#tbody-costo").append(fila1);*/
    
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
        fila2 += "<td class='letra-oswald700' style='font-size: 1.2em; padding-top: 0px; letter-spacing: -1px;'>" + formatDate(value.FechaCli) + "</td>";
        fila2 += "<td class='letra-oswald700' style='font-size: 1.2em; padding-top: 0px; letter-spacing: -1px;'>" + value.Especialidad + "</td>";
        fila2 += "<td class='letra-oswald700' style='font-size: 1.2em; padding-top: 0px; letter-spacing: -1px;'>" + value.Doctor + "</td>";
        fila2 += "<td class='contenedor-boton2' style='font-size: 0.8em; padding-top: 0px;'><i class='bi bi-x-lg boton-eliminarpaciente'></i></td>";
        fila2 += "</tr>";     
        $("#tbody-costo2").append(fila2);
    });

    // Asignar evento de clic al botón de eliminar en ambas tablas
    $(".boton-eliminarpaciente").click(function() {
        var filaActual = $(this).parent().parent();
        var posicion = filaActual.index();
        console.log(posicion);
        console.log(datos[posicion]);
        console.log(datos[posicion].NombreApellido);
        var CodigoCli = datos[posicion].CodigoCli;
        var respuesta = confirm("¿Esta seguro que desea eliminar el Paciente " 
            + datos[posicion].NombreApellido + "?" )
        if(respuesta == true){
            eliminarPaciente(CodigoCli);
      }
 });
}



// Función para eliminar el paciente
eliminarPaciente = (CodigoCli) => {
    var ruta = "http://localhost/serviciosmiley/costo/servicio-costoeliminar.php";

    var formData = new FormData();
    formData.append("codigo",CodigoCli);
    

    fetch(ruta,{
        method: 'POST', 
        body: formData
    })
    .then(response => response.text())
    .then(() =>{
        leerCosto();
    })
 }



$("#btnAgregarCosto").click((event) => {
    event.preventDefault();
   // var nomape = $("#txtNombreApellido").val();
    var fecha = $("#txtFecha").val();
    //var sede = $("#txtSede").val();
    var especialidad = $("#txtEspecialidad").val();
    var doctor = $("#txtDoctor").val();

    if (
        
        fecha === "" ||
        
        especialidad === "" ||
        doctor === ""
    ) {
        // Mostrar un mensaje de error o realizar alguna acción si algún campo está vacío
        alert("Todos los campos son obligatorios");
        return; // Detener la ejecución si hay campos vacíos
    }

   // $("#txtNombreApellido").val("");
    $("#txtFecha").val("");
    //$("#txtSede").val("");
    $("#txtEspecialidad").val("");
    $("#txtDoctor").val("");

    var rutacosto = "http://localhost/serviciosmiley/costo/servicio-costo.php";
    var formData = new FormData();
    //formData.append("nomape",nomape);
    formData.append("fecha",fecha);
    //formData.append("sede",sede);
    formData.append("especialidad",especialidad);
    formData.append("doctor",doctor);

    fetch(rutacosto,{
        method: 'POST', 
        body: formData
    })
    .then(response => response.text())
    .then(datos =>{      
        console.log(datos);
        leerCosto();
        alert("Reserva Exitosa!");
    });
});

      

        