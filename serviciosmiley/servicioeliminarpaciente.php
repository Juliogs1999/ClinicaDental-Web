<?php
    header('Access-Control-Allow-Origin: *');
    $cn = mysqli_connect("localhost","root","","baseclinica");
    $idpaciente = $_POST["idpaciente"];   
    $rs = mysqli_query($cn,"DELETE FROM paciente WHERE idpaciente = $idpaciente"); 
    mysqli_close($cn);

    //http://localhost/servicioweb/serviciocategoriasinsertar.php?nom=juguetes&des=jugueteria
?>