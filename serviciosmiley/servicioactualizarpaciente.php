<?php
    header('Access-Control-Allow-Origin: *');
    $cn = mysqli_connect("localhost","root","","baseclinica");
    $idpaciente = $_POST["idpaciente"]; 
    $nompaciente = $_POST["nompaciente"];
    $apepaciente = $_POST["apepaciente"];
    //$telfpaciente = $_POST["telfpaciente"];  
    //$correopaciente = $_POST["correopaciente"]; 
    $rs = mysqli_query($cn,"UPDATE paciente SET nompaciente='$nompaciente', apepaciente='$apepaciente' WHERE idpaciente=$idpaciente"); 
    mysqli_close($cn);

    //http://localhost/servicioweb/serviciocategoriasinsertar.php?nom=juguetes&des=jugueteria
?>