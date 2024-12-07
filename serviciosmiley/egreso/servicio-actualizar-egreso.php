<?php
header('Access-Control-Allow-Origin: *');
$cn = mysqli_connect("localhost","root","","baseclinica");

// Verificar conexión
if ($cn->connect_error) {
    die("Error en la conexión: " . $cn->connect_error);
}

// Obtener los datos del formulario
$codigoegre = $_POST["codigoegre"];
$fechaegre = $_POST["fechaegre"];
$descripcionegre = $_POST["descripcionegre"];
$tipoegre = $_POST["tipoegre"];
$precioegre = $_POST["precioegre"];


$rs = $cn->query("UPDATE egreso SET Fechaegre='$fechaegre', Descripcionegre='$descripcionegre', Tipoegre='$tipoegre', Precioegre='$precioegre' WHERE Codigoegre=$codigoegre");


// Cerrar conexión
$cn->close();
?>