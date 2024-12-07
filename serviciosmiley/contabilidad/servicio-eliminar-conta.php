<?php
    header('Access-Control-Allow-Origin: *');
    $cn = mysqli_connect("localhost","root","","baseclinica");

    $codigocont = $_POST["codigocont"];

    // Eliminar la reserva
    mysqli_query($cn, "DELETE FROM contabilidad WHERE Codigocont = '$codigocont'");

    

    mysqli_close($cn);

   
?>