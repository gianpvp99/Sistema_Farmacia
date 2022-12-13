-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-12-2022 a las 09:08:05
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `descripcion`, `fecha`) VALUES
(7, 'Pastillas', '', '2022-12-06 04:55:06'),
(8, 'Cremas', '', '2022-12-06 16:34:43'),
(9, 'Jeringas', '', '2022-12-06 16:34:47'),
(10, 'Jarabes', '', '2022-12-06 16:34:50'),
(11, 'Mascarillas', '', '2022-12-06 16:34:54'),
(12, 'Gotas', '', '2022-12-06 16:34:57'),
(13, 'Inhaladores', '', '2022-12-06 16:35:03'),
(14, 'Alcoholes', '', '2022-12-06 16:35:09'),
(15, 'Vendas', '', '2022-12-06 16:35:12'),
(19, 'Pildoras', '', '2022-12-07 00:46:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text NOT NULL,
  `telefono` text NOT NULL,
  `direccion` text NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(18, 'Pablo Ramirez', 73023784, 'pablo@gmail.com', '(51) 987-123-872', 'av. las lomas 389', '1999-03-23', 3, '2022-12-06 16:14:03', '2022-12-06 21:14:03'),
(19, 'Eliza Gutierrez', 78457623, 'eliza3223@gmail.com', '(51) 987-236-348', 'av. ricardo palma 101', '1978-09-23', 3, '2022-12-06 16:28:10', '2022-12-06 21:28:10'),
(20, 'Enrique Suarez', 76982378, 'enrique938@gmail.com', '(51) 927-327-499', 'av. bonaparte 309', '2004-03-19', 8, '2022-12-06 16:28:46', '2022-12-06 21:28:46'),
(21, 'Fiorella Paredes', 87237834, 'fiorellaav_199@gmail.com', '(51) 923-200-999', 'av. campo de marte 093', '1984-03-12', 4, '2022-12-06 16:30:12', '2022-12-06 21:30:12'),
(22, 'Gloria Aquilino', 98238723, 'gloria_a@gmail.com', '(51) 983-232-131', 'av. 21 de diciembre', '2003-03-21', 6, '2022-12-06 16:30:49', '2022-12-06 21:30:49'),
(23, 'Joan Suansez', 23982398, 'joans@gmail.com', '(51) 923-823-823', 'av. 23 de diciembre 023', '1993-12-23', 0, '0000-00-00 00:00:00', '2022-12-06 18:17:29'),
(24, 'Manual Alloso', 98238923, 'manu_col_2@gmail.com', '(51) 982-382-389', 'av. bonaparte 111', '1999-01-01', 0, '0000-00-00 00:00:00', '2022-12-06 18:18:10'),
(25, 'Monica Sanchez', 89002383, 'monsa@gmail.com', '(51) 982-323-888', 'av. loarte 033', '2001-05-05', 2, '2022-12-06 19:04:03', '2022-12-07 00:04:03'),
(26, 'Pedro Bruna', 78230934, 'pe.brun@gmail.com', '(51) 900-123-992', 'av. 03 octuber tbld ', '1992-05-30', 0, '0000-00-00 00:00:00', '2022-12-06 18:20:00'),
(27, 'Gabriel Frey', 22892378, 'gafrey009@hotmail.com', '(51) 902-302-348', 'av. 02 de octubre 003', '1988-03-01', 3, '2022-12-06 19:05:44', '2022-12-07 00:05:44'),
(28, 'Fatima Hugarte', 89238745, 'fatima@gmail.com', '(51) 982-382-832', 'av. tablada 003', '1999-03-23', 4, '2022-12-06 19:03:33', '2022-12-07 00:03:33'),
(29, 'Oscar Ibrahamovic', 87236745, 'oscar10001@gmail.com', '(51) 981-238-183', 'av. raymondi 003', '1993-07-07', 0, '0000-00-00 00:00:00', '2022-12-06 18:24:10'),
(30, 'Pedro Bonacci', 78230934, 'pedro2323@gmail.com', '(51) 932-323-003', 'av. necochea 300', '1993-03-23', 0, '0000-00-00 00:00:00', '2022-12-06 18:26:17'),
(31, 'Ana Paula', 89238723, 'anapau0309@gmail.com', '(51) 938-823-823', 'av. prima lote 30 mz 03', '1995-01-30', 0, '0000-00-00 00:00:00', '2022-12-06 18:28:26'),
(32, 'Daniela Amara', 89238723, 'daniela003@gmail.com', '(51) 923-828-329', 'av. 29 de diciembre mz 3 lote 03', '1993-03-23', 0, '0000-00-00 00:00:00', '2022-12-06 18:30:37'),
(33, 'Manuela Alzega', 78092398, 'manuelaalz@gmail.com', '(51) 923-232-399', 'av. jose olaya 339', '1993-05-01', 0, '0000-00-00 00:00:00', '2022-12-06 18:33:30'),
(34, 'Linda Belinda', 89239823, 'lindabe003@hotmail.com', '(51) 992-330-090', 'av. ray 03 mz 03 lote 03', '1993-03-23', 0, '0000-00-00 00:00:00', '2022-12-06 18:34:17'),
(35, 'Jesus Vasquez', 78239843, 'jesus003@hotmail.com', '(51) 923-039-909', 'av. manco capac 003', '1993-03-23', 4, '2022-12-06 19:04:45', '2022-12-07 00:04:45'),
(36, 'David Lazarte', 78239034, 'david993@hotmail.com', '(51) 982-323-888', 'av. 23 de diciembre mz 03 lote 01', '1999-03-23', 0, '0000-00-00 00:00:00', '2022-12-06 18:36:27'),
(37, 'Rafael Defrias', 10982378, 'rafafa003@hotmail.com', '(51) 923-992-300', 'av. pogreso mz 01 lote 10', '1969-03-23', 0, '0000-00-00 00:00:00', '2022-12-06 18:37:38'),
(38, 'Piero Gutierrez', 70193289, 'pier1999@gmail.com', '(51) 900-293-993', 'av. crustacio mz 03 lote 15', '1993-03-22', 0, '0000-00-00 00:00:00', '2022-12-06 18:38:32'),
(39, 'Juancito', 78238746, 'juanico123@hotmail.com', '(51) 923-930-000', 'av. velasco 001', '1999-09-01', 0, '0000-00-00 00:00:00', '2022-12-06 23:55:54'),
(40, 'Juan', 78238723, 'juan123@gmail.com', '(51) 923-823-823', 'av. manco capac 3', '1999-09-25', 11, '2022-12-06 19:52:23', '2022-12-07 00:52:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` text NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(1, 7, '9000001', 'Amoxicilina 300 mg', 'vistas/img/productos/12313/671.jpg', 45, 15.5, 23.25, 0, '2022-12-06 19:41:29'),
(2, 7, '9000002', 'Amiptritilina 25 mg', 'vistas/img/productos/9000002/745.jpg', 70, 7.5, 10.5, 0, '2022-12-06 19:41:35'),
(3, 7, '9000004', 'Amlodipine 5 mg', 'vistas/img/productos/90003/311.jpg', 34, 8.5, 11.9, 1, '2022-12-07 00:04:44'),
(4, 8, '9000003', 'Bephantol', 'vistas/img/productos/9000003/832.jpg', 8, 25, 35, 0, '2022-12-06 19:42:42'),
(65, 8, '9000005', 'Nivea Creme', 'vistas/img/productos/9000005/100.jpg', 13, 35, 49, 2, '2022-12-07 00:04:44'),
(66, 7, '9000006', 'Captopril 50 mg', 'vistas/img/productos/9000006/787.jpg', 7, 7.5, 10.5, 1, '2022-12-07 00:04:45'),
(67, 7, '9000007', 'Carbamazepina 200 mg', 'vistas/img/productos/9000007/654.jpg', 39, 10.5, 14.7, 0, '2022-12-07 06:20:55'),
(68, 7, '9000008', 'Cafalexina', 'vistas/img/productos/9000008/969.jpg', 35, 8.8, 12.32, 0, '2022-12-06 19:49:59'),
(69, 9, '9000010', 'Insulina 6 mm', 'vistas/img/productos/9000010/593.jpg', 75, 16.7, 23.38, 0, '2022-12-06 19:54:50'),
(70, 9, '9000011', 'Jeringa estéril 30 g', 'vistas/img/productos/9000011/887.png', 15, 18.5, 25.9, 0, '2022-12-06 19:57:34'),
(71, 9, '9000012', 'Ascmedic 3 ml', 'vistas/img/productos/9000012/557.jpg', 19, 16.5, 23.1, 0, '2022-12-06 19:58:50'),
(72, 11, '9000013', 'Kn 95', 'vistas/img/productos/9000013/865.jpg', 112, 10.5, 14.7, 8, '2022-12-07 00:05:44'),
(73, 11, '9000014', 'Ff p2', 'vistas/img/productos/9000014/225.jpg', 58, 9, 12.6, 0, '2022-12-06 20:01:57'),
(74, 12, '9000015', 'Evacuol 7 mg', 'vistas/img/productos/9000015/485.jpg', 13, 15, 21, 0, '2022-12-06 20:08:44'),
(75, 12, '9000016', 'Correctol 01 mg', 'vistas/img/productos/9000016/832.png', 7, 11.3, 15.82, 0, '2022-12-06 20:10:36'),
(76, 10, '9000017', 'Celedexa 25 g', 'vistas/img/productos/9000017/127.jpg', 16, 23, 32.2, 0, '2022-12-06 20:12:30'),
(77, 13, '9000018', 'Salbutamol EFG', 'vistas/img/productos/9000018/332.jpg', 19, 18.3, 25.62, 0, '2022-12-06 20:13:55'),
(78, 13, '9000019', 'Ventolin 100 mc', 'vistas/img/productos/9000019/868.jpg', 5, 26.3, 36.82, 0, '2022-12-06 20:15:24'),
(79, 14, '9000020', 'Linus 1000 cm', 'vistas/img/productos/9000020/442.jpg', 33, 18.5, 25.9, 2, '2022-12-06 21:30:49'),
(80, 14, '9000021', 'Farmacohol 500 ml', 'vistas/img/productos/9000021/219.jpg', 31, 18.4, 25.76, 1, '2022-12-06 21:15:56'),
(81, 14, '9000022', 'Medicinal 500 ml', 'vistas/img/productos/9000022/491.jpg', 3, 23, 32.2, 0, '2022-12-06 20:21:02'),
(82, 15, '9000023', 'Tensoplast 7 x 2 cm', 'vistas/img/productos/9000023/145.jpg', 21, 10.3, 14.42, 4, '2022-12-06 21:30:49'),
(83, 15, '9000024', 'Rebster 90 x 90 x 130 cm', 'vistas/img/productos/9000024/250.jpg', 26, 13.2, 18.48, 4, '2022-12-07 00:04:03'),
(84, 7, '9000025', 'Fluconazol 150 mg', 'vistas/img/productos/9000025/515.jpg', 30, 8.5, 11.9, 9, '2022-12-07 00:05:43'),
(85, 7, '9000026', 'Fluxetina 20 mg', 'vistas/img/productos/9000026/427.jpg', 13, 13.5, 18.9, 2, '2022-12-06 21:28:09'),
(86, 7, '9000027', 'Naproxeno 250 mg', 'vistas/img/productos/9000027/925.png', 0, 12.3, 17.22, 3, '2022-12-07 00:52:23'),
(87, 8, '9000028', 'Weleda 75 ml', 'vistas/img/productos/9000028/739.jpg', 0, 25.5, 35.7, 11, '2022-12-07 00:52:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `usuario` text NOT NULL,
  `password` text NOT NULL,
  `perfil` text NOT NULL,
  `foto` text NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Gian Piero', 'gianpiervp', '$2a$07$asxx54ahjppf45sd87a5auKywDV.sNpDjvCA8EohzQfcd19xOnSJ.', 'Administrador', 'vistas/img/usuarios/gianpiervp/378.png', 1, '2022-12-07 01:10:16', '2022-12-07 06:10:16'),
(61, 'Ricardo Cardenas', 'ricardovp', '$2a$07$asxx54ahjppf45sd87a5aund8wtmzzhx23CffmZM8RtTJiNQJswCS', 'Vendedor', 'vistas/img/usuarios/ricardovp/660.jpg', 1, '2022-12-07 00:45:56', '2022-12-07 05:45:56'),
(62, 'Anthonella Puente', 'anthonellavp', '$2a$07$asxx54ahjppf45sd87a5auWrFvBnETZRVCekC.w22CqfI8ulqW0Im', 'Vendedor', 'vistas/img/usuarios/anthonellavp/157.jpg', 1, '2022-12-06 19:05:03', '2022-12-07 00:05:03'),
(63, 'Jean Pierre Bustamante', 'jeanpierrevp', '$2a$07$asxx54ahjppf45sd87a5auYVAWKKKSWLedkM5/4v8G0tZNBskMH7O', 'Especial', 'vistas/img/usuarios/jeanpierrevp/294.jpg', 1, '2022-12-07 00:40:59', '2022-12-07 05:40:59'),
(64, 'Juan Belarte', 'juanvp', '$2a$07$asxx54ahjppf45sd87a5au5yyIgL3i1Lesj/7LozuDTVG5MBO5mPS', 'Especial', 'vistas/img/usuarios/juanvp/762.jpg', 1, '2022-12-06 12:49:23', '2022-12-07 00:29:33'),
(73, 'Pedro', 'pedro', '$2a$07$asxx54ahjppf45sd87a5austaEoHG6c2Nsqiq7.UaM8US5nKVJ/IC', 'Administrador', 'vistas/img/usuarios/pedro/888.png', 1, '2022-12-06 19:46:23', '2022-12-07 00:46:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(46, 10002, 18, 61, '[{\"id\":\"87\",\"descripcion\":\"Weleda 75 ml\",\"cantidad\":\"2\",\"stock\":\"9\",\"precio\":\"35.7\",\"total\":\"71.4\"},{\"id\":\"85\",\"descripcion\":\"Fluxetina 20 mg\",\"cantidad\":\"1\",\"stock\":\"14\",\"precio\":\"18.9\",\"total\":\"18.9\"}]', 16.254, 90.3, 106.554, 'Efectivo', '2022-12-05 21:14:03'),
(47, 10003, 20, 61, '[{\"id\":\"80\",\"descripcion\":\"Farmacohol 500 ml\",\"cantidad\":\"1\",\"stock\":\"31\",\"precio\":\"25.76\",\"total\":\"25.76\"},{\"id\":\"82\",\"descripcion\":\"Tensoplast 7 x 2 cm\",\"cantidad\":\"1\",\"stock\":\"24\",\"precio\":\"14.42\",\"total\":\"14.42\"}]', 7.2324, 40.18, 47.4124, 'Efectivo', '2022-12-04 21:15:56'),
(48, 10004, 19, 61, '[{\"id\":\"85\",\"descripcion\":\"Fluxetina 20 mg\",\"cantidad\":\"1\",\"stock\":\"13\",\"precio\":\"18.9\",\"total\":\"18.9\"},{\"id\":\"83\",\"descripcion\":\"Rebster 90 x 90 x 130 cm\",\"cantidad\":\"1\",\"stock\":\"29\",\"precio\":\"18.48\",\"total\":\"18.48\"},{\"id\":\"82\",\"descripcion\":\"Tensoplast 7 x 2 cm\",\"cantidad\":\"1\",\"stock\":\"23\",\"precio\":\"14.42\",\"total\":\"14.42\"}]', 9.324, 51.8, 61.124, 'Efectivo', '2022-11-06 21:28:10'),
(49, 10005, 20, 61, '[{\"id\":\"72\",\"descripcion\":\"Kn 95\",\"cantidad\":\"6\",\"stock\":\"114\",\"precio\":\"14.7\",\"total\":\"88.2\"}]', 15.876, 88.2, 104.076, 'Efectivo', '2022-12-04 21:28:46'),
(50, 10006, 21, 62, '[{\"id\":\"87\",\"descripcion\":\"Weleda 75 ml\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"35.7\",\"total\":\"35.7\"},{\"id\":\"84\",\"descripcion\":\"Fluconazol 150 mg\",\"cantidad\":\"3\",\"stock\":\"36\",\"precio\":\"11.9\",\"total\":\"35.7\"}]', 12.852, 71.4, 84.252, 'Efectivo', '2022-10-03 21:30:12'),
(51, 10007, 22, 62, '[{\"id\":\"84\",\"descripcion\":\"Fluconazol 150 mg\",\"cantidad\":\"2\",\"stock\":\"34\",\"precio\":\"11.9\",\"total\":\"23.8\"},{\"id\":\"82\",\"descripcion\":\"Tensoplast 7 x 2 cm\",\"cantidad\":\"2\",\"stock\":\"21\",\"precio\":\"14.42\",\"total\":\"28.84\"},{\"id\":\"79\",\"descripcion\":\"Linus 1000 cm\",\"cantidad\":\"2\",\"stock\":\"33\",\"precio\":\"25.9\",\"total\":\"51.8\"}]', 18.7992, 104.44, 123.239, 'Efectivo', '2022-09-01 21:30:49'),
(53, 10008, 28, 61, '[{\"id\":\"84\",\"descripcion\":\"Fluconazol 150 mg\",\"cantidad\":\"2\",\"stock\":\"32\",\"precio\":\"11.9\",\"total\":\"23.8\"},{\"id\":\"83\",\"descripcion\":\"Rebster 90 x 90 x 130 cm\",\"cantidad\":\"2\",\"stock\":\"27\",\"precio\":\"18.48\",\"total\":\"36.96\"}]', 10.9368, 60.76, 71.6968, 'TC-9874438723768943', '2022-12-07 00:03:33'),
(54, 10009, 25, 61, '[{\"id\":\"84\",\"descripcion\":\"Fluconazol 150 mg\",\"cantidad\":\"1\",\"stock\":\"31\",\"precio\":\"11.9\",\"total\":\"11.9\"},{\"id\":\"83\",\"descripcion\":\"Rebster 90 x 90 x 130 cm\",\"cantidad\":\"1\",\"stock\":\"26\",\"precio\":\"18.48\",\"total\":\"18.48\"}]', 5.4684, 30.38, 35.8484, 'TD-8932874367349823', '2022-10-07 00:04:03'),
(55, 10010, 35, 61, '[{\"id\":\"3\",\"descripcion\":\"Amlodipine 5 mg\",\"cantidad\":\"1\",\"stock\":\"34\",\"precio\":\"11.9\",\"total\":\"11.9\"},{\"id\":\"65\",\"descripcion\":\"Nivea Creme\",\"cantidad\":\"2\",\"stock\":\"13\",\"precio\":\"49\",\"total\":\"98\"},{\"id\":\"66\",\"descripcion\":\"Captopril 50 mg\",\"cantidad\":\"1\",\"stock\":\"7\",\"precio\":\"10.5\",\"total\":\"10.5\"}]', 21.672, 120.4, 142.072, 'TC-9823783289348732', '2022-11-07 00:04:45'),
(56, 10011, 27, 62, '[{\"id\":\"84\",\"descripcion\":\"Fluconazol 150 mg\",\"cantidad\":\"1\",\"stock\":\"30\",\"precio\":\"11.9\",\"total\":\"11.9\"},{\"id\":\"72\",\"descripcion\":\"Kn 95\",\"cantidad\":\"2\",\"stock\":\"112\",\"precio\":\"14.7\",\"total\":\"29.4\"}]', 7.434, 41.3, 48.734, 'TC-9823982387349823', '2022-11-07 00:05:44'),
(57, 10012, 40, 73, '[{\"id\":\"86\",\"descripcion\":\"Naproxeno 250 mg\",\"cantidad\":\"3\",\"stock\":\"0\",\"precio\":\"17.22\",\"total\":\"51.66\"},{\"id\":\"87\",\"descripcion\":\"Weleda 75 ml\",\"cantidad\":\"8\",\"stock\":\"0\",\"precio\":\"35.7\",\"total\":\"285.6\"}]', 60.7068, 337.26, 397.967, 'Efectivo', '2022-12-07 00:52:23');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
