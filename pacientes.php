<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Aplicación CRUD PHP</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
  </head>
    <body style="background-color: aliceblue;">

    <div align="center" class="col-6">
        <h2 id="texth1" style="margin-top">ingrese los datos del paciente</h2>
        <form method="POST" action="pacientes.php">
            <div class="form-group">
                <label for="">apellido</label>
                <input type="text" id="apellido" class="form-control" placeholder="ingrese el apellido"><br/>
            </div>
            <div class="form-group">
                <label for="">nombre</label>
                <input type="text" id="nombre" class="form-control" placeholder="ingrese el nombre"><br/>
            </div>

            <div class="form-group">
                <input type="submit" id="btn_inser" name="insert" class="btn btn-warning" value="insertar"><br/>
            </div>
        </form>
    </div>

        <?php require("connDB.php"); ?>

        <div id="tablas" class="col-6">
            <table style="background-color: beige;" class="table table-bordered table-responsive">
                <tr style="background-color: burlywood;">
                    <td>id</td>
                    <td>apellido</td>
                    <td>nombre</td>
                </tr>
                <?php
                    $sql = "select id,apellido,nombre from pacientes order by apellido";
                    $conexion = regresarConexion();
                    $respuesta = mysqli_query($conexion,$sql);
                    $i = 0;
                    while($fila = mysqli_fetch_array($respuesta)) {
                        $id = $fila['id'];
                        $apellido = $fila['apellido'];
                        $nombre = $fila['nombre'];
                        $i++;
                    ?>
                    <tr align="center">
                        <td><?php echo $id ?></td>
                        <td><?php echo $apellido ?></td>
                        <td><?php echo $nombre ?></td>
                        <td><a href="pacienteEditar.php?editar=<?php echo $id ?>">editar</a></td>
                        <td><a href="paciente.php?borrar=<?php echo $id ?>">borrar</a></td>
                    </tr>
                <?php } ?>
            </table>
        </div>

        <?php
            if(isset($_GET['editar'])) {
                include("pacienteEditar.php");
            }
        ?>


    </body>
</html>