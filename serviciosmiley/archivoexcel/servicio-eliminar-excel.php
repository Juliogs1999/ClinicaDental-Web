<?php
    header('Access-Control-Allow-Origin: *');
    $cn = mysqli_connect("localhost","root","","baseclinica");

    $codigoexcel = $_POST["codigoexcel"];

    // Eliminar la reserva
    mysqli_query($cn, "DELETE FROM excel WHERE CodigoExcel = '$codigoexcel'");

    

    mysqli_close($cn);

   
?>