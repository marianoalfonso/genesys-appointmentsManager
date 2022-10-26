<?php
    include "connDB.php";
    $id = $_GET['id'];

    $conn = regresarConexion();
    if(isset($_POST['submit'])){
        $apellido = $_POST['apellido'];
        $nombre = $_POST['nombre'];
        $dni = $_POST['dni'];
        $direccion = $_POST['direccion'];
        $cobertura = $_POST['cobertura'];
        $numero = $_POST['c1numero'];
        $contacto = $_POST['contacto'];
        $estado = $_POST['estado'];
        if($estado=="activo"){
            $valorEstado = 1;
        } else {
            $valorEstado = 0;
        }

        $consulta = "UPDATE `personas` SET `apellido`='$apellido',`nombre`='$nombre',`dni`='$dni',`direccion`='$direccion',
            `cobertura1`='$cobertura',`c1numero`='$numero',`contacto`='$contacto',`estado`='$valorEstado' WHERE id=$id";

        $result = mysqli_query($conn, $consulta);
        if($result){
            header("Location: personas.php");
        } else {
            echo "error actualizando los datos: ".mysqli_error($conn);
        }

    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- bootstrap -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css">

    <!-- font awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <title>alta de personas</title>
</head>
<body>
    <nav class="navbar navbar-light justify-content-center fs-3 mb-5" style="background-color: #00FF5573";>
        editar paciente
    </nav>

    <!-- <div class="container">
        <div class="text-center mb-4">
            <h3>editar paciente</h3>
            <p class="text-muted">actualice los datos del paciente</p>
        </div>
    </div> -->

    <?php
        // $id = $_GET['id'];
        $consulta = "select * from personas where id = $id limit 1";
        $result = mysqli_query($conn, $consulta);
        $row = mysqli_fetch_assoc($result);
    ?>

    <div class="container d-flex justify-content-center">
        <form action="" method="post" style="width: 50vw; min-width: 300px;">
            <div class="row">

                <!-- estado -->
                <div class="row">
                    <div class="col">
                        <div class="form-group mb-3">
                            <label>estado</label> &nbsp;
                            <input type="radio" class="form-check-input" name="estado" 
                             id="activo" value="activo" <?php echo($row['estado'] == '1') ? "checked" : "";?> >
                            <label for="male" class="form-input-label">activo</label>
                            &nbsp;
                            <input type="radio" class="form-check-input" name="estado" 
                             id="inactivo" value="inactivo" <?php echo($row['estado'] == '0') ? "checked" : "";?> >
                            <label for="male" class="form-input-label">inactivo</label>
                        </div>
                    </div>
                </div>

                <!-- apellido -->
                <div class="col">
                    <label class="form-label">apellido</label>
                    <input type="text" class="form-control" name="apellido" value="<?php echo $row['apellido']?>">
                </div>
                <!-- nombre -->
                <div class="col">
                    <label class="form-label">nombre</label>
                    <input type="text" class="form-control" name="nombre" value="<?php echo $row['nombre']?>">
                </div>
            </div>
            <div class="row">
                <!-- dni -->
                <div class="col">
                    <label class="form-label">dni</label>
                    <input type="number" class="form-control" name="dni" value="<?php echo $row['dni']?>">
                </div>                
            </div>
            <div class="row">
                <!-- direccion -->
                <div class="col">
                    <label class="form-label">direccion</label>
                    <input type="text" class="form-control" name="direccion" value="<?php echo $row['direccion']?>">
                </div>
            </div>
            <div class="row">
                <!-- cobertura -->
                <div class="col">
                    <!-- cargamos el combo con las coberturas -->
                    <label class="form label">cobertura</label>
                    <select name = "cobertura" id="cobertura" class="form-control">
                        <!-- <option value="0">seleccione una cobertura</option> -->
                        <?php

                            $selected[$cobertura] = 'selected="selected"';


                            // require_once('connDB.php');
                            $conexion = regresarConexion();
                            $consulta = "select id,nombre from coberturas order by nombre";
                            $datos = mysqli_query($conexion, $consulta);
                            $ep = mysqli_fetch_all($datos, MYSQLI_ASSOC);
                            foreach($ep as $fila){
                                echo '<option value="'.$fila["id"].'">'.$fila["nombre"].'</option>';
                            }
                        ?>
                    </select>
                </div>


                <!-- cobertura numero -->
                <div class="col">
                    <label class="form-label">numero</label>
                    <input type="text" class="form-control" name="c1numero" value="<?php echo $row['c1numero']?>">
                </div>
            </div>
            <div class="row">
                <!-- contacto -->
                <div class="col">
                    <label class="form-label">contacto</label>
                    <textarea name="contacto" class="form-control" id="contacto"><?php echo $row['contacto']?></textarea>
                </div>
            </div>

            <!-- boton submit -->
            <div>
                <br>
                <button type="submit" class="btn btn-success" name="submit">modificar</button>
                <a href="personas.php" class="btn btn-danger">cancelar</a>
            </div>
            

    </form>
    </div>

    <!-- bootstrap -->
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>