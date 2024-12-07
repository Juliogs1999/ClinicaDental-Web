<?php
header('Access-Control-Allow-Origin: *');

$cn = mysqli_connect("localhost","root","","baseclinica");

if (!$cn) {
    die("La conexi��n a la base de datos ha fallado: " . mysqli_connect_error());
}

$codigo_paciente = $_GET["paciente"]; // Obtener el c��digo del paciente de la URL

// Consulta para obtener los procedimientos y los datos del paciente
$rs = mysqli_query($cn, "SELECT p.Codproc, p.Fechaproc, p.Descripcionproc, p.Doctorproc, p.Nota, c.Nombre as NombrePaciente, c.Apellido as ApellidoPaciente FROM procedimiento p INNER JOIN cliente c ON p.CodigoPaciente = c.Codigo WHERE p.CodigoPaciente = '$codigo_paciente'");
$procedimientos = array(); 
while($row = mysqli_fetch_assoc($rs)){
   
    $procedimientos[] = $row;
}
$paciente = mysqli_query($cn, "SELECT Nombre, Apellido FROM cliente WHERE Codigo = '$codigo_paciente'");
$pacienteData = mysqli_fetch_assoc($paciente);
$response = array(
    'procedimientos' => $procedimientos,
    'paciente' => $pacienteData
);

echo json_encode($response);

mysqli_close($cn);
?>


