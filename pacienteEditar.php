<?php
    require("connDB.php");
    $conexion = regresarConexion();

    if(isset($_GET['editar'])) {
        $id = $_GET['editar'];
        $sql = "select * from pacientes where id = $id";
        $respuesta = mysqli_query($conexion,$sql);
        $fila = mysqli_fetch_array($respuesta);
        $apellido = $fila['apellido'];
        $nombre = $fila['nombre'];
    }
?>
<br>
<div id="tablas2" align="center" class="col-6">
    <form method="POST" action="">
        <div class="form-group">
            <label for="">apellido</label>
            <input id="apellido" type="text" name="apellido" class="form-control" value="<?php echo $apellido ?>"><br/>
        </div>
        <div class="form-group">
            <label for="">nombre</label>
            <input id="nombre" type="text" name="nombre" class="form-control" value="<?php echo $nombre ?>"><br/>
        </div>


    </form>
</div>