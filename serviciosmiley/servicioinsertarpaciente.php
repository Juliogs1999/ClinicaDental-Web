<?php
header('Access-Control-Allow-Origin: *');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;



require 'PHPMailer/Exception.php';
require 'PHPMailer/PHPMailer.php';
require 'PHPMailer/SMTP.php';


$cn = mysqli_connect("localhost","root","","baseclinica");   

$dni = $_POST["dni"];
$nom = $_POST["nom"];
$ape = $_POST["ape"];
$telf = $_POST["telf"];
if (substr($telf, 0, 3) !== '+51') {
    // Agregas el código de país '+51' al número de teléfono
    $telf = '+51' . preg_replace('/[^0-9]/', '', $telf);
} else {
    // Si ya tiene '+51', limpias solo los caracteres no numéricos
    $telf = '+' . preg_replace('/[^0-9]/', '', $telf);
}
$correo = $_POST["correo"];
$sede = $_POST["sede"];
$fecha = $_POST["fecha"];
$hora = $_POST["hora"];
$motivo = $_POST["motivo"];

// Verificar si la sede ya existe en la tabla clinica
$rs = mysqli_query($cn, "SELECT IdClinica FROM clinica WHERE Sede = '$sede'");
if (mysqli_num_rows($rs) > 0) {
    $row = mysqli_fetch_assoc($rs);
    $IdClinica = $row['IdClinica'];
} else {
    // Si la sede no existe, insertarla y obtener el ID
    $rs = mysqli_query($cn, "INSERT INTO clinica (Sede) VALUES('$sede')");
    $IdClinica = mysqli_insert_id($cn);
}

$rs = mysqli_query($cn, "INSERT INTO paciente (DniPaciente,NomPaciente,ApePaciente,TelfPaciente,CorreoPaciente) VALUES('$dni', UPPER('$nom'),UPPER('$ape'),'$telf','$correo')");

$rs = mysqli_query($cn, "INSERT INTO reserva (Fecha,Hora,Motivo,DniPaciente,IdClinica) VALUES('$fecha','$hora','$motivo','$dni','$IdClinica')");
echo $cn->insert_id;
$mail = new PHPMailer(true);

try {
    // Configuración del servidor SMTP y envío de correo
    $mail->isSMTP();
    $mail->Host       = 'mail.smileyperu.com';
    $mail->SMTPAuth   = true;
    $mail->Username   = 'webjuliogalindo@smileyperu.com';
    $mail->Password   = 'Pucallpa2023';
    $mail->SMTPSecure = 'ssl';
    $mail->Port       = 465;

    $mail->setFrom('webjuliogalindo@smileyperu.com', 'Smiley Peru');    
    $mail->addAddress($correo, $nom);
    $mail->isHTML(true);
    $mensaje = "Estimado/a $nom $ape,<br><br>Tu reserva en Smiley Peru ha sido confirmada en la sede $sede para el día $fecha a las $hora.<br><br>Gracias por confiar en nosotros.<br>Equipo Smiley Peru";
    $mail->Subject = 'Confirmacion de reserva en Smiley Peru';
    $mail->Body    = $mensaje;

    $mail->send();
    echo 'El correo de confirmacion ha sido enviado correctamente';
} catch (Exception $e) {
    echo "Hubo un error al enviar el correo de confirmación: $mail->ErrorInfo";
}


// Crear un evento en Google Calendar
require __DIR__ . '/vendor/autoload.php'; // Ruta del cliente de Google API PHP
// Reemplaza 'ruta/credenciales.json' con la ubicación de tus credenciales
$client = new Google_Client();
$client->setAuthConfig('client_secret_142784826394-j84nv21gu6v34k18u714jvt55gp72ge8.apps.googleusercontent.com.json');
$client->addScope(Google_Service_Calendar::CALENDAR);

$service = new Google_Service_Calendar($client);

$evento = new Google_Service_Calendar_Event(array(
    'summary' => 'Reserva en Smiley Peru', // Título del evento
    'description' => "Reserva en Smiley Peru confirmada para $nom $ape en la sede $sede el día $fecha a las $hora", // Descripción del evento
    'start' => array(
        'dateTime' => "$fecha"."T"."$hora", // Fecha y hora de inicio del evento
        'timeZone' => 'America/Lima', // Zona horaria (cambia según tu ubicación)
    ),
    'end' => array(
        'dateTime' => "$fecha"."T"."$hora", // Fecha y hora de finalización del evento (en este caso, el mismo que el inicio)
        'timeZone' => 'America/Lima', // Zona horaria (cambia según tu ubicación)
    ),
));

$calendarId = 'tu_calendar_id@group.calendar.google.com'; // Reemplaza con tu ID de calendario
$eventoCreado = $service->events->insert($calendarId, $evento);

if ($eventoCreado) {
    echo 'Evento creado en Google Calendar correctamente';
} else {
    echo 'Hubo un error al crear el evento en Google Calendar';
}






// Cerrar conexión
mysqli_close($cn);
?>