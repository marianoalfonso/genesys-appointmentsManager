-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 19-09-2022 a las 02:46:15
-- Versión del servidor: 8.0.21
-- Versión de PHP: 7.3.21

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
  `id` int NOT NULL AUTO_INCREMENT,
  `profesional` int NOT NULL,
  `dni` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `textColor` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `backgroundColor` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `profesional`, `dni`, `title`, `description`, `start`, `end`, `textColor`, `backgroundColor`) VALUES
(30, 1, 22925061, 'Alfonso Mariano', '', '2022-09-22 11:00:00', '2022-09-22 11:30:00', '#ffffff', '#3788d8'),
(31, 2, 16887778, 'Timoteo Miguel', 'descripcion para miguel', '2022-09-14 15:00:00', '2022-09-14 15:45:00', '#ffffff', '#3788d8'),
(32, 1, 21776554, 'Brown Meredith', '', '2022-09-23 09:00:00', '2022-09-23 09:45:00', '#ffffff', '#3788d8'),
(36, 2, 21776554, 'Brown Meredith', '', '2022-09-09 12:00:00', '2022-09-09 12:30:00', '#ffffff', '#3788d8'),
(37, 3, 16887778, 'Timoteo Miguel', '', '2022-09-30 22:00:00', '2022-09-30 22:40:00', '#ffffff', '#3788d8'),
(38, 4, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(39, 4, 11223433, 'Perez Daniela', '', '2022-09-06 10:00:00', '2022-09-06 11:00:00', '#ffffff', '#3788d8'),
(42, 3, 11223433, 'Perez Daniela', '', '2022-09-08 10:00:00', '2022-09-08 11:00:00', '#ffffff', '#3788d8'),
(43, 3, 11223433, 'Perez Daniela', 'descripcion para Perez Daniela', '2022-09-07 10:00:00', '2022-09-07 11:00:00', '#ffffff', '#3788d8'),
(47, 2, 16887778, 'Timoteo Miguel', 'descripcion', '2022-09-02 15:00:00', '2022-09-02 16:00:00', '#ffffff', '#3788d8'),
(48, 1, 21776554, 'Brown Meredith', 'cobertura: osde 210', '2022-09-18 14:00:00', '2022-09-18 15:00:00', '#ffffff', '#3788d8'),
(49, 1, 22925061, 'Alfonso Mariano', 'cobertura: osde 210', '2022-09-18 15:00:00', '2022-09-18 16:00:00', '#ffffff', '#3788d8'),
(50, 1, 16887778, 'Timoteo Miguel', 'cobertura: osde 310', '2022-09-18 16:00:00', '2022-09-18 17:00:00', '#ffffff', '#d73737');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventospredefinidos`
--

DROP TABLE IF EXISTS `eventospredefinidos`;
CREATE TABLE IF NOT EXISTS `eventospredefinidos` (
  `id` int NOT NULL AUTO_INCREMENT,
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
-- Estructura de tabla para la tabla `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `msg` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
CREATE TABLE IF NOT EXISTS `pacientes` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `apellido` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id`, `apellido`, `nombre`, `email`) VALUES
(3, 'Stark', 'Tony', 'tonystark@stark.com'),
(12, 'Simpson', 'Homero', ''),
(13, 'Eleno', 'Natalia', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

DROP TABLE IF EXISTS `personas`;
CREATE TABLE IF NOT EXISTS `personas` (
  `dni` int NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`dni`, `apellido`, `nombre`) VALUES
(22925061, 'Alfonso', 'Mariano'),
(16887778, 'Timoteo', 'Miguel'),
(11223433, 'Perez', 'Daniela'),
(21776554, 'Brown', 'Meredith');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesionales`
--

DROP TABLE IF EXISTS `profesionales`;
CREATE TABLE IF NOT EXISTS `profesionales` (
  `id` int NOT NULL,
  `nombre` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `profesionales`
--

INSERT INTO `profesionales` (`id`, `nombre`) VALUES
(1, 'profesional 1'),
(2, 'profesional 2'),
(3, 'profesional 3'),
(4, 'profesional 4'),
(5, 'profesional 5'),
(6, 'profesional 6'),
(7, 'profesional 7'),
(8, 'profesional 8');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
