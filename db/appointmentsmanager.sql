-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 21-09-2022 a las 17:37:13
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
-- Estructura de tabla para la tabla `coberturas`
--

DROP TABLE IF EXISTS `coberturas`;
CREATE TABLE IF NOT EXISTS `coberturas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profesional` int(11) NOT NULL,
  `dni` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `textColor` varchar(7) CHARACTER SET utf8mb4 DEFAULT NULL,
  `backgroundColor` varchar(7) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `profesional`, `dni`, `title`, `description`, `start`, `end`, `textColor`, `backgroundColor`) VALUES
(53, 1, 8, 'Baker Price', '', '2022-09-21 10:00:00', '2022-09-21 11:00:00', '#ffffff', '#3788d8');

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
-- Estructura de tabla para la tabla `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `msg` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

DROP TABLE IF EXISTS `personas`;
CREATE TABLE IF NOT EXISTS `personas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apellido` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `dni` int(11) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `cobertura1` tinyint(4) NOT NULL,
  `c1numero` bigint(20) NOT NULL,
  `cobertura2` tinyint(4) NOT NULL,
  `c2numero` bigint(20) NOT NULL,
  `contacto` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `apellido`, `nombre`, `dni`, `direccion`, `cobertura1`, `c1numero`, `cobertura2`, `c2numero`, `contacto`) VALUES
(1, 'Luna', 'Juanita ', 11111111, 'San Martin 234', 1, 67445534876, 0, 11111111111, 'Maria Perez (madre)\r\ntel: 011-58442213\r\ndireccion: misma\r\n'),
(2, 'Quintana', 'Juan', 22222222, 'Belgrano 734 piso 3 depto b', 3, 87445532876, 0, 11111111112, 'Juan Pedro (vecino)\r\n011-76543321\r\ndir: lavalle 345'),
(3, 'Hansen', 'Sopoline', 8, 'Ap #705-2809 Aenean St.', 6, 87433532876, 1, 11111111113, 'Hasad Torres'),
(4, 'Hansen', 'Sopoline', 8, 'Ap #705-2809 Aenean St.', 6, 22445532876, 1, 11111111114, 'Hasad Torres'),
(5, 'Patrick', 'Ross', 8, '127-4932 Iaculis St.', 5, 11445532876, 8, 11111111115, 'Ariana Cannon'),
(6, 'Wilkerson', 'Petra', 8, '414-438 Arcu Av.', 6, 67445532876, 7, 11111111116, 'Colton Holman'),
(7, 'Holder', 'Allegra', 8, '693-6297 Purus Rd.', 3, 87445532876, 5, 11111111117, 'Uriah Haynes'),
(8, 'Baxter', 'Hermione', 8, '559-7667 Id, Ave', 7, 77445532876, 4, 11111111118, 'Hiram Arnold'),
(9, 'Dejesus', 'Basia', 8, 'P.O. Box 401, 5822 Sit St.', 8, 174455328761, 7, 11111111119, 'Vernon Perkins'),
(10, 'Conrad', 'Rae', 8, 'P.O. Box 150, 8555 Ut, St.', 6, 99945532876, 7, 1111111110, 'Faith Lara'),
(11, 'Leblanc', 'Wesley', 8, '138-6029 Ac St.', 1, 89999532876, 6, 1111111112, 'Burke Frank'),
(12, 'Bonner', 'Yael', 8, 'P.O. Box 536, 5304 Nibh Ave', 9, 11115532876, 3, 1111111113, 'Audrey Melton'),
(13, 'Sellers', 'Leigh', 8, '950-6127 Erat Av.', 6, 87445532800, 7, 1111111114, 'Shaine Wallace'),
(14, 'Gomez', 'Zelda', 8, '395-9734 Venenatis Street', 4, 87445532215, 7, 1111111115, 'Prescott Delaney'),
(15, 'Colon', 'Azalia', 8, '631-995 Egestas Avenue', 1, 81115532876, 3, 1111111116, 'Jena Hart'),
(16, 'Bowman', 'Timon', 8, '491-2632 In Rd.', 5, 22225532876, 6, 1111111117, 'Forrest Simon'),
(17, 'Mccullough', 'Yetta', 8, '379-8211 Commodo Rd.', 10, 12125532876, 10, 1111111118, 'Althea Waller'),
(18, 'Webster', 'Camden', 8, '463-3211 Luctus Avenue', 1, 31315532876, 4, 1111111119, 'Victoria Hunter'),
(19, 'Franco', 'Emmanuel', 8, '6149 In Road', 5, 41315532876, 7, 1111111120, 'Melyssa Wolf'),
(20, 'Walter', 'Deacon', 8, 'Ap #670-6063 Nec, Rd.', 3, 66315532876, 5, 1111111121, 'Jael Bonner'),
(21, 'Mccormick', 'Nyssa', 8, '2966 Elit. Street', 2, 98315532876, 5, 1111111122, 'Hu Ramsey'),
(22, 'Campos', 'Rajah', 8, '119-7510 Sem St.', 2, 99315532876, 8, 1111111123, 'Raphael Fitzpatrick'),
(23, 'Whitley', 'Amery', 8, 'P.O. Box 727, 606 Dolor Road', 2, 85315532876, 4, 2411111111, 'Cheyenne Sims'),
(24, 'Foreman', 'Jonas', 8, '415-9100 Nascetur Ave', 7, 64515532876, 2, 2511111111, 'Joy Sparks'),
(25, 'Mcdonald', 'Zelda', 8, 'Ap #243-4788 Eu St.', 2, 31315531234, 3, 2611111111, 'Amaya Horton'),
(26, 'Wilkerson', 'Molly', 8, '250-7890 Cum St.', 9, 11, 10, 11, 'Xenos Hyde'),
(27, 'Riley', 'Hall', 8, '8363 Aliquet Rd.', 1, 11, 9, 11, 'Maya Dominguez'),
(28, 'Singleton', 'Zorita', 8, '766-5510 Aliquam Rd.', 4, 11, 1, 11, 'Colby Haney'),
(29, 'Sullivan', 'Karina', 8, 'P.O. Box 822, 6533 Posuere St.', 7, 11, 9, 11, 'Daquan Soto'),
(30, 'Serrano', 'Hedwig', 8, 'P.O. Box 884, 1172 Euismod Av.', 9, 11, 2, 11, 'Ori Jefferson'),
(31, 'Barrett', 'Herman', 8, 'Ap #625-9434 Sodales Rd.', 7, 11, 2, 11, 'Kim Sullivan'),
(32, 'Jones', 'Harrison', 8, 'Ap #540-1072 In Rd.', 4, 11, 2, 11, 'Blaze Walter'),
(33, 'Whitfield', 'Darrel', 8, 'Ap #165-9553 Mi. St.', 7, 11, 2, 11, 'Harding Warren'),
(34, 'Terrell', 'Rhea', 8, 'P.O. Box 656, 1732 Elit. Road', 7, 11, 5, 11, 'Philip Lyons'),
(35, 'Vance', 'Remedios', 8, 'Ap #775-5970 Nullam Road', 10, 11, 9, 11, 'Ayanna Chapman'),
(36, 'Strickland', 'Shoshana', 8, 'Ap #494-9633 Proin Street', 3, 11, 2, 11, 'Curran Donovan'),
(37, 'Little', 'Timothy', 8, 'P.O. Box 218, 1679 Posuere, Av.', 1, 11, 2, 11, 'Cullen Powell'),
(38, 'Dalton', 'Allegra', 8, 'P.O. Box 440, 2494 Integer Av.', 8, 11, 3, 11, 'Kuame Weber'),
(39, 'Stevens', 'Rogan', 8, '992-6057 Ut Avenue', 5, 11, 10, 11, 'Brock Mathews'),
(40, 'Hampton', 'Gavin', 8, '572-9420 Lobortis Road', 7, 11, 9, 11, 'Boris Vincent'),
(41, 'Scott', 'Patricia', 8, '117-3456 Sed Road', 8, 11, 9, 11, 'Jason Hughes'),
(42, 'Bartlett', 'Yoshio', 8, 'Ap #813-3502 Arcu. Av.', 3, 11, 6, 11, 'Fay O\'Neill'),
(43, 'Patterson', 'Thane', 8, 'Ap #488-9218 Cras Street', 2, 11, 6, 11, 'Buckminster Edwards'),
(44, 'Knight', 'Adele', 8, 'P.O. Box 416, 8823 Donec St.', 5, 11, 3, 11, 'Buffy Holt'),
(45, 'Nicholson', 'Wendy', 8, '4093 At Avenue', 3, 11, 4, 11, 'Vladimir Huber'),
(46, 'Levine', 'Hedy', 8, 'Ap #819-3089 Pellentesque. Ave', 6, 11, 5, 11, 'Marsden Thomas'),
(47, 'Bonner', 'Lucius', 8, 'P.O. Box 383, 6568 Gravida Rd.', 2, 11, 8, 11, 'Orlando Hayden'),
(48, 'Gentry', 'Zephania', 8, 'Ap #558-3698 Quam Ave', 1, 11, 3, 11, 'Myra Morse'),
(49, 'Schroeder', 'Aspen', 8, 'Ap #889-2358 Tristique Street', 5, 11, 3, 11, 'Beck Brennan'),
(50, 'Moore', 'Grant', 8, 'P.O. Box 322, 8432 Et Ave', 1, 11, 8, 11, 'Jillian Scott'),
(51, 'Rasmussen', 'Eleanor', 8, 'P.O. Box 770, 9271 Vestibulum Street', 6, 11, 7, 11, 'Wilma Good'),
(52, 'Gardner', 'Adrienne', 8, 'P.O. Box 596, 2203 Donec Street', 6, 11, 6, 11, 'Abdul Suarez'),
(53, 'Wells', 'Zenaida', 8, 'Ap #209-542 Euismod Street', 5, 11, 10, 11, 'Bernard Key'),
(54, 'Massey', 'Dara', 8, 'Ap #607-9959 Est, Avenue', 9, 11, 3, 11, 'Shaeleigh Burke'),
(55, 'Moss', 'Stephanie', 8, 'Ap #214-7206 Nulla. Street', 6, 11, 5, 11, 'Rhoda Castro'),
(56, 'Thomas', 'Carter', 8, 'Ap #928-4018 Amet, Rd.', 2, 11, 2, 11, 'Ora Suarez'),
(57, 'Daugherty', 'Tucker', 8, 'Ap #917-2332 Egestas. Road', 10, 11, 4, 11, 'Beatrice Glover'),
(58, 'Sears', 'Karly', 8, 'Ap #983-179 Eu Street', 9, 11, 2, 11, 'Charles English'),
(59, 'Barry', 'Kameko', 8, '2260 Cras Avenue', 10, 11, 3, 11, 'Neil Pollard'),
(60, 'Schneider', 'Sophia', 8, 'Ap #256-4543 Vitae, St.', 4, 11, 5, 11, 'Karen Mendez'),
(61, 'Ewing', 'Garrett', 8, 'P.O. Box 444, 9614 Ultricies Road', 8, 11, 8, 11, 'Reece Ellison'),
(62, 'Gentry', 'Nichole', 8, '2370 Enim, Rd.', 2, 11, 9, 11, 'Daquan Diaz'),
(63, 'Rivera', 'Phyllis', 8, 'P.O. Box 579, 9230 Nibh Avenue', 5, 11, 3, 11, 'Laurel Christian'),
(64, 'Phillips', 'Elaine', 8, 'Ap #901-2818 Nullam Rd.', 7, 11, 8, 11, 'Ciaran Suarez'),
(65, 'Burgess', 'Dorothy', 8, 'P.O. Box 623, 177 Ut Rd.', 8, 11, 9, 11, 'Kalia Simmons'),
(66, 'Gallegos', 'Kelsey', 8, 'P.O. Box 928, 9626 Phasellus Av.', 8, 11, 5, 11, 'Aaron Rivas'),
(67, 'Ayala', 'Raya', 8, '824-3513 Montes, St.', 10, 11, 6, 11, 'Kellie Shelton'),
(68, 'Riley', 'Lysandra', 8, 'Ap #108-3515 Orci Street', 9, 11, 9, 11, 'Gavin Wong'),
(69, 'Castillo', 'Jescie', 8, '424-1287 Nec Rd.', 3, 11, 9, 11, 'Edward Hoffman'),
(70, 'Adkins', 'Zeph', 8, '442-9242 Lacus St.', 9, 11, 7, 11, 'Zephr Golden'),
(71, 'Buck', 'Cruz', 8, 'Ap #325-4053 Viverra. St.', 5, 11, 4, 11, 'Merritt Weiss'),
(72, 'Battle', 'George', 8, 'Ap #608-8341 Mauris Ave', 1, 11, 9, 11, 'Jessamine Matthews'),
(73, 'Mcknight', 'Xavier', 8, '422-7447 Ultricies Avenue', 3, 11, 5, 11, 'Amy Farley'),
(74, 'Alvarado', 'Germane', 8, '391-6775 Ornare St.', 6, 11, 7, 11, 'Yoshio Fuentes'),
(75, 'French', 'Guinevere', 8, 'P.O. Box 538, 6349 Euismod Ave', 3, 11, 6, 11, 'Rogan Mathews'),
(76, 'Stanton', 'Rama', 8, 'Ap #991-5538 Duis Ave', 4, 11, 2, 11, 'Celeste Hancock'),
(77, 'Vega', 'Ishmael', 8, '840-7086 Felis Av.', 5, 11, 2, 11, 'Cassidy Norman'),
(78, 'Baker', 'Price', 8, '3794 Leo, Road', 8, 11, 7, 11, 'Randall Byrd'),
(79, 'Reeves', 'Charlotte', 8, '1833 Cras Ave', 5, 11, 9, 11, 'Kenneth Rojas'),
(80, 'Hendrix', 'Richard', 8, 'Ap #371-7297 Parturient Road', 6, 11, 5, 11, 'Guinevere Moran'),
(81, 'Guzman', 'Brandon', 8, 'P.O. Box 639, 9182 Sodales. Av.', 9, 11, 8, 11, 'Dacey Gilbert'),
(82, 'Rivera', 'Idona', 8, '209-2603 Sed Avenue', 10, 11, 10, 11, 'Gabriel Lucas'),
(83, 'Craig', 'Finn', 8, 'Ap #278-4761 Lorem Rd.', 8, 11, 3, 11, 'Chadwick Mercer'),
(84, 'Daugherty', 'Kirestin', 8, 'Ap #773-2019 Fringilla Road', 8, 11, 7, 11, 'Anne Oliver'),
(85, 'Woods', 'Desirae', 8, 'P.O. Box 682, 4794 Donec St.', 6, 11, 5, 11, 'Jelani Stafford'),
(86, 'Stone', 'Maia', 8, '972-2520 Dapibus St.', 8, 11, 9, 11, 'Xander Weber'),
(87, 'Jones', 'Alyssa', 8, 'Ap #732-505 Pellentesque St.', 4, 11, 5, 11, 'Dorothy Roth'),
(88, 'Blair', 'Colby', 8, '844-2710 Turpis St.', 8, 11, 4, 11, 'Jacqueline Powell'),
(89, 'Shepherd', 'Ori', 8, 'P.O. Box 480, 290 Hendrerit. Avenue', 2, 11, 6, 11, 'Arden Macias'),
(90, 'Mitchell', 'Lucas', 8, 'P.O. Box 303, 3044 Vel Rd.', 1, 11, 10, 11, 'Berk Banks'),
(91, 'Cannon', 'Zoe', 8, 'P.O. Box 386, 3239 Cras Ave', 6, 11, 9, 11, 'Marah Hudson'),
(92, 'Mclean', 'Lynn', 8, '145-2446 Donec Ave', 1, 11, 10, 11, 'Hayley Acosta'),
(93, 'Cohen', 'Graiden', 8, 'P.O. Box 836, 8479 Neque. Rd.', 2, 11, 8, 11, 'Bell Cain'),
(94, 'Fowler', 'Colton', 8, '967-3791 Nam Rd.', 6, 11, 6, 11, 'Martin Estes'),
(95, 'Merrill', 'Guy', 8, '428-6860 Tempor Av.', 7, 11, 4, 11, 'Ahmed Frazier'),
(96, 'Walsh', 'Price', 8, 'Ap #827-520 Sem St.', 6, 11, 9, 11, 'Virginia Tran'),
(97, 'Roman', 'Bradley', 8, 'P.O. Box 738, 1570 Aliquam Av.', 6, 11, 7, 11, 'Hu Casey'),
(98, 'Clark', 'Owen', 8, '684-9357 Ut Ave', 7, 11, 1, 11, 'Cora Reed'),
(99, 'Frost', 'Kato', 8, '361-2064 Integer Rd.', 3, 11, 5, 11, 'Nell Stephenson'),
(100, 'Alvarado', 'Carla', 8, 'Ap #553-275 Tempor, Rd.', 5, 11, 9, 11, 'Kylee Mitchell'),
(101, 'French', 'Barbara', 8, 'P.O. Box 159, 1085 Imperdiet St.', 6, 11, 10, 11, 'Daria Morin'),
(102, 'Andrews', 'Ahmed', 8, 'Ap #907-5585 Mus. Ave', 5, 11, 6, 11, 'Hasad Jones'),
(103, 'Mcbride', 'Garrett', 8, '760-3476 Odio Street', 6, 11, 9, 11, 'Warren Hebert');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesionales`
--

DROP TABLE IF EXISTS `profesionales`;
CREATE TABLE IF NOT EXISTS `profesionales` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

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
