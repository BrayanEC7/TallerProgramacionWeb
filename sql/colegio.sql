-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2023 a las 22:50:58
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `colegio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactanos`
--

CREATE TABLE `contactanos` (
  `idContacto` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `celular` varchar(9) NOT NULL,
  `mensaje` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contactanos`
--

INSERT INTO `contactanos` (`idContacto`, `nombre`, `correo`, `celular`, `mensaje`) VALUES
(1, 'asvavsa', 'ba@gmail.com', 'sadsa', 'avddav'),
(2, 'asvavsa', 'ba@gmail.com', 'sadsa', 'avddav'),
(3, 'asvavsa', 'ba@gmail.com', 'sadsa', 'avddav'),
(4, 'asvavsa', 'ba@gmail.com', 'sadsa', 'avddav'),
(5, 'asdsad', 'ba@gmail.com', 'asdasdasd', 'asdasddsa'),
(6, 'asdsad', 'ba@gmail.com', 'asdasdasd', 'asdasddsa'),
(7, 'asdsad', 'ba@gmail.com', 'asdasdasd', 'asdasddsa'),
(8, 'aqegq', 'qgegeq@adfafd', 'qe', 'eqeq'),
(9, 'qwfwfqfwq', 'wqfwfqfwqwfq@eq', 'qwwqfqw', 'fqwffwq'),
(10, 'qwfwfqfwq', 'wqfwfqfwqwfq@eq', 'qwwqfqw', 'fqwffwq'),
(11, 'eegaeag', 'aegba@gmail.com', 'aveeva', 'eavve'),
(12, 'eegaeag', 'aegba@gmail.com', 'aveeva', 'eavve'),
(13, 'vasvsa', 'aegba@gmail.com', 'asfsaf', 'safsfasaf'),
(14, 'sasfasfafasf', 'aegba@gmail.com', 'asffsa', 'fsafasfsafsafsfa'),
(15, 'aegaege', 'aggaegba@gmail.com', 'avdva', 'avdavdvda'),
(16, 'aegaege', 'aggaegba@gmail.com', 'avdva', 'avdavdvda'),
(17, 'aegaege', 'aggaegba@gmail.com', 'avdva', 'avdavdvda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `idEstudiante` int(11) NOT NULL,
  `idPago` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellido` varchar(20) NOT NULL,
  `DNI` varchar(20) NOT NULL,
  `Grado` varchar(2) DEFAULT NULL,
  `Sección` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `idPago` int(11) NOT NULL,
  `Monto_pago` varchar(20) NOT NULL,
  `Fecha_pago` varchar(20) NOT NULL,
  `Entidad_bancaria` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `idTipo` int(10) NOT NULL,
  `cargo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`idTipo`, `cargo`) VALUES
(1, 'Docente'),
(2, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `idTipo` int(10) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `contraseña` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `idTipo`, `usuario`, `contraseña`) VALUES
(3, 2, 'admin', '$2y$10$yHq3MNRriLSQ9TTyaLW3AuKnKUDzXjtrSxLyFMx4RkfS8lvH9Qv0a'),
(4, 1, 'eduardo', '$2y$10$NTMyC0J8U9XT.HZDIFwF/e9pM0HEzIuck22Y/maR0Iw7uvhKR4pua');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contactanos`
--
ALTER TABLE `contactanos`
  ADD PRIMARY KEY (`idContacto`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`idEstudiante`),
  ADD KEY `idPago` (`idPago`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`idPago`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`idTipo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `idTipo` (`idTipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contactanos`
--
ALTER TABLE `contactanos`
  MODIFY `idContacto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `estudiante_ibfk_1` FOREIGN KEY (`idPago`) REFERENCES `pago` (`idPago`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idTipo`) REFERENCES `tipo` (`idTipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
