<?php
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
      <div class="col-lg-4 col-md-6">
        <div class="card">
          <img src="images/menu/pescadoalatalla.jpg" class="card-img-top" alt="Pescado a la Talla">
          <div class="card-body">
            <h5 class="card-title">Pescado a la Talla – $220</h5>
            <p class="card-text">Pescado fresco marinado con achiote, ajo, chile y especias locales, acompañado de arroz a la mexicana, ensalada fresca y tortillas de maíz.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="card">
          <img src="images/menu/parilladademariscos.jpg" class="card-img-top" alt="Parrillada de Mariscos">
          <div class="card-body">
            <h5 class="card-title">Parrillada de Mariscos – $350</h5>
            <p class="card-text">Camarón, pulpo, calamar, pescado y ostiones, todo a la parrilla con mantequilla de ajo y limón, servido con arroz, ensalada y pan artesanal.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="card">
          <img src="images/menu/cazueladelmar.jpg" class="card-img-top" alt="Cazuela del Mar">
          <div class="card-body">
            <h5 class="card-title">Cazuela del Mar – $280</h5>
            <p class="card-text">Mezcla de camarón, pescado, pulpo y mejillones en un caldillo de jitomate, ajo, cebolla y chile chipotle, acompañada de arroz y tortillas.</p>
          </div>
        </div>
      </div>
    </div>

    <!-- Entradas -->
    <h3>Entradas</h3>
    <div class="row g-4">
      <div class="col-lg-4 col-md-6">
        <div class="card">
          <img src="images/menu/botanacremosadeatun.jpg" class="card-img-top" alt="Botana Cremosa de Atún">
          <div class="card-body">
            <h5 class="card-title">Botana Cremosa de Atún – $120</h5>
            <p class="card-text">Atún fresco en pan con especias.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="card">
          <img src="images/menu/tostadadepulpo.jpg" class="card-img-top" alt="Tostada de Pulpo">
          <div class="card-body">
            <h5 class="card-title">Tostada de Pulpo – $120</h5>
            <p class="card-text">Pulpo a la parrilla, bañado en chipotle, lechuga, pepino, cebolla morada y especias.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="card">
          <img src="images/menu/cocteldecamaron.jpg" class="card-img-top" alt="Cóctel de Camarón">
          <div class="card-body">
            <h5 class="card-title">Coctel de Camarón – $130</h5>
            <p class="card-text">Camarón fresco, jugo de limón, salsa tipo cóctel, cebolla, cilantro y aguacate.</p>
          </div>
        </div>
      </div>
    </div>

    <!-- Pastas -->
    <h3>Pastas</h3>
    <div class="row g-4">
      <div class="col-lg-4 col-md-6">
        <div class="card">
          <img src="images/menu/pastaalfredoconcamarones.jpg" class="card-img-top" alt="Pasta Alfredo con Camarones">
          <div class="card-body">
            <h5 class="card-title">Pasta Alfredo con Camarones – $200</h5>
            <p class="card-text">Pasta linguini, camarones salteados en salsa cremosa de queso parmesano, ajo y mantequilla.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="card">
          <img src="images/menu/pastamarinera.jpg" class="card-img-top" alt="Pasta Marinera">
          <div class="card-body">
            <h5 class="card-title">Pasta Marinera – $220</h5>
            <p class="card-text">Mezcla de mariscos en salsa de jitomate, ajo y hierbas finas, acompañada de linguini.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="card">
          <img src="images/menu/pastaalpestoconpulpo.jpg" class="card-img-top" alt="Pasta al Pesto con Pulpo">
          <div class="card-body">
            <h5 class="card-title">Pasta al Pesto con Pulpo – $210</h5>
            <p class="card-text">Pasta penne en salsa pesto, con pulpo a la parrilla y espinacas frescas.</p>
          </div>
        </div>
      </div>
    </div>

    <!-- Ensaladas -->
    <h3>Ensaladas</h3>
    <div class="row g-4">
      <div class="col-lg-4 col-md-6">
        <div class="card">
          <img src="images/menu/ensaladacesarconcamaron.jpg" class="card-img-top" alt="Ensalada César con Camarón">
          <div class="card-body">
            <h5 class="card-title">Ensalada César con Camarón – $150</h5>
            <p class="card-text">Camarones a la parrilla, lechuga romana, queso parmesano, crutones y aderezo César.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="card">
          <img src="images/menu/ensaladatropical.jpg" class="card-img-top" alt="Ensalada Tropical">
          <div class="card-body">
            <h5 class="card-title">Ensalada Tropical – $120</h5>
            <p class="card-text">Lechuga, mango, aguacate, jitomate y camarones, con aderezo de limón y miel.</p>
          </div>
        </div>
      </div>
    </div>

    <!-- Sopas -->
    <h3>Sopas y Potajes</h3>
    <div class="row g-4">
      <div class="col-lg-4 col-md-6">
        <div class="card">
          <img src="images/menu/sopademariscos.jpg" class="card-img-top" alt="Sopa de Mariscos">
          <div class="card-body">
            <h5 class="card-title">Sopa de Mariscos – $160</h5>
            <p class="card-text">Camarón, pescado, pulpo, calamar y almejas en caldo de jitomate, ajo, cebolla y hierbas finas.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="card">
          <img src="images/menu/caldodecamaron.jpg" class="card-img-top" alt="Caldo de Camarón">
          <div class="card-body">
            <h5 class="card-title">Caldo de Camarón – $140</h5>
            <p class="card-text">Camarones frescos en caldo sazonado con jitomate, chile y hierbas locales.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="card">
          <img src="images/menu/cremadelangosta.jpg" class="card-img-top" alt="Crema de Langosta">
          <div class="card-body">
            <h5 class="card-title">Crema de Langosta – $190</h5>
            <p class="card-text">Crema suave elaborada con carne de langosta, ajo, crema y especias.</p>
          </div>
        </div>
      </div>
    </div>

    <!-- Barra Fría -->
    <h3>Barra Fría</h3>
    <div class="row g-4">
      <div class="col-lg-4 col-md-6">
        <div class="card">
          <img src="images/menu/ostionesfrescos.jpg" class="card-img-top" alt="Ostiones Frescos">
          <div class="card-body">
            <h5 class="card-title">Ostiones Frescos – $180 (6 piezas)</h5>
            <p class="card-text">Ostiones servidos con limón, salsa picante y vinagreta.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="card">
          <img src="images/menu/cocteldepulpo.jpg" class="card-img-top" alt="Cóctel de Pulpo">
          <div class="card-body">
            <h5 class="card-title">Cóctel de Pulpo – $150</h5>
            <p class="card-text">Pulpo fresco, jitomate, cebolla morada, pepino, cilantro y limón.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="card">
          <img src="images/menu/cevichenegro.jpg" class="card-img-top" alt="Ceviche Negro">
          <div class="card-body">
            <h5 class="card-title">Ceviche Negro – $140</h5>
            <p class="card-text">Pescado y calamar en salsa de tinta de calamar, limón y especias.</p>
          </div>
        </div>
      </div>
    </div>

    <!-- Postres -->
    <h3>Postres</h3>
    <div class="row g-4">
      <div class="col-lg-4 col-md-6">
        <div class="card">
          <img src="images/menu/paydequeso.jpg" class="card-img-top" alt="Pay de Queso con Cajeta">
          <div class="card-body">
            <h5 class="card-title">Pay de Queso con Cajeta – $80</h5>
            <p class="card-text">Base de galleta, relleno de queso crema y cubierta de cajeta artesanal.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="card">
          <img src="images/menu/heladodecoco.jpg" class="card-img-top" alt="Helado de Coco">
          <div class="card-body">
            <h5 class="card-title">Helado de Coco con Trozos de Piña – $60</h5>
            <p class="card-text">Helado natural de coco, piña fresca y coco rallado.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="card">
          <img src="images/menu/flancaserodemaracuya.jpg" class="card-img-top" alt="Flan Casero de Maracuyá">
          <div class="card-body">
            <h5 class="card-title">Flan Casero de Maracuyá – $70</h5>
            <p class="card-text">Flan tradicional con toque tropical de maracuyá.</p>
          </div>
        </div>
      </div>
    </div>

    <!-- Bebidas -->
    <h3>Bebidas</h3>

    <h4>Mixología</h4>
    <div class="row g-4">
      <div class="col-lg-4 col-md-6">
        <div class="card">
          <img src="images/menu/margatitademaracuya.jpg" class="card-img-top" alt="Margarita de Maracuyá">
          <div class="card-body">
            <h5 class="card-title">Margarita de Maracuyá – $90</h5>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="card">
          <img src="images/menu/mojitodecoco.jpg" class="card-img-top" alt="Mojito de Coco">
          <div class="card-body">
            <h5 class="card-title">Mojito de Coco – $95</h5>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="card">
          <img src="images/menu/caipirinhadelimon.jpg" class="card-img-top" alt="Caipirinha de Limón">
          <div class="card-body">
            <h5 class="card-title">Caipirinha de Limón – $100</h5>
          </div>
        </div>
      </div>
    </div>

    <h4>Cervezas</h4>
    <div class="row g-4">
      <div class="col-lg-4 col-md-6">
        <div class="card">
          <img src="images/menu/cervezanacional.jpg" class="card-img-top" alt="Cerveza Nacional">
          <div class="card-body">
            <h5 class="card-title">Cerveza Nacional – $40</h5>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="card">
          <img src="images/menu/cervezaimportada.jpg" class="card-img-top" alt="Cerveza Importada">
          <div class="card-body">
            <h5 class="card-title">Cerveza Importada – $70</h5>
          </div>
        </div>
      </div>
    </div>

    <h4>Michelada</h4>
    <div class="row g-4">
      <div class="col-lg-4 col-md-6">
        <div class="card">
          <img src="images/menu/michelada.jpg" class="card-img-top" alt="Michelada">
          <div class="card-body">
            <h5 class="card-title">Michelada – $70</h5>
          </div>
        </div>
      </div>
    </div>

    <h4>Chelada</h4>
    <div class="row g-4">
      <div class="col-lg-4 col-md-6">
        <div class="card">
          <img src="images/menu/chelada.jpg" class="card-img-top" alt="Chelada">
          <div class="card-body">
            <h5 class="card-title">Chelada – $60</h5>
          </div>
        </div>
      </div>
    </div>

    <h4>Aguas Frescas</h4>
    <div class="row g-4">
      <div class="col-lg-3 col-md-6">
        <div class="card">
          <img src="images/menu/aguadelimon.jpg" class="card-img-top" alt="Agua de Limón">
          <div class="card-body">
            <h5 class="card-title">Agua de Limón – $35</h5>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6">
        <div class="card">
          <img src="images/menu/aguadejamaica.jpg" class="card-img-top" alt="Agua de Jamaica">
          <div class="card-body">
            <h5 class="card-title">Agua de Jamaica – $35</h5>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6">
        <div class="card">
          <img src="images/menu/aguadehorchata.jpg" class="card-img-top" alt="Agua de Horchata">
          <div class="card-body">
            <h5 class="card-title">Agua de Horchata – $35</h5>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6">
        <div class="card">
          <img src="images/menu/aguadenaranja.jpg" class="card-img-top" alt="Agua de Naranja">
          <div class="card-body">
            <h5 class="card-title">Agua de Naranja – $35</h5>
          </div>
        </div>
      </div>
    </div>
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
        <div class="col-md-4">
          <div class="card p-4">
            <p class="card-text"><?php echo $testimonio ["opinion"];?></p>
            <h6 class="mt-3">— <?php echo $testimonio ["nombre"];?></p>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card p-4">
            <p class="card-text"><?php echo $testimonio ["opinion"];?></p>
            <h6 class="mt-3"><?php echo $testimonio ["nombre"];?></p>
          </div>
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

