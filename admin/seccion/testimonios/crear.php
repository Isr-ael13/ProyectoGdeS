<?php
include("../../bd.php");

if($_POST){
    

    $opinion=(isset($_POST["opinion"]))?$_POST["opinion"]:"";
    $nombre=(isset($_POST["nombre"]))?$_POST["nombre"]:"";



    $sentencia=$conexion-> prepare("INSERT INTO
   `tbl_testimonios` (`ID`, `opinion`, `nombre`) 
    VALUES (NULL,:opinion,:nombre);");

     $sentencia->bindParam(":opinion",$opinion);
     $sentencia->bindParam(":nombre",$nombre);

     $sentencia->execute();
     header("Location:index.php");

}

include ("../../templetes/header.php");


?>
<br/>
<div class="card">
    <div class="card-header">
        Crear Testimonios
    </div>
    <div class="card-body">

      <form action="" method="post" >

      <div class="mb-3">
        <label for="" class="form-label">Opinion:</label>
        <input
            type="text"
            class="form-control"
            name="opinion"
            id="opinion"
            aria-describedby="helpId"
            placeholder="Opinion">
        <small id="helpId" class="form-text text-muted">Help text</small>
      </div>
      
      <div class="mb-3">
        <label for="" class="form-label">Nombre:</label>
        <input
            type="text"
            class="form-control"
            name="nombre"
            id="nombre"
            aria-describedby="helpId"
            placeholder="Nombre"
        />
      </div>
      
      <button type="submit" class="btn btn-success">Agregar Testimonios</button>
      <a name="" id="" class="btn btn-primary" href="index.php" role="button">Cancelar</a>

      </form>

       
    </div>
    <div class="card-footer text-muted">
        
    </div>
</div>





<?php include ("../../templetes/header.php");?>


