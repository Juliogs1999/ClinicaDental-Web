<?php
header('Access-Control-Allow-Origin: *');
   
$cn = mysqli_connect("localhost","root","","baseclinica");  

$codigo_paciente = $_GET["paciente"];

// Consulta para obtener archivos y datos del paciente
$rs = mysqli_query($cn, "SELECT a.CodigoRadiografia, a.NomRadiografia, c.Nombre as NombrePaciente, c.Apellido as ApellidoPaciente 
    FROM radiografia a 
    INNER JOIN cliente c ON a.CodigoPaciente = c.Codigo 
    WHERE a.CodigoPaciente = '$codigo_paciente'");

$res = array(); 

while($row = mysqli_fetch_assoc($rs)){
    $nombreRadiografia = basename($row['NomRadiografia']);
    $row['NombreRadiografia'] = $nombreRadiografia;
    $res[] = $row;
}

// Obtener el nombre y apellido del paciente
$paciente = mysqli_query($cn, "SELECT Nombre, Apellido FROM cliente WHERE Codigo = '$codigo_paciente'");
$pacienteData = mysqli_fetch_assoc($paciente);

// Añadir los datos del paciente a la respuesta
$response = array(
    'radiografias' => $res,
    'paciente' => $pacienteData
);

echo json_encode($response);

   
mysqli_close($cn);
?>