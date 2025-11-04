<?php
include("../../bd.php");
if($_POST){

        $titulo=(isset($_POST['titulo']))?$_POST['titulo']:"";
        $descripcion=(isset($_POST['descripcion']))?$_POST['descripcion']:"";
        $linkfacebook=(isset($_POST['linkfacebook']))?$_POST['linkfacebook']:"";
        $linkinstagram=(isset($_POST['linkinstagram']))?$_POST['linkinstagram']:"";
        $linklinkedin=(isset($_POST['linklinkedin']))?$_POST['linklinkedin']:"";
        $foto=(isset($_FILES['foto']['name']))?$_FILES['foto']['name']:"";

        $fecha_foto = new DateTime();
        $nombreArchivo_foto = ($foto != '') ? $fecha_foto->getTimestamp() . "_" . $foto : "";
        $tmp_foto = $_FILES['foto']['tmp_name'];

        if ($tmp_foto != '') {
            move_uploaded_file($tmp_foto, "../../../images/Chefs/" . $nombreArchivo_foto);
        }

        $sentencia=$conexion->prepare("INSERT INTO `tbl_colaboradores`
        (ID, titulo, descripcion, linkfacebook, linkinstagram, linklinkedin, foto)
        VALUES (NULL, :titulo, :descripcion, :linkfacebook, :linkinstagram, :linklinkedin, :foto)");

        $sentencia->bindParam(":titulo", $titulo);
        $sentencia->bindParam(":descripcion", $descripcion);
        $sentencia->bindParam(":linkfacebook", $linkfacebook);
        $sentencia->bindParam(":linkinstagram", $linkinstagram);
        $sentencia->bindParam(":linklinkedin", $linklinkedin);
        $sentencia->bindParam(":foto", $nombreArchivo_foto);

        $sentencia->execute();
        header("Location:index.php");

}
include ("../../templetes/header.php");
?>

<div class="card">
    <div class="card-header">
        Crear Colaborador 
    </div>
    <div class="card-body">
        <form action="" method="post" enctype="multipart/form-data">
            <div class="mb-3">
                <label for="titulo" class="form-label">Colaborador</label>
                <input type="text"
                class="form-control" name="titulo" id="titulo" aria-describedby="helpId" placeholder="Escriba el Nombre del Colaborador">
            </div>

            <div class="mb-3">
                <label for="descripcion" class="form-label">Descripción:</label>
                <input type="text"
                class="form-control" name="descripcion" id="descripcion" aria-describedby="helpId" placeholder="Escriba la desscripción del Colaborador">
            </div>

            <div class="mb-3">
                <label for="link" class="form-label">Links</label>
                <div id="fileHelpId" class="form-text">Facebook</div>
                <input type="text"
                class="form-control" name="linkfacebook" id="linkfacebook" aria-describedby="helpId" placeholder="Escriba enlace de Facebook">
                <div id="fileHelpId" class="form-text">Instagram</div>
                <input type="text"
                class="form-control" name="linkinstagram" id="linkinstagram" aria-describedby="helpId" placeholder="Escriba enlace de Instagram ">
                <div id="fileHelpId" class="form-text">Linkedin</div>
                <input type="text"
                class="form-control" name="linklinkedin" id="linklinkedin" aria-describedby="helpId" placeholder="Escriba enlace de Linkedin">
                
            </div>
            
           <div class="mb-3">
            <label for="" class="form-label">foto</label>
            <input
                type="file"
                class="form-control"
                name="foto"
                id="foto"
                placeholder=""
                aria-describedby="fileHelpId"
            />
            <div id="fileHelpId" class="form-text">selecciono un archivo .png / .jpg</div>
           </div>
           
            <button type="submit" class="btn btn-success">Crear Colaborador</button>
            <a name="" id="" class="btn btn-primary" href="index.php" role="button">Cancelar</a>
            
        </form>
    </div>
    <div class="card-footer text-muted">

    </div>
</div>





<?php include ("../../templetes/footer.php"); ?>