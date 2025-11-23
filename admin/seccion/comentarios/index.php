<?php 
include("../../bd.php");

    
    if(isset($_GET['txtID'])){

        $txtID=(isset($_GET["txtID"]))?$_GET["txtID"]:"";

        $sentencia=$conexion->prepare("DELETE FROM tbl_comentarios WHERE ID=:id");
        $sentencia->bindParam(":id", $txtID);
        $sentencia->execute();
        
        header("Location:index.php");
    }

$sentencia = $conexion->prepare("SELECT * FROM `tbl_comentarios`");
$sentencia->execute();
$lista_comentarios = $sentencia->fetchAll(PDO::FETCH_ASSOC);

include("../../templetes/header.php"); 
?>

<br/>
<div class="card">
    <div class="card-header">
        Bandeja de comentarios
    </div>
    <div class="card-body">
        <div class="table-responsive-sm">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Correo</th>
                        <th scope="col">Mensaje</th>
                        <th scope="col">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach($lista_comentarios as $registro){ ?>
                    <tr>
                        <td><?php echo htmlspecialchars($registro["ID"]); ?></td>
                        <td><?php echo htmlspecialchars($registro["nombre"]); ?></td>
                        <td><?php echo htmlspecialchars($registro["correo"]); ?></td>
                        <td><?php echo htmlspecialchars($registro["mensaje"]); ?></td>
                        <td>
                            
                            <a href="eliminar.php?id=<?php echo $registro["ID"]; ?>" class="btn btn-sm btn-danger" onclick="return confirm('¿Estás seguro de eliminar este comentario?');">Borrar</a>
                        </td>
                    </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
    <div class="card-footer text-muted">
    </div>
</div>

<?php include("../../templetes/footer.php"); ?>