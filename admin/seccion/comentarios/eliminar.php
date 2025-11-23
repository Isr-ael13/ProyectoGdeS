<?php
// eliminar.php
include("../../bd.php");

if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $id = (int)$_GET['id'];

    // Preparar y ejecutar la eliminación
    $sentencia = $conexion->prepare("DELETE FROM tbl_comentarios WHERE ID = ?");
    $sentencia->execute([$id]);

    // Redirigir de vuelta a la lista
    header("Location: index.php");
    exit();
} else {
    die("ID no válido.");
}
?>