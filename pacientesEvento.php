<?php

    require("connDB.php");

    $conexion = regresarConexion();

    switch ($_GET['accion']) {
        case 'borrar':
            $consulta= "delete from
                pacientes
                where
                id = $_POST[id]";
                $respuesta = mysqli_query($conexion,$consulta);
            

            break;

?>