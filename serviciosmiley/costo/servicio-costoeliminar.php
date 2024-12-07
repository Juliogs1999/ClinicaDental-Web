<?php
    header('Access-Control-Allow-Origin: *');
    $cn = mysqli_connect("localhost","root","","baseclinica"); 

    $codigo = $_POST["codigo"];

    // Eliminar la reserva
    mysqli_query($cn, "DELETE FROM clientedos WHERE CodigoCli = '$codigo'");

    

    mysqli_close($cn);

   
?>