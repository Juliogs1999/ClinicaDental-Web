<?php
header('Access-Control-Allow-Origin: *');
$cn = mysqli_connect("localhost","root","","baseclinica");

// Verificar conexión
if ($cn->connect_error) {
    die("Error en la conexión: " . $cn->connect_error);
}

// Obtener los datos del formulario
$codproc = $_POST["codproc"];
$fechaproc = $_POST["fechaproc"];
$descrip = $_POST["descrip"];
$doctorproc = $_POST["doctorproc"];
$notaproc = $_POST["notaproc"];


$rs = $cn->query("UPDATE procedimiento SET Fechaproc='$fechaproc', Descripcionproc='$descrip', Doctorproc='$doctorproc', Nota='$notaproc' WHERE Codproc=$codproc");


// Cerrar conexión
$cn->close();
?>
