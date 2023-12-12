<?php
/*//TOKEN QUE NOS DA FACEBOOK
$token = 'EAAMkGLl9izsBO7cLGvJyfZBEtAHsO4EpmkjSHM34uAI3R2DP06PB2nAbYKFlqA1n5wcTDPRpik88NuUteJVZAQZCTDwsneLrgth4FwKsXEgDx53lJUEaDbZAdLuTRwxCAJMKw0FQZAzFC6sQGsPctfZC2Fg97fKLJEZA4uAYhsSppW49MaPTObw96uYZCW65dImx9VkPFipedAVpd4StsZCJT';
//NUESTRO TELEFONO
$telefono = '15550072309';
//URL A DONDE SE MANDARA EL MENSAJE
$url = 'https://graph.facebook.com/v17.0/198227123366583/messages';

//CONFIGURACION DEL MENSAJE
$mensaje = ''
        . '{'
        . '"messaging_product": "whatsapp", '
        . '"to": "'.$telefono.'", '
        . '"type": "template", '
        . '"template": '
        . '{'
        . '     "name": "hello_world",'
        . '     "language":{ "code": "en_US" } '
        . '} '
        . '}';
//DECLARAMOS LAS CABECERAS
$header = array("Authorization: Bearer " . $token, "Content-Type: application/json",);
//INICIAMOS EL CURL
$curl = curl_init();
curl_setopt($curl, CURLOPT_URL, $url);
curl_setopt($curl, CURLOPT_POSTFIELDS, $mensaje);
curl_setopt($curl, CURLOPT_HTTPHEADER, $header);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
//OBTENEMOS LA RESPUESTA DEL ENVIO DE INFORMACION
$response = json_decode(curl_exec($curl), true);
//IMPRIMIMOS LA RESPUESTA 
print_r($response);
//OBTENEMOS EL CODIGO DE LA RESPUESTA
$status_code = curl_getinfo($curl, CURLINFO_HTTP_CODE);
//CERRAMOS EL CURL
curl_close($curl);*/
?>