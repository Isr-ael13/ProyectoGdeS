<?php
session_start();

if($_POST){
    include("bd.php");

    // print_r($_POST); // Eliminado porque puede causar errores en header()

    $usuario = (isset($_POST["usuario"])) ? $_POST["usuario"] : "";
    $password = (isset($_POST["password"])) ? $_POST["password"] : "";
    
   

    $sentencia = $conexion->prepare("
        SELECT *, count(*) AS n_usuario
        FROM tbl_usuarios
        WHERE usuario = :usuario
        AND password = :password
    ");

    $sentencia->bindParam(":usuario", $usuario);
    $sentencia->bindParam(":password", $password);
    $sentencia->execute();

    $lista_usuarios = $sentencia->fetch(PDO::FETCH_LAZY);
    $n_usuario = $lista_usuarios["n_usuario"];
        
    if($n_usuario == 1){

        $_SESSION["usuario"] = $lista_usuarios["usuario"];
        $_SESSION["logueado"] = true;

        header("Location:index.php");
        exit;
    } else {
        $mensaje = "Usuario o contraseña incorrectos...";
    }
}
?>
<!doctype html>
<html lang="en">
    <head>
        <title>Login</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
        />
    </head>

    <body>
        
        <main>

        <div class="container">

            <div class="row ">

                <div class="col"></div>
                
                <div class="col">
                <br><br>  

    <?php if(isset($mensaje)){ ?>            
        <div class="alert alert-danger" role="alert">
            <strong>Error:</strong> <?php echo $mensaje; ?>
        </div>
    <?php } ?>

                <div class="card text-center">
                    <div class="card-header">Login</div>
                    
                    <div class="card-body">

                        <form action="login.php" method="post">

                            <div class="mb-3">
                                <label class="form-label">Usuario</label>
                                <input
                                    type="text"
                                    class="form-control"
                                    name="usuario"
                                    id="usuario"
                                />
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Password:</label>
                                <input
                                    type="password"
                                    class="form-control"
                                    name="password"
                                    id="password"
                                />
                            </div>

                            <button type="submit" class="btn btn-primary">Entrar</button>

                        </form>

                    </div>
                </div>

                </div>
                <div class="col"></div>
            </div>
            
        </div>

        </main>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"></script>
    </body>
</html>
