<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>profesionales</title>
</head>
<body>
    
<!-- <div class="modal fade" id="formularioProfesionales" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <select id="codigoProfesional" class="form-control">
                <option value="1" selected>profesional 1</option>
                <option value="2">profesional 2</option>
                <option value="3">profesional 3</option>
                <option value="4">profesional 4</option>
            </select>
            
            <div class="modal-footer">
                <button type="button" id="cargarAgenda" class="btn btn-success">cargar agenda</button>
            </div>

        </div>    
    </div>
</div> -->

      <!-- formulario de eventos -->
        <div class="modal fade" id="formularioProfesionales" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                <!-- cabecera -->
                    <div class="modal-header">

                        <button type="button" class="close" data-bs-dismiss="modal" aria-label="close">
                        <span aria-hidden="true">x</span>
                        </button>

                    </div>
                <!-- cuerpo -->
                    <div class="modal-body">
                        <input type="hidden" id="id">
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <label for="">seleccione profesional</label>
                                <select id="codigoProfesional" class="form-control">
                                    <option value="1" selected>profesional 1</option>
                                    <option value="2">profesional 2</option>
                                    <option value="3">profesional 3</option>
                                    <option value="4">profesional 4</option>
                                </select>

                                <div class="modal-footer">
                                    <button type="button" id="cargarAgenda" class="btn btn-success">cargar agenda</button>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

</body>
</html>