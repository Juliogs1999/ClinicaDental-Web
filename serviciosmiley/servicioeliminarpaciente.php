<?php
    header('Access-Control-Allow-Origin: *');
   $cn = mysqli_connect("localhost","root","","baseclinica");
    $IdReserva = $_POST['IdReserva'];

// Obtener el DniPaciente relacionado con la reserva
    $rs = mysqli_query($cn, "SELECT DniPaciente FROM reserva WHERE IdReserva = '$IdReserva'");
    $row = mysqli_fetch_assoc($rs);
    $DniPaciente = $row['DniPaciente'];

    // Eliminar la reserva
    mysqli_query($cn, "DELETE FROM reserva WHERE IdReserva = '$IdReserva'");

    // Eliminar el paciente relacionado si no hay otras reservas asociadas a ese paciente
    $rs = mysqli_query($cn, "SELECT COUNT(*) AS count FROM reserva WHERE DniPaciente = '$DniPaciente'");
    $row = mysqli_fetch_assoc($rs);
    $count = $row['count'];

    if ($count == 0) {
        mysqli_query($cn, "DELETE FROM paciente WHERE DniPaciente = '$DniPaciente'");
    }

    mysqli_close($cn);

    //http://localhost/servicioweb/serviciocategoriasinsertar.php?nom=juguetes&des=jugueteria
?>