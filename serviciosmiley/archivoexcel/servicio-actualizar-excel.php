<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

// Conexión a la base de datos
$cn = mysqli_connect("localhost", "root", "", "baseclinica");

if (!$cn) {
    die(json_encode(["success" => false, "message" => "La conexión a la base de datos ha fallado: " . mysqli_connect_error()]));
}

// Obtener los valores del formulario
$codigoexcel = $_POST["codigoexcel"];
$nuevoNombreExcel = $_POST["nombreexcel"];

// Validar que se reciban los datos necesarios
if (!$codigoexcel || !$nuevoNombreExcel) {
    echo json_encode(["success" => false, "message" => "Faltan datos necesarios para actualizar"]);
    exit;
}

// Obtener el nombre actual del archivo desde la base de datos
$result = mysqli_query($cn, "SELECT NomExcel FROM excel WHERE CodigoExcel = '$codigoexcel'");
if (!$result || mysqli_num_rows($result) == 0) {
    echo json_encode(["success" => false, "message" => "El archivo no existe en la base de datos."]);
    exit;
}

$row = mysqli_fetch_assoc($result);
$nombreActual = $row['NomExcel']; // Nombre actual del archivo
$rutaActual = "excelimg/" . $nombreActual;
$rutaNueva = "excelimg/" . $nuevoNombreExcel;

// Renombrar el archivo en el sistema de archivos si existe
if (file_exists($rutaActual)) {
    if (!rename($rutaActual, $rutaNueva)) {
        echo json_encode(["success" => false, "message" => "Error al renombrar el archivo en el servidor."]);
        exit;
    }
}

// Actualizar el nombre en la base de datos
$query = "UPDATE excel SET NomExcel = '$nuevoNombreExcel' WHERE CodigoExcel = '$codigoexcel'";
$rs = mysqli_query($cn, $query);

if ($rs) {
    echo json_encode(["success" => true, "message" => "Nombre actualizado exitosamente"]);
} else {
    echo json_encode(["success" => false, "message" => "Error al actualizar el nombre: " . mysqli_error($cn)]);
}

// Cerrar la conexión
mysqli_close($cn);
?>
