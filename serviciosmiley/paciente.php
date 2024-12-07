<?php
header('Access-Control-Allow-Origin: *');


$cn = mysqli_connect("localhost","root","","baseclinica");   
$codigo = $_POST["codigo"];
$nom = $_POST["nom"];
$ape = $_POST["ape"];
$dni = $_POST["dni"];
$correo = $_POST["correo"];
$telefono = $_POST["telefono"];
if (substr($telefono, 0, 3) !== '+51') {
    // Agregas el c車digo de pa赤s '+51' al n迆mero de tel谷fono
    $telefono = '+51 ' . preg_replace('/[^0-9]/', '', $telefono);
} else {
    // Si ya tiene '+51', limpias solo los caracteres no num谷ricos
    $telefono = '+' . preg_replace('/[^0-9]/', '', $telefono);
}
$sede = $_POST["sede"];
$direccion = $_POST["direccion"];
$especialidad = $_POST["especialidad"];
$fechanac = $_POST["fechanac"];
$fecha = $_POST["fecha"];
$fechafin = $_POST["fechafin"];
$fechalimpieza = $_POST["fechalimpieza"];



$nombrepadre = $_POST["nombrepadre"];
$dnipadre = $_POST["dnipadre"];




$rs = mysqli_query($cn, "INSERT INTO cliente (Codigo,Nombre,Apellido,Dni,Correo,Telefono,Sede,Direccion,Especialidad,Fechanac,Fecha,Fechafin,Fechalimpieza,NombrePadre,DniPadre) VALUES('$codigo',UPPER('$nom'),UPPER('$ape'),'$dni','$correo','$telefono',UPPER('$sede'),'$direccion','$especialidad','$fechanac','$fecha','$fechafin','$fechalimpieza',UPPER('$nombrepadre'),'$dnipadre')");

if ($rs) {
    echo json_encode(["success" => true, "message" => "Inserción exitosa"]);
} else {
    echo json_encode(["success" => false, "message" => "Error al insertar los datos: " . mysqli_error($cn)]);
}
// Cerrar conexión
mysqli_close($cn);
?>