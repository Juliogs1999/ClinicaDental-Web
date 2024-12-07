<?php
header('Access-Control-Allow-Origin: *');
   
    //Esto es para que se pueda acceder a este servicio desde cualquier dominio
    $cn = mysqli_connect("localhost","root","","baseclinica");   
     $rs = mysqli_query($cn, "SELECT cliente.Codigo, cliente.Nombre, cliente.Apellido, cliente.Dni, cliente.Correo, cliente.Telefono, UPPER(cliente.Sede) AS Sede, cliente.Direccion, cliente.Especialidad, cliente.Fechanac, cliente.Fecha, cliente.Fechafin, cliente.Fechalimpieza, cliente.NombrePadre, cliente.DniPadre FROM cliente");
           
   $res = array(); 

   while($row = mysqli_fetch_assoc($rs)){
      
       $res[] = $row;
   }
   
   echo json_encode($res);
   
   mysqli_close($cn);
   ?>