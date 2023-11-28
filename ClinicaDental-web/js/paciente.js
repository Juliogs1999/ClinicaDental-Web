/*function paciente(){

    fetch(ApiWebURL + "serviciopaciente.php")
        .then(response => response.json())
        .then(data => {
            //console.log(data)
            llenarTabla(data)
        })
    const llenarTabla = (data) => {
        let contenidoTabla = "";
        data.map(item => {
            //console.log(item.nombre);
            let fila = "<tr>";
            fila += "<td>" + item.IdPaciente + "</td>";
            fila += "<td>" + item.NombrePaciente + "</td>";
            fila += "<td>" + item.ApellidoPaciente + "</td>";
            fila += "<td>" + item.TelefonoPaciente + "</td>";
            fila += "</tr>";
            contenidoTabla += fila

        });
        document.getElementById("tbody-paciente").innerHTML = contenidoTabla;

    }
}
paciente();*/

leerDatos = () => {
        var rutaPaciente = "http://localhost/serviciosmiley/servicioreserva-paciente.php"
        fetch(rutaPaciente)
        .then(response => response.json())
        .then(datos =>{
            console.log(datos);
            llenarTabla(datos);
        })
}
leerDatos();

    llenarTabla = (datos) => {
        $("#tbody-paciente").html("");
        $(datos).each((index,value) => {
            var fila = "<tr>";
            fila += "<td>" + value.idpaciente + "</td>";
            fila += "<td>" + value.nompaciente + "</td>";
            fila += "<td>" + value.apepaciente + "</td>";
            fila += "<td>" + value.telfpaciente + "</td>";
            fila += "<td>" + value.correopaciente + "</td>";
            fila += "<td>" + value.idclinica + "</td>";
            fila += "<td>" + value.sede + "</td>";
            fila += "<td>" + value.idreserva + "</td>"; 
            fila += "<td>" + value.horareserva + "</td>";   
            fila += "<td>" + value.fechareserva + "</td>";    
            fila += "<td>" + value.motivo + "</td>"; 
            fila += "<td><i class='bi bi-x-lg boton-eliminar'></i></td>";
            fila += "<td><i class='bi bi-pencil-fill boton-actualizar' data-bs-toggle='modal' data-bs-target='#modal-actualizar'></i></td>";
            fila += "</tr>";
            $("#tbody-paciente").append(fila);
        });

        $(".boton-eliminar").click(function() {
            var filaActual = $(this).parent().parent();
            var posicion = filaActual.index();
            console.log(posicion);
            console.log(datos[posicion]);
            console.log(datos[posicion].nompaciente);
            var idpaciente = datos[posicion].idpaciente;
            var respuesta = confirm("¿Esta seguro que desea eliminar el Paciente " 
                + datos[posicion].nompaciente + "?" )
            if(respuesta == true){
                eliminarPaciente(idpaciente);
                
          }
     });
     
     $(".boton-actualizar").click(function() {
        var filaActual = $(this).parent().parent();
        var posicion = filaActual.index();
        $("#txtIdpacienteActualizar").val(datos[posicion].idpaciente);
        $("#txtNombreActualizar").val(datos[posicion].nompaciente);
        $("#txtApellidoActualizar").val(datos[posicion].apepaciente);
        $("txtTelefonoActualizar").val(datos[posicion].telfpaciente);
        $("txtCorreoActualizar").val(datos[posicion].correopaciente);

     });

 }

 eliminarPaciente = (idpaciente) => {
    var ruta = "http://localhost/serviciosmiley/servicioeliminarpaciente.php";

    var formData = new FormData();
    formData.append("idpaciente",idpaciente);
    

    fetch(ruta,{
        method: 'POST', 
        body: formData
    })
    .then(response => response.text())
    .then(() =>{
        leerDatos();
    })
 }
$("#btnAgregarPaciente").click(()=>{
    var nombre = $("#txtNombre").val();
    var apellido = $("#txtApellido").val();
    var telefono = $("#txtTelefono").val();
    var correo = $("#txtCorreo").val();
    var sede = $("#txtSede").val();
    var fecha = $("#txtFecha").val();
    var hora = $("#txtHora").val();
    var motivo = $("#txtMotivo").val();

    $("#txtNombre").val("");
    $("#txtApellido").val("");
    $("#txtTelefono").val("");
    $("#txtCorreo").val("");
    $("#txtSede").val("");
    $("#txtFecha").val("");
    $("#txtHora").val("");
    $("#txtMotivo").val("");

   

    var ruta = "http://localhost/serviciosmiley/servicioinsertarpaciente.php";
  
    var formData = new FormData();
    formData.append("nom",nombre);
    formData.append("ape",apellido);
    formData.append("telf",telefono);
    formData.append("correo",correo);
    formData.append("sede",sede);
    formData.append("fecha",fecha);
    formData.append("hora",hora);
    formData.append("motivo",motivo);

    
    fetch(ruta,{
        method: 'POST', 
        body: formData
    })
    .then(response => response.text())
    .then(datos =>{
        console.log(datos);
        leerDatos();
    })
});

$("#btnActualizar").click(() => {
    var idpaciente = $("#txtIdpacienteActualizar").val();
    var nombre = $("#txtNombreActualizar").val();
    var apellido = $("#txtApellidoActualizar").val();
    var telefono = $("#txtTelefonoActualizar").val();
    var correo = $("#txtCorreoActualizar").val();

    var ruta = "http://localhost/serviciosmiley/servicioactualizarpaciente.php";

    var formData = new FormData();
    formData.append("idpaciente ",idpaciente);
    formData.append("nompaciente",nombre);
    formData.append("apepaciente",apellido);
    formData.append("telfpaciente",telefono);
    formData.append("correopaciente",correo);

    fetch(ruta,{
        method: 'POST', 
        body: formData
    })
    .then(response => response.text())
    .then(() => {
        leerDatos();
    })
})




     
