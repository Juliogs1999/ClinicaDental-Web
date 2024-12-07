<?php
    header('Access-Control-Allow-Origin: *');
    $cn = mysqli_connect("localhost","root","","baseclinica");

    $codigoarchivo = $_POST["codigoarchivo"];

    // Eliminar la reserva
    mysqli_query($cn, "DELETE FROM archivo WHERE CodigoArchivo = '$codigoarchivo'");

    

    mysqli_close($cn);

   
?>