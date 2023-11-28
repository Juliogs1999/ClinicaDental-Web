-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2023 a las 02:15:03
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
-- Base de datos: `baseclinica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clinica`
--

CREATE TABLE `clinica` (
  `idclinica` int(11) NOT NULL,
  `sede` varchar(100) NOT NULL,
  `imgclinica` varchar(100) NOT NULL,
  `correoclinica` varchar(100) NOT NULL,
  `telefono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clinica`
--

INSERT INTO `clinica` (`idclinica`, `sede`, `imgclinica`, `correoclinica`, `telefono`) VALUES
(1, 'Calle Marfin 1301 - Distrito Los Olivos', '', 'easymed.pe@gmail.com', 946455607),
(2, 'Av. Diagonal 550 - oficina 302A- Distrito Miraflores', '', 'easymed.pe@gmail.com', 946455607);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `idpaciente` int(11) NOT NULL,
  `nompaciente` varchar(30) NOT NULL,
  `apepaciente` varchar(30) NOT NULL,
  `telfpaciente` int(11) NOT NULL,
  `dirpaciente` varchar(100) NOT NULL,
  `correopaciente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`idpaciente`, `nompaciente`, `apepaciente`, `telfpaciente`, `dirpaciente`, `correopaciente`) VALUES
(1, 'JULIO', 'GRANDA', 987286677, '', 'juliogs1999@gmail.com'),
(10, 'RICHARD', 'GALINDO', 900184767, '', 'rgalindmirando@gmail.com'),
(13, 'RICHARD ', 'GRANDA', 987286222, '', 'JULIOGS1999@GMAIL.COM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `idreserva` int(11) NOT NULL,
  `horareserva` varchar(10) NOT NULL,
  `fechareserva` date NOT NULL,
  `motivo` varchar(200) NOT NULL,
  `codigopaciente` int(11) NOT NULL,
  `idclinica` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`idreserva`, `horareserva`, `fechareserva`, `motivo`, `codigopaciente`, `idclinica`) VALUES
(1, '3:00 PM', '2023-11-29', 'Mi diente lo siento como pegajoso ', 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clinica`
--
ALTER TABLE `clinica`
  ADD PRIMARY KEY (`idclinica`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`idpaciente`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`idreserva`),
  ADD UNIQUE KEY `FK_reservapaciente` (`codigopaciente`) USING BTREE,
  ADD UNIQUE KEY `FK_reservaclinica` (`idclinica`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clinica`
--
ALTER TABLE `clinica`
  MODIFY `idclinica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `paciente`
--
ALTER TABLE `paciente`
  MODIFY `idpaciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `idreserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `FK_reservaclinica` FOREIGN KEY (`idclinica`) REFERENCES `clinica` (`idclinica`),
  ADD CONSTRAINT `FK_reservapaciente` FOREIGN KEY (`codigopaciente`) REFERENCES `paciente` (`idpaciente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
