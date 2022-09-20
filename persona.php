<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
      <!-- formulario de eventos -->
      <div class="modal fade" id="formularioPersona" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <!-- cabecera -->
              <div class="modal-header">

              </div>
              <!-- cuerpo -->
              <div class="modal-body">
                <input type="hidden" id="id">
                <div class="form-row">
                  <div class="form-group col-md-12">
                    <label for="">seleccione paciente</label>
                    <!-- <input type="text" id="titulo" class="form-control" placeholder=""> -->

                    <!-- cargamos el combo con las personas -->
                    <select id="titulo" class="form-control">
                        <?php
                        //   require_once('connDB.php');
                          $conexion = regresarConexion();
                          $consulta = "select dni,apellido,nombre from personas order by apellido,nombre";
                          $datos = mysqli_query($conexion,$consulta);
                          $ep = mysqli_fetch_all($datos, MYSQLI_ASSOC);
                          foreach($ep as $fila){
                            echo '<option value="'.$fila["dni"].'">'.$fila["apellido"]." ".$fila["nombre"].'</option>';
                          }
                        ?>
                    </select>

                  </div>
                </div>

                <!-- descripcion -->
                <div class="form-row">
                  <label for="">descripcion</label>
                  <textarea id="descripcion" class="form-control" rows="3"></textarea>
                </div>


              </div>

              <div class="modal-footer">
                <button type="button" id="botonAgregar" class="btn btn-success">agregar</button>
                <!-- <button type="button" id="botonModificar" class="btn btn-success">modificar</button> -->
                <!-- <button type="button" id="botonBorrar" class="btn btn-success">borrar</button> -->
                <button type="button" class="btn btn-success" data-bs-dismiss="modal">cancelar</button>
              </div>

            </div>
          </div>
        </div>


</body>
</html>