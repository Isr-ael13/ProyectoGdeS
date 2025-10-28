<?php
include("../../bd.php");
$sentencia=$conexion->prepare("SELECT * FROM tbl_colaboradores");
    $sentencia->execute();
    $lista_colaboradores= $sentencia->fetchAll(PDO::FETCH_ASSOC);
include("../../templetes/header.php");
?>

<div class="card">
    <div class="card-header">
        <a name="" id="" class="btn btn-primary" href="crear.php" role="button">Agregar registros</a>
    </div>
    <div class="card-body">
    <div class="table-responsive-sm">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Nombre del Chef</th>
                        <th scope="col">Descreipcion</th>
                        <th scope="col ">Redes Sociales</th>
                        <th scope="col">Foto</th>
                    </tr>
                </thead>
                 <tbody>
                    
                    <?php foreach($lista_colaboradores as $key => $value){ ?>
                        <tr class="">
                            <td scope="row"><?php echo $value['ID']; ?></td>
                            <td><?php echo($value['titulo']); ?></td>
                            <td><?php echo($value['descripcion']); ?></td>
                            <td><?php echo($value['linkfacebook']); ?> <br>  
                                <?php echo($value['linkinstagram']); ?><br>
                                <?php echo($value['linklinkedin']); ?></td>
                            <td><?php echo($value['foto']); ?></td>
                            <td>
                                <a name="" id="" class="btn btn-info" href="editar.php?txtID=<?php echo $value['ID']; ?>" role="button">Editar</a>
                                <a name="" id="" class="btn btn-danger" href="index.php?txtID=<?php echo $value['ID']; ?>" role="button">Borrar</a>
                            </td>
                        </tr>
                    <?php } ?>
                </tbody>
    </div>
    <div class="card-footer text-muted">
        Footer 
    </div>
</div>