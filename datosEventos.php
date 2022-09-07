<?php

// todo lo que devuelve este modulo lo devuelve a traves de json
header('Content-Type: application/json');
require_once("connDB.php");

$conexion = regresarConexion();
switch ($_GET['accion']) {
    case 'listar':
        "select 
            id, 
            titulo, 
            descripcion, 
            inicio, 
            fin, 
            colorTexto,
            colorFondo
         from 
            eventos
            ";
        break;

    case 'agregar':
        "insert into
            eventos (
                titulo,
                descripcion,
                inicio,
                fin,
                colorTexto,
                colorFondo
                )
            values (
                '$_POST[titulo]',
                '$_POST[descripcion]',
                '$_POST[inicio]',
                '$_POST[fin]',
                '$_POST[colorTexto]',
                '$_POST[colorFondo]'
                )";
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