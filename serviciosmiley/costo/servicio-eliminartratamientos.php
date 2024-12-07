<?php
    header('Access-Control-Allow-Origin: *');
    $cn = mysqli_connect("localhost","root","","baseclinica");

    if (!$cn) {
        die("Error de conexión: " . mysqli_connect_error());
    }
    
    // Eliminar todos los tratamientos
    mysqli_query($cn, "DELETE FROM clientedos");
    mysqli_query($cn, "DELETE FROM tratamiento");
    
    mysqli_close($cn);
?>