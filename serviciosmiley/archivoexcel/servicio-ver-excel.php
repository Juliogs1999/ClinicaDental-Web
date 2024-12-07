<?php
header('Access-Control-Allow-Origin: *');
   
    //Esto es para que se pueda acceder a este servicio desde cualquier dominio
    $cn = mysqli_connect("localhost","root","","baseclinica");   
     $rs = mysqli_query($cn, "SELECT CodigoExcel, NomExcel FROM excel");
           
   $res = array(); 

   while($row = mysqli_fetch_assoc($rs)){
    $nombreExcel = basename($row['NomExcel']);
    $row['NombreExcel'] = $nombreExcel;
       $res[] = $row;
   }
   
   echo json_encode($res);
   
   mysqli_close($cn);
   ?>