-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 08-09-2022 a las 01:33:01
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
  `id_persona` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `textColor` varchar(7) DEFAULT NULL,
  `backgroundColor` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `id_persona`, `title`, `description`, `start`, `end`, `textColor`, `backgroundColor`) VALUES
(1, 1, 'evento 1', 'descripcion del evento 1', '2022-09-15 20:00:00', '2022-09-15 20:45:00', '#ffffff', '#33ffe3'),
(2, 2, 'evento 2', 'descripcion del evento 2', '2022-09-07 19:00:00', '2022-09-07 19:45:00', '#ffffff', '#8d33ff');

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

DROP TABLE IF EXISTS `personas`;
CREATE TABLE IF NOT EXISTS `personas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `nombre`) VALUES
(1, 'Miguel Timoteo'),
(2, 'Mariano Alfonso');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
