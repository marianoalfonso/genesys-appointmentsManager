<?php

// todo lo que devuelve este modulo lo devuelve a traves de json
header('Content-Type: application/json');
require("connDB.php");

$conexion = regresarConexion();
switch ($_GET['accion']) {
    case 'listar':
        $consulta = "select 
                        id,
                        title,
                        description, 
                        start, 
                        end, 
                        textColor,
                        backgroundColor
                     from 
                        eventos
                    ";
        $datos = mysqli_query($conexion, $consulta);
        $resultado = mysqli_fetch_all($datos, MYSQLI_ASSOC);
        echo json_encode($resultado); 
        break;

    case 'agregar':
        $consulta = "insert into
            eventos (
                title,
                description,
                start,
                end,
                textColor,
                backgroundColor
                )
            values (
                '$_POST[titulo]',
                '$_POST[descripcion]',
                '$_POST[inicio]',
                '$_POST[fin]',
                '$_POST[colorTexto]',
                '$_POST[colorFondo]'
                )";

        $respuesta = mysqli_query($conexion, $consulta);
        echo json_encode($respuesta);
        break;
            
    case 'modificar':
        "update
            eventos set 
                titulo = '$_POST[titulo]',
                descripcion = '$_POST[descripcion]',
                inicio = '$_POST[inicio]',
                fin = '$_POST[fin]',
                colorTexto = '$_POST[colorTexto]',
                colorFondo = '$_POST[colorFondo]'
            where
                id = '$_POST[id]'";
        break;

    case 'borrar':
        "delete from
            eventos
         where
            id = $_POST[id]";
        break;

    default:
        # code...
        break;
}


?>