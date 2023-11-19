<?php
    header('Access-Control-Allow-Origin: *');
    $cn = mysqli_connect("localhost","root","","baseclinica");
    $nom = $_POST["nom"];   
    $ape = $_POST["ape"];
    //$telf = $_POST["telf"];
   // $correo = $_POST["correo"]    
    $rs = mysqli_query($cn,"INSERT INTO paciente (nompaciente,apepaciente) VALUES('$nom','$ape')"); 
    echo $cn->insert_id;
    mysqli_close($cn);

    //http://localhost/servicioweb/serviciocategoriasinsertar.php?nom=juguetes&des=jugueteria
?>