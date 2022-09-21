<!--Modal para CRUD-->
<div class="modal fade" id="modalCRUD" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
            </div>
        <form id="formUsuarios">    
            <div class="modal-body">
                <div class="row">
                    <!-- apellido -->
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label for="" class="col-form-label">apellido</label>
                        <input type="text" class="form-control" id="apellido">
                      </div> 
                    </div>    
                    <!-- nombre -->
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label for="" class="col-form-label">nombre</label>
                        <input type="text" class="form-control" id="nombre">
                      </div>               
                    </div>
                </div>

                <div class="row">
                    <!-- dni -->
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label for="" class="col-form-label">dni</label>
                        <input type="text" class="form-control" id="dni">
                      </div> 
                    </div>    
                </div>

                <div class="row">
                    <!-- direccion -->
                    <div class="col-lg-12">
                      <div class="form-group">
                        <label for="" class="col-form-label">direccion</label>
                        <input type="text" class="form-control" id="direccion">
                      </div>               
                    </div>
                  </div>

                <!-- cobertura -->
                <div class="row">
                    <!-- cobertura 1 -->
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label for="" class="col-form-label">cobertura 1</label>
                        <input type="text" class="form-control" id="cobertura1">
                      </div> 
                    </div>    
                    <!-- nro socio 1 -->
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label for="" class="col-form-label">nro. socio</label>
                        <input type="text" class="form-control" id="socio1">
                      </div>               
                    </div>
                </div>

                  <!-- cobertura  -->
                  <div class="row">
                    <!-- cobertura 2 -->
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label for="" class="col-form-label">cobertura 2</label>
                        <input type="text" class="form-control" id="cobertura2">
                      </div> 
                    </div>    
                    <!-- nro socio 2 -->
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label for="" class="col-form-label">nro. socio</label>
                        <input type="text" class="form-control" id="socio2">
                      </div>               
                    </div>
                </div>

                <!-- <div class="row"> 

                    <div class="col-lg-6">
                    <div class="form-group">
                    <label for="" class="col-form-label">Gender</label>
                    <input type="text" class="form-control" id="gender">
                    </div>
                    </div>  
                </div>
                <div class="row">
                    <div class="col-lg-9">
                        <div class="form-group">
                        <label for="" class="col-form-label">Password</label>
                        <input type="text" class="form-control" id="password">
                        </div>
                    </div>    
                    <div class="col-lg-3">    
                        <div class="form-group">
                        <label for="" class="col-form-label">Status</label>
                        <input type="number" class="form-control" id="status">
                        </div>            
                    </div>    
                </div>                 -->
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-light" data-dismiss="modal">Cancelar</button>
                <button type="submit" id="btnGuardar" class="btn btn-dark">Guardar</button>
            </div>
        </form>    
        </div>
    </div>
</div>  