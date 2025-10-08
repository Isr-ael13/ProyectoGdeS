-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-10-2025 a las 23:52:54
-- Versión del servidor: 10.4.32-MariaDB-log
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdbiblioteca`
--
CREATE DATABASE IF NOT EXISTS `bdbiblioteca` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bdbiblioteca`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitlibros`
--

CREATE TABLE `bitlibros` (
  `idBit` int(11) NOT NULL,
  `operacion` varchar(10) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `autor` varchar(100) DEFAULT NULL,
  `editorial` varchar(100) DEFAULT NULL,
  `numPaginas` int(11) DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `fechaHora` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bitlibros`
--

INSERT INTO `bitlibros` (`idBit`, `operacion`, `ISBN`, `titulo`, `autor`, `editorial`, `numPaginas`, `usuario`, `fechaHora`) VALUES
(1, 'INSERT', '978-10', 'El Quijote', 'Cervantes', 'Anaya', 400, 'usuario_insercion@localhost', '2025-05-21 22:14:39'),
(2, 'INSERT', '978-11', '1984', 'George Orwell', 'Debolsillo', 328, 'usuario_insercion@localhost', '2025-05-21 22:14:39'),
(3, 'INSERT', '978-12', 'Cien años de soledad', 'Gabriel García Márquez', 'Sudamericana', 417, 'usuario_insercion@localhost', '2025-05-21 22:14:39'),
(4, 'UPDATE', '978-10', 'Don Quijote de la Mancha', 'Cervantes', 'Anaya', 400, 'usuario_admin@localhost', '2025-05-21 22:15:36'),
(5, 'UPDATE', '978-11', '1984', 'George Orwell', 'Debolsillo', 350, 'usuario_admin@localhost', '2025-05-21 22:15:36'),
(6, 'UPDATE', '978-12', 'Cien años de soledad', 'Gabriel García Márquez', 'Alfaguara', 417, 'usuario_admin@localhost', '2025-05-21 22:15:36'),
(7, 'DELETE', '978-10', 'Don Quijote de la Mancha', 'Cervantes', 'Anaya', 400, 'usuario_admin@localhost', '2025-05-21 22:17:30'),
(8, 'DELETE', '978-11', '1984', 'George Orwell', 'Debolsillo', 350, 'usuario_admin@localhost', '2025-05-21 22:17:30'),
(9, 'DELETE', '978-12', 'Cien años de soledad', 'Gabriel García Márquez', 'Alfaguara', 417, 'usuario_admin@localhost', '2025-05-21 22:17:30'),
(10, 'INSERT', '978-1', 'Cien años de soledad', 'Gabriel García Márquez', 'Sudamericana', 417, 'root@localhost', '2025-05-26 21:52:06'),
(11, 'INSERT', '978-2', 'Don Quijote de la Mancha', 'Miguel de Cervantes', 'Espasa', 863, 'root@localhost', '2025-05-26 21:52:06'),
(12, 'INSERT', '978-3', 'La sombra del viento', 'Carlos Ruiz Zafón', 'Planeta', 576, 'root@localhost', '2025-05-26 21:52:06'),
(13, 'UPDATE', '978-2', 'Don Quijote de la Mancha', 'Isabel Allende', 'Espasa', 863, 'root@localhost', '2025-05-27 07:30:33'),
(14, 'UPDATE', '978-1', 'Cien años de soledad', 'Gabriel García Márquez', 'Sudamericana', 350, 'root@localhost', '2025-05-27 07:30:48'),
(15, 'UPDATE', '978-2', 'Nueva edición del Libro B', 'Nuevo Autor B', 'Espasa', 863, 'root@localhost', '2025-05-27 07:30:52'),
(16, 'UPDATE', '978-3', 'Introducción a la Física Cuántica', 'Carlos Ruiz Zafón', 'Planeta', 576, 'root@localhost', '2025-05-27 07:31:31'),
(17, 'UPDATE', '978-2', 'Nueva edición del Libro B', 'Nuevo Autor B', 'Fondo de Cultura Económica', 863, 'root@localhost', '2025-05-27 07:31:39'),
(18, 'UPDATE', '978-3', 'Manual de Java Avanzado', 'Carlos Ruiz Zafón', 'Planeta', 600, 'root@localhost', '2025-05-27 07:33:15'),
(19, 'DELETE', '978-3', 'Manual de Java Avanzado', 'Carlos Ruiz Zafón', 'Planeta', 600, 'root@localhost', '2025-05-27 07:42:13'),
(20, 'DELETE', '978-2', 'Nueva edición del Libro B', 'Nuevo Autor B', 'Fondo de Cultura Económica', 863, 'root@localhost', '2025-05-27 07:42:16'),
(21, 'DELETE', '978-1', 'Cien años de soledad', 'Gabriel García Márquez', 'Sudamericana', 350, 'root@localhost', '2025-05-27 07:44:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitprestamos`
--

CREATE TABLE `bitprestamos` (
  `idBit` int(11) NOT NULL,
  `operacion` varchar(10) DEFAULT NULL,
  `codPrestamo` int(11) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `nomAlumno` varchar(100) DEFAULT NULL,
  `fechaPrestamo` date DEFAULT NULL,
  `fechaDevolucion` date DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `fechaHora` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bitprestamos`
--

INSERT INTO `bitprestamos` (`idBit`, `operacion`, `codPrestamo`, `ISBN`, `nomAlumno`, `fechaPrestamo`, `fechaDevolucion`, `usuario`, `fechaHora`) VALUES
(1, 'INSERT', 1, '978-10', 'Luis Martínez', '2025-05-20', '2025-05-27', 'usuario_insercion@localhost', '2025-05-21 22:15:03'),
(2, 'INSERT', 2, '978-11', 'Ana Pérez', '2025-05-20', '2025-05-26', 'usuario_insercion@localhost', '2025-05-21 22:15:03'),
(3, 'INSERT', 3, '978-12', 'Carlos Ruiz', '2025-05-20', '2025-05-25', 'usuario_insercion@localhost', '2025-05-21 22:15:03'),
(4, 'UPDATE', 1, '978-10', 'Luis M.', '2025-05-20', '2025-05-27', 'usuario_admin@localhost', '2025-05-21 22:16:34'),
(5, 'UPDATE', 2, '978-11', 'Ana Pérez', '2025-05-20', '2025-05-28', 'usuario_admin@localhost', '2025-05-21 22:16:34'),
(6, 'UPDATE', 3, '978-12', 'Carlos R.', '2025-05-20', '2025-05-25', 'usuario_admin@localhost', '2025-05-21 22:16:34'),
(7, 'DELETE', 1, '978-10', 'Luis M.', '2025-05-20', '2025-05-27', 'usuario_admin@localhost', '2025-05-21 22:17:30'),
(8, 'DELETE', 2, '978-11', 'Ana Pérez', '2025-05-20', '2025-05-28', 'usuario_admin@localhost', '2025-05-21 22:17:30'),
(9, 'DELETE', 3, '978-12', 'Carlos R.', '2025-05-20', '2025-05-25', 'usuario_admin@localhost', '2025-05-21 22:17:30'),
(10, 'INSERT', 4, '978-1', 'María López', '2025-05-25', '2025-06-01', 'root@localhost', '2025-05-27 07:19:35'),
(11, 'INSERT', 5, '978-2', 'Juan Pérez', '2025-05-24', '2025-05-31', 'root@localhost', '2025-05-27 07:19:35'),
(12, 'INSERT', 6, '978-3', 'Lucía Hernández', '2025-05-23', '2025-05-30', 'root@localhost', '2025-05-27 07:19:35'),
(13, 'INSERT', 7, '978-1', 'María López', '2025-05-25', '2025-06-01', 'root@localhost', '2025-05-27 07:20:19'),
(14, 'INSERT', 8, '978-2', 'Juan Pérez', '2025-05-24', '2025-05-31', 'root@localhost', '2025-05-27 07:20:19'),
(15, 'INSERT', 9, '978-3', 'Lucía Hernández', '2025-05-23', '2025-05-30', 'root@localhost', '2025-05-27 07:20:19'),
(16, 'UPDATE', 4, '978-1', 'Lucía Herrera', '2025-05-25', '2025-06-05', 'root@localhost', '2025-05-27 07:31:07'),
(17, 'UPDATE', 4, '978-1', 'Lucía Herrera', '2025-05-25', '2025-06-05', 'root@localhost', '2025-05-27 07:31:25'),
(18, 'DELETE', 4, '978-1', 'Lucía Herrera', '2025-05-25', '2025-06-05', 'root@localhost', '2025-05-27 07:44:10'),
(19, 'DELETE', 7, '978-1', 'María López', '2025-05-25', '2025-06-01', 'root@localhost', '2025-05-27 07:44:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `ISBN` varchar(20) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `autor` varchar(100) DEFAULT NULL,
  `editorial` varchar(100) DEFAULT NULL,
  `numPaginas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Disparadores `libros`
--
DELIMITER $$
CREATE TRIGGER `trg_Delete_Libros` AFTER DELETE ON `libros` FOR EACH ROW INSERT INTO BitLibros (operacion, ISBN, titulo, autor, editorial, numPaginas, usuario, fechaHora)
VALUES ('DELETE', OLD.ISBN, OLD.titulo, OLD.autor, OLD.editorial, OLD.numPaginas, USER(), NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_Insert_Libros` AFTER INSERT ON `libros` FOR EACH ROW INSERT INTO BitLibros (operacion, ISBN, titulo, autor, editorial, numPaginas, usuario, fechaHora)
VALUES ('INSERT', NEW.ISBN, NEW.titulo, NEW.autor, NEW.editorial, NEW.numPaginas, USER(), NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_Update_Libros` AFTER UPDATE ON `libros` FOR EACH ROW INSERT INTO BitLibros (operacion, ISBN, titulo, autor, editorial, numPaginas, usuario, fechaHora)
VALUES ('UPDATE', NEW.ISBN, NEW.titulo, NEW.autor, NEW.editorial, NEW.numPaginas, USER(), NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `codPrestamo` int(11) NOT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `nomAlumno` varchar(100) DEFAULT NULL,
  `fechaPrestamo` date DEFAULT NULL,
  `fechaDevolucion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Disparadores `prestamos`
--
DELIMITER $$
CREATE TRIGGER `trg_Delete_Prestamos` AFTER DELETE ON `prestamos` FOR EACH ROW INSERT INTO BitPrestamos (operacion, codPrestamo, ISBN, nomAlumno, fechaPrestamo, fechaDevolucion, usuario, fechaHora)
VALUES ('DELETE', OLD.codPrestamo, OLD.ISBN, OLD.nomAlumno, OLD.fechaPrestamo, OLD.fechaDevolucion, USER(), NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_Insert_Prestamos` AFTER INSERT ON `prestamos` FOR EACH ROW INSERT INTO BitPrestamos (operacion, codPrestamo, ISBN, nomAlumno, fechaPrestamo, fechaDevolucion, usuario, fechaHora)
VALUES ('INSERT', NEW.codPrestamo, NEW.ISBN, NEW.nomAlumno, NEW.fechaPrestamo, NEW.fechaDevolucion, USER(), NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_Update_Prestamos` AFTER UPDATE ON `prestamos` FOR EACH ROW INSERT INTO BitPrestamos (operacion, codPrestamo, ISBN, nomAlumno, fechaPrestamo, fechaDevolucion, usuario, fechaHora)
VALUES ('UPDATE', NEW.codPrestamo, NEW.ISBN, NEW.nomAlumno, NEW.fechaPrestamo, NEW.fechaDevolucion, USER(), NOW())
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bitlibros`
--
ALTER TABLE `bitlibros`
  ADD PRIMARY KEY (`idBit`);

--
-- Indices de la tabla `bitprestamos`
--
ALTER TABLE `bitprestamos`
  ADD PRIMARY KEY (`idBit`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`ISBN`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`codPrestamo`),
  ADD KEY `ISBN` (`ISBN`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bitlibros`
--
ALTER TABLE `bitlibros`
  MODIFY `idBit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `bitprestamos`
--
ALTER TABLE `bitprestamos`
  MODIFY `idBit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `codPrestamo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`ISBN`) REFERENCES `libros` (`ISBN`) ON DELETE CASCADE;
--
-- Base de datos: `bdexamen`
--
CREATE DATABASE IF NOT EXISTS `bdexamen` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bdexamen`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_examen`
--

CREATE TABLE `tb_examen` (
  `receta_id` int(11) NOT NULL,
  `nombre_receta` varchar(100) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `tiempo_preparacion` int(11) NOT NULL,
  `porciones` int(11) NOT NULL,
  `ingredientes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_examen`
--

INSERT INTO `tb_examen` (`receta_id`, `nombre_receta`, `categoria`, `tiempo_preparacion`, `porciones`, `ingredientes`) VALUES
(1, 'Helado de Vainilla', 'Postres', 20, 5, 'Leche, crema, azúcar, vainilla'),
(2, 'Pizza Congelada', 'Comidas Rápidas', 15, 2, 'Masa, queso, salsa de tomate, pepperoni'),
(3, 'Nuggets de Pollo', 'Comidas Rápidas', 25, 6, 'Pollo, pan rallado, huevo, especias'),
(4, 'Smotthie de coco', 'Entradas', 5, 2, 'coco, piña');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_examen`
--
ALTER TABLE `tb_examen`
  ADD PRIMARY KEY (`receta_id`);
--
-- Base de datos: `bd_examen`
--
CREATE DATABASE IF NOT EXISTS `bd_examen` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd_examen`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_examen`
--

CREATE TABLE `tb_examen` (
  `id_maestro` varchar(15) NOT NULL,
  `nom_completo` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `numero_tel` varchar(20) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `materia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_examen`
--

INSERT INTO `tb_examen` (`id_maestro`, `nom_completo`, `correo`, `numero_tel`, `direccion`, `materia`) VALUES
('M001', 'Carlos Ramírez', 'carlos.ramirez@escuela.com', '7838314244', 'Av. Insurgentes Sur 123, Tuxpan', 'Matemáticas'),
('M002', 'Ana Pérez', 'ana.perez@escuela.com', '7831234567', 'Calle Reforma 456, Tuxpan', 'Historia'),
('M003', 'Luis Gómez', 'luis.gomez@escuela.com', '7832345678', 'Blvd. Independencia 789, Tuxpan', 'Física'),
('M009', 'Jose Israel ', 'JoseIsrael@escuela.oucok', '7831432439', 'Avenida Tulipanes', 'Fudamentos');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_examen`
--
ALTER TABLE `tb_examen`
  ADD PRIMARY KEY (`id_maestro`);
--
-- Base de datos: `dbenrique`
--
CREATE DATABASE IF NOT EXISTS `dbenrique` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbenrique`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros_pedidos`
--

CREATE TABLE `libros_pedidos` (
  `ID_documento` int(11) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Autores` varchar(255) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `Solicitado_por` int(11) DEFAULT NULL,
  `Proveedor` varchar(20) DEFAULT NULL,
  `Pedido_el` date DEFAULT NULL,
  `Recibido_el` date DEFAULT NULL,
  `Precio` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros_pedidos`
--

INSERT INTO `libros_pedidos` (`ID_documento`, `Titulo`, `Autores`, `ISBN`, `Solicitado_por`, `Proveedor`, `Pedido_el`, `Recibido_el`, `Precio`) VALUES
(2, '1984', 'George Orwell', '978-9876543210', 2, '87654321B', '2024-11-03', '2024-11-17', 15.50),
(3, 'Cien Años de Soledad', 'Gabriel García Márquez', '978-1112131415', 3, '11223344C', '2024-11-05', '2024-11-19', 25.00),
(4, 'Don Quijote de la Mancha', 'Miguel de Cervantes', '978-2223242526', 4, '99887766D', '2024-11-07', '2024-11-21', 30.75);

--
-- Disparadores `libros_pedidos`
--
DELIMITER $$
CREATE TRIGGER `after_delete_libros_pedidos` AFTER DELETE ON `libros_pedidos` FOR EACH ROW BEGIN
    INSERT INTO Libros_Pedidos_copy (
        ID_documento_old, Titulo_old, Autores_old, ISBN_old, Solicitado_por_old, Proveedor_old, 
        Pedido_el_old, Recibido_el_old, Precio_old,
        usuario, accion, fecha
    )
    VALUES (
        OLD.ID_documento, OLD.Titulo, OLD.Autores, OLD.ISBN, OLD.Solicitado_por, OLD.Proveedor, 
        OLD.Pedido_el, OLD.Recibido_el, OLD.Precio,
        USER(), 'DELETE', NOW()
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_insert_libros_pedidos` AFTER INSERT ON `libros_pedidos` FOR EACH ROW BEGIN
    INSERT INTO Libros_Pedidos_copy (
        ID_documento_new, Titulo_new, Autores_new, ISBN_new, Solicitado_por_new, Proveedor_new, 
        Pedido_el_new, Recibido_el_new, Precio_new, usuario, accion, fecha
    )
    VALUES (
        NEW.ID_documento, NEW.Titulo, NEW.Autores, NEW.ISBN, NEW.Solicitado_por, NEW.Proveedor, 
        NEW.Pedido_el, NEW.Recibido_el, NEW.Precio, USER(), 'INSERT', NOW()
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_update_libros_pedidos` AFTER UPDATE ON `libros_pedidos` FOR EACH ROW BEGIN
    INSERT INTO Libros_Pedidos_copy (
        ID_documento_old, Titulo_old, Autores_old, ISBN_old, Solicitado_por_old, Proveedor_old, 
        Pedido_el_old, Recibido_el_old, Precio_old,
        ID_documento_new, Titulo_new, Autores_new, ISBN_new, Solicitado_por_new, Proveedor_new, 
        Pedido_el_new, Recibido_el_new, Precio_new,
        usuario, accion, fecha
    )
    VALUES (
        OLD.ID_documento, OLD.Titulo, OLD.Autores, OLD.ISBN, OLD.Solicitado_por, OLD.Proveedor, 
        OLD.Pedido_el, OLD.Recibido_el, OLD.Precio,
        NEW.ID_documento, NEW.Titulo, NEW.Autores, NEW.ISBN, NEW.Solicitado_por, NEW.Proveedor, 
        NEW.Pedido_el, NEW.Recibido_el, NEW.Precio,
        USER(), 'UPDATE', NOW()
    );
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros_pedidos_copy`
--

CREATE TABLE `libros_pedidos_copy` (
  `id_cambio` int(11) NOT NULL,
  `ID_documento_old` int(11) DEFAULT NULL,
  `Titulo_old` varchar(255) DEFAULT NULL,
  `Autores_old` varchar(255) DEFAULT NULL,
  `ISBN_old` varchar(20) DEFAULT NULL,
  `Solicitado_por_old` int(11) DEFAULT NULL,
  `Proveedor_old` varchar(20) DEFAULT NULL,
  `Pedido_el_old` date DEFAULT NULL,
  `Recibido_el_old` date DEFAULT NULL,
  `Precio_old` decimal(10,2) DEFAULT NULL,
  `ID_documento_new` int(11) DEFAULT NULL,
  `Titulo_new` varchar(255) DEFAULT NULL,
  `Autores_new` varchar(255) DEFAULT NULL,
  `ISBN_new` varchar(20) DEFAULT NULL,
  `Solicitado_por_new` int(11) DEFAULT NULL,
  `Proveedor_new` varchar(20) DEFAULT NULL,
  `Pedido_el_new` date DEFAULT NULL,
  `Recibido_el_new` date DEFAULT NULL,
  `Precio_new` decimal(10,2) DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `accion` varchar(15) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros_pedidos_copy`
--

INSERT INTO `libros_pedidos_copy` (`id_cambio`, `ID_documento_old`, `Titulo_old`, `Autores_old`, `ISBN_old`, `Solicitado_por_old`, `Proveedor_old`, `Pedido_el_old`, `Recibido_el_old`, `Precio_old`, `ID_documento_new`, `Titulo_new`, `Autores_new`, `ISBN_new`, `Solicitado_por_new`, `Proveedor_new`, `Pedido_el_new`, `Recibido_el_new`, `Precio_new`, `usuario`, `accion`, `fecha`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'El Principito', 'Antoine de Saint-Exupéry', '978-1234567890', 1, '12345678A', '2024-11-01', '2024-11-15', 20.99, 'usuarioB@localhost', 'INSERT', '2024-11-29 03:44:48'),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '1984', 'George Orwell', '978-9876543210', 2, '87654321B', '2024-11-03', '2024-11-17', 15.50, 'usuarioB@localhost', 'INSERT', '2024-11-29 03:44:48'),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Cien Años de Soledad', 'Gabriel García Márquez', '978-1112131415', 3, '11223344C', '2024-11-05', '2024-11-19', 25.00, 'usuarioB@localhost', 'INSERT', '2024-11-29 03:44:48'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'Don Quijote de la Mancha', 'Miguel de Cervantes', '978-2223242526', 4, '99887766D', '2024-11-07', '2024-11-21', 30.75, 'usuarioB@localhost', 'INSERT', '2024-11-29 03:44:48'),
(5, 1, 'El Principito', 'Antoine de Saint-Exupéry', '978-1234567890', 1, '12345678A', '2024-11-01', '2024-11-15', 20.99, 1, 'El Principito', 'Antoine de Saint-Exupéry', '978-1234567890', 1, '12345678A', '2024-11-01', '2024-11-15', 22.50, 'usuarioB@localhost', 'UPDATE', '2024-11-29 03:50:09'),
(6, 1, 'El Principito', 'Antoine de Saint-Exupéry', '978-1234567890', 1, '12345678A', '2024-11-01', '2024-11-15', 22.50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'usuarioA@localhost', 'DELETE', '2024-11-29 04:00:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `NIF` varchar(20) NOT NULL,
  `Empresa` varchar(100) NOT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Fax` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`NIF`, `Empresa`, `Direccion`, `Telefono`, `Fax`) VALUES
('11223344C', 'Proveedor Gamma', 'Zona Industrial 8', '555444333', '555444332'),
('87654321B', 'Distribuidora Beta', 'Avenida Central 5', '987654321', '987654320'),
('99887766D', 'Publicaciones Delta', 'Boulevard Empresarial 12', '666555444', '666555443');

--
-- Disparadores `proveedores`
--
DELIMITER $$
CREATE TRIGGER `after_delete_proveedores` AFTER DELETE ON `proveedores` FOR EACH ROW BEGIN
    INSERT INTO Proveedores_copy (
        NIF_old, Empresa_old, Direccion_old, Telefono_old, Fax_old,
        usuario, accion, fecha
    )
    VALUES (
        OLD.NIF, OLD.Empresa, OLD.Direccion, OLD.Telefono, OLD.Fax,
        USER(), 'DELETE', NOW()
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_insert_proveedores` AFTER INSERT ON `proveedores` FOR EACH ROW BEGIN
    INSERT INTO Proveedores_copy (
        NIF_new, Empresa_new, Direccion_new, Telefono_new, Fax_new,
        usuario, accion, fecha
    )
    VALUES (
        NEW.NIF, NEW.Empresa, NEW.Direccion, NEW.Telefono, NEW.Fax,
        USER(), 'INSERT', NOW()
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_update_proveedores` AFTER UPDATE ON `proveedores` FOR EACH ROW BEGIN
    INSERT INTO Proveedores_copy (
        NIF_old, Empresa_old, Direccion_old, Telefono_old, Fax_old,
        NIF_new, Empresa_new, Direccion_new, Telefono_new, Fax_new,
        usuario, accion, fecha
    )
    VALUES (
        OLD.NIF, OLD.Empresa, OLD.Direccion, OLD.Telefono, OLD.Fax,
        NEW.NIF, NEW.Empresa, NEW.Direccion, NEW.Telefono, NEW.Fax,
        USER(), 'UPDATE', NOW()
    );
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores_copy`
--

CREATE TABLE `proveedores_copy` (
  `id_cambio` int(11) NOT NULL,
  `NIF_old` varchar(20) DEFAULT NULL,
  `Empresa_old` varchar(100) DEFAULT NULL,
  `Direccion_old` varchar(255) DEFAULT NULL,
  `Telefono_old` varchar(15) DEFAULT NULL,
  `Fax_old` varchar(15) DEFAULT NULL,
  `NIF_new` varchar(20) DEFAULT NULL,
  `Empresa_new` varchar(100) DEFAULT NULL,
  `Direccion_new` varchar(255) DEFAULT NULL,
  `Telefono_new` varchar(15) DEFAULT NULL,
  `Fax_new` varchar(15) DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `accion` varchar(15) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores_copy`
--

INSERT INTO `proveedores_copy` (`id_cambio`, `NIF_old`, `Empresa_old`, `Direccion_old`, `Telefono_old`, `Fax_old`, `NIF_new`, `Empresa_new`, `Direccion_new`, `Telefono_new`, `Fax_new`, `usuario`, `accion`, `fecha`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, '12345678A', 'Editorial Alfa', 'Calle Editorial 1', '123456789', '123456780', 'usuarioB@localhost', 'INSERT', '2024-11-29 03:44:29'),
(2, NULL, NULL, NULL, NULL, NULL, '87654321B', 'Distribuidora Beta', 'Avenida Central 5', '987654321', '987654320', 'usuarioB@localhost', 'INSERT', '2024-11-29 03:44:29'),
(3, NULL, NULL, NULL, NULL, NULL, '11223344C', 'Proveedor Gamma', 'Zona Industrial 8', '555444333', '555444332', 'usuarioB@localhost', 'INSERT', '2024-11-29 03:44:29'),
(4, NULL, NULL, NULL, NULL, NULL, '99887766D', 'Publicaciones Delta', 'Boulevard Empresarial 12', '666555444', '666555443', 'usuarioB@localhost', 'INSERT', '2024-11-29 03:44:29'),
(5, '12345678A', 'Editorial Alfa', 'Calle Editorial 1', '123456789', '123456780', '12345678A', 'Editorial Alfa', 'Calle Editorial 1', '123456789', '123450000', 'usuarioB@localhost', 'UPDATE', '2024-11-29 03:49:59'),
(6, '12345678A', 'Editorial Alfa', 'Calle Editorial 1', '123456789', '123450000', NULL, NULL, NULL, NULL, NULL, 'usuarioA@localhost', 'DELETE', '2024-11-29 04:02:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_lector` int(11) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Correo_electronico` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID_lector`, `Apellidos`, `Nombre`, `Direccion`, `Telefono`, `Correo_electronico`) VALUES
(2, 'García', 'Luis', 'Av. Central 45', '9876543210', 'luis.garcia@example.com'),
(3, 'Martínez', 'Carmen', 'Boulevard del Sol 789', '1122334455', 'carmen.martinez@example.com'),
(4, 'Hernández', 'Jorge', 'Colonia Centro, 56', '5566778899', 'jorge.hernandez@example.com');

--
-- Disparadores `usuarios`
--
DELIMITER $$
CREATE TRIGGER `after_delete_usuarios` AFTER DELETE ON `usuarios` FOR EACH ROW BEGIN
    INSERT INTO Usuarios_copy (
        ID_lector_old, Apellidos_old, Nombre_old, Direccion_old, Telefono_old, 
        Correo_electronico_old, usuario, accion, fecha
    )
    VALUES (
        OLD.ID_lector, OLD.Apellidos, OLD.Nombre, OLD.Direccion, OLD.Telefono, 
        OLD.Correo_electronico, USER(), 'DELETE', NOW()
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_insert_usuarios` AFTER INSERT ON `usuarios` FOR EACH ROW BEGIN
    INSERT INTO Usuarios_copy (
        ID_lector_new, Apellidos_new, Nombre_new, Direccion_new, Telefono_new, 
        Correo_electronico_new, usuario, accion, fecha
    )
    VALUES (
        NEW.ID_lector, NEW.Apellidos, NEW.Nombre, NEW.Direccion, NEW.Telefono, 
        NEW.Correo_electronico, USER(), 'INSERT', NOW()
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_update_usuarios` AFTER UPDATE ON `usuarios` FOR EACH ROW BEGIN
    INSERT INTO Usuarios_copy (
        ID_lector_old, Apellidos_old, Nombre_old, Direccion_old, Telefono_old, 
        Correo_electronico_old, 
        ID_lector_new, Apellidos_new, Nombre_new, Direccion_new, Telefono_new, 
        Correo_electronico_new, usuario, accion, fecha
    )
    VALUES (
        OLD.ID_lector, OLD.Apellidos, OLD.Nombre, OLD.Direccion, OLD.Telefono, 
        OLD.Correo_electronico,
        NEW.ID_lector, NEW.Apellidos, NEW.Nombre, NEW.Direccion, NEW.Telefono, 
        NEW.Correo_electronico, USER(), 'UPDATE', NOW()
    );
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_copy`
--

CREATE TABLE `usuarios_copy` (
  `id_usuario` int(11) NOT NULL,
  `ID_lector_old` int(11) DEFAULT NULL,
  `Apellidos_old` varchar(100) DEFAULT NULL,
  `Nombre_old` varchar(100) DEFAULT NULL,
  `Direccion_old` varchar(255) DEFAULT NULL,
  `Telefono_old` varchar(15) DEFAULT NULL,
  `Correo_electronico_old` varchar(100) DEFAULT NULL,
  `ID_lector_new` int(11) DEFAULT NULL,
  `Apellidos_new` varchar(100) DEFAULT NULL,
  `Nombre_new` varchar(100) DEFAULT NULL,
  `Direccion_new` varchar(255) DEFAULT NULL,
  `Telefono_new` varchar(15) DEFAULT NULL,
  `Correo_electronico_new` varchar(100) DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `accion` varchar(15) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios_copy`
--

INSERT INTO `usuarios_copy` (`id_usuario`, `ID_lector_old`, `Apellidos_old`, `Nombre_old`, `Direccion_old`, `Telefono_old`, `Correo_electronico_old`, `ID_lector_new`, `Apellidos_new`, `Nombre_new`, `Direccion_new`, `Telefono_new`, `Correo_electronico_new`, `usuario`, `accion`, `fecha`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'López', 'Ana', 'Calle Primavera 123', '1234567890', 'ana.lopez@example.com', 'usuarioB@localhost', 'INSERT', '2024-11-29 03:43:40'),
(2, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'García', 'Luis', 'Av. Central 45', '9876543210', 'luis.garcia@example.com', 'usuarioB@localhost', 'INSERT', '2024-11-29 03:43:40'),
(3, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Martínez', 'Carmen', 'Boulevard del Sol 789', '1122334455', 'carmen.martinez@example.com', 'usuarioB@localhost', 'INSERT', '2024-11-29 03:43:40'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'Hernández', 'Jorge', 'Colonia Centro, 56', '5566778899', 'jorge.hernandez@example.com', 'usuarioB@localhost', 'INSERT', '2024-11-29 03:43:40'),
(5, 1, 'López', 'Ana', 'Calle Primavera 123', '1234567890', 'ana.lopez@example.com', 1, 'López', 'Ana', 'Calle Actualizada 456', '1234567890', 'ana.lopez@example.com', 'usuarioB@localhost', 'UPDATE', '2024-11-29 03:46:00'),
(6, 1, 'López', 'Ana', 'Calle Actualizada 456', '1234567890', 'ana.lopez@example.com', NULL, NULL, NULL, NULL, NULL, NULL, 'usuarioA@localhost', 'DELETE', '2024-11-29 04:01:05');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros_pedidos`
--
ALTER TABLE `libros_pedidos`
  ADD PRIMARY KEY (`ID_documento`),
  ADD KEY `Solicitado_por` (`Solicitado_por`),
  ADD KEY `Proveedor` (`Proveedor`);

--
-- Indices de la tabla `libros_pedidos_copy`
--
ALTER TABLE `libros_pedidos_copy`
  ADD PRIMARY KEY (`id_cambio`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`NIF`);

--
-- Indices de la tabla `proveedores_copy`
--
ALTER TABLE `proveedores_copy`
  ADD PRIMARY KEY (`id_cambio`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_lector`);

--
-- Indices de la tabla `usuarios_copy`
--
ALTER TABLE `usuarios_copy`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros_pedidos`
--
ALTER TABLE `libros_pedidos`
  MODIFY `ID_documento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `libros_pedidos_copy`
--
ALTER TABLE `libros_pedidos_copy`
  MODIFY `id_cambio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `proveedores_copy`
--
ALTER TABLE `proveedores_copy`
  MODIFY `id_cambio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_lector` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios_copy`
--
ALTER TABLE `usuarios_copy`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libros_pedidos`
--
ALTER TABLE `libros_pedidos`
  ADD CONSTRAINT `libros_pedidos_ibfk_1` FOREIGN KEY (`Solicitado_por`) REFERENCES `usuarios` (`ID_lector`),
  ADD CONSTRAINT `libros_pedidos_ibfk_2` FOREIGN KEY (`Proveedor`) REFERENCES `proveedores` (`NIF`);
--
-- Base de datos: `db_web`
--
CREATE DATABASE IF NOT EXISTS `db_web` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_web`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `nombre_corto` varchar(10) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `idpuesto` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellidos` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `telefono` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `correo_electronico` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `trabajo` int(11) NOT NULL DEFAULT 0 COMMENT '0 = no Trabaja, 1 = Trabaja',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 = INACTIVO, 1= ACTIVO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `nombre`, `apellidos`, `telefono`, `correo_electronico`, `trabajo`, `status`) VALUES
(1, 'Gael Antonio', 'Del Angel Ahumada', '23232424', 'antoniodelangel100@gmail.com', 1, 1),
(2, 'Gael Antonio', 'Del Angel Ahumada', '23323232', 'antoniodelangel100@gmail.com', 1, 1),
(3, 'Gael Antonio', 'Del Angel Ahumada', '7838238232', 'antoniodelangel100@gmail.com', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puestos`
--

CREATE TABLE `puestos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `nombre_corto` varchar(10) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `puestos`
--
ALTER TABLE `puestos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `puestos`
--
ALTER TABLE `puestos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `ejemplos`
--
CREATE DATABASE IF NOT EXISTS `ejemplos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ejemplos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `clave` varchar(5) NOT NULL,
  `Nombre` varchar(35) DEFAULT NULL,
  `Rfc` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`clave`, `Nombre`, `Rfc`) VALUES
('12AB', 'Campos Garcia Lorena', 'CAGL660304FMI'),
('13PC', 'ZUMAYA AUSTRIA MARISOL', 'ZUAM780301HNU'),
('14MV', 'OSTOS GUZMAN DANIEL', 'OSGD800505RTY'),
('15HH', 'IBARRA GONZALEZ CESAR', 'IBGC670202E7U'),
('20JK', 'VERA CRUZ OSCAR', 'VECO460909RTC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `numpedido` int(11) NOT NULL,
  `Clavecliente` varchar(25) DEFAULT NULL,
  `Idproducto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idprod` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `precio` decimal(10,0) DEFAULT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idprod`, `nombre`, `descripcion`, `precio`, `cantidad`) VALUES
(98, 'Jamon', 'De pierna navideño', 170, 30),
(123, 'galletas', 'emperador chocolate', 17, 50),
(345, 'leche', 'santa clara entera', 23, 98),
(367, 'Yogourt', 'Lala frutos rojos', 27, 22),
(567, 'Mantequilla', 'Primavera Chantilly', 39, 30),
(590, 'Agua', 'Gerber', 32, 67),
(789, 'Cereal', 'Crusly Nescle', 48, 48);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`clave`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`numpedido`),
  ADD KEY `Clavecliente` (`Clavecliente`),
  ADD KEY `Idproducto` (`Idproducto`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idprod`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`Clavecliente`) REFERENCES `cliente` (`clave`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`Idproducto`) REFERENCES `producto` (`idprod`);
--
-- Base de datos: `empresa`
--
CREATE DATABASE IF NOT EXISTS `empresa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `empresa`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `puesto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `puesto`) VALUES
(3, 'Laura Torres', 'Contadora'),
(4, 'Mario Ruiz', 'Desarrollador'),
(5, 'Lucía Fernández', 'Tester'),
(6, 'Jorge Herrera', 'Soporte'),
(7, 'Valeria Méndez', 'Administradora'),
(8, 'Pedro Sánchez', 'Gerente'),
(9, 'Sandra Gutiérrez', 'Asistente'),
(10, 'Hugo Martínez', 'Técnico'),
(11, 'Rosa Díaz', 'Secretaria'),
(12, 'Pablo Navas', 'Programador'),
(13, 'Nina Moreno', 'Diseñadora'),
(14, 'Samuel Jiménez', 'Analista'),
(15, 'Eva Castro', 'Contadora'),
(16, 'Tomás Ortega', 'Tester'),
(17, 'Adriana Salas', 'Asistente'),
(18, 'Miguel Ángel', 'Gerente'),
(19, 'Isabel Soto', 'Soporte'),
(20, 'Raúl Pérez', 'Técnico'),
(21, 'Natalia Ríos', 'Contadora'),
(22, 'Sergio León', 'Desarrollador'),
(23, 'Camila Aguilar', 'Soporte'),
(24, 'Emilia Garza', 'Asistente'),
(25, 'Andrés Romero', 'Programador');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- Base de datos: `equipo2_gael`
--
CREATE DATABASE IF NOT EXISTS `equipo2_gael` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `equipo2_gael`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `puesto` varchar(100) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `puesto`, `salario`) VALUES
(1, 'Juan', 'Asistente', 7000.00),
(2, 'Ana', 'Contadora', 9000.00),
(3, 'Luis', 'Vendedor', 8000.00),
(4, 'Sofía', 'Diseñadora', 8500.00),
(5, 'Pedro', 'Ingeniero', 9500.00),
(6, 'Carla', 'Técnica', 8800.00),
(7, 'Jorge', 'Supervisor', 10000.00),
(8, 'Diana', 'Auxiliar', 7300.00),
(9, 'Mario', 'Almacén', 7600.00),
(10, 'Rosa', 'RH', 8900.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros_ayuda`
--

CREATE TABLE `registros_ayuda` (
  `id` int(11) NOT NULL,
  `nombre_archivo` varchar(255) DEFAULT NULL,
  `tamano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registros_ayuda`
--

INSERT INTO `registros_ayuda` (`id`, `nombre_archivo`, `tamano`) VALUES
(1, 'archivo1.txt', 100),
(2, 'archivo2.txt', 150),
(3, 'archivo3.txt', 200),
(4, 'archivo4.txt', 250),
(5, 'archivo5.txt', 300),
(6, 'archivo6.txt', 350),
(7, 'archivo7.txt', 400),
(8, 'archivo8.txt', 450),
(9, 'archivo9.txt', 500),
(10, 'archivo10.txt', 550),
(11, 'archivo11.txt', 600),
(12, 'archivo12.txt', 650),
(13, 'archivo13.txt', 700),
(14, 'archivo14.txt', 750),
(15, 'archivo15.txt', 800);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registros_ayuda`
--
ALTER TABLE `registros_ayuda`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `registros_ayuda`
--
ALTER TABLE `registros_ayuda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"restaurante\",\"table\":\"tbl_usuarios\"},{\"db\":\"restaurante\",\"table\":\"tbl_comentarios\"},{\"db\":\"restaurante\",\"table\":\"tbl_colaboradores\"},{\"db\":\"restaurante\",\"table\":\"tbl_menu\"},{\"db\":\"restaurante\",\"table\":\"tbl_testimonios\"},{\"db\":\"restaurante\",\"table\":\"tbl_banners\"},{\"db\":\"bdbiblioteca\",\"table\":\"libros\"},{\"db\":\"bdbiblioteca\",\"table\":\"bitlibros\"},{\"db\":\"db_web\",\"table\":\"puestos\"},{\"db\":\"db_web\",\"table\":\"departamentos\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-10-08 21:48:56', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\",\"ThemeDefault\":\"original\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `replica`
--
CREATE DATABASE IF NOT EXISTS `replica` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `replica`;
--
-- Base de datos: `restaurante`
--
CREATE DATABASE IF NOT EXISTS `restaurante` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `restaurante`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_banners`
--

CREATE TABLE `tbl_banners` (
  `ID` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_colaboradores`
--

CREATE TABLE `tbl_colaboradores` (
  `ID` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `linkfacebook` varchar(255) NOT NULL,
  `linkinstagram` varchar(255) NOT NULL,
  `linklinkedin` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_comentarios`
--

CREATE TABLE `tbl_comentarios` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `mensaje` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `ingredientes` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `precio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_testimonios`
--

CREATE TABLE `tbl_testimonios` (
  `ID` int(11) NOT NULL,
  `opinion` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE `tbl_usuarios` (
  `ID` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_banners`
--
ALTER TABLE `tbl_banners`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tbl_colaboradores`
--
ALTER TABLE `tbl_colaboradores`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tbl_comentarios`
--
ALTER TABLE `tbl_comentarios`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tbl_testimonios`
--
ALTER TABLE `tbl_testimonios`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_banners`
--
ALTER TABLE `tbl_banners`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_colaboradores`
--
ALTER TABLE `tbl_colaboradores`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_comentarios`
--
ALTER TABLE `tbl_comentarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_testimonios`
--
ALTER TABLE `tbl_testimonios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
