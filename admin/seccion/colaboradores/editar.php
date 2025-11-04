<?php
include ("../../templetes/header.php");

include("../../bd.php");

if($_POST){
        $txtID=(isset($_GET["txtID"]))?$_GET["txtID"]:"";
        $titulo=(isset($_POST["titulo"])?$_POST["titulo"]:"");
        $descripcion=(isset($_POST["descripcion"])?$_POST["descripcion"]:"");
        $linkfacebook=(isset($_POST["linkfacebook"])?$_POST["linkfacebook"]:"");
        $linkinstagram=(isset($_POST["linkinstagram"])?$_POST["linkinstagram"]:"");
        $linklinkedin=(isset($_POST["linklinkedin"])?$_POST["linklinkedin"]:"");

        $sentencia=$conexion->prepare("UPDATE `tbl_colaboradores` SET
        `titulo`=:titulo,
        `descripcion`=:descripcion,
        `linkfacebook`=:linkfacebook,
        `linkinstagram`=:linkinstagram,
        `linklinkedin`=:linklinkedin
        WHERE ID=:id");

        $sentencia->bindParam(":titulo", $titulo);
        $sentencia->bindParam(":descripcion", $descripcion);
        $sentencia->bindParam(":linkfacebook", $linkfacebook);
        $sentencia->bindParam(":linkinstagram", $linkinstagram);
        $sentencia->bindParam(":linklinkedin", $linklinkedin);
        $sentencia->bindParam(":id", $txtID);
        $sentencia->execute();


    $foto=(isset($_FILES["foto"]['name']))?$_FILES["foto"]['name']:"";
    $temporalfoto=(isset($_FILES["foto"]['tmp_name']))?$_FILES["foto"]['tmp_name']:"";
    if($foto!=""){
        $fecha_ = new DateTime();
        $nombreArchivo_foto=($fecha_->getTimestamp())."_".$foto;
        move_uploaded_file($temporalfoto,"../../../images/Chefs/".$nombreArchivo_foto);

        
        $sentencia_select=$conexion->prepare("SELECT foto FROM `tbl_colaboradores` WHERE ID=:id");
        $sentencia_select->bindParam(":id", $txtID);
        $sentencia_select->execute();
        $registro_foto=$sentencia_select->fetch(PDO::FETCH_ASSOC);
        if(isset($registro_foto['foto'])){
            if(file_exists("../../../images/Chefs/".$registro_foto['foto'])){
                unlink("../../../images/Chefs/".$registro_foto['foto']);
            }
        }

        $sentencia=$conexion->prepare("UPDATE `tbl_colaboradores` SET
        `foto`=:foto
        WHERE ID=:id");

        $sentencia->bindParam(":foto", $nombreArchivo_foto);
        $sentencia->bindParam(":id", $txtID);
        $sentencia->execute();
    }

    header("Location:index.php");
}

if(isset($_GET['txtID'])){
        $txtID=(isset($_GET["txtID"]))?$_GET["txtID"]:"";
        
        $sentencia=$conexion->prepare("SELECT * FROM `tbl_colaboradores` WHERE ID=:id");
        $sentencia->bindParam(":id", $txtID);
        $sentencia->execute();
        $registro=$sentencia->fetch(PDO::FETCH_LAZY);

        $titulo=$registro["titulo"];
        $foto=$registro["foto"];
        $descripcion=$registro["descripcion"];
        $linkfacebook=$registro["linkfacebook"];
        $linkinstagram=$registro["linkinstagram"];
        $linklinkedin=$registro["linklinkedin"];

}


?>

<div class="card">
    <div class="card-header">
        Modificar Colaborador 
    </div>
    <div class="card-body">
        <form action="" method="post" enctype="multipart/form-data">
            <div class="mb-3">
                <label for="ID" class="form-label">ID:</label>
                <input type="text"
                class="form-control" value="<?php echo $txtID;?>" name="txtID" id="txtID" aria-describedby="helpId" placeholder="Escriba el título del banner">
            </div>

            <div class="mb-3">
                <label for="titulo" class="form-label">Colaborador</label>
                <input type="text"
                value="<?php echo $titulo; ?>"
                class="form-control" name="titulo" id="titulo" aria-describedby="helpId" placeholder="Escriba el Nombre del Colaborador">
            </div>

            <div class="mb-3">
                <label for="descripcion" class="form-label">Descripción:</label>
                <input type="text"
                value="<?php echo $descripcion; ?>"
                class="form-control" name="descripcion" id="descripcion" aria-describedby="helpId" placeholder="Escriba la desscripción del Colaborador">
            </div>

            <div class="mb-3">
                <label for="link" class="form-label">Links</label>
                <div id="fileHelpId" class="form-text">Facebook</div>
                <input type="text"
                value="<?php echo $linkfacebook; ?>"
                class="form-control" name="linkfacebook" id="linkfacebook" aria-describedby="helpId" placeholder="Escriba enlace de Facebook">
                <div id="fileHelpId" class="form-text">Instagram</div>
                <input type="text"
                value="<?php echo $linkinstagram; ?>"
                class="form-control" name="linkinstagram" id="linkinstagram" aria-describedby="helpId" placeholder="Escriba enlace de Instagram ">
                <div id="fileHelpId" class="form-text">Linkedin</div>
                <input type="text"
                value="<?php echo $linklinkedin; ?>"
                class="form-control" name="linklinkedin" id="linklinkedin" aria-describedby="helpId" placeholder="Escriba enlace de Linkedin">
                
            </div>
            
           <div class="mb-3">
            <label for="" class="form-label">foto</label></br>
            <img width="150" src="../../../images/Chefs/<?php echo $foto; ?>" alt="">
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
           
            <button type="submit" class="btn btn-success">Modificar</button>
            <a name="" id="" class="btn btn-primary" href="index.php" role="button">Cancelar</a>
            
        </form>
    </div>
    <div class="card-footer text-muted">

    </div>
</div>



<?php
include ("../../templetes/footer.php"); 
?>