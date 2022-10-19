-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 19-10-2022 a las 02:38:39
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
-- Estructura de tabla para la tabla `coberturas`
--

DROP TABLE IF EXISTS `coberturas`;
CREATE TABLE IF NOT EXISTS `coberturas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `coberturas`
--

INSERT INTO `coberturas` (`id`, `nombre`) VALUES
(1, 'Osde 210'),
(2, 'Osde 310'),
(3, 'Osde 410'),
(4, 'Osde 410'),
(5, 'Swiss Medical 110'),
(6, 'Swiss Medical 210'),
(7, 'Swiss Medical 310'),
(8, 'Galeno plata'),
(9, 'Galeno oro'),
(10, 'Accord Salud 110'),
(11, 'Accord Salud 210'),
(12, 'Accord Salud 310');

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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `profesional`, `dni`, `title`, `description`, `start`, `end`, `textColor`, `backgroundColor`) VALUES
(53, 1, 8, 'Baker Price', '', '2022-09-21 10:00:00', '2022-09-21 11:00:00', '#ffffff', '#3788d8'),
(54, 1, 8, 'Adkins Zeph', '', '2022-09-01 08:00:00', '2022-09-01 09:00:00', '#ffffff', '#3788d8'),
(55, 1, 8, 'Ayala Raya', '', '2022-09-01 09:00:00', '2022-09-01 10:00:00', '#ffffff', '#3788d8'),
(56, 1, 8, 'Franco Emmanuel', '', '2022-09-01 10:00:00', '2022-09-01 11:00:00', '#ffffff', '#3788d8'),
(57, 1, 8, 'Cannon Zoe', '', '2022-09-01 11:00:00', '2022-09-01 12:00:00', '#ffffff', '#3788d8'),
(58, 1, 8, 'Webster Camden', '', '2022-09-01 13:00:00', '2022-09-01 14:00:00', '#ffffff', '#3788d8'),
(59, 1, 8, 'Frost Kato', '', '2022-09-01 14:00:00', '2022-09-01 15:00:00', '#ffffff', '#3788d8'),
(60, 1, 8, 'Campos Rajah', '', '2022-09-01 15:00:00', '2022-09-01 16:00:00', '#ffffff', '#3788d8'),
(61, 1, 8, 'Wells Zenaida', '', '2022-09-01 17:00:00', '2022-09-01 18:00:00', '#ffffff', '#3788d8'),
(62, 1, 8, 'Strickland Shoshana', '', '2022-09-01 18:00:00', '2022-09-01 19:00:00', '#ffffff', '#3788d8'),
(63, 1, 8, 'Alvarado Germane', '', '2022-09-02 11:00:00', '2022-09-02 12:00:00', '#ffffff', '#3788d8'),
(64, 1, 8, 'Castillo Jescie', '', '2022-09-02 13:00:00', '2022-09-02 14:00:00', '#ffffff', '#3788d8'),
(65, 1, 8, 'Ayala Raya', '', '2022-09-02 14:00:00', '2022-09-02 15:00:00', '#ffffff', '#3788d8'),
(66, 1, 8, 'Whitfield Darrel', '', '2022-09-02 15:00:00', '2022-09-02 16:00:00', '#ffffff', '#3788d8'),
(67, 1, 8, 'Bartlett Yoshio', '', '2022-09-21 10:00:00', '2022-09-21 11:00:00', '#ffffff', '#3788d8'),
(68, 2, 8, 'Gentry Nichole', '', '2022-09-02 11:00:00', '2022-09-02 12:00:00', '#ffffff', '#3788d8'),
(69, 2, 8, 'Alvarado Carla', '', '2022-09-02 12:00:00', '2022-09-02 13:00:00', '#ffffff', '#3788d8'),
(70, 2, 8, 'Whitley Amery', '', '2022-09-05 08:00:00', '2022-09-05 09:00:00', '#ffffff', '#3788d8'),
(71, 2, 8, 'Cannon Zoe', '', '2022-09-05 09:00:00', '2022-09-05 10:00:00', '#ffffff', '#3788d8'),
(72, 2, 8, 'Walsh Price', '', '2022-09-06 11:00:00', '2022-09-06 12:00:00', '#ffffff', '#3788d8'),
(73, 2, 8, 'Riley Lysandra', '', '2022-09-06 12:00:00', '2022-09-06 13:00:00', '#ffffff', '#3788d8'),
(74, 2, 8, 'Wilkerson Molly', '', '2022-09-06 13:00:00', '2022-09-06 14:00:00', '#ffffff', '#3788d8'),
(75, 2, 8, 'Whitley Amery', '', '2022-09-06 14:00:00', '2022-09-06 15:00:00', '#ffffff', '#3788d8'),
(76, 2, 8, 'Barry Kameko', '', '2022-09-07 10:00:00', '2022-09-07 11:00:00', '#ffffff', '#3788d8'),
(77, 2, 8, 'Wilkerson Molly', '', '2022-09-08 09:00:00', '2022-09-08 10:00:00', '#ffffff', '#3788d8'),
(78, 2, 8, 'Burgess Dorothy', '', '2022-09-08 09:00:00', '2022-09-08 10:00:00', '#ffffff', '#3788d8'),
(79, 2, 8, 'Scott Patricia', '', '2022-09-09 09:00:00', '2022-09-09 10:00:00', '#ffffff', '#3788d8'),
(80, 2, 8, 'Baxter Hermione', '', '2022-09-09 10:00:00', '2022-09-09 11:00:00', '#ffffff', '#3788d8'),
(81, 2, 8, 'Scott Patricia', '', '2022-09-09 11:00:00', '2022-09-09 12:00:00', '#ffffff', '#3788d8'),
(83, 2, 8, 'Dejesus Basia', '', '2022-09-09 12:00:00', '2022-09-09 13:00:00', '#ffffff', '#3788d8'),
(84, 1, 8, 'Fowler Colton', '', '2022-09-01 16:00:00', '2022-09-01 17:00:00', '#ffffff', '#3788d8'),
(86, 1, 8, 'Barry Kameko', '', '2022-09-15 10:00:00', '2022-09-15 11:00:00', '#ffffff', '#3788d8');

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

--
-- Volcado de datos para la tabla `log`
--

INSERT INTO `log` (`msg`) VALUES
(''),
('');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientesold`
--

DROP TABLE IF EXISTS `pacientesold`;
CREATE TABLE IF NOT EXISTS `pacientesold` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `apellido` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `pacientesold`
--

INSERT INTO `pacientesold` (`id`, `apellido`, `nombre`, `email`) VALUES
(14, 'Smith', 'Jack', ''),
(3, 'Stark', 'Tony', 'tonystark@stark.com'),
(12, 'Simpson', 'Homero Jay', ''),
(17, 'Perez', 'Natalie', ''),
(21, 'Sabin', 'Pedro', ''),
(19, 'Lorem', 'Lucas K', ''),
(20, 'Weber', 'Marie', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

DROP TABLE IF EXISTS `personas`;
CREATE TABLE IF NOT EXISTS `personas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `apellido` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `cobertura1` tinyint NOT NULL,
  `c1numero` bigint NOT NULL,
  `cobertura2` tinyint NOT NULL,
  `c2numero` bigint NOT NULL,
  `contacto` text NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dni` (`dni`),
  KEY `FK_cobertura_persona` (`cobertura1`),
  KEY `FK_cobertura2_persona` (`cobertura2`)
) ENGINE=MyISAM AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `apellido`, `nombre`, `dni`, `direccion`, `cobertura1`, `c1numero`, `cobertura2`, `c2numero`, `contacto`, `estado`) VALUES
(1, 'Luna', 'Juanita ', '7578664', 'San Martin 234', 1, 67445534876, 0, 11111111111, 'Maria Perez (madre)\r\ntel: 011-58442213\r\ndireccion: misma\r\n', 0),
(2, 'Quintana', 'Juan', '6116273', 'Belgrano 734 piso 3 depto b', 3, 87445532876, 0, 11111111112, 'Juan Pedro (vecino)\r\n011-76543321\r\ndir: lavalle 345', 0),
(3, 'Hansen', 'Sopoline', '7845369', 'Ap #705-2809 Aenean St.', 6, 87433532876, 1, 11111111113, 'Hasad Torres', 0),
(4, 'Hansen', 'Sopoline', '20878017', 'Ap #705-2809 Aenean St.', 6, 22445532876, 1, 11111111114, 'Hasad Torres', 0),
(5, 'Patrick', 'Ross', '80853971', '127-4932 Iaculis St.', 5, 11445532876, 8, 11111111115, 'Ariana Cannon', 0),
(6, 'Wilkerson', 'Petra', '41635801', '414-438 Arcu Av.', 6, 67445532876, 7, 11111111116, 'Colton Holman', 0),
(7, 'Holder', 'Allegra', '65617083', '693-6297 Purus Rd.', 3, 87445532876, 5, 11111111117, 'Uriah Haynes', 0),
(8, 'Baxter', 'Hermione', '3178006', '559-7667 Id, Ave', 7, 77445532876, 4, 11111111118, 'Hiram Arnold', 0),
(9, 'Dejesus', 'Basia', '19038776', 'P.O. Box 401, 5822 Sit St.', 8, 174455328761, 7, 11111111119, 'Vernon Perkins', 0),
(10, 'Conrad', 'Rae', '85659854', 'P.O. Box 150, 8555 Ut, St.', 6, 99945532876, 7, 1111111110, 'Faith Lara', 0),
(11, 'Leblanc', 'Wesley', '71182935', '138-6029 Ac St.', 1, 89999532876, 6, 1111111112, 'Burke Frank', 0),
(12, 'Bonner', 'Yael', '98935107', 'P.O. Box 536, 5304 Nibh Ave', 9, 11115532876, 3, 1111111113, 'Audrey Melton', 0),
(13, 'Sellers', 'Leigh', '81126724', '950-6127 Erat Av.', 6, 87445532800, 7, 1111111114, 'Shaine Wallace', 0),
(14, 'Gomez', 'Zelda', '8828291', '395-9734 Venenatis Street', 4, 87445532215, 7, 1111111115, 'Prescott Delaney', 0),
(15, 'Colon', 'Azalia', '761276', '631-995 Egestas Avenue', 1, 81115532876, 3, 1111111116, 'Jena Hart', 0),
(16, 'Bowman', 'Timon', '77321504', '491-2632 In Rd.', 5, 22225532876, 6, 1111111117, 'Forrest Simon', 0),
(17, 'Mccullough', 'Yetta', '84323683', '379-8211 Commodo Rd.', 10, 12125532876, 10, 1111111118, 'Althea Waller', 0),
(18, 'Webster', 'Camden', '89653897', '463-3211 Luctus Avenue', 1, 31315532876, 4, 1111111119, 'Victoria Hunter', 0),
(19, 'Franco', 'Emmanuel', '95298429', '6149 In Road', 5, 41315532876, 7, 1111111120, 'Melyssa Wolf', 0),
(20, 'Walter', 'Deacon', '7530448', 'Ap #670-6063 Nec, Rd.', 3, 66315532876, 5, 1111111121, 'Jael Bonner', 0),
(21, 'Mccormick', 'Nyssa', '51756946', '2966 Elit. Street', 2, 98315532876, 5, 1111111122, 'Hu Ramsey', 0),
(22, 'Campos', 'Rajah', '36193378', '119-7510 Sem St.', 2, 99315532876, 8, 1111111123, 'Raphael Fitzpatrick', 0),
(23, 'Whitley', 'Amery', '25696048', 'P.O. Box 727, 606 Dolor Road', 2, 85315532876, 4, 2411111111, 'Cheyenne Sims', 0),
(24, 'Foreman', 'Jonas', '19900098', '415-9100 Nascetur Ave', 7, 64515532876, 2, 2511111111, 'Joy Sparks', 0),
(25, 'Mcdonald', 'Zelda', '22412342', 'Ap #243-4788 Eu St.', 2, 31315531234, 3, 2611111111, 'Amaya Horton', 0),
(26, 'Wilkerson', 'Molly', '52361407', '250-7890 Cum St.', 9, 11, 10, 11, 'Xenos Hyde', 0),
(27, 'Riley', 'Hall', '94570005', '8363 Aliquet Rd.', 1, 11, 9, 11, 'Maya Dominguez', 0),
(28, 'Singleton', 'Zorita', '15765795', '766-5510 Aliquam Rd.', 4, 11, 1, 11, 'Colby Haney', 0),
(29, 'Sullivan', 'Karina', '95118955', 'P.O. Box 822, 6533 Posuere St.', 7, 11, 9, 11, 'Daquan Soto', 0),
(30, 'Serrano', 'Hedwig', '28297382', 'P.O. Box 884, 1172 Euismod Av.', 9, 11, 2, 11, 'Ori Jefferson', 0),
(31, 'Barrett', 'Herman', '56130041', 'Ap #625-9434 Sodales Rd.', 7, 11, 2, 11, 'Kim Sullivan', 0),
(32, 'Jones', 'Harrison', '95758051', 'Ap #540-1072 In Rd.', 4, 11, 2, 11, 'Blaze Walter', 0),
(33, 'Whitfield', 'Darrel', '10400127', 'Ap #165-9553 Mi. St.', 7, 11, 2, 11, 'Harding Warren', 0),
(34, 'Terrell', 'Rhea', '64726476', 'P.O. Box 656, 1732 Elit. Road', 7, 11, 5, 11, 'Philip Lyons', 0),
(35, 'Vance', 'Remedios', '92431993', 'Ap #775-5970 Nullam Road', 10, 11, 9, 11, 'Ayanna Chapman', 0),
(36, 'Strickland', 'Shoshana', '67980531', 'Ap #494-9633 Proin Street', 3, 11, 2, 11, 'Curran Donovan', 0),
(37, 'Little', 'Timothy', '62606667', 'P.O. Box 218, 1679 Posuere, Av.', 1, 11, 2, 11, 'Cullen Powell', 0),
(38, 'Dalton', 'Allegra', '9091737', 'P.O. Box 440, 2494 Integer Av.', 8, 11, 3, 11, 'Kuame Weber', 0),
(39, 'Stevens', 'Rogan', '57638679', '992-6057 Ut Avenue', 5, 11, 10, 11, 'Brock Mathews', 0),
(40, 'Hampton', 'Gavin', '60918175', '572-9420 Lobortis Road', 7, 11, 9, 11, 'Boris Vincent', 0),
(41, 'Scott', 'Patricia', '31674834', '117-3456 Sed Road', 8, 11, 9, 11, 'Jason Hughes', 0),
(42, 'Bartlett', 'Yoshio', '75619639', 'Ap #813-3502 Arcu. Av.', 3, 11, 6, 11, 'Fay O\'Neill', 0),
(43, 'Patterson', 'Thane', '83073685', 'Ap #488-9218 Cras Street', 2, 11, 6, 11, 'Buckminster Edwards', 0),
(44, 'Knight', 'Adele', '88509500', 'P.O. Box 416, 8823 Donec St.', 5, 11, 3, 11, 'Buffy Holt', 0),
(45, 'Nicholson', 'Wendy', '93326442', '4093 At Avenue', 3, 11, 4, 11, 'Vladimir Huber', 0),
(46, 'Levine', 'Hedy', '1103702', 'Ap #819-3089 Pellentesque. Ave', 6, 11, 5, 11, 'Marsden Thomas', 0),
(47, 'Bonner', 'Lucius', '25539179', 'P.O. Box 383, 6568 Gravida Rd.', 2, 11, 8, 11, 'Orlando Hayden', 0),
(48, 'Gentry', 'Zephania', '24384781', 'Ap #558-3698 Quam Ave', 1, 11, 3, 11, 'Myra Morse', 0),
(49, 'Schroeder', 'Aspen', '45306363', 'Ap #889-2358 Tristique Street', 5, 11, 3, 11, 'Beck Brennan', 0),
(50, 'Moore', 'Grant', '53377464', 'P.O. Box 322, 8432 Et Ave', 1, 11, 8, 11, 'Jillian Scott', 0),
(51, 'Rasmussen', 'Eleanor', '30968226', 'P.O. Box 770, 9271 Vestibulum Street', 6, 11, 7, 11, 'Wilma Good', 0),
(52, 'Gardner', 'Adrienne', '94708729', 'P.O. Box 596, 2203 Donec Street', 6, 11, 6, 11, 'Abdul Suarez', 0),
(53, 'Wells', 'Zenaida', '80638963', 'Ap #209-542 Euismod Street', 5, 11, 10, 11, 'Bernard Key', 0),
(54, 'Massey', 'Dara', '19068621', 'Ap #607-9959 Est, Avenue', 9, 11, 3, 11, 'Shaeleigh Burke', 0),
(55, 'Moss', 'Stephanie', '53426210', 'Ap #214-7206 Nulla. Street', 6, 11, 5, 11, 'Rhoda Castro', 0),
(56, 'Thomas', 'Carter', '9925180', 'Ap #928-4018 Amet, Rd.', 2, 11, 2, 11, 'Ora Suarez', 0),
(57, 'Daugherty', 'Tucker', '89347264', 'Ap #917-2332 Egestas. Road', 10, 11, 4, 11, 'Beatrice Glover', 0),
(58, 'Sears', 'Karly', '16960774', 'Ap #983-179 Eu Street', 9, 11, 2, 11, 'Charles English', 0),
(59, 'Barry', 'Kameko', '16762073', '2260 Cras Avenue', 10, 11, 3, 11, 'Neil Pollard', 0),
(60, 'Schneider', 'Sophia', '32928036', 'Ap #256-4543 Vitae, St.', 4, 11, 5, 11, 'Karen Mendez', 0),
(61, 'Ewing', 'Garrett', '14353954', 'P.O. Box 444, 9614 Ultricies Road', 8, 11, 8, 11, 'Reece Ellison', 0),
(62, 'Gentry', 'Nichole', '72985656', '2370 Enim, Rd.', 2, 11, 9, 11, 'Daquan Diaz', 0),
(63, 'Rivera', 'Phyllis', '21866411', 'P.O. Box 579, 9230 Nibh Avenue', 5, 11, 3, 11, 'Laurel Christian', 0),
(64, 'Phillips', 'Elaine', '90375080', 'Ap #901-2818 Nullam Rd.', 7, 11, 8, 11, 'Ciaran Suarez', 0),
(65, 'Burgess', 'Dorothy', '86276161', 'P.O. Box 623, 177 Ut Rd.', 8, 11, 9, 11, 'Kalia Simmons', 0),
(66, 'Gallegos', 'Kelsey', '60255558', 'P.O. Box 928, 9626 Phasellus Av.', 8, 11, 5, 11, 'Aaron Rivas', 0),
(67, 'Ayala', 'Raya', '42449302', '824-3513 Montes, St.', 10, 11, 6, 11, 'Kellie Shelton', 0),
(68, 'Riley', 'Lysandra', '31479830', 'Ap #108-3515 Orci Street', 9, 11, 9, 11, 'Gavin Wong', 0),
(69, 'Castillo', 'Jescie', '30051237', '424-1287 Nec Rd.', 3, 11, 9, 11, 'Edward Hoffman', 0),
(70, 'Adkins', 'Zeph', '55816688', '442-9242 Lacus St.', 9, 11, 7, 11, 'Zephr Golden', 0),
(71, 'Buck', 'Cruz', '88929725', 'Ap #325-4053 Viverra. St.', 5, 11, 4, 11, 'Merritt Weiss', 0),
(72, 'Battle', 'George', '77198552', 'Ap #608-8341 Mauris Ave', 1, 11, 9, 11, 'Jessamine Matthews', 0),
(73, 'Mcknight', 'Xavier', '19203580', '422-7447 Ultricies Avenue', 3, 11, 5, 11, 'Amy Farley', 0),
(74, 'Alvarado', 'Germane', '64422237', '391-6775 Ornare St.', 6, 11, 7, 11, 'Yoshio Fuentes', 0),
(75, 'French', 'Guinevere', '64500437', 'P.O. Box 538, 6349 Euismod Ave', 3, 11, 6, 11, 'Rogan Mathews', 0),
(76, 'Stanton', 'Rama', '29235471', 'Ap #991-5538 Duis Ave', 4, 11, 2, 11, 'Celeste Hancock', 0),
(77, 'Vega', 'Ishmael', '52676035', '840-7086 Felis Av.', 5, 11, 2, 11, 'Cassidy Norman', 0),
(78, 'Baker', 'Price', '75673755', '3794 Leo, Road', 8, 11, 7, 11, 'Randall Byrd', 0),
(79, 'Reeves', 'Charlotte', '20340664', '1833 Cras Ave', 5, 11, 9, 11, 'Kenneth Rojas', 0),
(80, 'Hendrix', 'Richard', '74682048', 'Ap #371-7297 Parturient Road', 6, 11, 5, 11, 'Guinevere Moran', 0),
(81, 'Guzman', 'Brandon', '12388244', 'P.O. Box 639, 9182 Sodales. Av.', 9, 11, 8, 11, 'Dacey Gilbert', 0),
(82, 'Rivera', 'Idona', '37895066', '209-2603 Sed Avenue', 10, 11, 10, 11, 'Gabriel Lucas', 0),
(83, 'Craig', 'Finn', '52310595', 'Ap #278-4761 Lorem Rd.', 8, 11, 3, 11, 'Chadwick Mercer', 0),
(84, 'Daugherty', 'Kirestin', '47867768', 'Ap #773-2019 Fringilla Road', 8, 11, 7, 11, 'Anne Oliver', 0),
(85, 'Woods', 'Desirae', '82407048', 'P.O. Box 682, 4794 Donec St.', 6, 11, 5, 11, 'Jelani Stafford', 0),
(86, 'Stone', 'Maia', '68431929', '972-2520 Dapibus St.', 8, 11, 9, 11, 'Xander Weber', 0),
(87, 'Jones', 'Alyssa', '94938495', 'Ap #732-505 Pellentesque St.', 4, 11, 5, 11, 'Dorothy Roth', 0),
(88, 'Blair', 'Colby', '69396682', '844-2710 Turpis St.', 8, 11, 4, 11, 'Jacqueline Powell', 0),
(89, 'Shepherd', 'Ori', '62167917', 'P.O. Box 480, 290 Hendrerit. Avenue', 2, 11, 6, 11, 'Arden Macias', 0),
(90, 'Mitchell', 'Lucas', '2649535', 'P.O. Box 303, 3044 Vel Rd.', 1, 11, 10, 11, 'Berk Banks', 0),
(91, 'Cannon', 'Zoe', '26743916', 'P.O. Box 386, 3239 Cras Ave', 6, 11, 9, 11, 'Marah Hudson', 0),
(92, 'Mclean', 'Lynn', '25770968', '145-2446 Donec Ave', 1, 11, 10, 11, 'Hayley Acosta', 0),
(93, 'Cohen', 'Graiden', '48623085', 'P.O. Box 836, 8479 Neque. Rd.', 2, 11, 8, 11, 'Bell Cain', 0),
(94, 'Fowler', 'Colton', '65802517', '967-3791 Nam Rd.', 6, 11, 6, 11, 'Martin Estes', 0),
(95, 'Merrill', 'Guy', '83143321', '428-6860 Tempor Av.', 7, 11, 4, 11, 'Ahmed Frazier', 0),
(96, 'Walsh', 'Price', '18309047', 'Ap #827-520 Sem St.', 6, 11, 9, 11, 'Virginia Tran', 0),
(97, 'Roman', 'Bradley', '42115267', 'P.O. Box 738, 1570 Aliquam Av.', 6, 11, 7, 11, 'Hu Casey', 0),
(98, 'Clark', 'Owen', '55649190', '684-9357 Ut Ave', 7, 11, 1, 11, 'Cora Reed', 0),
(99, 'Frost', 'Kato', '51900139', '361-2064 Integer Rd.', 3, 11, 5, 11, 'Nell Stephenson', 0),
(100, 'Alvarado', 'Carla', '92553118', 'Ap #553-275 Tempor, Rd.', 5, 11, 9, 11, 'Kylee Mitchell', 0),
(101, 'French', 'Barbara', '7065169', 'P.O. Box 159, 1085 Imperdiet St.', 6, 11, 10, 11, 'Daria Morin', 0),
(102, 'Andrews', 'Ahmed', '57666485', 'Ap #907-5585 Mus. Ave', 5, 11, 6, 11, 'Hasad Jones', 0),
(103, 'Mcbride', 'Garrett', '67136910', '760-3476 Odio Street', 6, 11, 9, 11, 'Warren Hebert', 0),
(104, 'Simpson', 'Homero', '62685088', 'direccion homero', 3, 765474, 0, 0, '', 0),
(128, 'Mayer', 'John', '', '', 0, 0, 0, 0, '', 1),
(129, 'Mayer', 'John', '22925061', '', 0, 0, 0, 0, '', 1),
(130, 'Alfonso', 'Violeta', '48373875', 'Cramer 1879 15 E', 0, 0, 0, 0, '', 1),
(131, 'martin', 'alonso', '23423423', 'cuba 3234', 0, 234293879253, 0, 0, 'leticia (432423235)', 0),
(132, 'pedron', 'picapiedrasn', '23423523', 'calle la roca 3245', 0, 234443829, 0, 0, 'roco', 1),
(133, 'apellidoflash', 'nombreflash', '23423', 'direccionflash', 0, 234235, 0, 0, 'flash tio', 0),
(134, 'tetra', 'brick', '1414123', 'tetra 2342', 0, 234235232, 0, 0, 'damajuana', 1),
(135, 'testcobertura', 'testcobertura', '23459080', 'direccion cobertura', 10, 32423425, 0, 0, 'test', 1),
(136, 'Mayer', 'John', '87774763', 'lafayatte 344', 6, 342342423, 0, 0, 'guitar center\r\ncollins av. hallandale\r\nMiami', 1);

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
