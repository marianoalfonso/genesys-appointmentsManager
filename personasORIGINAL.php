<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
  </head>

    <?php include 'assets/header.php'; ?>

    <div align="center" class="col-2">
        <h2 id="texth1" style="margin-top">ingrese los datos del paciente</h2>
        <form method="POST" action="personas.php">
            <div class="form-group">
                <label for="">apellido</label>
                <input type="text" name="apellido" class="form-control" placeholder="ingrese el apellido"><br/>
            </div>
            <div class="form-group">
                <label for="">nombre</label>
                <input type="text" name="nombre" class="form-control" placeholder="ingrese el nombre"><br/>
            </div>

            <div class="form-group">
                <input type="submit" id="btn_inser" name="insert" class="btn btn-warning" value="insertar"><br/>
            </div>
        </form>
    </div>

        <?php require("connDB.php"); ?>

        <div id="tablas" class="col-8">
            <table class="table table-bordered table-responsive">
                <tr>
                    <td>id</td>
                    <td>apellido</td>
                    <td>nombre</td>
                </tr>
                <?php
                    $sql = "select id,apellido,nombre from personas order by apellido";
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
                        <td><a href="personaEditar.php?editar=<?php echo $id ?>">editar</a></td>
                        <td><a href="personas.php?borrar=<?php echo $id ?>">borrar</a></td>
                    </tr>
                <?php } ?>
            </table>
        </div>

        <br><br>
        <?php
            if(isset($_POST['insert'])) {
                $apellido = $_POST['apellido'];
                $nombre = $_POST['nombre'];

                $sql = "INSERT INTO `personas` (`apellido`, `nombre`) VALUES ('$apellido', '$nombre')";
                $respuesta = mysqli_query($conexion,$sql);
                if($respuesta) {
                    echo'dato grabado';
                    echo "<script>window.open('pacientes.php','self')</script>";
                } else {
                    echo 'error al grabar el dato';
                }
            }
        ?>

        <?php
            if(isset($_GET['editar'])) {
                include("personaEditar.php");
            }
        ?>

        <?php
            if(isset($_GET['borrar'])) {
                $borrar_id = $_GET['borrar'];
                $sql = "DELETE FROM `personas` WHERE `personas`.`id` = '$borrar_id'";
                $resultado = mysqli_query($conexion,$sql);
                if($resultado) {
                    echo "<script>alert('paciente borrado')</script>";
                    echo "<script>window.open('personas.php','self')</script>";
                }
            }
        ?>

    </body>
</html>