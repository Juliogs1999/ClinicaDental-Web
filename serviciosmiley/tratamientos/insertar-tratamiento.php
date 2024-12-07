<?php
header('Access-Control-Allow-Origin: *');

$cn = mysqli_connect("localhost","root","","baseclinica");

if (!$cn) {
    die("La conexi��n a la base de datos ha fallado: " . mysqli_connect_error());
}

$codproc = $_POST["codproc"];
$fechaproc = $_POST["fechaproc"];
$descrip = $_POST["descrip"];
$doctorproc = $_POST["doctorproc"];
$notaproc = $_POST["notaproc"];
$codigo_paciente = $_GET["paciente"]; // Obtener el c��digo del paciente de la URL

$rs = mysqli_query($cn, "INSERT INTO procedimiento (Codproc,Fechaproc,Descripcionproc,Doctorproc,Nota,CodigoPaciente) VALUES ('$codproc','$fechaproc',UPPER('$descrip'),'$doctorproc','$notaproc','$codigo_paciente')");

if ($rs) {
    echo json_encode(["success" => true, "message" => "Inserci��n exitosa"]);
} else {
    echo json_encode(["success" => false, "message" => "Error al insertar los datos: " . mysqli_error($cn)]);
}

mysqli_close($cn);
?>