<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css">

</head>
<body>

    <?php include 'assets/header.php' ?>;

    <table id="example" class="table table-striped" style="width:100%">
        <thead>
            <tr>
                <td>id</td>
                <td>start</td>
                <td>end</td>
                <td>title</td>
                <td>description</td>
                <td>accion</td>
            </tr>
        </thead>
        <tbody>

        <?php
            require("connDB.php");
            $id_profesional = $_GET['p'];
            $sql = "select id,start,end,title,description from eventos where profesional = '$id_profesional' order by start";
            $conexion = regresarConexion();
            $respuesta = mysqli_query($conexion,$sql);
            $i = 0;
            while($fila = mysqli_fetch_array($respuesta)) {
                $id = $fila['id'];
                $start = $fila['start'];
                $end = $fila['end'];
                $title = $fila['title'];
                $description = $fila['description'];
                $i++; ?>
            <tr>
                <td><?php echo $id ?></td>
                <td><?php echo $start ?></td>
                <td><?php echo $end ?></td>
                <td><?php echo $title ?></td>
                <td><?php echo $description ?></td>
                <td><a href="pacientes.php?borrar=<?php echo $id ?>">borrar</a></td>
            </tr>
            <?php } ?>

        </tbody>
    </table>


    <script src="//code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>
    <script>
        // $(document).ready(function () {
        //     $('#example').DataTable();
        // });

        $(document).ready(function() {
            $('#example').DataTable( {
                language: {
                    url: '//cdn.datatables.net/plug-ins/1.12.1/i18n/es-AR.json'
                }
            } );
        } );
    </script>

</body>
</html>