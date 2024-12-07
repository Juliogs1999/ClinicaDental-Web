<?php
header('Access-Control-Allow-Origin: *');

$cn = mysqli_connect("localhost","root","","baseclinica");

if (!$cn) {
    die("La conexión a la base de datos ha fallado: " . mysqli_connect_error());
}

$codigoradiografia = $_POST["codigoradiografia"];
$codigo_paciente = $_GET["paciente"]; // Obtener el código del paciente de la URL

if ($_FILES["txtRadiografia"]["error"] == UPLOAD_ERR_OK) {
    $nombreRadiografia = $_FILES["txtRadiografia"]["name"];
    $rutaTemporal = $_FILES["txtRadiografia"]["tmp_name"];
    $rutaRadiografia = "radiografiaimg/" . $nombreRadiografia; // Cambia esto por la ruta donde desees guardar las imágenes
    move_uploaded_file($rutaTemporal, $rutaRadiografia);
} else {
    $rutaRadiografia = "";
    $nombreRadiografia = ""; // Si no se cargó ninguna imagen, guarda una cadena vacía en la base de datos
}

echo json_encode(["NomRadiografia" => $rutaRadiografia, "NombreRadiografia" => $nombreRadiografia]);

$rs = mysqli_query($cn, "INSERT INTO radiografia (CodigoRadiografia,NomRadiografia,CodigoPaciente) VALUES ('$codigoradiografia','$nombreRadiografia','$codigo_paciente')");

if ($rs) {
    echo json_encode(["success" => true, "message" => "Inserción exitosa"]);
} else {
    echo json_encode(["success" => false, "message" => "Error al insertar los datos: " . mysqli_error($cn)]);
}

mysqli_close($cn);
?>

