<?php
header('Access-Control-Allow-Origin: *');


$cn = mysqli_connect("localhost","root","","baseclinica");   

$nomape = $_POST["nomape"];
$fecha = $_POST["fecha"];
$sede = $_POST["sede"];
$especialidad = $_POST["especialidad"];
$doctor = $_POST["doctor"];




$rs = mysqli_query($cn, "INSERT INTO clientedos (NombreApellido,FechaCli,SedeCli,Especialidad,Doctor) VALUES(UPPER('$nomape'),'$fecha',UPPER('$sede'),UPPER('$especialidad'),UPPER('$doctor'))");






// Cerrar conexión
mysqli_close($cn);

?>