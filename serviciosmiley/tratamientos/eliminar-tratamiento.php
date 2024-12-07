<?php
    header('Access-Control-Allow-Origin: *');
    $cn = mysqli_connect("localhost","root","","baseclinica");

    $codproc = $_POST["codproc"];

    // Eliminar la reserva
    mysqli_query($cn, "DELETE FROM procedimiento WHERE Codproc = '$codproc'");

    

    mysqli_close($cn);

   
?>