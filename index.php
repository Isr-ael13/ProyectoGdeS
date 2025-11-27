<?php //holaaa
include("admin/bd.php");
$sentencia=$conexion->prepare("SELECT * FROM tbl_banners ORDER BY id DESC LIMIT 1");
$sentencia->execute();
$lista_banners= $sentencia->fetchAll(PDO::FETCH_ASSOC);

$sentencia=$conexion->prepare("SELECT * FROM tbl_colaboradores ORDER BY id DESC LIMIT 3");
$sentencia->execute();
$lista_colaboradores= $sentencia->fetchAll(PDO::FETCH_ASSOC);

$sentencia=$conexion->prepare("SELECT * FROM tbl_testimonios ORDER BY id DESC LIMIT 3");
$sentencia->execute();
$lista_testimonios= $sentencia->fetchAll(PDO::FETCH_ASSOC);

$sentencia=$conexion->prepare("SELECT * FROM tbl_menu ORDER BY id DESC LIMIT 10");
$sentencia->execute();
$lista_menu= $sentencia->fetchAll(PDO::FETCH_ASSOC);


if ($_POST) {

    $nombre=filter_var($_POST["nombre"], FILTER_SANITIZE_STRING)
    $correo=filter_var($_POST["correo"],FILTER_VALIDATE_EMAIL)
    $mensaje=filter_var($_POST["mensaje"],FILTER_SANITIZE_STRING);

    if($nombre && $correo && $mensaje){

    $sql = "INSERT INTO 
    tbl_comentarios (nombre, correo, mensaje) 
    VALUES (:nombre, :correo, :mensaje
    )";

    $resultado = $conexion->prepare($sql);
    $resultado->bindParam(":nombre", $nombre, PDO::PARAM_STR);
    $resultado->bindParam(":correo", $correo, PDO::PARAM_STR);
    $resultado->bindParam(":mensaje", $mensaje, PDO::PARAM_STR);
    $resultado->execute();
  }
  header("Location:index.php");
}

?>
<!doctype html>
<html lang="es">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <title>Restaurante El Crustáceo Cascarudo</title>

  <!-- Bootstrap CSS v5.3.2 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
    crossorigin="anonymous" referrerpolicy="no-referrer" />

  <style>
    /* ===== Paleta y tipografía ===== */
    :root {
      --color-primary: #1e3a8a;
      --color-accent: #d4af37;
      --color-bg: #f8f9fa;
      --color-text: #212529;
      --color-navbar: #0f172a;
    }

    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: var(--color-bg);
      color: var(--color-text);
    }

    /* ===== Navbar ===== */
    .navbar {
      background-color: var(--color-navbar) !important;
    }
    .navbar-brand,
    .nav-link {
      color: #fff !important;
    }
    .navbar-text {
      color: rgba(255, 255, 255, 0.85) !important;
      font-size: 0.92rem;
    }

    /* ===== Banner ===== */
    .banner-img {
      height: 600px;
      background-size: cover;
      background-position: center;
      position: relative;
    }
    .banner-text {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      text-align: center;
      color: white;
      text-shadow: 0 2px 6px rgba(0,0,0,0.5);
    }
    .banner-text h1 {
      font-size: 3.5rem;
      font-weight: 700;
      letter-spacing: 1px;
    }
    @media (max-width: 768px) {
      .banner-text h1 { font-size: 2.2rem; }
      .banner-img { height: 400px; }
    }

    /* ===== Secciones ===== */
    section {
      padding: 60px 0;
    }
    section h2 {
      color: var(--color-primary);
      margin-bottom: 30px;
      font-weight: 600;
    }
    section h3 {
      color: var(--color-primary);
      margin: 40px 0 20px;
      font-weight: 500;
      border-bottom: 2px solid var(--color-accent);
      padding-bottom: 8px;
      display: inline-block;
    }
    section h4 {
      color: var(--color-primary);
      margin: 25px 0 15px;
      font-weight: 500;
    }

    /* ===== Tarjetas de chefs ===== */
    .chef-card .card {
      border: none;
      border-radius: 12px;
      overflow: hidden;
      box-shadow: 0 4px 12px rgba(0,0,0,0.08);
      transition: transform 0.3s;
    }
    .chef-card .card:hover {
      transform: translateY(-5px);
    }
    .chef-card .card-img-top {
      height: 300px;
      object-fit: cover;
    }
    .chef-card .card-title {
      font-weight: 600;
      margin-bottom: 5px;
    }
    .chef-card .social-icons a {
      font-size: 1.2rem;
      color: #495057;
      transition: color 0.2s;
    }
    .chef-card .social-icons a:hover {
      color: var(--color-primary);
    }

    /* ===== Tarjetas de menú ===== */
    .menu-card .card {
      border: none;
      border-radius: 12px;
      overflow: hidden;
      box-shadow: 0 4px 10px rgba(0,0,0,0.07);
      height: 100%;
    }
    .menu-card .card-img-top {
      height: 200px;
      object-fit: cover;
      width: 100%;
    }
    .menu-card .card-body {
      padding: 18px;
    }
    .menu-card .card-title {
      font-weight: 600;
      color: var(--color-primary);
      margin-bottom: 10px;
    }
    .menu-card .card-text {
      font-size: 0.95rem;
      color: #495057;
    }

    /* ===== Testimonios ===== */
    .testimonial-card .card {
      border: none;
      border-radius: 12px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.06);
      background: white;
    }
    .testimonial-card .card-text {
      font-style: italic;
      color: #495057;
    }

    /* ===== Contacto ===== */
    #contacto .form-control {
      border-radius: 8px;
      border: 1px solid #ced4da;
    }
    #contacto .btn {
      background-color: var(--color-primary);
      border: none;
      padding: 10px 30px;
      border-radius: 8px;
      font-weight: 500;
    }
    #contacto .btn:hover {
      background-color: #1a3070;
    }

    /* ===== Footer ===== */
    footer {
      background-color: var(--color-navbar);
      color: rgba(255,255,255,0.8);
      font-size: 0.95rem;
    }

    /* ===== Botón del banner ===== */
    .btn-primary {
      background-color: var(--color-accent);
      border: none;
      color: var(--color-navbar);
      font-weight: 600;
      padding: 10px 25px;
      border-radius: 30px;
    }
    .btn-primary:hover {
      background-color: #b89a2e;
      color: var(--color-navbar);
    }
  </style>
</head>

<body>

  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
      <a class="navbar-brand" href="#">
        <i class="fas fa-utensils"></i> El Crustáceo Cascarudo
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto align-items-center">
          <li class="nav-item"><a class="nav-link" href="#inicio">Inicio</a></li>
          <li class="nav-item"><a class="nav-link" href="#menu">Menú</a></li>
          <li class="nav-item"><a class="nav-link" href="#chefs">Chefs</a></li>
          <li class="nav-item"><a class="nav-link" href="#testimonios">Testimonios</a></li>
          <li class="nav-item"><a class="nav-link" href="#contacto">Contacto</a></li>
          <li class="nav-item ms-3">
            <span class="navbar-text">
              <i class="fas fa-clock me-1"></i> Lun–Dom: 12:00 – 23:00 hrs
            </span>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Banner -->
  <section id="banner" class="p-0">
    <div class="banner-img" style="background-image: url('images/slider_image2.jpg');">
      <div class="banner-text">
        <?php
        foreach($lista_banners as $banner){
        ?>
          <h1><?php echo $banner['titulo'];?></h1>
          <p><?php echo $banner['descripcion'];?></p>
          <a href="<?php echo $banner['link'];?>" class="btn btn-primary mt-3">Ver menú</a>
        
          <?php } ?>
      </div>
    </div>
  </section>

  <!-- Bienvenida -->
  <section id="inicio" class="container text-center">
    <div class="bg-dark text-white py-4 rounded-3">
      <h2>¡Bienvenid@ al Crustáceo Cascarudo!</h2>
      <p class="mb-0">Descubre el mejor sazón de la región</p>
    </div>
  </section>

  <!-- Chefs -->
  <section id="chefs" class="container chef-card">
    <h2 class="text-center">Nuestros Chefs</h2>
    <div class="row g-4">
    <?php
        foreach($lista_colaboradores as $colaborador){?>
      <div class="col-md-4">
        <div class="card">
          <img src="images/Chefs/<?php echo $colaborador["foto"]?>" class="card-img-top" alt="">
          <div class="card-body text-center">
            <h5 class="card-title"><?php echo $colaborador["titulo"]?></h5>
            <p class="card-text"><?php echo $colaborador["descripcion"]?></p>
            <div class="social-icons mt-3">
              <a href="<?php echo $colaborador["linkfacebook"]?>"><i class="fab fa-facebook"></i></a>
              <a href="<?php echo $colaborador["linkinstagram"]?>" class="ms-3"><i class="fab fa-instagram"></i></a>
              <a href="<?php echo $colaborador["linklinkedin"]?>" class="ms-3"><i class="fab fa-linkedin"></i></a>
            </div>
          </div>
        </div>
      </div>
      <?php } ?>
  </section>

  <!-- Menú -->
  <section id="menu" class="container menu-card">
    <h2 class="text-center">Especialidades de El Crustáceo Cascarudo</h2>

    <!-- Especialidades -->
    <h3>Especialidades de la Casa</h3>
    <div class="row g-4">

      <?php foreach($lista_menu as $registro){ ?>

      <div class="col-lg-4 col-md-6">
        <div class="card">
          <img src="images/menu/<?php echo $registro ["foto"];?>" alt="">
          <div class="card-body">
            <h5 class="card-title"><?php echo $registro ["nombre"];?> </h5>
            <p class="card-text small">
              <strong><?php echo $registro ["ingredientes"];?> </strong>
            </p>
            <p class="card-text"><strong>Precio:</strong> <?php echo $registro ["precio"];?>
           </p>
          </div>
        </div>
      </div>
       <?php } ?>
  </section>

  <!-- Testimonios -->
  <section id="testimonios" class="bg-light">

    <div class="container testimonial-card">
      <h2 class="text-center">Testimonios</h2>
      <div class="row g-4">


        <?php foreach($lista_testimonios as $testimonio){ ?>

        <div class="col-md-4">
          <div class="card p-4">
            <p class="card-text"> <?php echo $testimonio ["opinion"];?></p>
            <h6 class="mt-3" > <?php echo $testimonio ["nombre"];?></p>
          </div>
        </div>
      <?php } ?>
    </div>
  </section>

  <!-- Contacto -->
  <section id="contacto" class="container">
    <h2 class="text-center">CONTACTO</h2>
    <p class="text-center mb-4">Estamos aquí para servirle. ¡Déjanos tu mensaje!</p>
    <div class="row justify-content-center">
      <div class="col-md-8">
        <div class="p-4 bg-white shadow-sm rounded-3">
          <form>
            <div class="mb-3">
              <label for="nombre" class="form-label">Nombre</label>
              <input type="text" class="form-control" id="nombre" placeholder="Escribe tu nombre" required>
            </div>
            <div class="mb-3">
              <label for="correo" class="form-label">Correo</label>
              <input type="email" class="form-control" id="correo" placeholder="Escribe tu correo" required>
            </div>
            <div class="mb-3">
              <label for="mensaje" class="form-label">Mensaje</label>
              <textarea class="form-control" id="mensaje" rows="5" placeholder="Escribe un mensaje" required></textarea>
            </div>
            <div class="text-center">
              <button type="submit" class="btn btn-primary">Enviar Mensaje</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer class="text-center py-4">
    <p class="mb-0">&copy; 2025 El Crustáceo Cascarudo. Todos los derechos reservados.</p>
  </footer>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
    crossorigin="anonymous"></script>

</body>
</html>

