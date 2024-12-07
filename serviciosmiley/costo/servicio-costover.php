<?php
header('Access-Control-Allow-Origin: *');
   
    //Esto es para que se pueda acceder a este servicio desde cualquier dominio
   $cn = mysqli_connect("localhost","root","","baseclinica"); 
    $rs = mysqli_query($cn,"SELECT clientedos.CodigoCli, clientedos.NombreApellido, clientedos.FechaCli, clientedos.SedeCli, clientedos.Especialidad, clientedos.Doctor FROM clientedos");   
    $res = array(); // Inicializamos el arreglo aquí

    while($row = mysqli_fetch_assoc($rs)){
        $res[] = $row; // No necesitas utf8_encode aquí
    }
    echo json_encode($res);
    //Con json_encode se convierte el arreglo ($res)
    //a formato JSON
    //con echo se imprime
    
    mysqli_close($cn);
    
?>