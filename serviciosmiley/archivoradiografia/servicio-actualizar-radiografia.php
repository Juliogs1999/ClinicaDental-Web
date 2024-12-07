<?php
header('Access-Control-Allow-Origin: *');

$cn = mysqli_connect("localhost","root","","baseclinica");

if (!$cn) {
    die("La conexión a la base de datos ha fallado: " . mysqli_connect_error());
}

$codigoradiografia = $_POST["codigoradiografia"];
$nombreradiografianuevo = $_POST["nombreradiografianuevo"]; // Nuevo nombre que se desea asignar


$query = "SELECT NomRadiografia FROM radiografia WHERE CodigoRadiografia=$codigoradiografia";
$result = mysqli_query($cn, $query);

if ($result && mysqli_num_rows($result) > 0) {
    $fila = mysqli_fetch_assoc($result);
    $nombreAntiguo = $fila['NomRadiografia'];
    $rutaAntigua = "radiografiaimg/" . $nombreAntiguo; 
    $rutaNueva = "radiografiaimg/" . $nombreradiografianuevo; // Nueva ruta con el nuevo nombre

    if (rename($rutaAntigua, $rutaNueva)) {
        // Si se renombra correctamente, actualiza el nombre en la base de datos
        $updateQuery = "UPDATE radiografia SET NomRadiografia='$nombreradiografianuevo' WHERE CodigoRadiografia=$codigoradiografia";
        $rs = mysqli_query($cn, $updateQuery);

        if ($rs) {
            echo json_encode(["success" => true, "message" => "Actualización exitosa"]);
        } else {
            echo json_encode(["success" => false, "message" => "Error al actualizar los datos: " . mysqli_error($cn)]);
        }
    } else {
        echo json_encode(["success" => false, "message" => "Error al renombrar el radiografia en el servidor."]);
    }
} else {
    echo json_encode(["success" => false, "message" => "Radiografia no encontrado."]);
}

mysqli_close($cn);

?>