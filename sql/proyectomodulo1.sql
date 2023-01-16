-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-01-2023 a las 00:44:30
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectomodulo1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guiasasignadas`
--

CREATE TABLE `guiasasignadas` (
  `id` int(11) NOT NULL,
  `idguia` int(11) NOT NULL,
  `idmensajero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `guiasasignadas`
--

INSERT INTO `guiasasignadas` (`id`, `idguia`, `idmensajero`) VALUES
(1, 1235, 1),
(25, 12344, 4),
(26, 12344, 4),
(27, 8747346, 3),
(28, 1223456, 1),
(29, 968746, 5),
(30, 987654, 2),
(31, 988765454, 3),
(32, 12457892, 1),
(33, 999999, 5),
(34, 14758695, 2),
(35, 45674345, 2),
(36, 9887655, 4),
(37, 2147483647, 2),
(38, 12457869, 2),
(39, 14578962, 5),
(40, 14589625, 5),
(41, 1458925, 5),
(42, 777777, 3),
(43, 777777777, 3),
(44, 147589632, 1),
(45, 145789256, 1),
(46, 1457892254, 1),
(47, 145789685, 5),
(48, 124578925, 3),
(49, 145785545, 4),
(50, 124578577, 1),
(53, 145785955, 1),
(55, 1457895744, 2),
(56, 12457896, 2),
(57, 145789658, 1),
(58, 1245786958, 5),
(59, 12457896, 1),
(60, 1245789658, 3),
(61, 12457885, 2),
(62, 12457896, 4),
(63, 124789522, 3),
(65, 1478596, 5),
(66, 14578952, 2),
(67, 124578952, 4),
(68, 12457896, 1),
(69, 12457896, 2),
(70, 2147483647, 2),
(71, 124758695, 1),
(72, 124578968, 1),
(73, 12457896, 5),
(74, 12475896, 5),
(75, 1247895699, 4),
(76, 124578968, 5),
(77, 12457896, 2),
(78, 12475896, 1),
(79, 12478596, 4),
(80, 125869695, 1),
(81, 12458965, 3),
(82, 12658965, 2),
(83, 1245896, 2),
(84, 12458695, 4),
(85, 1259685, 2),
(86, 1259682, 2),
(87, 1256895, 1),
(88, 1258965, 2),
(89, 1256985, 1),
(90, 12585965, 4),
(91, 1258965, 3),
(92, 1258965896, 1),
(93, 1258965, 5),
(94, 125895695, 1),
(95, 1245966, 1),
(96, 1258964586, 2),
(97, 125968544, 3),
(98, 12596585, 2),
(99, 124859658, 2),
(111, 28548548, 2),
(112, 1285485, 3),
(113, 12598545, 3),
(119, 125896586, 3),
(120, 12589658, 3),
(121, 12589658, 4),
(122, 125896585, 5),
(123, 12596554, 3),
(124, 1259658458, 1),
(125, 128958546, 4),
(126, 124585485, 4),
(127, 2147483647, 1),
(128, 1259658, 4),
(129, 1244848, 2),
(130, 1248574, 1),
(131, 124585, 2),
(132, 124585, 2),
(133, 1245856566, 2),
(134, 1254885485, 3),
(135, 124585121, 3),
(136, 12452256, 4),
(137, 12458595, 3),
(138, 124585965, 5),
(141, 1245858548, 3),
(142, 1255658544, 5),
(146, 121121545, 3),
(149, 2121212, 3),
(153, 1245844, 5),
(155, 1212511, 3),
(156, 121541125, 5),
(157, 1242215112, 5),
(158, 1245214, 4),
(159, 1245214, 4),
(160, 1245854854, 4),
(161, 1242154, 5),
(162, 12422145, 4),
(163, 1258485745, 5),
(173, 45455, 1),
(174, 122555, 2),
(176, 125452223, 3),
(191, 12545215, 2),
(193, 938848234, 2),
(195, 1231293812, 2),
(200, 2147483647, 2),
(201, 123123, 2),
(202, 1283821371, 4),
(203, 2147483647, 4),
(209, 888788, 4),
(227, 987655677, 1),
(228, 987899, 2),
(234, 8788, 2),
(238, 8776677, 1),
(239, 989900, 2),
(240, 98799988, 3),
(241, 2147483647, 4),
(245, 9873774, 4),
(246, 2147483647, 4),
(248, 124552122, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajeros`
--

CREATE TABLE `mensajeros` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `cedula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mensajeros`
--

INSERT INTO `mensajeros` (`id`, `nombre`, `cedula`) VALUES
(1, 'Jose Albeiro Ramirez Taborda', 1088348370),
(2, 'Fernanda Garcia Osorio', 1088378390),
(3, 'Manuel Rivera Gutierrez', 1088572810),
(4, 'Edilberto Jaramillo Velez', 24596874),
(5, 'Jose Luis Torres Rendon', 75049691);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `guiasasignadas`
--
ALTER TABLE `guiasasignadas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idmensajero` (`idmensajero`);

--
-- Indices de la tabla `mensajeros`
--
ALTER TABLE `mensajeros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `guiasasignadas`
--
ALTER TABLE `guiasasignadas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT de la tabla `mensajeros`
--
ALTER TABLE `mensajeros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `guiasasignadas`
--
ALTER TABLE `guiasasignadas`
  ADD CONSTRAINT `guiasasignadas_ibfk_1` FOREIGN KEY (`idmensajero`) REFERENCES `mensajeros` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
