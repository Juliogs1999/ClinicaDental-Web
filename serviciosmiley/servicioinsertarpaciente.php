<?php
    header('Access-Control-Allow-Origin: *');
    $cn = mysqli_connect("localhost","root","","baseclinica");
    $nom = $_POST["nom"];   
    $ape = $_POST["ape"];
    $telf = $_POST["telf"];
    $correo = $_POST["correo"];
    $sede = $_POST["sede"];
    $fecha = $_POST["fecha"];
    $hora = $_POST["hora"];
    $motivo = $_POST["motivo"];

    // Verificar si la sede ya existe en la tabla clinica
    $result = mysqli_query($cn, "SELECT idclinica FROM clinica WHERE sede = '$sede'");
    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $idclinica = $row['idclinica'];
    } else {
        // Si la sede no existe, insertarla y obtener el ID
        $rs = mysqli_query($cn, "INSERT INTO clinica (sede) VALUES('$sede')");
        $idclinica = mysqli_insert_id($cn);
    }

    $rs = mysqli_query($cn,"INSERT INTO paciente (nompaciente,apepaciente,telfpaciente,correopaciente) VALUES(UPPER('$nom'),UPPER('$ape'),'$telf','$correo')");
    $codigopaciente = mysqli_insert_id($cn);

   
    $rs = mysqli_query($cn,"INSERT INTO reserva (fechareserva,horareserva,motivo,codigopaciente,idclinica) VALUES('$fecha','$hora','$motivo','$codigopaciente','$idclinica')"); 
    echo $cn->insert_id;
    mysqli_close($cn);

    //http://localhost/servicioweb/serviciocategoriasinsertar.php?nom=juguetes&des=jugueteria
?>