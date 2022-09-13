-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 13-09-2022 a las 15:19:10
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `appointmentsmanager`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

DROP TABLE IF EXISTS `eventos`;
CREATE TABLE IF NOT EXISTS `eventos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profesional` tinyint(4) NOT NULL,
  `dni` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `textColor` varchar(7) CHARACTER SET utf8mb4 DEFAULT NULL,
  `backgroundColor` varchar(7) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `profesional`, `dni`, `title`, `description`, `start`, `end`, `textColor`, `backgroundColor`) VALUES
(30, 1, 22925061, 'Alfonso Mariano', '', '2022-09-22 11:00:00', '2022-09-22 11:30:00', '#ffffff', '#3788d8'),
(31, 2, 16887778, 'Timoteo Miguel', '', '2022-09-14 15:00:00', '2022-09-14 15:45:00', '#ffffff', '#3788d8'),
(32, 1, 21776554, 'Brown Meredith', '', '2022-09-23 09:00:00', '2022-09-23 09:45:00', '#ffffff', '#3788d8'),
(33, 1, 11223433, 'Perez Daniela', '', '2022-09-15 10:00:00', '2022-09-15 10:05:00', '#ffffff', '#3788d8'),
(34, 1, 22925061, 'Alfonso Mariano', '', '2022-09-08 10:00:00', '2022-09-08 10:05:00', '#ffffff', '#3788d8'),
(35, 1, 21776554, 'Brown Meredith', '', '2022-09-15 10:00:00', '2022-09-15 10:10:00', '#ffffff', '#3788d8'),
(36, 2, 21776554, 'Brown Meredith', '', '2022-09-09 12:00:00', '2022-09-09 12:30:00', '#ffffff', '#3788d8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventospredefinidos`
--

DROP TABLE IF EXISTS `eventospredefinidos`;
CREATE TABLE IF NOT EXISTS `eventospredefinidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `horaInicio` time DEFAULT NULL,
  `horaFin` time DEFAULT NULL,
  `colortexto` varchar(7) DEFAULT NULL,
  `colorfondo` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `eventospredefinidos`
--

INSERT INTO `eventospredefinidos` (`id`, `titulo`, `horaInicio`, `horaFin`, `colortexto`, `colorfondo`) VALUES
(1, 'sobreturno', '14:00:00', '15:00:00', '#FFFFFF', '#FF3333'),
(2, 'turno especial', '12:00:00', '14:00:00', '#FFFFFF', '#00AC22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

DROP TABLE IF EXISTS `personas`;
CREATE TABLE IF NOT EXISTS `personas` (
  `dni` int(11) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`dni`, `apellido`, `nombre`) VALUES
(22925061, 'Alfonso', 'Mariano'),
(16887778, 'Timoteo', 'Miguel'),
(11223433, 'Perez', 'Daniela'),
(21776554, 'Brown', 'Meredith');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
