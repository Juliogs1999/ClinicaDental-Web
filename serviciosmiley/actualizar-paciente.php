<?php
    header('Access-Control-Allow-Origin: *');
    $cn = new mysqli("localhost","root","","baseclinica");
    $codigo = $_POST["codigo"];
    $nom = strtoupper($_POST["nom"]);
    $ape = strtoupper($_POST["ape"]);
    $dni = $_POST["dni"];
    $correo = $_POST["correo"];
    $telefono = $_POST["telefono"];
    $sede = $_POST["sede"];
    $direccion = $_POST["direccion"];
    $especialidad = $_POST["especialidad"];
    $fechanac = $_POST["fechanac"];
    $fecha = $_POST["fecha"];
    $fechafin = $_POST["fechafin"];
    $fechalimpieza = $_POST["fechalimpieza"];
    $nombrepadre = $_POST["nombrepadre"];
    $dnipadre = $_POST["dnipadre"];


$rs = $cn->query("UPDATE cliente SET Nombre=UPPER('$nom'), Apellido=UPPER('$ape'), Dni='$dni', Correo='$correo', Telefono='$telefono', Sede=UPPER('$sede'), Direccion='$direccion', Especialidad='$especialidad', Fechanac='$fechanac', Fecha='$fecha', Fechafin='$fechafin', Fechalimpieza='$fechalimpieza', NombrePadre=UPPER('$nombrepadre'), DniPadre='$dnipadre' WHERE Codigo=$codigo");
$cn->close();
?>
