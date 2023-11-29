<?php
    header('Access-Control-Allow-Origin: *');
    $cn = mysqli_connect("localhost","root","","baseclinica");
    $dni = $_POST["dni"];
    $nom = $_POST["nom"];   
    $ape = $_POST["ape"];
    $telf = $_POST["telf"];
    $correo = $_POST["correo"];
    $sede = $_POST["sede"];
    $fecha = $_POST["fecha"];
    $hora = $_POST["hora"];
    $motivo = $_POST["motivo"];


    // Verificar si la sede ya existe en la tabla clinica
    $result = mysqli_query($cn, "SELECT IdClinica FROM clinica WHERE Sede = '$sede'");
    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $IdClinica = $row['IdClinica'];
    } else {
        // Si la sede no existe, insertarla y obtener el ID
        $rs = mysqli_query($cn, "INSERT INTO clinica (Sede) VALUES('$sede')");
        $IdClinica = mysqli_insert_id($cn);
    }

    $rs = mysqli_query($cn,"INSERT INTO paciente (DniPaciente,NomPaciente,ApePaciente,TelfPaciente,CorreoPaciente) VALUES('$dni', UPPER('$nom'),UPPER('$ape'),'$telf','$correo')");
    

   
    $rs = mysqli_query($cn,"INSERT INTO reserva (Fecha,Hora,Motivo,DniPaciente,IdClinica) VALUES('$fecha','$hora','$motivo','$dni','$IdClinica')"); 
    
    mysqli_close($cn);

    //http://localhost/servicioweb/serviciocategoriasinsertar.php?nom=juguetes&des=jugueteria

    if (!$rs) {
        die('Error: ' . mysqli_error($cn));
    }

    if (!$cn) {
        die('Error de conexión: ' . mysqli_connect_error());
    }
    if (!$rs) {
        echo "Error en la consulta: " . mysqli_error($cn);
    }

    
?>
