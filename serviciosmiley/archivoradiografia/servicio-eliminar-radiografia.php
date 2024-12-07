<?php
    header('Access-Control-Allow-Origin: *');
    $cn = mysqli_connect("localhost","root","","baseclinica");

    $codigoradiografia = $_POST["codigoradiografia"];

    // Eliminar la reserva
    mysqli_query($cn, "DELETE FROM radiografia WHERE CodigoRadiografia = '$codigoradiografia'");

    

    mysqli_close($cn);

   
?>