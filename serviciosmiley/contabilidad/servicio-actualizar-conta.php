<?php
header('Access-Control-Allow-Origin: *');
$cn = mysqli_connect("localhost","root","","baseclinica");

// Verificar conexión
if ($cn->connect_error) {
    die("Error en la conexión: " . $cn->connect_error);
}

// Obtener los datos del formulario
$codigocont = $_POST["codigocont"];
$historiacont = $_POST["historiacont"];
$dnicont = $_POST["dnicont"];
$fechacont = $_POST["fechacont"];
$clientecont = $_POST["clientecont"];
$tratamientocont = $_POST["tratamientocont"];
$metodocont = $_POST["metodocont"];
$pagocont = $_POST["pagocont"];
$tecnico = $_POST["tecnico"];
$doctorcont = $_POST["doctorcont"];
$sedecont = $_POST["sedecont"];
$cantidadcont = $_POST["cantidadcont"];

$rs = $cn->query("UPDATE contabilidad SET Historia='$historiacont', Sedecont='$sedecont', Fechacont='$fechacont', Clientecont='$clientecont', Dnicont='$dnicont', Cantidadcont='$cantidadcont', Tratamientocont='$tratamientocont', Metodocont='$metodocont', Pagocont='$pagocont', Tecnico='$tecnico', Doctorcont='$doctorcont' WHERE Codigocont=$codigocont");


// Cerrar conexión
$cn->close();
?>