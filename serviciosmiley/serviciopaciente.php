<?php
/*header('Access-Control-Allow-Origin: *');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;
use GuzzleHttp\Client;

require 'PHPMailer/Exception.php';
require 'PHPMailer/PHPMailer.php';
require 'PHPMailer/SMTP.php';
require 'vendor/autoload.php';

$cn = mysqli_connect("localhost", "root", "", "baseclinica");
$dni = $_POST["dni"];
$nom = $_POST["nom"];
$ape = $_POST["ape"];
$telf = $_POST["telf"];
$correo = $_POST["correo"];
$sede = $_POST["sede"];
$fecha = $_POST["fecha"];
$hora = $_POST["hora"];
$motivo = $_POST["motivo"];

// Verificar si la sede ya existe en la tabla clinica
$result = mysqli_query($cn, "SELECT IdClinica FROM clinica WHERE Sede = '$sede'");
if (mysqli_num_rows($result) > 0) {
    $row = mysqli_fetch_assoc($result);
    $IdClinica = $row['IdClinica'];
} else {
    // Si la sede no existe, insertarla y obtener el ID
    $rs = mysqli_query($cn, "INSERT INTO clinica (Sede) VALUES('$sede')");
    $IdClinica = mysqli_insert_id($cn);
}

$rs = mysqli_query($cn, "INSERT INTO paciente (DniPaciente,NomPaciente,ApePaciente,TelfPaciente,CorreoPaciente) VALUES('$dni', UPPER('$nom'),UPPER('$ape'),'$telf','$correo')");

$rs = mysqli_query($cn, "INSERT INTO reserva (Fecha,Hora,Motivo,DniPaciente,IdClinica) VALUES('$fecha','$hora','$motivo','$dni','$IdClinica')");

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
    $mensaje = "Estimado/a $nom $ape,<br><br>Tu reserva en Smiley Peru ha sido confirmada para el día $fecha a las $hora.<br><br>Gracias por confiar en nosotros.<br>Equipo Smiley Peru";
    $mail->Subject = 'Confirmacion de reserva en Smiley Peru';
    $mail->Body    = $mensaje;

    $mail->send();
    echo 'El correo de confirmación ha sido enviado correctamente';
} catch (Exception $e) {
    echo "Hubo un error al enviar el correo de confirmación: $mail->ErrorInfo";
}

// Formatear el número de teléfono ingresado en el formulario
function formatearNumero($numero)
{
    $numeroFormateado = $numero;
    if (!startsWith($numero, '+51')) {
        if (startsWith($numero, '51')) {
            $numeroFormateado = '+' . $numero;
        } elseif (startsWith($numero, '9')) {
            $numeroFormateado = '+51' . substr($numero, 1);
        } else {
            // Si el número no tiene ningún formato reconocido, agregar el prefijo +51 como predeterminado
            $numeroFormateado = '+51' . $numero;
        }
    }
    return $numeroFormateado;
}

function startsWith($haystack, $needle)
{
    return strpos($haystack, $needle) === 0;
}

// Datos del mensaje para WhatsApp Business API
$messageData = [
    'phone' => formatearNumero($telf),
    'body' => 'Hola desde la API de WhatsApp Business!',
];

// Endpoint para enviar mensajes
$endpoint = 'message';

// Configuración de la API de WhatsApp Business
$httpClient = new Client();
$baseUrl = 'https://api.whatsapp.com/v3/';
$token = 'EAAMkGLl9izsBO5BhBPJUmsbkRj7B1erEcOepCTeop7Bbfp4qZCZBZBQAaLdrN6VdXnsGkUPZCJHVHZBeXK5J6ZCz0laResAQqeDh5EkdJ7zCHtiKgfNJnEZAgRqVfEtndYoUB9xdkPAjHpiQYw0I8UkaYndBKwAl6olWgmsmK61Ng2jsQWCUNklX2ZBWdL1a9jsHJV1nFJj0xTrlSHvBY1kZD';

try {
    // Realizar la solicitud POST a la API de WhatsApp Business
    $response = $httpClient->post($baseUrl . $endpoint, [
        'headers' => [
            'Authorization' => 'Bearer ' . $token,
            'Content-Type' => 'application/json',
        ],
        'json' => $messageData,
    ]);

    // Manejo de la respuesta
    $statusCode = $response->getStatusCode();
    $responseData = $response->getBody()->getContents();

    echo 'Mensaje de WhatsApp enviado con éxito. Código de respuesta: ' . $statusCode;
    echo 'Respuesta: ' . $responseData;
} catch (Exception $e) {
    echo 'Error al enviar el mensaje de WhatsApp: ' . $e->getMessage();
}

// Cerrar conexión
mysqli_close($cn);*/
?>