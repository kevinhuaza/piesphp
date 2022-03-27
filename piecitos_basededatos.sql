-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2021 at 02:13 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `piecitos`
--

-- --------------------------------------------------------

--
-- Table structure for table `carrito`
--

CREATE TABLE `carrito` (
  `Car_Id` int(11) NOT NULL,
  `Car_Total` int(11) DEFAULT NULL,
  `Usu_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carrito`
--

INSERT INTO `carrito` (`Car_Id`, `Car_Total`, `Usu_Id`) VALUES
(1, 4099000, 26),
(2, 44000, 25),
(3, 2749000, 10),
(4, 12297000, 2004);

-- --------------------------------------------------------

--
-- Table structure for table `carrito_detalle`
--

CREATE TABLE `carrito_detalle` (
  `Car_Det_Id` int(11) NOT NULL,
  `Car_Det_Cantidad` int(11) DEFAULT NULL,
  `Car_Det_Total` int(11) DEFAULT NULL,
  `Pro_Id` int(11) DEFAULT NULL,
  `Car_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carrito_detalle`
--

INSERT INTO `carrito_detalle` (`Car_Det_Id`, `Car_Det_Cantidad`, `Car_Det_Total`, `Pro_Id`, `Car_Id`) VALUES
(1, 1, 4099000, 16, 1),
(2, 2, 44000, 11, 2),
(3, 1, 2749000, 22, 3),
(4, 3, 12297000, 16, 4);

-- --------------------------------------------------------

--
-- Table structure for table `categoria_pro`
--

CREATE TABLE `categoria_pro` (
  `Cat_Id` int(11) NOT NULL,
  `Cat_Nombre` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categoria_pro`
--

INSERT INTO `categoria_pro` (`Cat_Id`, `Cat_Nombre`) VALUES
(1, 'Alfombra'),
(2, 'Tapete'),
(3, 'Cojín'),
(4, 'Mantenimiento');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `Col_Id` int(11) NOT NULL,
  `Col_Nombre` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`Col_Id`, `Col_Nombre`) VALUES
(1, 'Rojo'),
(2, 'Amarillo'),
(3, 'Azul'),
(4, 'Verde'),
(5, 'Naranja'),
(6, 'Violeta'),
(7, 'Cafe'),
(8, 'Blanco'),
(9, 'Negro'),
(10, 'Gris'),
(11, 'Sin color'),
(12, 'Multicolor'),
(13, 'Biege'),
(14, 'Morado'),
(15, 'Verde aguamarina Claro');

-- --------------------------------------------------------

--
-- Table structure for table `correo`
--

CREATE TABLE `correo` (
  `Cor_Id` int(11) NOT NULL,
  `Cor_Direccion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `correo`
--

INSERT INTO `correo` (`Cor_Id`, `Cor_Direccion`) VALUES
(1, 'shadowdvp@gmail.com'),
(2, 'celis@misena.edu.co'),
(3, 'shadowdvp@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `factura`
--

CREATE TABLE `factura` (
  `Fac_Id` int(11) NOT NULL,
  `Fac_Fecha` datetime DEFAULT NULL,
  `Fac_Total` int(11) DEFAULT NULL,
  `Usu_Id` int(11) DEFAULT NULL,
  `Met_Pag_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `factura`
--

INSERT INTO `factura` (`Fac_Id`, `Fac_Fecha`, `Fac_Total`, `Usu_Id`, `Met_Pag_Id`) VALUES
(1, '0000-00-00 00:00:00', 2000, 1, 2),
(2, '2021-10-25 09:22:04', 2000, 1, 2),
(3, '2021-12-09 22:07:35', 17346000, 1, 3),
(4, '2021-12-09 22:30:09', 17346000, 1, 1),
(5, '2021-12-09 23:27:18', 17346000, 1, 1),
(6, '2021-12-09 23:30:01', 17346000, 1, 1),
(7, '2021-12-09 23:31:03', 17346000, 1, 1),
(8, '2021-12-09 23:33:51', 27392000, 1, 3),
(9, '2021-12-11 07:41:50', 3400000, 1, 1),
(10, '2021-12-12 19:40:15', 14295000, 2005, 2),
(11, '2021-12-12 20:21:38', 17300000, 2006, 1),
(12, '2021-12-12 20:27:12', 5498000, 2006, 1),
(13, '2021-12-12 20:50:56', 10996000, 2006, 2),
(14, '2021-12-12 20:53:58', 10996000, 2006, 2),
(15, '2021-12-12 20:58:00', 10996000, 2006, 1),
(16, '2021-12-13 20:23:29', 180000, 2007, 1);

-- --------------------------------------------------------

--
-- Table structure for table `factura_detalle`
--

CREATE TABLE `factura_detalle` (
  `Fac_Det_Id` int(11) NOT NULL,
  `Fac_Cantidad` int(11) DEFAULT NULL,
  `Fac_Total` int(11) DEFAULT NULL,
  `Pro_Id` int(11) DEFAULT NULL,
  `Fac_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `factura_detalle`
--

INSERT INTO `factura_detalle` (`Fac_Det_Id`, `Fac_Cantidad`, `Fac_Total`, `Pro_Id`, `Fac_Id`) VALUES
(1, 4, 17196000, 17, 4),
(2, 3, 150000, 5, 4),
(3, 4, 17196000, 17, 5),
(4, 3, 150000, 5, 5),
(5, 4, 17196000, 17, 6),
(6, 3, 150000, 5, 6),
(7, 4, 17196000, 17, 7),
(8, 3, 150000, 5, 7),
(9, 4, 16396000, 16, 8),
(10, 4, 10996000, 22, 8),
(11, 5, 3400000, 21, 9),
(12, 4, 9996000, 15, 10),
(13, 1, 4299000, 17, 10),
(14, 4, 104000, 10, 11),
(15, 4, 17196000, 17, 11),
(16, 2, 5498000, 22, 12),
(17, 4, 10996000, 22, 13),
(18, 4, 10996000, 22, 14),
(19, 4, 10996000, 22, 15),
(20, 1, 180000, 29, 16);

-- --------------------------------------------------------

--
-- Table structure for table `metodo_pago`
--

CREATE TABLE `metodo_pago` (
  `Met_Pag_Id` int(11) NOT NULL,
  `Met_Pag_Nombre` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `metodo_pago`
--

INSERT INTO `metodo_pago` (`Met_Pag_Id`, `Met_Pag_Nombre`) VALUES
(1, 'Efectivo'),
(2, 'Débito'),
(3, 'Crédito');

-- --------------------------------------------------------

--
-- Table structure for table `notificacion`
--

CREATE TABLE `notificacion` (
  `Not_Id` int(11) NOT NULL,
  `Usu_Id` int(11) DEFAULT NULL,
  `Not_Titulo` varchar(30) DEFAULT NULL,
  `Not_Descripcion` varchar(150) DEFAULT NULL,
  `Not_Estado` char(0) DEFAULT NULL,
  `Not_Color` varchar(10) DEFAULT NULL,
  `Not_Icono` varchar(50) DEFAULT NULL,
  `Not_Fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notificacion`
--

INSERT INTO `notificacion` (`Not_Id`, `Usu_Id`, `Not_Titulo`, `Not_Descripcion`, `Not_Estado`, `Not_Color`, `Not_Icono`, `Not_Fecha`) VALUES
(14, 1, 'PRODUCTOS', 'Se ha actualizado el producto (Prueba 1563) satisfactoriamente.', NULL, 'info', 'fas fa-cubes', '2021-09-25 03:10:22'),
(15, 1, 'USUARIOS', 'Se ha actualizado el usuario (Kevin Esteban) satisfactoriamente.', NULL, 'info', 'fas fa-users', '2021-09-25 04:06:21'),
(16, 1, 'USUARIOS', 'Se ha actualizado el usuario (Kevin Esteban) satisfactoriamente.', NULL, 'info', 'fas fa-users', '2021-09-25 04:21:09'),
(17, 1, 'USUARIOS', 'Se ha actualizado el usuario (Kevin Esteban) satisfactoriamente.', NULL, 'info', 'fas fa-users', '2021-09-25 04:24:13'),
(19, 5, 'PROVEEDORES', 'Se ha actualizado el proveedor (Anacondas XP) satisfactoriamente.', NULL, 'info', 'fas fa-user-tie', '2021-09-25 05:07:49'),
(20, 5, 'PROVEEDORES', 'Se ha actualizado el proveedor (Anacondas XP) satisfactoriamente.', NULL, 'info', 'fas fa-user-tie', '2021-09-25 05:07:45'),
(21, 1, 'PROVEEDORES', 'Se ha actualizado el proveedor (Anacondas XP) satisfactoriamente.', NULL, 'info', 'fas fa-user-tie', '2021-09-26 02:32:04'),
(22, 1, 'PRODUCTOS', 'Se ha eliminado el producto (Alfombra Tondo) satisfactoriamente', '', 'danger', 'fas fa-cubes', '2021-09-26 23:05:58'),
(23, 1, 'PRODUCTOS', 'Se ha actualizado el producto (Alfombra Tondo) satisfactoriamente.', '', 'info', 'fas fa-cubes', '2021-09-26 23:08:32'),
(24, 1, 'PRODUCTOS', 'Se ha actualizado el producto (Alfombra Grano) satisfactoriamente.', '', 'info', 'fas fa-cubes', '2021-09-26 23:08:54'),
(25, 1, 'PRODUCTOS', 'Se ha actualizado el producto (Alfombra Cosy G...) satisfactoriamente.', NULL, 'info', 'fas fa-cubes', '2021-10-03 16:08:36'),
(26, 1, 'PRODUCTOS', 'Se ha actualizado el producto (Alfombra Kelim ...) satisfactoriamente.', '', 'info', 'fas fa-cubes', '2021-09-26 23:09:40'),
(27, 1, 'PRODUCTOS', 'Se ha actualizado el producto (Alfombra Abstra...) satisfactoriamente.', '', 'info', 'fas fa-cubes', '2021-09-26 23:10:00'),
(28, 1, 'PRODUCTOS', 'Se ha actualizado el producto (Alfombra Venus) satisfactoriamente.', '', 'info', 'fas fa-cubes', '2021-09-26 23:11:18'),
(29, 1, 'PRODUCTOS', 'Se ha actualizado el producto (Alfombra Ginnis) satisfactoriamente.', '', 'info', 'fas fa-cubes', '2021-09-26 23:11:54'),
(30, 1, 'PRODUCTOS', 'Se ha actualizado el producto (Alfombra Ginnis) satisfactoriamente.', '', 'info', 'fas fa-cubes', '2021-09-26 23:12:14'),
(31, 1, 'PRODUCTOS', 'Se ha actualizado el producto (Alfombra Meray) satisfactoriamente.', '', 'info', 'fas fa-cubes', '2021-09-26 23:17:29'),
(32, 1, 'PRODUCTOS', 'Se ha actualizado el producto (Alfombra Circle) satisfactoriamente.', '', 'info', 'fas fa-cubes', '2021-09-26 23:17:58'),
(33, 1, 'PRODUCTOS', 'Se ha actualizado el producto (Alfombra Primo ...) satisfactoriamente.', '', 'info', 'fas fa-cubes', '2021-09-26 23:18:30'),
(39, 26, 'PRODUCTOS', 'Se ha eliminado el producto (Prueba 1563) satisfactoriamente', '', 'danger', 'fas fa-cubes', '2021-09-27 14:09:03'),
(40, 26, 'PRODUCTOS', 'Se ha eliminado el producto (Alfombra Mastic...) satisfactoriamente', '', 'danger', 'fas fa-cubes', '2021-09-27 14:10:04'),
(41, 1, 'CARRITO', 'El usuario Myra  Stolly Kasprak ha añadido el producto Alfombra Circle a su carrito.', NULL, 'purple', 'fas fa-shopping-cart', '2021-09-27 14:45:20'),
(42, 4, 'CARRITO', 'El usuario Myra  Stolly Kasprak ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-09-27 14:42:31'),
(43, 5, 'CARRITO', 'El usuario Myra  Stolly Kasprak ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-09-27 14:42:31'),
(44, 6, 'CARRITO', 'El usuario Myra  Stolly Kasprak ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-09-27 14:42:31'),
(45, 7, 'CARRITO', 'El usuario Myra  Stolly Kasprak ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-09-27 14:42:31'),
(46, 8, 'CARRITO', 'El usuario Myra  Stolly Kasprak ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-09-27 14:42:31'),
(47, 9, 'CARRITO', 'El usuario Myra  Stolly Kasprak ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-09-27 14:42:31'),
(48, 26, 'CARRITO', 'El usuario Myra  Stolly Kasprak ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-09-27 14:42:31'),
(49, 1, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Alfombra Abstract a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-09-27 14:49:57'),
(50, 4, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Alfombra Abstract a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-09-27 14:49:57'),
(51, 5, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Alfombra Abstract a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-09-27 14:49:57'),
(52, 6, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Alfombra Abstract a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-09-27 14:49:57'),
(53, 7, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Alfombra Abstract a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-09-27 14:49:57'),
(54, 8, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Alfombra Abstract a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-09-27 14:49:57'),
(55, 9, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Alfombra Abstract a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-09-27 14:49:57'),
(56, 26, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Alfombra Abstract a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-09-27 14:49:57'),
(57, 1, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-09-27 16:16:29'),
(58, 4, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-09-27 16:16:29'),
(59, 5, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-09-27 16:16:29'),
(60, 6, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-09-27 16:16:29'),
(61, 7, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-09-27 16:16:29'),
(62, 8, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-09-27 16:16:29'),
(63, 9, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-09-27 16:16:29'),
(64, 26, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-09-27 16:16:29'),
(65, 1, 'PRODUCTOS', 'Se ha añadido el producto (Cojin Decorativ...) satisfactoriamente.', '', 'success', 'fas fa-cubes', '2021-10-03 17:36:53'),
(66, 1, 'PRODUCTOS', 'Se ha añadido el producto (Cojin Decorativ...) satisfactoriamente.', '', 'success', 'fas fa-cubes', '2021-10-03 17:38:06'),
(67, 1, 'PRODUCTOS', 'Se ha añadido el producto (Cojin Decorativ...) satisfactoriamente.', '', 'success', 'fas fa-cubes', '2021-10-03 17:39:06'),
(68, 1, 'PRODUCTOS', 'Se ha añadido el producto (Cojin Decorativ...) satisfactoriamente.', '', 'success', 'fas fa-cubes', '2021-10-03 17:40:16'),
(69, 1, 'PRODUCTOS', 'Se ha añadido el producto (Cojin Decorativ...) satisfactoriamente.', '', 'success', 'fas fa-cubes', '2021-10-03 17:41:37'),
(70, 1, 'PRODUCTOS', 'Se ha añadido el producto (Cojin Decorativ...) satisfactoriamente.', '', 'success', 'fas fa-cubes', '2021-10-03 17:42:35'),
(71, 1, 'PRODUCTOS', 'Se ha añadido el producto (Cojín Decorati...) satisfactoriamente.', '', 'success', 'fas fa-cubes', '2021-10-03 17:43:32'),
(72, 1, 'PRODUCTOS', 'Se ha añadido el producto (Cojín Baby Lea...) satisfactoriamente.', '', 'success', 'fas fa-cubes', '2021-10-03 17:44:21'),
(73, 1, 'PRODUCTOS', 'Se ha añadido el producto (Cojín Decorati...) satisfactoriamente.', '', 'success', 'fas fa-cubes', '2021-10-03 17:45:10'),
(74, 1, 'PRODUCTOS', 'Se ha añadido el producto (Cojín Decorati...) satisfactoriamente.', '', 'success', 'fas fa-cubes', '2021-10-03 17:49:54'),
(75, 1, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Alfombra Venus a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-03 19:36:23'),
(76, 4, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Alfombra Venus a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-03 19:36:23'),
(77, 5, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Alfombra Venus a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-03 19:36:23'),
(78, 6, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Alfombra Venus a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-03 19:36:23'),
(79, 7, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Alfombra Venus a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-03 19:36:23'),
(80, 8, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Alfombra Venus a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-03 19:36:23'),
(81, 9, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Alfombra Venus a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-03 19:36:23'),
(82, 26, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Alfombra Venus a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-03 19:36:23'),
(83, 1, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Cojin Decorativo Cap... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-03 19:39:51'),
(84, 4, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Cojin Decorativo Cap... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-03 19:39:51'),
(85, 5, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Cojin Decorativo Cap... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-03 19:39:51'),
(86, 6, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Cojin Decorativo Cap... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-03 19:39:51'),
(87, 7, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Cojin Decorativo Cap... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-03 19:39:51'),
(88, 8, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Cojin Decorativo Cap... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-03 19:39:51'),
(89, 9, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Cojin Decorativo Cap... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-03 19:39:51'),
(90, 26, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Cojin Decorativo Cap... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-03 19:39:51'),
(91, 1, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Tapetes de baño tip... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-03 19:57:41'),
(92, 4, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Tapetes de baño tip... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-03 19:57:41'),
(93, 5, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Tapetes de baño tip... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-03 19:57:41'),
(94, 6, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Tapetes de baño tip... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-03 19:57:41'),
(95, 7, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Tapetes de baño tip... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-03 19:57:41'),
(96, 8, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Tapetes de baño tip... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-03 19:57:41'),
(97, 9, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Tapetes de baño tip... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-03 19:57:41'),
(98, 26, 'CARRITO', 'El usuario Kevin Esteban Constaza Meza ha añadido el producto Tapetes de baño tip... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-03 19:57:41'),
(99, 1, 'USUARIOS', 'El usuario (Kevin Hermoso) ha actualizado su información.', '', 'info', 'fas fa-users', '2021-10-11 10:29:19'),
(100, 1, 'USUARIOS', 'El usuario () ha actualizado su información.', '', 'info', 'fas fa-users', '2021-10-11 10:29:20'),
(101, 1, 'USUARIOS', 'El usuario () ha actualizado su información.', '', 'info', 'fas fa-users', '2021-10-11 10:29:20'),
(102, 1, 'USUARIOS', 'El usuario (Kevin Hermoso) ha actualizado su información.', '', 'info', 'fas fa-users', '2021-10-11 10:29:46'),
(103, 1, 'USUARIOS', 'El usuario (Kevin Hermoso) ha actualizado su información.', '', 'info', 'fas fa-users', '2021-10-11 10:30:09'),
(104, 1, 'USUARIOS', 'El usuario (Kevin Hermoso) ha actualizado su información.', '', 'info', 'fas fa-users', '2021-10-11 10:39:09'),
(105, 1, 'USUARIOS', 'El usuario (Kevin Hermoso) ha actualizado su información.', '', 'info', 'fas fa-users', '2021-10-11 10:55:03'),
(106, 1, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Limpiador De Alfombr... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-12 10:35:42'),
(107, 4, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Limpiador De Alfombr... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-12 10:35:42'),
(108, 5, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Limpiador De Alfombr... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-12 10:35:42'),
(109, 6, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Limpiador De Alfombr... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-12 10:35:42'),
(110, 7, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Limpiador De Alfombr... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-12 10:35:42'),
(111, 8, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Limpiador De Alfombr... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-12 10:35:42'),
(112, 9, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Limpiador De Alfombr... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-12 10:35:42'),
(113, 26, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Limpiador De Alfombr... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-12 10:35:42'),
(114, 1, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-18 02:48:28'),
(115, 4, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-18 02:48:28'),
(116, 5, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-18 02:48:28'),
(117, 6, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-18 02:48:28'),
(118, 7, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-18 02:48:28'),
(119, 8, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-18 02:48:28'),
(120, 9, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-18 02:48:28'),
(121, 26, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-18 02:48:28'),
(122, 1, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-18 02:49:09'),
(123, 4, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-18 02:49:09'),
(124, 5, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-18 02:49:09'),
(125, 6, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-18 02:49:10'),
(126, 7, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-18 02:49:10'),
(127, 8, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-18 02:49:10'),
(128, 9, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-18 02:49:10'),
(129, 26, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-18 02:49:10'),
(130, 1, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-18 02:51:17'),
(131, 4, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-18 02:51:17'),
(132, 5, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-18 02:51:17'),
(133, 6, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-18 02:51:17'),
(134, 7, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-18 02:51:17'),
(135, 8, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-18 02:51:17'),
(136, 9, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-18 02:51:17'),
(137, 26, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-10-18 02:51:18'),
(138, 1, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Ginnis a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-06 04:18:06'),
(139, 4, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Ginnis a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-06 04:18:06'),
(140, 5, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Ginnis a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-06 04:18:06'),
(141, 6, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Ginnis a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-06 04:18:06'),
(142, 7, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Ginnis a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-06 04:18:06'),
(143, 8, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Ginnis a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-06 04:18:06'),
(144, 9, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Ginnis a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-06 04:18:06'),
(145, 26, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Ginnis a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-06 04:18:06'),
(146, 1, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Tapetes de baño Dia... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-06 04:18:17'),
(147, 4, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Tapetes de baño Dia... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-06 04:18:17'),
(148, 5, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Tapetes de baño Dia... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-06 04:18:17'),
(149, 6, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Tapetes de baño Dia... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-06 04:18:17'),
(150, 7, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Tapetes de baño Dia... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-06 04:18:17'),
(151, 8, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Tapetes de baño Dia... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-06 04:18:17'),
(152, 9, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Tapetes de baño Dia... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-06 04:18:17'),
(153, 26, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Tapetes de baño Dia... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-06 04:18:17'),
(154, 1, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Kelim Adorn... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-08 19:03:11'),
(155, 4, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Kelim Adorn... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-08 19:03:11'),
(156, 5, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Kelim Adorn... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-08 19:03:11'),
(157, 6, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Kelim Adorn... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-08 19:03:11'),
(158, 7, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Kelim Adorn... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-08 19:03:11'),
(159, 8, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Kelim Adorn... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-08 19:03:11'),
(160, 9, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Kelim Adorn... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-08 19:03:11'),
(161, 26, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Kelim Adorn... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-08 19:03:11'),
(162, 1, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-10 04:33:12'),
(163, 4, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-10 04:33:12'),
(164, 5, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-10 04:33:12'),
(165, 6, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-10 04:33:12'),
(166, 7, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-10 04:33:12'),
(167, 8, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-10 04:33:12'),
(168, 9, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-10 04:33:12'),
(169, 26, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-10 04:33:12'),
(170, 1, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-10 04:33:33'),
(171, 4, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-10 04:33:33'),
(172, 5, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-10 04:33:33'),
(173, 6, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-10 04:33:33'),
(174, 7, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-10 04:33:33'),
(175, 8, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-10 04:33:33'),
(176, 9, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-10 04:33:33'),
(177, 26, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-10 04:33:33'),
(178, 1, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-11 12:35:04'),
(179, 4, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-11 12:35:04'),
(180, 5, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-11 12:35:04'),
(181, 6, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-11 12:35:04'),
(182, 7, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-11 12:35:04'),
(183, 8, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-11 12:35:04'),
(184, 9, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-11 12:35:04'),
(185, 26, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-11 12:35:04'),
(186, 1, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Meray a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-11 12:41:26'),
(187, 4, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Meray a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-11 12:41:26'),
(188, 5, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Meray a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-11 12:41:26'),
(189, 6, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Meray a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-11 12:41:26'),
(190, 7, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Meray a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-11 12:41:26'),
(191, 8, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Meray a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-11 12:41:26'),
(192, 9, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Meray a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-11 12:41:26'),
(193, 26, 'CARRITO', 'El usuario Kevin Hermoso Aristi ha añadido el producto Alfombra Meray a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-11 12:41:26'),
(194, 2004, 'USUARIOS', 'El usuario (Albaca Morales) ha actualizado su información.', '', 'info', 'fas fa-users', '2021-12-12 23:56:07'),
(195, 1, 'CARRITO', 'El usuario Albaca Morales Peñaloza ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 00:34:57'),
(196, 4, 'CARRITO', 'El usuario Albaca Morales Peñaloza ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 00:34:57'),
(197, 5, 'CARRITO', 'El usuario Albaca Morales Peñaloza ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 00:34:57'),
(198, 6, 'CARRITO', 'El usuario Albaca Morales Peñaloza ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 00:34:57'),
(199, 7, 'CARRITO', 'El usuario Albaca Morales Peñaloza ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 00:34:57'),
(200, 8, 'CARRITO', 'El usuario Albaca Morales Peñaloza ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 00:34:57'),
(201, 9, 'CARRITO', 'El usuario Albaca Morales Peñaloza ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 00:34:57'),
(202, 26, 'CARRITO', 'El usuario Albaca Morales Peñaloza ha añadido el producto Alfombra Cosy Girly a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 00:34:57'),
(203, 1, 'CARRITO', 'El usuario David VP ha añadido el producto Alfombra Kelim Adorn... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 00:38:09'),
(204, 4, 'CARRITO', 'El usuario David VP ha añadido el producto Alfombra Kelim Adorn... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 00:38:09'),
(205, 5, 'CARRITO', 'El usuario David VP ha añadido el producto Alfombra Kelim Adorn... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 00:38:09'),
(206, 6, 'CARRITO', 'El usuario David VP ha añadido el producto Alfombra Kelim Adorn... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 00:38:09'),
(207, 7, 'CARRITO', 'El usuario David VP ha añadido el producto Alfombra Kelim Adorn... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 00:38:09'),
(208, 8, 'CARRITO', 'El usuario David VP ha añadido el producto Alfombra Kelim Adorn... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 00:38:09'),
(209, 9, 'CARRITO', 'El usuario David VP ha añadido el producto Alfombra Kelim Adorn... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 00:38:09'),
(210, 26, 'CARRITO', 'El usuario David VP ha añadido el producto Alfombra Kelim Adorn... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 00:38:09'),
(211, 1, 'CARRITO', 'El usuario David VP ha añadido el producto Alfombra Grano a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 00:38:28'),
(212, 4, 'CARRITO', 'El usuario David VP ha añadido el producto Alfombra Grano a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 00:38:28'),
(213, 5, 'CARRITO', 'El usuario David VP ha añadido el producto Alfombra Grano a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 00:38:28'),
(214, 6, 'CARRITO', 'El usuario David VP ha añadido el producto Alfombra Grano a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 00:38:28'),
(215, 7, 'CARRITO', 'El usuario David VP ha añadido el producto Alfombra Grano a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 00:38:28'),
(216, 8, 'CARRITO', 'El usuario David VP ha añadido el producto Alfombra Grano a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 00:38:28'),
(217, 9, 'CARRITO', 'El usuario David VP ha añadido el producto Alfombra Grano a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 00:38:28'),
(218, 26, 'CARRITO', 'El usuario David VP ha añadido el producto Alfombra Grano a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 00:38:28'),
(219, 1, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Kelim Adorn... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:20:07'),
(220, 4, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Kelim Adorn... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:20:07'),
(221, 5, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Kelim Adorn... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:20:07'),
(222, 6, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Kelim Adorn... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:20:07'),
(223, 7, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Kelim Adorn... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:20:07'),
(224, 8, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Kelim Adorn... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:20:07'),
(225, 9, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Kelim Adorn... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:20:07'),
(226, 26, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Kelim Adorn... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:20:07'),
(227, 1, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Limpiador De Alfombr... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:20:35'),
(228, 4, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Limpiador De Alfombr... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:20:35'),
(229, 5, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Limpiador De Alfombr... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:20:35'),
(230, 6, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Limpiador De Alfombr... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:20:35'),
(231, 7, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Limpiador De Alfombr... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:20:35'),
(232, 8, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Limpiador De Alfombr... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:20:35'),
(233, 9, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Limpiador De Alfombr... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:20:35'),
(234, 26, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Limpiador De Alfombr... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:20:35'),
(235, 1, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:26:35'),
(236, 4, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:26:35'),
(237, 5, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:26:35'),
(238, 6, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:26:35'),
(239, 7, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:26:35'),
(240, 8, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:26:35'),
(241, 9, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:26:35'),
(242, 26, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:26:35'),
(243, 1, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:50:07'),
(244, 4, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:50:07'),
(245, 5, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:50:07'),
(246, 6, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:50:07'),
(247, 7, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:50:07'),
(248, 8, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:50:07'),
(249, 9, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:50:07'),
(250, 26, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:50:07'),
(251, 1, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:53:14'),
(252, 4, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:53:14'),
(253, 5, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:53:14'),
(254, 6, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:53:14'),
(255, 7, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:53:14'),
(256, 8, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:53:14'),
(257, 9, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:53:14'),
(258, 26, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:53:14'),
(259, 1, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:57:28'),
(260, 4, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:57:28'),
(261, 5, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:57:28'),
(262, 6, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:57:28'),
(263, 7, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:57:28'),
(264, 8, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:57:28'),
(265, 9, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:57:28'),
(266, 26, 'CARRITO', 'El usuario Shadow 611 ha añadido el producto Alfombra Circle a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-13 01:57:28'),
(267, 1, 'CARRITO', 'El usuario Nicolás Riascos Echeverry ha añadido el producto Cojin Decorativo Clo... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-14 01:14:37'),
(268, 4, 'CARRITO', 'El usuario Nicolás Riascos Echeverry ha añadido el producto Cojin Decorativo Clo... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-14 01:14:37'),
(269, 5, 'CARRITO', 'El usuario Nicolás Riascos Echeverry ha añadido el producto Cojin Decorativo Clo... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-14 01:14:37'),
(270, 6, 'CARRITO', 'El usuario Nicolás Riascos Echeverry ha añadido el producto Cojin Decorativo Clo... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-14 01:14:37'),
(271, 7, 'CARRITO', 'El usuario Nicolás Riascos Echeverry ha añadido el producto Cojin Decorativo Clo... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-14 01:14:37'),
(272, 8, 'CARRITO', 'El usuario Nicolás Riascos Echeverry ha añadido el producto Cojin Decorativo Clo... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-14 01:14:37'),
(273, 9, 'CARRITO', 'El usuario Nicolás Riascos Echeverry ha añadido el producto Cojin Decorativo Clo... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-14 01:14:37'),
(274, 26, 'CARRITO', 'El usuario Nicolás Riascos Echeverry ha añadido el producto Cojin Decorativo Clo... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-14 01:14:37'),
(275, 1, 'CARRITO', 'El usuario Nicolás Riascos Echeverry ha añadido el producto Cojin Decorativo Ado... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-14 01:18:18'),
(276, 4, 'CARRITO', 'El usuario Nicolás Riascos Echeverry ha añadido el producto Cojin Decorativo Ado... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-14 01:18:18'),
(277, 5, 'CARRITO', 'El usuario Nicolás Riascos Echeverry ha añadido el producto Cojin Decorativo Ado... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-14 01:18:18'),
(278, 6, 'CARRITO', 'El usuario Nicolás Riascos Echeverry ha añadido el producto Cojin Decorativo Ado... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-14 01:18:18'),
(279, 7, 'CARRITO', 'El usuario Nicolás Riascos Echeverry ha añadido el producto Cojin Decorativo Ado... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-14 01:18:18'),
(280, 8, 'CARRITO', 'El usuario Nicolás Riascos Echeverry ha añadido el producto Cojin Decorativo Ado... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-14 01:18:18'),
(281, 9, 'CARRITO', 'El usuario Nicolás Riascos Echeverry ha añadido el producto Cojin Decorativo Ado... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-14 01:18:18'),
(282, 26, 'CARRITO', 'El usuario Nicolás Riascos Echeverry ha añadido el producto Cojin Decorativo Ado... a su carrito.', '', 'purple', 'fas fa-shopping-cart', '2021-12-14 01:18:18');

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `Pro_Id` int(11) NOT NULL,
  `pro_nombre` varchar(50) DEFAULT NULL,
  `Pro_Cantidad` int(11) DEFAULT NULL,
  `Pro_Precio` int(11) DEFAULT NULL,
  `Pro_Costo` int(11) DEFAULT NULL,
  `Pro_Descripcion` varchar(500) DEFAULT NULL,
  `Pro_Imagen` varchar(200) DEFAULT NULL,
  `Pro_Descuento` int(11) DEFAULT NULL,
  `Pro_Fecha_Registro` varchar(30) DEFAULT NULL,
  `Prov_Id` int(11) DEFAULT NULL,
  `Usu_Id` int(11) DEFAULT NULL,
  `Col_Id` int(11) DEFAULT NULL,
  `Cat_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`Pro_Id`, `pro_nombre`, `Pro_Cantidad`, `Pro_Precio`, `Pro_Costo`, `Pro_Descripcion`, `Pro_Imagen`, `Pro_Descuento`, `Pro_Fecha_Registro`, `Prov_Id`, `Usu_Id`, `Col_Id`, `Cat_Id`) VALUES
(4, 'Tapetes de baño chevron', 15, 50000, 35000, 'Juego de 2 Tapetes de baÃ±o chevron gris oscuro 40x60 cms. - 50x70 cms. - 40x60 cms. - 50x70 cms. -Gris', 'images/Productos/2_Tapete/Tapetes de baño chevron.jpg', 0, '26-09-2021 01:34pm', 2, 1, 1, 2),
(5, 'Tapetes de baño Diamond', 15, 50000, 35000, 'Juego de 2 Tapetes de baño Diamond café © 40x60 cms. - 50x70 cms. - 40x60 cms. - 50x70 cms. -Café ©', 'images/Productos/2_Tapete/Tapetes de baño Diamond.jpg', 0, '26-09-2021 01:36pm', 2, 1, 1, 2),
(6, 'Tapetes de baño tipo toalla ', 16, 40000, 28900, 'Juego de 2 Tapetes de baño tipo toalla algodón 900 gsm verde claro - 50x76 cm -Verde', 'images/Productos/2_Tapete/Tapetes de baño tipo toalla .jpg', 0, '26-09-2021 01:38pm', 1, 1, 1, 2),
(7, 'Tapetes de baño tipo toalla de', 18, 40000, 28900, 'Juego de 2 Tapetes de baño tipo toalla algodón 900 gsm verde - 50x76 cm -Verde', 'images/Productos/2_Tapete/Tapetes de baño tipo toalla de algodón.jpg', 0, '26-09-2021 01:40pm', 2, 1, 2, 2),
(9, 'Tapete de baño espuma', 24, 48000, 32000, 'Tapete de baño espuma zigzag rosa plata - 40x60 cms. -Rosado', 'images/Productos/2_Tapete/Tapete de baño espuma.jpg', 0, '26-09-2021 01:46pm', 2, 1, 1, 2),
(10, 'Limpiador De Alfombras 650 ml', 30, 26000, 18500, 'Limpiadores y desmanchadores de alfombras y tapetes 650 ml', 'images/Productos/4_Mantenimiento/Limpiador De Alfombras 650 ml.jpg', 0, '26-09-2021 01:50pm', 2, 1, 1, 4),
(11, 'Limpiador y Desmanchador ', 46, 22000, 13500, 'Limpiador y Desmanchador Shampoo De Alfombras Cortinas Bouquet 1.9 lt', 'images/Productos/4_Mantenimiento/Limpiador y Desmanchador .jpg', 0, '26-09-2021 02:03pm', 1, 1, 2, 4),
(12, 'Alfombras y Telas Limpia Tapic', 34, 58900, 22500, 'Aprovecha el poder de la espuma para despercudir, arrancar las manchas, eliminar grasa sin necesidad de enjuague. Se recomienda su uso en tapicerÃ­a de tela o de paÃ±o.', 'images/Productos/4_Mantenimiento/Alfombras y Telas Limpia Tapic.jpg', 0, '26-09-2021 02:07pm', 2, 1, 2, 4),
(13, 'Bed fresh Desodorante para col', 33, 60000, 35000, 'Elimina los malos olores de tapetes y alfombras provocados por el sudor y humedad   con este prÃ¡ctico desodorante.', 'images/Productos/4_Mantenimiento/Bed fresh Desodorante para col.jpg', 0, '26-09-2021 02:10pm', 1, 1, 2, 4),
(14, 'Alfombra Tondo', 10, 2199000, 1649250, 'Material: Algodón y Viscosa. Dimension Ancho (cm): 170, Longitud (cm): 240, Grosor (cm): 4 y Pesos(kg): 8.1', 'images/Productos/1_Alfombra/Alfombra Tondo.jpg', 0, '18/09/2021 17:12', 6, 4, 1, 1),
(15, 'Alfombra Grano', 6, 2499000, 1874250, 'Material: Algodón y Viscosa. Dimension Ancho (cm): 170, Longitud (cm): 240, Grosor (cm): 3 y Pesos(kg): 8.1', 'images/Productos/1_Alfombra/Alfombra Grano.jpg', 0, '18/09/2021 17:18', 6, 4, 8, 1),
(16, 'Alfombra Cosy Girly', 7, 4099000, 3074250, 'Material: Algodón y Viscosa. Dimension Ancho (cm): 170, Longitud (cm): 240, Grosor (cm): 2 y Pesos(kg): 15', 'images/Productos/1_Alfombra/Alfombra Cosy Girly.jpg', 0, '19/09/2021 8:10', 7, 4, 3, 1),
(17, 'Alfombra Kelim Adorno', 4, 4299000, 3224250, 'Material: Algodón y Poliester. Dimension Ancho (cm): 200, Longitud (cm): 300, Grosor (cm): 2.5 y Pesos(kg): 16.5', 'images/Productos/1_Alfombra/Alfombra Kelim Adorno.jpg', 0, '19/09/2021 8:17', 5, 4, 11, 1),
(18, 'Alfombra Abstract', 6, 2449000, 1836750, 'Material: Algodón y Poliester. Dimension Ancho (cm): 170, Longitud (cm): 240, Grosor (cm): 1.5 y Pesos(kg): 9.5', 'images/Productos/1_Alfombra/Alfombra Abstract.jpg', 0, '19/09/2021 8:32', 5, 4, 9, 1),
(19, 'Alfombra Venus', 8, 2199990, 1799250, 'Material: Algodón y Poliester. Dimension Ancho (cm): 170, Longitud (cm): 240, Grosor (cm): 2.5 y Pesos(kg): 8.64', 'images/Productos/1_Alfombra/Alfombra Venus.jpg', 0, '19/09/2021 8:43', 5, 4, 6, 1),
(20, 'Alfombra Ginnis', 6, 550000, 412500, 'Material: Algodón y Yute. Dimension Diametro (cm): 100, Grosor (cm): 2 y Pesos(kg): 5', 'images/Productos/1_Alfombra/Alfombra Ginnis.jpg', 0, '19/09/2021 8:52', 4, 4, 10, 1),
(21, 'Alfombra Meray', 5, 680000, 510000, 'Material: Lana y Yute. Dimension Diametro (cm): 150, Grosor (cm): 2.5 y Pesos(kg): 6.5', 'images/Productos/1_Alfombra/Alfombra Meray.jpg', 0, '19/09/2021 9:00', 4, 4, 9, 1),
(22, 'Alfombra Circle', 0, 2749000, 2061750, 'Material: Cuero. Dimension Diametro (cm): 150, Grosor (cm): 1 y Pesos(kg): 3.65', 'images/Productos/1_Alfombra/Alfombra Circle.jpg', 0, '19/09/2021 9:11', 4, 4, 10, 1),
(23, 'Alfombra Primo Amarillo', 5, 2199000, 1649250, 'Material: Algodón y Viscosa. Dimension Ancho (cm): 170, Longitud (cm): 240, Grosor (cm): 4 y Pesos(kg): 8.1', 'images/Productos/1_Alfombra/Alfombra Primo Amarillo.jpg', 0, '19/09/2021 9:22', 7, 4, 2, 1),
(24, 'Cojin Decorativo Adorno', 20, 209000, 156750, 'Material: Vidrio, Poliester y Algodón. Relleno: Algodón Dimension Ancho (cm): 45, Alto (cm): 45, Profundidad (cm): 8 y Peso (kg): 0.54', 'images/Productos/3_Cojín/Cojin Decorativo Adorno.jpg', 0, '03-10-2021 12:36pm', 9, 1, 4, 3),
(25, 'Cojin Decorativo Cisne', 15, 350000, 262500, 'Material: Algodón y Poliester. Relleno: Poliester Dimension Ancho (cm): 56, Alto (cm): 28 y Peso (kg): 0.78.', 'images/Productos/3_Cojín/Cojin Decorativo Cisne.jpg', 0, '03-10-2021 12:38pm', 16, 1, 12, 3),
(26, 'Cojin Decorativo Capman Violeta', 15, 139000, 104250, 'Material: Poliester. Relleno: Poliester Dimension Ancho (cm): 45, Alto (cm): 45, Profundidad (cm): 15 y Peso (kg): 0.6.', 'images/Productos/3_Cojín/Cojin Decorativo Capman Violeta.jpg', 0, '03-10-2021 12:39pm', 18, 1, 6, 3),
(27, 'Cojin Decorativo Inter', 10, 180000, 135000, 'Material: Algodón. Relleno: Poliester Dimension Ancho (cm): 60, Alto (cm): 60 y Peso (kg):1.', 'images/Productos/3_Cojín/Cojin Decorativo Inter.jpg', 0, '03-10-2021 12:40pm', 13, 1, 7, 3),
(28, 'Cojin Decorativo Sleeping Weasel', 12, 149000, 111750, 'Material: Algodón y Poliester. Relleno: Poliester Dimension Diametro (cm): 30 y Peso (kg): 0.38.', 'images/Productos/3_Cojín/Cojin Decorativo Sleeping Weasel.jpg', 0, '03-10-2021 12:41pm', 22, 1, 13, 3),
(29, 'Cojin Decorativo Cloud', 9, 180000, 135000, 'Material: Algodón y Poliester. Relleno: Poliester Dimension Ancho (cm): 60, Alto (cm): 40, Profundidad (cm): 15 y Peso (kg): 0.63', 'images/Productos/3_Cojín/Cojin Decorativo Cloud.jpg', 20, '03-10-2021 12:42pm', 6, 1, 10, 3),
(30, 'Cojín Decorativo Lambskin Mongolian', 10, 280000, 210000, 'Material: Cuero Natural y Poliester. Relleno: Poliester Dimensión Ancho (cm): 60, Alto (cm): 60 y Peso (kg):1.', 'images/Productos/3_Cojín/Cojín Decorativo Lambskin Mongolian.jpg', 0, '03-10-2021 12:43pm', 5, 1, 1, 3),
(31, 'Cojín Baby Leaf', 15, 190000, 142500, 'Material: Algodón. Relleno: Poliester Dimension Ancho (cm): 42, Alto (cm): 28, Profundidad (cm): 10 y Peso (kg): 2.', 'images/Productos/3_Cojín/Cojín Baby Leaf.jpg', 0, '03-10-2021 12:44pm', 18, 1, 4, 3),
(32, 'Cojín Decorativo Wild', 124, 300000, 225000, 'Material: Poliester y Algodón. Relleno: Poliester Dimension Ancho (cm): 50, Alto (cm): 50, Profundidad (cm) 10 y Peso (kg): 0.9.', 'images/Productos/3_Cojín/Cojín Decorativo Wild.jpg', 0, '03-10-2021 12:45pm', 18, 1, 7, 3),
(33, 'Cojín Decorativo Isko', 435, 320000, 240000, 'Material: Algodón y Plastico. Relleno: Poliester Dimension Ancho (cm): 60, Alto (cm): 40 y Peso (kg): 1.5.', 'images/Productos/3_Cojín/Cojín Decorativo Isko.jpg', 45, '03-10-2021 12:49pm', 18, 1, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `proveedor`
--

CREATE TABLE `proveedor` (
  `Prov_Id` int(11) NOT NULL,
  `prov_nombre` varchar(50) DEFAULT NULL,
  `prov_razon_social` varchar(50) DEFAULT NULL,
  `prov_direccion` varchar(50) DEFAULT NULL,
  `prov_correo` varchar(50) DEFAULT NULL,
  `Prov_Telefono` int(11) DEFAULT NULL,
  `prov_fecha_registro` varchar(30) DEFAULT NULL,
  `Usu_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proveedor`
--

INSERT INTO `proveedor` (`Prov_Id`, `prov_nombre`, `prov_razon_social`, `prov_direccion`, `prov_correo`, `Prov_Telefono`, `prov_fecha_registro`, `Usu_Id`) VALUES
(1, 'Anacondas XP', 'Kevins y Dolnas S.A.', 'Carrera 23A #72B-29', 'anacondas@gmail.com', 2147483647, '0000-00-00', 1),
(2, 'Sofás y Muebles', 'Juan y Michell S.A.', 'Carrera 3A #12B-29', 'muebles@juanymichell.com', 2147483647, '0000-00-00', 1),
(3, 'Silantro', 'Avellana S.A.S.', 'Calle 1° #44-42', 'silantro@avellana.com', 2147483647, '0000-00-00', 1),
(4, 'Alcachofa', 'Avellana S.A.S.', 'Scotlands', 'silantro@avellana.com', 2147483647, '21-09-2021 05:42pm', 1),
(5, 'Cojineseld', 'Taglio Cojines', '02847 Makenzie Hill Suite 794 - Minot, NC / 24431', 'tenesha_faulkner@gmail.com', 2147483647, '22/01/2019', 2),
(6, 'Chicojines', 'Boutine Cojines', '419 Sanford Well Apt. 364 - Washington, KS / 85693', 'mario_lowry@gmail.com', 2147483647, '25/02/2020', 2),
(7, 'Cojinesack', 'Sustentable Cojines', '2118 Oberbrunner Knolls Suite 274 - Charleston, AL', 'cordie_mackie@protonmail.com', 2147483647, '18/05/2020', 2),
(8, 'gesAlfombra', 'Mu Alfombra ', '572 Ruecker Pines Suite 448 - Great Falls, AZ / 98', 'tandra_greaves@protonmail.com', 2147483647, '17/09/2021', 2),
(9, 'alfombraPLC', 'Protocolares Alfombra', '638 Cooper Roads Apt. 384 - O\'Fallon, UT / 54438', 'shanon_martinez@hotmail.com', 2147483647, '6/08/2019', 2),
(10, 'Cojineseon', 'Nodo Cojines ', '46604 Will Oval Suite 855 - Burlington, MN / 70059', 'sharda_mill@protonmail.com', 1246094917, '30/09/2020', 2),
(11, 'Alfombramon', 'Detox Alfombra', '7802 Erick Locks Apt. 949 - Sayreville, HI / 31315', 'shoshana_humphries@mail.com', 2147483647, '2/07/2019', 2),
(12, 'quaTapetes', 'Tapetes Amino', '895 Clinton Mall Suite 251 - Ames, HI / 34549', 'mara_worthington@zohomail.com', 1391645427, '18/07/2020', 3),
(13, 'noCojines', 'Gala Cojines ', '690 Heidenreich Lodge Suite 183 - Nashville-Davids', 'katheryn_allan@yandex.com', 2147483647, '22/03/2019', 2),
(14, 'Tapetes Surface', 'Tapetes LLC', '56781 Boehm Bridge Apt. 214 - Athens-Clarke County', 'rudy_mccann@gmail.com', 2147483647, '17/09/2020', 2),
(15, 'tunalFombra', 'Piratas Alfombra', '7580 Ole Turnpike Apt. 024 - Caldwell, LA / 73545', 'linnie_humphries@protonmail.com', 2147483647, '12/04/2021', 2),
(16, 'Cojines LP', 'Maxima Cojines ', '4550 Amparo Burg Apt. 363 - Lincoln, WI / 50656', 'bert_schmidt@zohomail.com', 2147483647, '16/10/2019', 2),
(17, 'Tapetesism', 'Ameno Tapetes', '5849 Stark Spurs Apt. 183 - St. Louis, NC / 14912', 'gracia_middleton@yahoo.com', 2147483647, '24/12/2019', 2),
(18, 'flaCojines', 'Smokey Cojines ', '33502 Brannon Coves Suite 137 - Apopka, DE / 90458', 'val_sinclair@mail.com', 2147483647, '25/09/2021', 2),
(19, 'Tapetesito', 'Disk Tapetes', '1937 Taryn Overpass Apt. 705 - Macon, MS / 36930', 'carter_feeney@outlook.com', 2147483647, '19/09/2021', 2),
(20, 'baralFombra', 'Dorado Alfombra ', '4526 Jennings Viaduct Apt. 819 - Fayetteville, LA ', 'melony_lee@yahoo.com', 2147483647, '10/10/2019', 2),
(21, 'laTapetes', 'Relax Tapetes', '11841 Chaim Track Suite 746 - Burlington, MD / 651', 'yan_gilbert@outlook.com', 2147483647, '30/11/2019', 2),
(22, 'cluCojines', 'Atlatica Cojines ', '773 Gulgowski Overpass Apt. 784 - Boca Raton, IA /', 'vernon_blair@aol.com', 2147483647, '14/09/2019', 2),
(23, 'reiTapetes', 'Tapetes GEO', '95679 Auer Manor Apt. 900 - St. Charles, MN / 0703', 'tracy_broughton@hotmail.com', 2147483647, '18/08/2021', 2),
(24, 'steCojines', 'Volcán Cojines ', '416 Adah Drives Suite 951 - Rockville, GA / 10102', 'katia_samuels@zohomail.com', 2147483647, '13/05/2019', 2);

-- --------------------------------------------------------

--
-- Table structure for table `rol`
--

CREATE TABLE `rol` (
  `Rol_Id` int(11) NOT NULL,
  `Rol_Nombre` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rol`
--

INSERT INTO `rol` (`Rol_Id`, `Rol_Nombre`) VALUES
(1, 'Cliente'),
(2, 'Administrador'),
(3, 'Moderador');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_id`
--

CREATE TABLE `tipo_id` (
  `Tipo_Id` int(11) NOT NULL,
  `Tipo_Nombre` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipo_id`
--

INSERT INTO `tipo_id` (`Tipo_Id`, `Tipo_Nombre`) VALUES
(1, 'Cédula de Ciudadanía'),
(2, 'Cédula de Extranjería'),
(3, 'Pasaporte');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `Usu_Id` int(11) NOT NULL,
  `Usu_Nombre` varchar(30) DEFAULT NULL,
  `Usu_Apellido` varchar(30) DEFAULT NULL,
  `Usu_Telefono` varchar(15) DEFAULT NULL,
  `Usu_Direccion` varchar(30) DEFAULT NULL,
  `Usu_Num_Identificacion` int(11) DEFAULT NULL,
  `Usu_Correo` varchar(30) DEFAULT NULL,
  `Usu_Clave` varchar(30) DEFAULT NULL,
  `Usu_Imagen` varchar(200) DEFAULT NULL,
  `Tipo_Id` int(11) DEFAULT NULL,
  `Rol_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`Usu_Id`, `Usu_Nombre`, `Usu_Apellido`, `Usu_Telefono`, `Usu_Direccion`, `Usu_Num_Identificacion`, `Usu_Correo`, `Usu_Clave`, `Usu_Imagen`, `Tipo_Id`, `Rol_Id`) VALUES
(1, 'Kevin Hermoso', 'Aristi', '3124567889', 'Carrera 4° N', 1143985103, 'kevinhermoso@gmail.com', '1234', 'images/Usuarios/Kevin Hermoso_Aristi_1.jpg', 3, 2),
(2, 'Carla', 'Humaría', '318593012', 'Cra 4 #21-2', 1245654545, 'carla@gmail.com', 'carla123', 'images/Usuarios/Carla_Humaría_2.jpg', 1, 1),
(3, 'Juan David', 'Cespedes', '3502301200', 'Cra 23 #24-42', 123345634, 'juan@outlook.co', 'juan1234', 'images/Usuarios/Juan David_Cespedesxs_3.jpg', 2, 1),
(4, 'Jhons', 'Larreta Huansi', '2312345', 'Scotland Cra 45', 123545232, 'larreta@gmail.com', 'jhon1234', 'images/Usuarios/Jhons_Larreta Huansi_4.jpg', 2, 2),
(5, 'Carla', 'Aristi', '3215248118', 'Calle 56D #44-41', 123126534, 'carla@gmail.co', 'carla123', 'images/Usuarios/Carla_Aristixs_5.jpg', 2, 3),
(6, 'Leonardo', 'Thompson Aitken', '6680348766', '34189 Stroman Cape Apt. 838 - ', 2147483647, 'elinore_royle@hotmail.com', '5880780573', 'images/Usuarios/Leonardo_Thompson_1.jpg', 3, 2),
(7, 'Kaylee', 'Findlay Marshall', '3642470238', '1020 Corrine Mission Suite 831', 2147483647, 'rosario_walters@outlook.com', '4659475733', 'images/Usuarios/Kayle_Findlay_2.jpg', 1, 2),
(8, 'Cristin', 'Snearl Delatejera', '7903940564', '59465 Lehner Plaza Suite 579 -', 2147483647, 'arnette_palmer@protonmail.com', '5245776923', 'images/Usuarios/Cristin_Snearl_3.jpg', 2, 2),
(9, 'Maurita', 'Watt Freling', '6508498612', '93650 Bogan Springs Suite 756 ', 2147483647, 'asa_booth@zohomail.com', '5778713264', 'images/Usuarios/Maurita_Watt_4.jpg', 3, 3),
(10, 'Myra ', 'Stolly Kasprak', '1476044177', '7982 Joshua Springs Suite 427 ', 1958528887, 'shelly_kendall@protonmail.com', '7381370446', 'images/Usuarios/Myra_Stolly_5.jpg', 2, 1),
(11, 'Sean', 'Hughes Davis', '2904019340', '7322 Ezequiel Ford Suite 075 -', 2147483647, 'charlie_ashcroft@mail.com', '5506554993', 'images/Usuarios/Sean_Hughes_6.jpg', 1, 1),
(12, 'Belia', 'Lavender Madris', '7277059533', '000 Jacobson Neck Suite 929 - ', 2147483647, 'federico_crowther@hotmail.com', '6246391850', 'images/Usuarios/Belia_Lavender_7.jpg', 2, 1),
(13, 'Adina', 'Crawford Williamson', '3736466655', '6239 Garth Union Apt. 543 - Ch', 2147483647, 'joseph_martin@outlook.com', '2770098254', 'images/Usuarios/Adina_Crawford_8.jpg', 3, 1),
(14, 'Fonda', 'Sinclair Murphy', '5972335340', '357 Russel Rapids Apt. 264 - I', 2147483647, 'cristal_gordon@aol.com', '5991152345', 'images/Usuarios/Fonda_Sinclair_9.jpg', 3, 1),
(15, 'Coral', 'Kennedy Forbes', '3877012027', '333 Ebony Shore Apt. 535 - Puy', 2147483647, 'kayla_wilkins@outlook.com', '2706176284', 'images/Usuarios/Coral_Kennedy_10.jpg', 3, 1),
(16, 'Tesha', 'Kustka Douglas', '2293673364', '525 Wuckert Harbor Apt. 286 - ', 2147483647, 'trish_raymond@hotmail.com', '7122325620', 'images/Usuarios/Tesha_Kustka_11.jpg', 1, 1),
(17, 'Jestine', 'Craig Mckay', '4064903521', '547 Johnpaul Ridge Apt. 230 - ', 2147483647, 'marg_ingham@hotmail.com', '8113266943', 'images/Usuarios/Jestine_Craig_12.jpg', 2, 1),
(18, 'Rachael', 'Stewart Bullara', '5487714461', '7813 Lueilwitz Port Suite 930 ', 2147483647, 'ignacio_whittaker@mail.com', '6949882890', 'images/Usuarios/Rachel_Stewart_13.jpg', 3, 1),
(19, 'Vincent', 'Johnston Allan', '4942301525', '6446 Kara Ramp Apt. 248 - Hunt', 2147483647, 'jennefer_molloy@yahoo.com', '9804798052', 'images/Usuarios/Vincent_Johnston_14.jpg', 2, 1),
(20, 'Coletta', 'Smith Featheringham', '4272397268', '46497 McDermott Stream Suite 5', 2147483647, 'marlena_sanchez@yandex.com', '9387739381', 'images/Usuarios/Coletta_Smith_15.jpg', 1, 1),
(21, 'Marcy', 'Wright Dikes', '3140340641', '1040 Jenkins Cape Suite 060 - ', 2147483647, 'quinn_woodcock@yahoo.com', '7684808016', 'images/Usuarios/Marcy_Wright_16.jpg', 2, 1),
(22, 'Milly', 'Ritchie Wood', '3285502929', '3312 Erling Fall Apt. 588 - Bu', 2147483647, 'benita_park@hotmail.com', '4283046422', 'images/Usuarios/Milly_Ritchie_17.jpg', 3, 1),
(23, 'Octavia', 'Hayda Sutherland', '4403376820', '0330 Koelpin Street Apt. 032 -', 2147483647, 'edgardo_holden@yahoo.com', '9393518268', 'images/Usuarios/Octavia_Hayda_18.jpg', 1, 1),
(24, 'Cyrus', 'Kronbach Murray', '7418618002', '02464 Bode Drive Apt. 076 - Ma', 2147483647, 'ethyl_woodley@yahoo.com', '4894009443', 'images/Usuarios/Cyrus_Kronbach_19.jpg', 2, 1),
(25, 'Willow', 'Johnstone Lahde', '5975983050', '0628 Gulgowski Valley Apt. 165', 2147483647, 'shirlee_laing@aol.com', '5305004452', 'images/Usuarios/Willow_Johnstone_20.jpg', 3, 1),
(26, 'David', 'Adm', '4403376523', '547 Johnpaul Ridge Apt. 230 - ', 2147483647, 'Modoadm@gmail.com', '1234', 'images/Usuarios/David_Adm_21.jpg', 1, 2),
(2000, 'David', 'Valencia', NULL, NULL, 11123, 'david@gmail.com', '123', NULL, 1, 1),
(2004, 'Albaca Morales', 'Peñaloza', '321', 'Crra', 123, 'david@gmail.com', '123', 'images/Usuarios/Albaca Morales_Peñaloza_2004.jpg', 3, 1),
(2005, 'David', 'VP', NULL, NULL, 11234002, 'davidventepolo@gmail.com', '123', NULL, 1, 1),
(2006, 'Shadow', '611', NULL, NULL, 12334349, 'shadowdvp611@gmail.com', 'Contraseña123', NULL, 1, 1),
(2007, 'Nicolás', 'Riascos Echeverry', NULL, NULL, 1151970276, 'niriascos@sena.edu.co', '123456', NULL, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`Car_Id`),
  ADD KEY `Car_Usu_Id` (`Usu_Id`);

--
-- Indexes for table `carrito_detalle`
--
ALTER TABLE `carrito_detalle`
  ADD PRIMARY KEY (`Car_Det_Id`),
  ADD KEY `Car_Det_Car_Id` (`Car_Id`),
  ADD KEY `Car_Det_Pro_Id` (`Pro_Id`);

--
-- Indexes for table `categoria_pro`
--
ALTER TABLE `categoria_pro`
  ADD PRIMARY KEY (`Cat_Id`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`Col_Id`);

--
-- Indexes for table `correo`
--
ALTER TABLE `correo`
  ADD PRIMARY KEY (`Cor_Id`);

--
-- Indexes for table `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`Fac_Id`),
  ADD KEY `Fac_Met_Pag_Id` (`Met_Pag_Id`),
  ADD KEY `Fac_Usu_Id` (`Usu_Id`);

--
-- Indexes for table `factura_detalle`
--
ALTER TABLE `factura_detalle`
  ADD PRIMARY KEY (`Fac_Det_Id`),
  ADD KEY `Fac_Det_Pro_Id` (`Pro_Id`),
  ADD KEY `Fac_Det_Fac_Id` (`Fac_Id`);

--
-- Indexes for table `metodo_pago`
--
ALTER TABLE `metodo_pago`
  ADD PRIMARY KEY (`Met_Pag_Id`);

--
-- Indexes for table `notificacion`
--
ALTER TABLE `notificacion`
  ADD PRIMARY KEY (`Not_Id`),
  ADD KEY `Not_Usu_Id` (`Usu_Id`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`Pro_Id`),
  ADD KEY `Pro_Prov_Id` (`Prov_Id`),
  ADD KEY `Pro_Col_Id` (`Col_Id`),
  ADD KEY `Pro_Cat_Id` (`Cat_Id`),
  ADD KEY `Pro_Usu_Id` (`Usu_Id`);

--
-- Indexes for table `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`Prov_Id`),
  ADD KEY `Usu_Id_Proveedor` (`Usu_Id`);

--
-- Indexes for table `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`Rol_Id`);

--
-- Indexes for table `tipo_id`
--
ALTER TABLE `tipo_id`
  ADD PRIMARY KEY (`Tipo_Id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Usu_Id`),
  ADD KEY `Usu_Rol_Id` (`Rol_Id`),
  ADD KEY `Usu_Tipo_Id` (`Tipo_Id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `Car_Usu_Id` FOREIGN KEY (`Usu_Id`) REFERENCES `usuario` (`Usu_Id`);

--
-- Constraints for table `carrito_detalle`
--
ALTER TABLE `carrito_detalle`
  ADD CONSTRAINT `Car_Det_Car_Id` FOREIGN KEY (`Car_Id`) REFERENCES `carrito` (`Car_Id`),
  ADD CONSTRAINT `Car_Det_Pro_Id` FOREIGN KEY (`Pro_Id`) REFERENCES `producto` (`Pro_Id`);

--
-- Constraints for table `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `Fac_Met_Pag_Id` FOREIGN KEY (`Met_Pag_Id`) REFERENCES `metodo_pago` (`Met_Pag_Id`),
  ADD CONSTRAINT `Fac_Usu_Id` FOREIGN KEY (`Usu_Id`) REFERENCES `usuario` (`Usu_Id`);

--
-- Constraints for table `factura_detalle`
--
ALTER TABLE `factura_detalle`
  ADD CONSTRAINT `Fac_Det_Fac_Id` FOREIGN KEY (`Fac_Id`) REFERENCES `factura` (`Fac_Id`),
  ADD CONSTRAINT `Fac_Det_Pro_Id` FOREIGN KEY (`Pro_Id`) REFERENCES `producto` (`Pro_Id`);

--
-- Constraints for table `notificacion`
--
ALTER TABLE `notificacion`
  ADD CONSTRAINT `Not_Usu_Id` FOREIGN KEY (`Usu_Id`) REFERENCES `usuario` (`Usu_Id`);

--
-- Constraints for table `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `Pro_Cat_Id` FOREIGN KEY (`Cat_Id`) REFERENCES `categoria_pro` (`Cat_Id`),
  ADD CONSTRAINT `Pro_Col_Id` FOREIGN KEY (`Col_Id`) REFERENCES `color` (`Col_Id`),
  ADD CONSTRAINT `Pro_Prov_Id` FOREIGN KEY (`Prov_Id`) REFERENCES `proveedor` (`Prov_Id`),
  ADD CONSTRAINT `Pro_Usu_Id` FOREIGN KEY (`Usu_Id`) REFERENCES `usuario` (`Usu_Id`);

--
-- Constraints for table `proveedor`
--
ALTER TABLE `proveedor`
  ADD CONSTRAINT `Usu_Id_Proveedor` FOREIGN KEY (`Usu_Id`) REFERENCES `usuario` (`Usu_Id`);

--
-- Constraints for table `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `Usu_Rol_Id` FOREIGN KEY (`Rol_Id`) REFERENCES `rol` (`Rol_Id`),
  ADD CONSTRAINT `Usu_Tipo_Id` FOREIGN KEY (`Tipo_Id`) REFERENCES `tipo_id` (`Tipo_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
