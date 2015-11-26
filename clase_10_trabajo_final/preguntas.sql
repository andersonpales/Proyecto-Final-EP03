-- phpMyAdmin SQL Dump
-- version 3.1.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 25-11-2015 a las 21:02:16
-- Versión del servidor: 5.1.30
-- Versión de PHP: 5.2.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE IF NOT EXISTS `preguntas` (
  `idpregunta` int(11) NOT NULL DEFAULT '0',
  `numpregunta` int(5) DEFAULT NULL,
  `pregunta` varchar(200) DEFAULT NULL,
  `opcion1` varchar(100) DEFAULT NULL,
  `opcion2` varchar(100) DEFAULT NULL,
  `opcion3` varchar(100) DEFAULT NULL,
  `opcion4` varchar(100) DEFAULT NULL,
  `correcta` int(5) DEFAULT NULL,
  PRIMARY KEY (`idpregunta`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`idpregunta`, `numpregunta`, `pregunta`, `opcion1`, `opcion2`, `opcion3`, `opcion4`, `correcta`) VALUES
(1, 1, '¿Cuál es el país menos turístico de Europa?', 'Armenia', 'Moldavia', 'Liechtenstein', 'Hungría', 3),
(2, 2, '¿A que pais pertenece la isla Tasmania?', 'Estados Unidos', 'Australia', 'Portugal', 'Ninguna de las anteriores', 2),
(8, 8, '¿Cuál es la capital de Baréin?', 'Baréin', 'Manama', 'Ammán', 'Riad', 2),
(3, 3, '¿En qué país está la Laguna Verde?', 'Chile', 'Argentina', 'Bolivia', 'Todas son correctas', 3),
(7, 7, '¿En qué continente está la India?', 'Oceanía', 'América', 'Asia', 'Antártida', 3),
(4, 4, '¿Dónde se encuentra la cordillera de Los Andes? ', 'Europa', 'Asia', 'Oceania', 'América', 4),
(6, 6, '¿Cuántas estrellas tiene la bandera de China?', 'Ninguna es correcta', '6', '0', '5', 4),
(5, 5, '¿Cuál es la capital de Islandia?', 'Riga', 'Reikjavik', 'Dublín', 'Minsk', 2),
(9, 9, '¿De que tiene forma Italia?', 'Gorro', 'Bota', 'Submarino', 'Nube', 2),
(10, 10, '¿Cuál es el océano más profundo ?', 'Atlántico ', 'Pacífico', 'Índico', 'Ártico', 2);
