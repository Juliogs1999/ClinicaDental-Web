<?php
  header('Access-Control-Allow-Origin: *');
    $cn = mysqli_connect("localhost","root","","baseclinica"); 
    $codigotra = $_POST['codigotra'];


    // Eliminar la reserva
    mysqli_query($cn, "DELETE FROM tratamiento WHERE CodigoTra = '$codigotra'");

    

    mysqli_close($cn);

   
?>