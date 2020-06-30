-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-06-2020 a las 06:45:56
-- Versión del servidor: 8.0.20
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `video_tutorial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas`
--

CREATE TABLE `tareas` (
  `ID` int NOT NULL,
  `NOMBRE` varchar(100) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `DESCRIPCION` text COLLATE latin1_bin NOT NULL,
  `FECHA` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Volcado de datos para la tabla `tareas`
--

INSERT INTO `tareas` (`ID`, `NOMBRE`, `DESCRIPCION`, `FECHA`) VALUES
(1454, 'COLOR AMARILLO', 'el paciente experimentó cierta confusión y frustración al toparse con una casa que tenía demasiado color amarillo', '2020-06-20'),
(1455, 'UN NUEVO AMIGO!!!', 'A pesar de las dificultades que tiene el paciente para comunicarse, hoy ha encontrado la manera de comunicarse con niño!!!!, fue impresionante!!!', '2020-06-23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int NOT NULL,
  `NOMBRE` varchar(50) COLLATE latin1_bin NOT NULL,
  `APELLIDO` varchar(50) COLLATE latin1_bin NOT NULL,
  `NOMBRE_USUARIO` varchar(30) COLLATE latin1_bin NOT NULL,
  `PASSWORD` varchar(18) COLLATE latin1_bin NOT NULL,
  `TIPO_USUARIO` varchar(15) COLLATE latin1_bin NOT NULL,
  `EMAIL` varchar(100) COLLATE latin1_bin NOT NULL,
  `TELEFONO` int NOT NULL,
  `DIRECCION` text COLLATE latin1_bin NOT NULL,
  `FECHA_DE_NACIMIENTO` date NOT NULL,
  `TIPO_DOCUMENTO` varchar(20) COLLATE latin1_bin NOT NULL,
  `NUMERO_DOCUMENTO` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `NOMBRE`, `APELLIDO`, `NOMBRE_USUARIO`, `PASSWORD`, `TIPO_USUARIO`, `EMAIL`, `TELEFONO`, `DIRECCION`, `FECHA_DE_NACIMIENTO`, `TIPO_DOCUMENTO`, `NUMERO_DOCUMENTO`) VALUES

(3, 'juan pablo', 'sdfsdf', 'juancho', '123', 'CUIDADOR', 'juan@gamil.com', 213213, '123123', '2020-06-17', 'ti', 2332423),
(4, 'Jaqueline María', 'meza gazabón', 'jaque', '123', 'CUIDADOR', 'jaque@gmail.com', 123123, '123123123', '2020-06-17', 'cc', 23123123),
(5, 'Pedro José', 'León Valencia', 'pedrito', '123456789', 'CUIDADOR', 'pdero@gmail.com', 3123123, 'fsdfsdfsdf', '1995-07-13', 'cc', 241234234);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tareas`
--
ALTER TABLE `tareas`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1456;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
