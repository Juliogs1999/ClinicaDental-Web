<?php
    header('Access-Control-Allow-Origin: *');
    $cn = mysqli_connect("localhost","root","","baseclinica");
    $dni = $_POST["dni"];

    $rs = mysqli_query($cn, "SELECT * FROM cliente WHERE Dni = '$dni'");

    $existe = mysqli_num_rows($rs) > 0 ? true : false;

    echo json_encode(array("existe" => $existe));

    mysqli_close($cn);
?>