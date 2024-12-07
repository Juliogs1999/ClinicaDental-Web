<?php
    header('Access-Control-Allow-Origin: *');
    $cn = mysqli_connect("localhost","root","","baseclinica");

    $codigoegre = $_POST["codigoegre"];

    // Eliminar la reserva
    mysqli_query($cn, "DELETE FROM egreso WHERE Codigoegre = '$codigoegre'");

    

    mysqli_close($cn);

   
?>