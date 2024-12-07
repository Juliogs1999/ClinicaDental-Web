var datosPac = [];
leerPac = () => {
    var rutaPac = "http://localhost/serviciosmiley/registro-paciente.php";
    fetch(rutaPac)
    .then(response => response.json())
    .then(datos =>{ 
        console.log(datos);
        datosPac = datos;
        //llenarTablaPac(datos);
    });
}
leerPac();

$("#btnAgregarPaciente").click((event) => {
    event.preventDefault();

    var codigoPac = $("#txtCodigoPac").val().trim();
    if (codigoPac === "") {
        alert("Por favor ingrese un código de paciente.");
        return;
    }

    // Buscar el paciente en datosPac por el código ingresado
    var pacienteEncontrado = datosPac.find(pac => pac.Codigo === codigoPac);

    if (pacienteEncontrado) {
        var primerNombre = pacienteEncontrado.Nombre.split(" ")[0];
        var primerApellido = pacienteEncontrado.Apellido.split(" ")[0];
        // Mostrar los datos del paciente encontrado en la tabla
        var filaPac = "<tr>";
        filaPac += "<td class='letra-oswald700' style='font-size: 1em; padding-top: 0px; padding-bottom: 2px; letter-spacing: -1px;'>" + primerNombre + ' ' + primerApellido + "</td>";
        filaPac += "<td class='letra-oswald700' style='font-size: 1em; padding-top: 0px; padding-bottom: 2px; letter-spacing: -1px;'>" + pacienteEncontrado.Sede + "</td>";
        filaPac += "<td class='letra-oswald700' style='font-size: 1em; padding-top: 0px; padding-bottom: 2px; letter-spacing: -1px;'>" + pacienteEncontrado.Codigo + "</td>";
        filaPac += "</tr>";

        $("#tbody-costo").append(filaPac);
        alert("Se encontró el paciente: " + primerNombre + " " + primerApellido);
        // Limpia el campo txtCodigoPac después de agregar
        $("#txtCodigoPac").val("");
        //descargarPDF(pacienteEncontrado.Nombre, pacienteEncontrado.Apellido);
        
    } else {
        alert("No se encontró ningún paciente con ese código.");
    }
});

