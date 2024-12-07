<?php
    header('Access-Control-Allow-Origin: *');
    $cn = mysqli_connect("localhost","root","","baseclinica"); 
    $codigo = $_POST['Codigo'];


    // Eliminar la reserva
    mysqli_query($cn, "DELETE FROM cliente WHERE Codigo = '$codigo'");

    

    mysqli_close($cn);

    //http://localhost/servicioweb/serviciocategoriasinsertar.php?nom=juguetes&des=jugueteria
?>