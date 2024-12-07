-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 07-12-2024 a las 09:40:32
-- Versión del servidor: 10.6.20-MariaDB-cll-lve
-- Versión de PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `eelqpxrm_baseclinica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivo`
--

CREATE TABLE `archivo` (
  `CodigoArchivo` int(11) NOT NULL,
  `NomArchivo` varchar(100) NOT NULL,
  `CodigoPaciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `archivo`
--

INSERT INTO `archivo` (`CodigoArchivo`, `NomArchivo`, `CodigoPaciente`) VALUES
(38, 'ALEXGARCIA.png', 21),
(39, '_PRESUPUESTO KATHERINE PALACIOS 04_24.pdf', 265),
(40, 'ELIONAVARRETE.png', 123),
(41, 'DEMVERAZAÑA.png', 166),
(42, 'CATALINAQUISPE.png', 299),
(43, 'BLANCA.png', 256),
(44, 'BIBIANACANCHAYA (1).png', 259),
(46, 'ASHLYSANTILLAN.pdf', 139),
(47, 'GIUALIANASANCHEZ.png', 255),
(48, 'GERALDINEJACINTO.png', 40),
(49, 'GABRIELAORTEGA.png', 13),
(50, 'FERNANDOCAMPOS.png', 262),
(51, 'KATHERINEPALACIOS.png', 265),
(52, 'JUANDEDIOS.png', 292),
(53, 'JOSEGREY.pdf', 60),
(54, 'JADENZAMORA.png', 297),
(55, 'HAYDEEANDIA.pdf', 187),
(56, 'MARTHABUSTAMANTE.png', 289),
(57, 'LIZRIVERA.png', 269),
(58, 'LEONARDOQUISPE.png', 298),
(59, 'KATTYSEBASTIAN.pdf', 219),
(60, 'KATIAMENDOZA.png', 261),
(61, 'PRESUPUESTO CHISTIAN RAMÓN 110724.pdf', 357),
(62, 'PERCYALTAMIRANO.png', 334),
(63, 'PABLOMANCO.png', 2),
(64, 'MIRIAMAREVALO.png', 267),
(65, 'MEDELINERODRIGUEZ.pdf', 101),
(66, 'PRESUPUESTO-CLAUDIAEVELYNYURCA-4JULIO2024 2.pdf', 345),
(67, 'PRESUPUESTO-BENJAMINTHERRY-24JULIO2024.pdf', 378),
(68, 'PRESUPUESTO-BENILDAPRUDENCIO-11JULIO2024.pdf', 358),
(69, 'PRESUPUESTO STEFANO BALUARTE 250724.pdf', 379),
(70, 'PRESUPUESTO-MARIOGUTIERREZ-13AGOSTO2024.pdf', 400),
(71, 'PRESUPUESTO-LORELAINEVILCHEZBRIONES-13JULIO2024.pdf', 346),
(72, 'PRESUPUESTO-LIAMSEBASTIANSMITH-11JULIO2024.pdf', 352),
(73, 'PRESUPUESTO-JUANFRANMUÑOZCHUQUIZUTA-5AGOSTO2024.pdf', 394),
(74, 'PRESUPUESTO-GAELLLANOS-26AGOSTO2024.pdf', 410),
(75, 'RIBELINHOFALCON.png', 270),
(76, 'RAULQUISPE.png', 264),
(77, 'PRESUPUESTO-YORDANMINAYAJARA-13JULIO2024.pdf', 362),
(78, 'PRESUPUESTO-YENYGONZÁLEZ-13AGOSTO2024.pdf', 397),
(79, 'PRESUPUESTO-NAOMIAPONTEBENITEZ-11JULIO2024.pdf', 355),
(80, 'PRESUPUESTO-MILAGROSROCACOLAN-11JULIO2024.pdf', 356),
(81, 'WILLIAMSANTOS.pdf', 249),
(82, 'VICTORIAMENDEZ.png', 12),
(83, 'SEBASTIANVELASQUEZ.pdf', 178),
(84, 'SEBASTIANVELASQUEZ-2.pdf', 178),
(85, 'ROBERTOARIAS.png', 9),
(86, 'MEDELINERODRIGUEZ-2.pdf', 101),
(87, 'KATHERINPALACIOS-2.png', 265),
(88, 'HAYDEEANDIA-2.pdf', 187),
(90, 'PRESUPUESTO-DORAVARGASDESANDOVAL-11JULIO2024.pdf', 194),
(91, 'PLANTILLA DE PRESUPUESTO .pdf.pdf', 156),
(92, 'image.jpg', 270),
(96, 'PRESUPUESTO-EDITHMARCELO-18SEPTIEMBRE2024.pdf', 466),
(97, 'PRESUPUESTO-HECTORZEGARRA-18SEPTIEMBRE2024.pdf', 467),
(98, 'PRESUPUESTO-ROGERQUINTE-19SEPTIEMBRE2024.pdf', 468),
(99, 'PRESUPUESTO-ADRIÁNQUINTE-19SEPTIEMBRE2024.pdf', 435),
(100, 'PRESUPUESTO-JOSETORRES-21SEPTIEMBRE2024.pdf', 469),
(101, 'PRESUPUESTO-EMMATORRES-14SEPTIEMBRE2024.pdf', 429),
(102, 'PRESUPUESTO-ELIZABETHTORRES-14SEPTIEMBRE2024.pdf', 426),
(105, 'PRESUPUESTO (OPCION 2)-YOVANABARZOLA-10SEPTIEMBRE2024 (1).pdf', 418),
(106, 'PRESUPUESTO (OPCION 1)-YOVANABARZOLA-10SEPTIEMBRE2024.pdf', 418),
(108, 'PRESUPUESTO-NAYDAYAURI-21SEPTIEMBRE2024.pdf', 471),
(109, 'PRESUPUESTO-MURIELINCHICAQUI-24SEPTIEMBRE2024.pdf', 465),
(110, 'PRESUPUESTO-GAELSILVESTRE-24SEPTIEMBRE2024.pdf', 135),
(111, 'PRESUPUESTO JAYLINSA 240924.pdf', 128),
(112, 'PRESUPUESTO-YASONNEVER-24SEPTIEMBRE2024.pdf', 472),
(113, 'PRESUPUESTO JESÚS PONCE250924.pdf', 474),
(117, 'Foto presupuesto.jpg', 482),
(118, 'jjj.jpg', 1),
(119, 'Presupuesto odonto.jpg', 492),
(120, 'Implante presupuesto.jpg', 492),
(122, 'Presupuesto general.jpg', 497),
(123, 'Presupuesto implantes .jpg', 497),
(125, 'PRESUPUESTO-SOFÍASANTIAGO-9NOVIEMBRE2024.pdf', 498),
(126, 'PRESUPUESTO GABY TORRES .pdf.pdf', 499),
(127, 'PRESUPUESTO-ANGELASANCHEZ-14NOVIEMBRE2024.pdf', 501),
(128, 'PRESUPUESTO-BELENVALDARRAGO-14NOVIEMBRE2024.pdf', 502),
(129, 'PRESUPUESTO-LUCCATELLO-14NOVIEMBRE2024.pdf', 503),
(130, 'Presupuesto foto.jpg', 507),
(131, 'PRESUPUESTO-WILBEROBLEA-20NOVIEMBRE2024.pdf', 508),
(132, 'PRESUPUESTO-YESENIAZAMUDIO-19NOVIEMBRE2024.pdf', 485),
(133, 'PRESUPUESTO-YESENIALIPA-20NOVIEMBRE2024.pdf', 510),
(134, 'PRESUPUESTO-NILTONQUIAPAZA-20NOVIEMBRE2024.pdf', 509),
(135, 'PRESUPUESTO-ANGIETAKEUCHI-30NOVIEMBRE2024.pdf', 516);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `Codigo` int(11) NOT NULL,
  `Nombre` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Apellido` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Dni` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Correo` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Telefono` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Sede` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Direccion` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Especialidad` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Fechanac` date NOT NULL,
  `Fecha` date NOT NULL,
  `Fechafin` date NOT NULL,
  `Fechalimpieza` date NOT NULL,
  `NombrePadre` varchar(100) NOT NULL,
  `DniPadre` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`Codigo`, `Nombre`, `Apellido`, `Dni`, `Correo`, `Telefono`, `Sede`, `Direccion`, `Especialidad`, `Fechanac`, `Fecha`, `Fechafin`, `Fechalimpieza`, `NombrePadre`, `DniPadre`) VALUES
(0, 'SMILEY', 'CONSULTORIOS', '00000000', 'DNI', '', 'NULL', '', 'null', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', ''),
(1, 'JULIO', 'GRANDA', '71420304', 'DNI', '+51 987755555', 'MIRAFLORES', 'Av. Mariscal Castilla', 'Consulta General', '1999-08-25', '2024-07-25', '2024-10-29', '2024-10-16', 'MIGUEL ANGEL GRANDA DAZA', '09048265'),
(2, 'PABLO', 'MANCO CASTRO', '10367911', 'DNI', '+51984194449', 'Los Olivos', 'Los Olivos', 'Rehabilitacion Oral', '0000-00-00', '2023-12-14', '2024-03-19', '0000-00-00', '', ''),
(3, 'ROSA ', 'ESTRADA ', '06600860', 'DNI', '+51981988043', 'Los Olivos', 'Los olivos ', 'Rehabilitacion Oral', '0000-00-00', '2023-10-27', '2024-03-09', '0000-00-00', '', ''),
(4, 'ALICIA HANNY', 'YANA BENAVENTE ', '30963900', 'DNI', '+51984210398', 'Los Olivos', 'Los olivos ', 'Rehabilitacion Oral', '0000-00-00', '2022-08-26', '2024-03-21', '0000-00-00', '', ''),
(5, 'LISSET AYME ', 'MARTINEZ CRUZ', '45522325', 'DNI', '+51970343004', 'Los Olivos', 'Los olivos ', 'Estetica Dental y Restauradora', '0000-00-00', '2024-02-06', '2024-02-06', '0000-00-00', '', ''),
(6, 'KETY', 'ZACARIAS ANCHIRAICO', '10178531', 'DNI', '+51947539360', 'Los Olivos', 'Los Olivos', 'Rehabilitacion Oral', '0000-00-00', '2024-03-25', '2024-03-25', '0000-00-00', '', ''),
(7, 'YEIMI LISET ', 'LOPEZ FERNANDEZ ', '44246880', 'DNI', '+51993123602', 'Los Olivos', 'Los Olivos ', 'Rehabilitacion Oral', '0000-00-00', '2024-02-26', '2024-03-21', '0000-00-00', '', ''),
(8, 'ELIZABETH CARMELA ', 'CAYCHO ROJAS ', '25436349', '', '+51926686353', 'Los Olivos', 'Los Olivos', 'Rehabilitacion Oral', '0000-00-00', '2024-01-13', '2024-03-19', '0000-00-00', '', ''),
(9, 'ROBERTO', 'ARIAS TASAYCO', '07486568', '', '+51940315506', 'Los Olivos', 'Los Olivos ', 'Rehabilitacion Oral', '0000-00-00', '2024-02-20', '2024-03-19', '0000-00-00', '', ''),
(10, 'LEONOR ', 'OBANDO AFARO', '25439506', '', '+51926205317', 'Los Olivos', 'Los Olivos', 'Estetica Dental y Restauradora', '0000-00-00', '2023-10-02', '2024-03-16', '0000-00-00', '', ''),
(11, 'AGRIPINA', 'PARDO HUAMAN', '00000000', '', '+51939152680', 'Los Olivos', 'Los Olivos', 'Rehabilitacion Oral', '0000-00-00', '2021-11-13', '2024-03-16', '0000-00-00', '', ''),
(12, 'VICTORIA ', 'MENDEZ JARA ', '25812203', '', '+51985852000', 'Los Olivos', 'los olivos ', 'Rehabilitacion Oral', '0000-00-00', '2024-03-09', '2024-03-16', '0000-00-00', '', ''),
(13, 'GABRIELA ', 'ORTEGA ARONE', '42575112', '', '+51954616589', 'Los Olivos', 'Los Olivos', 'Rehabilitacion Oral', '0000-00-00', '2024-03-05', '2024-03-05', '0000-00-00', '', ''),
(14, 'SARA ', 'MESA AMIEL ', '08608216', '', '+51992907087', 'Los Olivos', 'los olivos ', 'Rehabilitacion Oral', '0000-00-00', '2024-01-13', '2024-02-10', '0000-00-00', '', ''),
(15, 'OTILIA ', 'CASTELO MEZA ', '00000000', '', '+51992907087', 'Los Olivos', 'los olivos ', 'null', '0000-00-00', '2022-02-26', '2024-02-03', '0000-00-00', '', ''),
(16, 'IGNACIO PABLO', 'CRISOLO VELASQUEZ ', '31649397', '', '+51945754716', 'Los Olivos', 'Los Olivos', 'Rehabilitacion Oral', '0000-00-00', '2023-10-21', '2024-03-05', '0000-00-00', '', ''),
(17, 'ERICK ', 'NAPA URBINA ', '73200924', '', '+51963858918', 'Los Olivos', 'los olivos ', 'Estetica Dental y Restauradora', '0000-00-00', '2023-12-16', '2024-03-02', '0000-00-00', '', ''),
(18, 'LIDIA ', 'GALARZA ASENCIO', '06269726', '', '+51942421823', 'Los Olivos', 'Los Olivos', 'Rehabilitacion Oral', '0000-00-00', '2024-02-20', '2024-02-26', '0000-00-00', '', ''),
(19, 'DORIS ', 'ANDIA NEVADO', '00000000', '', '+51979782437', 'Los Olivos', 'los olivos', 'Rehabilitacion Oral', '0000-00-00', '2022-09-24', '2023-06-28', '0000-00-00', '', ''),
(20, 'ESTEFANO SALVADOR ', 'CHUQUIZUTA SAAVEDRA', '61835782', '', '+51939163530', 'Los Olivos', 'Los Olivos ', 'Ortodoncia', '0000-00-00', '2024-02-06', '2024-02-06', '0000-00-00', '', ''),
(21, 'ALEX', 'GARCIA MENDEZ ', '42021605', '', '+51985852000', 'Los Olivos', 'Los Olivos', 'Estetica Dental y Restauradora', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', ''),
(22, 'SARA KARINA', 'OCHOA MESA', '00000000', '', '+51000000000', 'Los Olivos', 'Los Olivos', 'Rehabilitacion Oral', '0000-00-00', '2024-02-10', '2024-02-10', '0000-00-00', '', ''),
(23, 'CANDY CECILIA ', 'REYNOZO CRISPIN ', '71390338', '', '+51926041487', 'Los Olivos', 'Los Olivos ', 'Estetica Dental y Restauradora', '0000-00-00', '2023-06-23', '2023-06-28', '0000-00-00', '', ''),
(24, 'NICOLÁS NIEL ', 'AZAÑA EULOGIO', '70571582', '', '+51924889829', 'null', 'Los Olivos', 'Estetica Dental y Restauradora', '0000-00-00', '2023-12-23', '2024-01-18', '0000-00-00', '', ''),
(25, 'HAINZEL ', 'AZAÑA EULOGIO', '70571581', '', '+51933052130', 'Los Olivos', 'Los Olivos', 'Estetica Dental y Restauradora', '0000-00-00', '2023-01-18', '2023-01-18', '0000-00-00', '', ''),
(26, 'NELLY AMELIA', 'EULOGIO OBREGON', '09617260', '', '+51934204449', 'Los Olivos', 'Los Olivos', 'Estetica Dental y Restauradora', '0000-00-00', '2023-10-17', '2024-01-25', '0000-00-00', '', ''),
(27, 'FRANK ', 'QUISPE ESEVIN', '47956274', '', '+51932539724', 'Los Olivos', 'Los Olivos ', 'Rehabilitacion Oral', '0000-00-00', '2024-01-25', '2024-01-25', '0000-00-00', '', ''),
(28, 'IGNAZIO VALENTINO ', 'CARBAJAL ORTEGA', '78935780', '', '+51996420682', 'Los Olivos', 'Los Olivos', 'Estetica Dental y Restauradora', '0000-00-00', '2023-06-30', '2024-01-27', '0000-00-00', '', ''),
(29, 'MARCELO', 'AGUILAR RODRIGUEZ ', '48261369', '', '+51991698480', 'Los Olivos', 'Los Olivos', 'Estetica Dental y Restauradora', '0000-00-00', '2022-11-17', '2024-01-27', '0000-00-00', '', ''),
(30, 'JOSÉ LUIS ', 'ESCUDERO DOMINGUEZ ', '32609262', '', '+51941816028', 'Los Olivos', 'Los Olivos', 'Estetica Dental y Restauradora', '0000-00-00', '2023-02-28', '2024-02-03', '0000-00-00', '', ''),
(31, 'WILDER ', 'HUAMAN VASQUEZ ', '46732233', 'DNI', '+51945732299', 'LOS OLIVOS', 'Los Olivos ', 'Estetica Dental y Restauradora', '0000-00-00', '2024-01-25', '2023-01-25', '0000-00-00', '', ''),
(32, 'LUIS ENRIQUE ', 'HILARIO LIMAY ', '00000000', '', '+51000000000', 'null', 'Los Olivos', 'Estetica Dental y Restauradora', '0000-00-00', '2023-02-25', '2023-03-28', '0000-00-00', '', ''),
(33, 'ALESSANDRA NICOLE ', 'MANCO FLORES ', '74903724', '', '+51952381408', 'null', 'Los Olivos', 'Ortodoncia', '0000-00-00', '2024-02-03', '2024-02-03', '0000-00-00', '', ''),
(34, 'AXEL HIPOLITO ', 'VELASQUEZ MEJIA ', '72456746', 'null', '+51991530018', 'LOS OLIVOS', 'Los Olivos ', 'Estetica Dental y Restauradora', '0000-00-00', '2023-10-13', '2024-02-06', '0000-00-00', '', ''),
(35, 'ROSSMERY', 'MARTINEZ CRUZ', '46124792', '', '+51997571308', 'Los Olivos', 'Los Olivos ', 'Rehabilitacion Oral', '0000-00-00', '2023-05-23', '2023-11-11', '0000-00-00', '', ''),
(36, 'PAUL ', 'ANCHIRAYCO DELGADO ', '41557859', '', '+51974277818', 'Los Olivos', 'Los Olivos', 'Rehabilitacion Oral', '0000-00-00', '2024-01-27', '2024-02-06', '0000-00-00', '', ''),
(37, 'JUAN ', 'EXALTACION DURAN ', '73261314', '', '+51980692301', 'null', 'Los Olivos ', 'Rehabilitacion Oral', '0000-00-00', '2024-02-03', '2024-02-03', '0000-00-00', '', ''),
(38, 'ANGELA NICOLE ', 'MORENO VALENZUELA ', '74834979', '', '+51951191534', 'null', 'Los Olivos ', 'Estetica Dental y Restauradora', '0000-00-00', '2024-01-25', '2024-02-06', '0000-00-00', '', ''),
(39, 'JACKELYNE ', 'QUISPE RIOS ', '74714222', '', '+51947166636', 'Los Olivos', 'Los Olivos ', 'Estetica Dental y Restauradora', '0000-00-00', '2023-03-31', '2024-02-06', '0000-00-00', '', ''),
(40, 'GERALDINE', 'JACINTO ROMERO', '47288617', '', '+51996244341', 'Los Olivos', 'Puente piedra ', 'Cirugia Bucal', '0000-00-00', '2024-03-25', '2024-04-01', '0000-00-00', '', ''),
(43, 'JONATHAN LEONEL', 'CARNERO RAMIREZ', '00000001', '', '+51 936937861', 'Los Olivos', 'Callao', 'Odontopediatria', '0000-00-00', '2022-11-12', '2023-04-22', '2022-11-12', '', ''),
(44, 'RODRIGO OSWALDO', 'VALENCIA ', '00000002', '', '+51 982527722', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-08-12', '2023-08-12', '2023-08-12', '', ''),
(45, 'IAN CARLO ', 'BALTODANO MENDIOLA', '91218037', '', '+51 925039887', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-07-08', '2023-07-08', '2023-07-08', '', ''),
(46, 'LEONEL ', 'ZAPATA SANTA CRUZ', '79333946', '', '+51 922107826', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-04-15', '2023-05-19', '2023-05-19', '', ''),
(47, 'FATIMA YSABEL ', 'BALTODANO MENDIOLA', '92021991', '', '+51 925039887', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-07-08', '2023-08-04', '2023-08-04', '', ''),
(48, 'ESTEBAN JOSUÉ', 'ANGULO ABREGU', '91042427', '', '+51 995892529', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-03-11', '2023-03-11', '2023-03-11', '', ''),
(49, 'ANDERSON ', 'SATURNO PEREZ', '79915126', '', '+51 000000000', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-02-23', '2023-02-23', '2023-02-23', '', ''),
(50, 'JOSUÉ ', 'FAUSTINO RODRIGUEZ', '85812824', '', '+51 933674877', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-07-14', '2023-07-22', '2023-07-22', '', ''),
(51, 'ELAINE MASSIEL LIDIA', 'RODRIGUEZ SILUPU', '00000004', '', '+51 977915950', 'Los Olivos', 'Lima', 'Odontopediatria', '0000-00-00', '2022-11-06', '2022-11-06', '2022-11-06', '', ''),
(52, 'DEIVYS ALBERTO', 'LIZCATEGUI OVIEDO', '00000005', '', '+51 000000000', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-02-06', '2023-05-19', '2023-02-06', '', ''),
(53, 'LEONELA MELANIA', 'LOARTE PEREZ', '00000006', '', '+51 000000000', 'Los Olivos', 'Lima', 'Odontopediatria', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', ''),
(54, 'EMILIA ', 'JUAPE GARRIDO', '00000007', '', '+51 983099819', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-01-04', '2023-01-04', '0000-00-00', '', ''),
(55, 'EMILIA ALESSANDRA', 'CHOY BARRIONUEVO', '91704453', '', '+51 934328102', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-04-14', '2023-04-16', '2023-04-14', '', ''),
(56, 'THIAGO VALENTINO ', 'VILLANUEVA HUAYTA', '91448131', '', '+51 963264430', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-09-01', '2023-09-01', '2023-09-01', '', ''),
(57, 'FRANCHESCA LUCIANA', 'ANDIA SALAZAR', '00000008', '', '+51 992391165', 'Los Olivos', '', 'Ortodoncia', '0000-00-00', '2022-11-05', '2023-02-09', '0000-00-00', '', ''),
(58, 'FACUNDO GAEL ', 'RUPAY DEZAR', '46061457', '', '+51 992834706', 'Los Olivos', 'Lima', 'Odontopediatria', '0000-00-00', '2023-01-05', '2023-01-05', '2023-01-05', '', ''),
(59, 'LAI WHA ', 'WONG WONG', '79649186', '', '+51 902569734', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-06-23', '2023-06-30', '2023-06-23', '', ''),
(60, 'JOSE EDWARD', 'GREY MOSTACERO', '10619153', '', '+51 998276728', 'Los Olivos', '', 'Protesis Dental', '0000-00-00', '2024-02-10', '2024-02-15', '0000-00-00', '', ''),
(61, 'IAN GADIEL ', 'RIVADENERYA LIÑAN', '00000009', '', '+51 997359875', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-06-02', '2023-06-30', '2023-06-02', '', ''),
(62, 'NAHALIEL MATEO', 'PASACHE HONORIO', '91178047', '', '+51 938998831', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-06-24', '2023-06-24', '0000-00-00', '', ''),
(63, 'GIANLUCA SEBASTIAN ', 'MANRIQUE RIOS', '92035621', '', '+51 936204206', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-08-03', '2023-08-03', '0000-00-00', '', ''),
(64, 'LUCAS ABDIEL', 'PASACHE VALENZUELA', '81144940', '', '+51 925374442', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-06-24', '2023-06-24', '0000-00-00', '', ''),
(65, 'ATES NIHAM EMILIANO', 'VARGAS TORRES', '91686422', '', '+51 995979265', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-06-22', '2023-06-22', '0000-00-00', '', ''),
(66, 'GENESIS VALENTINA', 'AMBIA TRUJILLO', '00000011', '', '+51 991848556', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-07-22', '2023-07-22', '2023-07-22', '', ''),
(67, 'ENZO ', 'LARA CHINCHA', '76102402', '', '+51 918005512', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-06-29', '2023-06-29', '0000-00-00', '', ''),
(68, 'GRACIA ALEXANDRA', 'TELLO ALARCON', '91884394', '', '+51 930661725', 'Los Olivos', '', 'null', '0000-00-00', '2023-07-08', '2023-07-08', '0000-00-00', '', ''),
(69, 'MEISSY SAMARY', 'BERNA CUEVA', '00000012', '', '+51 975259999', 'Los Olivos', 'Comas', 'Odontopediatria', '0000-00-00', '2022-12-15', '2023-05-26', '2023-05-26', '', ''),
(70, 'ARIANA FIORELLA', 'LAZON GUEVARA', '91760350', '', '+51 920049703', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-05-20', '2023-05-20', '2023-05-20', '', ''),
(71, 'CAYETANA EMILIA ', 'OBIAGA ARAGON', '90015258', '', '+51 940248122', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-04-14', '2023-04-21', '2023-04-14', '', ''),
(72, 'MOISES ALEJANDRO', 'ALVAREZ SOSA', '91222841', '', '+51 000000000', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-03-25', '2023-03-25', '2023-03-25', '', ''),
(73, 'PIA CATHERINE ', 'PRINCIPE CALMET', '00000013', '', '+51 000000000', 'Los Olivos', 'Lima', 'Odontopediatria', '0000-00-00', '2022-10-08', '2022-11-05', '2022-10-08', '', ''),
(74, 'EVANS JORDANO ', 'MONTELLANOS CHAVEZ', '91526907', '', '+51 933654601', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-07-20', '2023-08-03', '2023-07-20', '', ''),
(75, 'MATHIAS AARON', 'VELASQUEZ ROBLES', '00000014', '', '+51 000000000', 'Los Olivos', 'Los Olivos', 'Odontopediatria', '0000-00-00', '2022-12-17', '2022-12-17', '0000-00-00', '', ''),
(76, 'JOAQUIN MIGUEL ', 'CENTENO TELLO', '00000001', '', '+51 0000000000', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2022-12-15', '2022-12-19', '2022-12-19', '', ''),
(77, 'EVANNS ', 'PIZARRO ZUAZO', '00000016', '', '+51 942035142', 'Los Olivos', 'Lima-Hospital Negreiros', 'Odontopediatria', '0000-00-00', '2023-02-18', '2023-02-18', '2023-02-18', '', ''),
(78, 'MARIA FERNANDA NICOL', 'CENTENO GARCIA', '79249637', '', '+51 000000000', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-03-04', '2023-03-18', '0000-00-00', '', ''),
(79, 'KEIT MARIE ', 'QUINTO DE LA CRUZ', '90793543', '', '+51 924100007', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-06-10', '2023-06-10', '0000-00-00', '', ''),
(80, 'DEREK  AURELIO ', 'TERRONES TENORIO', '00000017', '', '+51 966303391', 'Los Olivos', 'Chiclayo', 'Odontopediatria', '0000-00-00', '2022-12-22', '2022-12-22', '2022-12-22', '', ''),
(81, 'VICTOR HUGO', 'LLANOS MADRID', '00000019', '', '+51 932110147', 'Los Olivos', 'Lima', 'Estetica Dental y Restauradora', '0000-00-00', '2022-08-29', '2022-08-29', '2022-08-29', '', ''),
(82, 'SAMANTHA', 'COURT VASQUEZ', '00000020', '', '+51 999773924', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-07-20', '2023-07-20', '2023-07-20', '', ''),
(83, 'SOFIA AILEEN ', 'MERA CERDA', '00000021', '', '+51 901558483', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-06-22', '2023-06-24', '2023-06-24', '', ''),
(84, 'ALONDRA JOHADI ', 'FERNANDEZ SEBASTIAN ', '00000022', '', '+51 000000000', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-06-23', '2023-06-23', '2023-06-23', '', ''),
(85, 'JULIAN ADRIEL H.', 'CULCAS GARCIA', '91631971', '', '+51 923110347', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-08-11', '2023-08-26', '2023-08-11', '', ''),
(86, 'VALENTINO', 'ANEHIRAYCO MARTINEZ', '00000024', '', '+51 997571308', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-07-08', '2023-09-01', '2023-07-08', '', ''),
(87, 'ASHLEY NAYARA', 'GUTIERREZ BOGGIO', '78637323', '', '+51 991814605', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-06-29', '2023-06-29', '0000-00-00', '', ''),
(88, 'VANIA ROXANA', 'MADRID SALCEDO', '42596068', '', '+51 970689819', 'Los Olivos', '', 'Endodoncia', '0000-00-00', '2023-02-23', '2023-10-03', '0000-00-00', '', ''),
(89, 'LISBET ', 'SOLIS SARAVIA', '44472256', '', '+51 926618836', 'Los Olivos', '', 'Endodoncia', '0000-00-00', '2023-05-08', '2023-06-28', '2023-05-12', '', ''),
(90, 'DHARIANA ANJHALI', 'LLERENA SOTO', '92299377', '', '+51 916762968', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-08-04', '2023-08-04', '0000-00-00', '', ''),
(91, 'SANTIAGO', 'MAGAN SANDOVAL', '00000023', '', '+51 000000000', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2022-11-19', '2022-11-19', '2022-11-19', '', ''),
(92, 'ZOE KHALESSI', 'REYNAGA RUIZ', '90212592', '', '+51 981511270', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-05-19', '2023-05-19', '2023-05-19', '', ''),
(93, 'ISABEL MARIA FE', 'SANCHEZ SICHA', '90974949', '', '+51 992794143', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-05-19', '2023-05-19', '2023-05-19', '', ''),
(94, 'MIA LUANA ', 'CALCINA REBOLLEDO', '00000026', '', '+51 923767423', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-05-12', '2023-05-12', '2023-05-12', '', ''),
(95, 'IAN ISRAEL ', 'VERDE COLINA', '91870525', '', '+51 000000000', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-03-02', '2023-08-10', '2023-08-10', '', ''),
(96, 'ANTONIA', 'HUARCA MENDOZA', '92103118', '', '+51 000000000', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-08-19', '2023-08-19', '2023-08-19', '', ''),
(97, 'ALESSIA VERONICA ', 'GAMONAL MANSILLA', '00000027', '', '+51 000000000', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-08-11', '2023-08-11', '2023-08-11', '', ''),
(98, 'ANA SOFIA ', 'DOMINGUEZ MALLQUI', '00000028', '', '+51 951660143', 'Los Olivos', 'Los olivos', 'Ortodoncia', '0000-00-00', '2022-01-22', '2024-01-25', '2024-01-20', '', ''),
(99, 'BERTHA', 'VASQUEZ VARGAS', '19245922', '', '+51 000000000', 'Los Olivos', '', 'Rehabilitacion Oral', '0000-00-00', '2023-07-02', '2023-07-02', '2023-07-02', '', ''),
(100, 'GISELA ', 'MOZO AYBAR', '25571845', '', '+51 975650794', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-11-18', '2023-11-20', '2023-11-18', '', ''),
(101, 'MEDELINE ', 'RODRIGUEZ SEGUNDO', '15682423', '', '+51 998039729', 'Los Olivos', '', 'Endodoncia', '0000-00-00', '2022-11-11', '2024-01-04', '0000-00-00', '', ''),
(102, 'VALERIA ', 'AYALA GASTELO', '00000029', '', '+51 989966864', 'Los Olivos', 'Lima', 'Ortodoncia', '0000-00-00', '2022-11-26', '2023-09-22', '2023-06-23', '', ''),
(103, 'ZUMIKO JHADIRA ', 'LEON SOLIS', '00000030', '', '+51 923599904', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-05-08', '2023-06-28', '2023-06-28', '', ''),
(104, 'CONSUELO ', 'PARIONA', '00000031', '', '+51 000000000', 'Los Olivos', '', 'Ortodoncia', '0000-00-00', '2022-06-29', '2022-06-29', '2022-06-29', '', ''),
(105, 'GIULLIANA ', 'LECCA', '25629239', '', '+51 992963183', 'Los Olivos', '', 'Rehabilitacion Oral', '0000-00-00', '2023-06-02', '2023-06-26', '0000-00-00', '', ''),
(106, 'EDMUNDO MARCELO ', 'AGUILAR MIRANDA', '08632267', '', '+51 941062716', 'Los Olivos', '', 'Rehabilitacion Oral', '0000-00-00', '2023-11-18', '2023-11-27', '0000-00-00', '', ''),
(107, 'CLORIZA ', 'TERAN ZAMBRANO', '41844709', '', '+51 000000000', 'Los Olivos', '', 'Endodoncia', '0000-00-00', '2022-06-21', '2023-01-11', '0000-00-00', '', ''),
(108, 'CATHERINE SULMA', 'QUISPE VICENTE', '72466010', '', '+51 991451604', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-05-19', '2023-06-17', '0000-00-00', '', ''),
(109, 'NERY', 'ATUNCAR MENDIETA', '41240465', '', '+51 985427760', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-09-22', '2023-09-22', '0000-00-00', '', ''),
(110, 'SANTOS', 'PINTADO LUDEÑA', '92842086', 'DNI', '+51 948995298', 'Los Olivos', 'Piura', 'Consulta General', '0000-00-00', '2021-11-23', '2022-07-07', '2022-07-02', '', ''),
(111, 'SARA', 'IÑIGO', '00000034', '', '+51 000000000', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2022-07-07', '2022-11-12', '2022-09-24', '', ''),
(112, 'BRAYAN  ', 'IÑIGO PINTADO', '00000035', '', '+51 000000000', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2022-10-01', '2022-10-01', '2022-10-01', '', ''),
(114, 'ANGELA GERLADINE', 'PANAMA ', '00000038', '', '+51 000000000', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2022-05-11', '2022-05-15', '0000-00-00', '', ''),
(115, 'JESUS ADRIAN ', 'DIAZ SILVA', '92591172', '', '+51 902510024', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-07-14', '2023-07-14', '2023-07-14', '', ''),
(116, 'JOAQUIN OMAR ', 'COLLAZOS ', '0149685', '', '+51 000000000', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-06-23', '2023-06-23', '0000-00-00', '', ''),
(117, 'ADIRA KATALEYA', 'VALDIVIA CABALLERO', '92304317', '', '+51 000000000', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-07-06', '2023-07-06', '0000-00-00', '', ''),
(118, 'CATHERINE', 'LEONOR', '00000040', '', '+51 000000000', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2022-10-08', '2023-09-14', '0000-00-00', '', ''),
(119, 'TIRZA EUNICE', 'ALCANTARA ESPEZO', '10684189', '', '+51 975404313', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-09-29', '2023-09-29', '2023-09-29', '', ''),
(120, 'LUISAMARY ANAIS ', 'COLINA FAJARDO', '00485696', '', '+51 953420810', 'Los Olivos', '', 'Endodoncia', '0000-00-00', '2023-06-29', '2023-07-20', '2023-07-20', '', ''),
(121, 'ELIANA DENISSE ', 'VELASQUEZ MEJIA', '44056707', '', '+51 959216498', 'Los Olivos', '', 'Endodoncia', '0000-00-00', '2023-12-16', '2023-12-23', '0000-00-00', '', ''),
(122, 'HIPOLITO CACIANO', 'VELASQUEZ MIRANDA', '09622819', '', '+51 991750857', 'Los Olivos', '', 'Endodoncia', '0000-00-00', '2023-09-28', '2023-12-23', '0000-00-00', '', ''),
(123, 'ELIO JEFFERSON', 'NAVARRETE VILCA', '70778246', '', '+51 902018671', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-08-12', '2023-08-17', '0000-00-00', '', ''),
(124, 'ROXANA', 'MELENDEZ DEL ALGUILA', '08169967', '', '+51 959085716', 'Los Olivos', '', 'Rehabilitacion Oral', '0000-00-00', '2023-07-11', '2023-07-24', '0000-00-00', '', ''),
(125, 'LIZ DIANA ', 'TINEO SAMA ', '042', '', '+51 993030409', 'Los Olivos', '', 'Rehabilitacion Oral', '0000-00-00', '2022-08-26', '2022-11-18', '2022-08-26', '', ''),
(126, 'OMAR ', 'ANDICES VIVAN', '044', '', '+51 000000000', 'Los Olivos', '', 'Rehabilitacion Oral', '0000-00-00', '2023-04-11', '2023-04-11', '2023-04-11', '', ''),
(127, 'REBECA ', 'PANANA ROSALES', '049', '', '+51 000000000', 'Los Olivos', '', 'Endodoncia', '0000-00-00', '2022-05-11', '2022-12-19', '2022-05-17', '', ''),
(128, 'JAYLINSA YADIN ', 'TRUJILLO ACOSTA', '050', '', '+51 000000000', 'LOS OLIVOS', '', 'Endodoncia', '0000-00-00', '2023-02-20', '2023-07-06', '0000-00-00', '', ''),
(129, 'MARISA NATALY ', 'REBOLLEDO GARRIDO', '051', '', '+51 923767426', 'Los Olivos', 'Castilla-Piura', 'Consulta General', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', ''),
(130, 'LUCINDA ', 'POZO BESARES', '08566386', '', '+51 926270794', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-08-12', '2023-08-12', '0000-00-00', '', ''),
(131, 'EMILIA ', 'JAUREGUI LUIS', '052', '', '+51 986176670', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2022-07-11', '2023-05-11', '2022-12-07', '', ''),
(132, 'ALEXANDRA', 'OYOLA RODRIGUEZ', '74220544', '', '+51 955568605', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-01-28', '2023-11-03', '2023-10-28', '', ''),
(133, 'SARA JACKELINE PASTO', 'SANCHEZ CONCHA', '06775632', '', '+51 985939050', 'Los Olivos', '', 'Ortodoncia', '0000-00-00', '2023-08-08', '2023-08-17', '2023-08-17', '', ''),
(134, 'RENATO ', 'VALDIVIA FLORES', '053', '', '+51 000000000', 'Los Olivos', '', 'Rehabilitacion Oral', '0000-00-00', '2022-07-23', '2022-09-08', '2022-07-23', '', ''),
(135, 'GAEL CAMILO', 'SILVESTRE TRUJILLO', '92010286', '', '+51 988395993', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-02-28', '2023-02-28', '2023-02-28', '', ''),
(136, 'LUANA MILET ', 'TERRONES BENDEZU', '054', '', '+51 982079226', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-03-18', '2023-03-25', '2023-03-18', '', ''),
(137, 'DAYARA NICOL ', 'ALVARADO CERRON ', '90769029', '', '+51 958661689', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-03-11', '2023-03-25', '2023-03-11', '', ''),
(138, 'MIA VALERIA ', 'MORRERO SALAS', '055', '', '+51 975344220', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-01-05', '2023-01-05', '2023-01-05', '', ''),
(139, 'ASHLY KATHALEYA', 'SANTILLAN LEON', '92739256', '', '+51 983618557', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2024-01-20', '2024-01-20', '0000-00-00', '', ''),
(140, 'ADRIANA ', 'PEÑA MOZOMBITE', '056', '', '+51 997003451', 'Los Olivos', '', 'Ortodoncia', '0000-00-00', '2022-08-01', '0000-00-00', '0000-00-00', '', ''),
(141, 'LUIS FELIPE', 'ALIAGA MANCO', '43031169', '', '+51 974271495', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-03-20', '2023-12-18', '2023-11-18', '', ''),
(142, 'GUIDO RAUL', 'HUERTA BAYES', '08569080', 'DNI', '+51 996219514', 'LOS OLIVOS', 'Ancash', 'Endodoncia', '1954-09-26', '2022-12-10', '0000-00-00', '0000-00-00', '', ''),
(143, 'CRISTHIAN ARTURO DAV', 'GUZMAN PISCO', '47536271', '', '+51 925231592', 'Los Olivos', '', 'Endodoncia', '0000-00-00', '2023-06-03', '2023-06-16', '0000-00-00', '', ''),
(144, 'LUZ MARITZA ', 'SALVATIERRA MEJIA', '44966280', '', '+51 995774612', 'Los Olivos', '', 'Endodoncia', '0000-00-00', '2023-09-28', '2023-12-23', '0000-00-00', '', ''),
(145, 'DANIELA ', 'VASQUEZ ROJAS', '057', '', '+51 957112238', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2022-12-07', '0000-00-00', '0000-00-00', '', ''),
(146, 'ESTEFANY', 'ALVARADO ANDIA', '058', '', '+51 951309145', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2022-11-05', '2022-11-05', '2022-11-05', '', ''),
(147, 'JAMIR', 'CHAVEZ CAMACHO', '09791938', '', '+51 997717182', 'Los Olivos', '', 'Rehabilitacion Oral', '0000-00-00', '2022-07-15', '0000-00-00', '0000-00-00', '', ''),
(148, 'RODRIGO ALESSANDRO', 'REAL CARLOS', '74301664', '', '+51 946123109', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-06-24', '0000-00-00', '0000-00-00', '', ''),
(149, 'WILMER ', 'FUENTES CHAVEZ', '44389223', '', '+51 918430454', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-03-20', '2023-10-17', '2023-03-20', '', ''),
(150, 'DIEGO ', 'ROJAS HUAMAN', '059', '', '+51 000000000', 'Los Olivos', '', 'Ortodoncia', '0000-00-00', '2022-02-11', '2023-02-21', '0000-00-00', '', ''),
(151, 'ALDO PETER', 'ABANTO MORENO', '40061325', '', '+51 949882833', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-07-08', '2023-07-20', '0000-00-00', '', ''),
(152, 'VICTOR JASON', 'ESPINOZA BARRERA', '73251155', '', '+51 986470078', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-10-02', '2023-10-02', '2023-10-02', '', ''),
(153, 'EMILY', 'ESCUDERO', '060', '', '+51 000000000', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2022-04-11', '2023-03-27', '2022-04-13', '', ''),
(154, 'WILLIAMS ', 'ZAPATA AMAYA', '03827101', '', '+51 910491699', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-08-05', '0000-00-00', '0000-00-00', '', ''),
(155, 'SHAILY YELENA', 'MORENO DIAZ', '40702234', '', '+51 938237310', 'Los Olivos', '', 'Endodoncia', '0000-00-00', '2023-12-07', '2023-12-07', '0000-00-00', '', ''),
(156, 'AZUL VALENTINA', 'ROBLES H.', '75005144', 'DNI', '+51 0000000000', 'LOS OLIVOS', '', 'Endodoncia', '0000-00-00', '2022-10-12', '2022-10-13', '2022-10-12', '', ''),
(157, 'MIRIAN', 'GARCIA GARCIA', '42545226', '', '+51 977600287', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-12-07', '2023-12-07', '0000-00-00', '', ''),
(158, 'BRENDA ISOLINA', 'FERNANDEZ RODRIGUEZ', '062', '', '+51 000000000', 'Los Olivos', 'Carabayllo', 'Endodoncia', '0000-00-00', '2022-10-10', '2022-10-12', '0000-00-00', '', ''),
(159, 'ALEJANDRA RUBI ', 'RODRIGUEZ GUTIERREZ', '72608073', '', '+51 936299439', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-04-13', '0000-00-00', '0000-00-00', '', ''),
(160, 'JOSE LUIS', 'VARA ALCANTARA', '063', '', '+51 946384643', 'Los Olivos', 'Av. Carabayllo 528', 'Consulta General', '0000-00-00', '2022-08-26', '0000-00-00', '0000-00-00', '', ''),
(161, 'KEVIN LUIS', 'ESCUDERO LOPEZ', '064', '', '+51 910387638', 'Los Olivos', 'Lima', 'Consulta General', '0000-00-00', '2023-01-17', '2023-01-17', '0000-00-00', '', ''),
(162, 'BENEDICTO EDUARDO', 'CALDERON SEGOVIA', '06797808', '', '+51 998471274', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-03-01', '0000-00-00', '0000-00-00', '', ''),
(163, 'LUISA', 'MALLQUI MINAS', '065', '', '+51 000000000', 'Los Olivos', '', 'Endodoncia', '0000-00-00', '2022-12-09', '2022-12-09', '0000-00-00', '', ''),
(164, 'BENNY GERARD', 'ESPINOZA ROSALES', '066', '', '+51 000000000', 'Los Olivos', 'Lima', 'Consulta General', '0000-00-00', '2021-04-30', '2021-04-30', '2021-04-30', '', ''),
(165, 'ANDREA ABIGAIL ', 'HUAYA OCHOA', '067', '', '+51 928377869', 'Los Olivos', 'Condominio la rivera de sandiego', 'Consulta General', '0000-00-00', '2022-11-25', '2022-11-25', '0000-00-00', '', ''),
(166, 'DEMVER ABEL ', 'AZAÑA VILLAREAL', '0100', 'DNI', '+51 00000', 'Los Olivos', '', 'Endodoncia', '0000-00-00', '2023-01-23', '2023-03-19', '0000-00-00', '', ''),
(167, 'KAREN MARGOT', 'SANTA CRUZ CAMERGO', '0101', '', '+51 991996736', 'Los Olivos', 'Chiclayo', 'Ortodoncia', '0000-00-00', '2022-06-14', '2023-01-27', '2022-08-05', '', ''),
(168, 'LILIANA ', 'ROBLES', '102', '', '+51 00000', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2022-04-08', '2023-06-12', '2023-06-12', '', ''),
(169, 'LUPE ', 'LECCA', '08591347', 'DNI', '+51 992963183', 'LOS OLIVOS', 'Lima', 'Endodoncia', '2024-12-12', '2022-11-05', '2022-12-23', '0000-00-00', '', ''),
(170, 'CARLOS ALBERTO', 'FLORES LOPEZ', '104', '', '+51 937747081', 'Los Olivos', 'Jesus Maria', 'Consulta General', '0000-00-00', '2022-09-07', '2022-09-07', '0000-00-00', '', ''),
(171, 'RODRIGO', 'NEYRA OLAYA', '17934344', '', '+51 949351063', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-10-02', '2023-10-02', '2023-10-02', '', ''),
(172, 'RICARDO ', 'MAGAN ROMAINVILLE', '09884795', '', '+51 991259788', 'Los Olivos', '', 'Endodoncia', '0000-00-00', '2023-04-20', '2023-04-29', '0000-00-00', '', ''),
(173, 'VICTOR DAVID', 'MENDOZA CHAVEZ', '47545191', '', '+51 966165343', 'Los Olivos', '', 'Rehabilitacion Oral', '0000-00-00', '2023-05-08', '2023-05-08', '0000-00-00', '', ''),
(174, 'EDWIN JOHEL', 'ANGULO QUIROZ', '44669545', '', '+51 988882763', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-02-20', '2023-02-20', '0000-00-00', '', ''),
(175, 'CHARLY', 'PRINCIPE HUERTAS', '80086', '', '+51 933897843', 'Los Olivos', '', 'Endodoncia', '0000-00-00', '2022-10-08', '2022-10-08', '0000-00-00', '', ''),
(176, 'VICTOR', 'LOAYZA CONZA', '0105', '', '+51 985450726', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2022-06-12', '2023-12-23', '2022-06-12', '', ''),
(177, 'DIEGO ADEMILSON', 'ROJAS HUAMAN ', '60746295', '', '+51 904553812', 'Los Olivos', '', 'Ortodoncia', '0000-00-00', '2023-07-08', '2023-07-08', '2023-07-08', '', ''),
(178, 'SEBASTIAN CRISTIAN', 'VELASQUEZ ', '0107', '', '+51 00000', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2022-12-15', '2024-03-02', '2022-12-15', '', ''),
(179, 'EDGAR ', 'VALQUI CHAPPA', '108', '', '+51 940907183', 'Los Olivos', 'Amazonas', 'Endodoncia', '0000-00-00', '2022-08-04', '2022-09-03', '0000-00-00', '', ''),
(180, 'GIANFRANCO', 'CAPILLO VALDIVIA', '46887356', '', '+51 940417435', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2022-12-10', '2022-12-10', '0000-00-00', '', ''),
(181, 'SEGUNDO ', 'TERAN CHOLAN', '0198', '', '+51 950403596', 'Los Olivos', 'Cajamarca', 'Rehabilitacion Oral', '0000-00-00', '2022-08-18', '2022-08-31', '0000-00-00', '', ''),
(182, 'JESSICA ', 'ROJAS MEZA', '43591480', '', '+51 990797660', 'Los Olivos', '', 'Rehabilitacion Oral', '0000-00-00', '2023-12-09', '0000-00-00', '0000-00-00', '', ''),
(183, 'MARELY', 'BARRETO L.', '0193', '', '+51 931578648', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2022-09-17', '2022-12-01', '2022-09-17', '', ''),
(184, 'ANDRES', 'CRICA', '199', '', '+51 980137009', 'Los Olivos', 'Huanuco', 'Endodoncia', '0000-00-00', '2022-03-07', '2022-04-23', '2022-03-07', '', ''),
(185, 'MARICA', 'VIRU LOPEZ', '73791684', '', '+51 942486419', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-03-15', '2023-03-27', '0000-00-00', '', ''),
(186, 'ANABEL SUSAN', 'ANDILES SILVA', '09622738', '', '+51 984538497', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-03-22', '2023-04-26', '0000-00-00', '', ''),
(187, 'HAYDEE ELIZABETH', 'ANDIA NEVADO ', '09622371', '', '+51 913208798', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2022-09-09', '2024-02-15', '2024-02-15', '', ''),
(188, 'BERTHA ', 'VALDIVIA FLORES', '06100918', '', '+51 991778548', 'Los Olivos', 'Lima', 'Consulta General', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', ''),
(189, 'YARIXA ARIANA', 'MALDONADO ANDRIOH', '70041137', '', '+51 953952675', 'Los Olivos', '', 'Endodoncia', '0000-00-00', '2023-04-28', '2023-08-11', '0000-00-00', '', ''),
(190, 'OMAR ANTONIO', 'ARDILES VIVAR', '71597148', '', '+51 988853870', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-08-18', '2023-08-19', '2023-08-18', '', ''),
(191, 'CEYLI', 'CHAVEZ CUBAS', '47127665', '', '+51 965628471', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-04-17', '2023-04-17', '2023-04-17', '', ''),
(192, 'WINDO BLADIMIR', 'QUINTO ALCAHUAMAN', '182', '', '+51 992437943', 'Los Olivos', 'Cerro de pasco', 'Consulta General', '0000-00-00', '2022-12-02', '2022-12-02', '2022-12-02', '', ''),
(193, 'CARMEN EUMELIA', 'GALLO RUIZ', '25542412', '', '+51 0000', 'Los Olivos', 'Los Olivos', 'Rehabilitacion Oral', '0000-00-00', '2022-12-05', '2022-12-05', '2022-12-05', '', ''),
(194, 'DORA ', 'VARGAS DE SANDOVAL', '08470009', 'DNI', '+51 989786243', 'LOS OLIVOS', '', 'Consulta General', '1995-04-02', '2022-03-12', '2022-08-18', '0000-00-00', '', ''),
(195, 'NORMA ', 'RAMIREZ ESPINOZA', '00123456', '', '+51 943791116', 'Los Olivos', 'Lima', 'Endodoncia', '0000-00-00', '2022-05-14', '2022-11-26', '0000-00-00', '', ''),
(196, 'MILAGROS ', 'HUAMAN S.', '00087900', '', '+51 00000', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2022-02-07', '2022-08-18', '0000-00-00', '', ''),
(197, 'CESY', 'NAMO VASQUEZ', '16767040', '', '+51 00000', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-02-11', '2023-03-06', '2023-03-06', '', ''),
(198, 'CLAUDIA ALEJANDRA', 'DE LA CRUZ VICENTE', '46369224', '', '+51 989703310', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-04-03', '2023-04-03', '0000-00-00', '', ''),
(199, 'ROBERTH GARY JOSE', 'TELLO MARTINEZ', '73989497', '', '+51 926244792', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-03-25', '2023-03-25', '2023-03-25', '', ''),
(200, 'BETSABE MARILYN', 'FLORES MESTANZA', '012362', '', '+51 996747388', 'Los Olivos', '', 'Ortodoncia', '0000-00-00', '2021-06-11', '0000-00-00', '0000-00-00', '', ''),
(201, 'MARIA ISABEL ', 'LECCA RENDÓN', '46244652', '', '+51 933927060', 'Los Olivos', '', 'Rehabilitacion Oral', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', ''),
(202, 'MARTIN JORGE', 'ROBLES HUAMAN', '61490961', '', '+51 000000', 'Los Olivos', '', 'Ortodoncia', '0000-00-00', '2023-02-08', '2023-08-15', '0000-00-00', '', ''),
(203, 'ALVARO JOSUE ', 'NOLASCO ZARATE', '00231', '', '+51 999002549', 'Los Olivos', '', 'Endodoncia', '0000-00-00', '2023-02-19', '2023-02-19', '0000-00-00', '', ''),
(205, 'YULIANA DIANA ', 'VICUÑA MEDINA', '41011176', '', '+51 988846748', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-03-24', '2023-03-24', '2023-03-24', '', ''),
(206, 'RUBEN MARTIN', 'ANDIA NEVADO', '10200419', '', '+51 957953582', 'Los Olivos', '', 'Rehabilitacion Oral', '0000-00-00', '2023-08-05', '2023-08-17', '2023-08-11', '', ''),
(207, 'KEVIN ', 'CUEVA LEYVA', '74564744', '', '+51 950144642', 'Los Olivos', '', 'Endodoncia', '0000-00-00', '2023-08-11', '2023-09-09', '2023-09-09', '', ''),
(208, 'SUSAN ', 'SAJAJU', '01478', '', '+51 00000', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2022-08-05', '2022-08-05', '0000-00-00', '', ''),
(209, 'JUANA MARIA ', 'ROSALES', '001472', '', '+51 000000', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2022-11-17', '2022-11-17', '2022-11-17', '', ''),
(210, 'NANCY MILAGROS ', 'REQUENA MORENO', '000871', '', '+51 99717932', 'Los Olivos', 'huaral', 'Rehabilitacion Oral', '0000-00-00', '2022-12-22', '0000-00-00', '0000-00-00', '', ''),
(211, 'NORA ', 'PEÑA AMIEL', '17628128', '', '+51 967948116', 'Los Olivos', '', 'Endodoncia', '0000-00-00', '2022-12-22', '2022-12-22', '0000-00-00', '', ''),
(212, 'CARMELA ', 'LOPEZ CAPILLO', '21789', '', '+51 980164826', 'Los Olivos', 'Pomatambo-Ancash', 'Rehabilitacion Oral', '0000-00-00', '2022-09-15', '2022-11-05', '0000-00-00', '', ''),
(213, 'INGRID VICTORIA', 'FLORES LOPEZ', '72621808', '', '+51 937537465', 'Los Olivos', '', 'Rehabilitacion Oral', '0000-00-00', '2023-03-16', '2023-03-22', '2023-03-16', '', ''),
(214, 'VIRGINIA ESTHER', 'HUAMAN ', '001241', '', '+51 0000', 'Los Olivos', '', 'Consulta General', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', ''),
(215, 'CAMILA GILMA', 'GARCIA TRUJILLO', '14785', '', '+51 988395993', 'Los Olivos', 'SJL', 'Rehabilitacion Oral', '0000-00-00', '2023-02-20', '2023-02-20', '2023-02-20', '', ''),
(216, 'ALVARO DANILO', 'RAMIREZ REQUENA', '00654', '', '+51 997178832', 'Los Olivos', 'Lima', 'Consulta General', '0000-00-00', '2022-12-22', '2022-12-22', '2022-12-22', '', ''),
(217, 'ISRAEL JORGE', 'HUARCA MEJIA', '10620752', '', '+51 964949845', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-08-19', '0000-00-00', '0000-00-00', '', ''),
(218, 'GIANNA M.', 'RODRIGUEZ ORDOÑEZ', '014736', '', '+51 916654140', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-11-02', '0000-00-00', '0000-00-00', '', ''),
(219, 'KATTY NOELLY', 'SEBASTIAN FLORES', '44477610', '', '+51 923612643', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-06-23', '2024-04-27', '0000-00-00', '', ''),
(220, 'LIDIA', '(NO HAY)', '0152', '', '+51 000', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-06-24', '0000-00-00', '0000-00-00', '', ''),
(221, 'CESAR ', 'VEGA FASABI', '00119598', '', '+51 940459741', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-06-30', '0000-00-00', '0000-00-00', '', ''),
(222, 'MARY ELIZABETH', 'BENDEZU BUSTAMANTE', '09548573', '', '+51 982079226', 'Los Olivos', '', 'Endodoncia', '0000-00-00', '2023-03-18', '2023-04-10', '2023-03-18', '', ''),
(223, 'JESUS CAMILO', 'SORIANO FALERO', '16018495', '', '+51 000000', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-08-10', '0000-00-00', '0000-00-00', '', ''),
(224, 'JEANET', 'ROSALES CARUZO', '006810', '', '+51 0000', 'Los Olivos', '', 'Rehabilitacion Oral', '0000-00-00', '2023-04-26', '2023-04-26', '2023-04-26', '', ''),
(225, 'JOSE ', 'MAMANI ESPINOZA', '002250', '', '+51 015222273', 'Los Olivos', 'cusco', 'Consulta General', '0000-00-00', '2022-06-17', '2022-06-17', '0000-00-00', '', ''),
(226, 'ALESSANDRA', 'BUSCAN PEREZ ', '91350774', '', '+51 0000', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', ''),
(227, 'KARIN JUDITH ', 'BURGA HUAMAN ', '00111', '', '+51 989677645', 'Los Olivos', 'Lima', 'Endodoncia', '0000-00-00', '2022-01-30', '2022-02-08', '2022-02-01', '', ''),
(228, 'KAREN', 'ARAGON QUISPE ', '47474808', '', '+51 940248122', 'Los Olivos', '', 'Rehabilitacion Oral', '0000-00-00', '2023-04-21', '2023-04-21', '0000-00-00', '', ''),
(229, 'FATIMA ANAMARI ', 'MAGAN SANDOVAL ', '122', '', '+51 0000', 'Los Olivos', '', 'Ortodoncia', '0000-00-00', '2022-10-10', '2023-11-11', '0000-00-00', '', ''),
(230, 'PILAR ', 'ROJAS FERNANDEZ ', '15737123', '', '+51 982112749', 'Los Olivos', '', 'Ortodoncia', '0000-00-00', '2023-08-18', '0000-00-00', '0000-00-00', '', ''),
(231, 'MIGUEL ', 'AGUILAR', '13341', '', '+51 0000', 'Los Olivos', '', 'Rehabilitacion Oral', '0000-00-00', '2021-03-13', '2023-04-01', '2023-03-15', '', ''),
(232, 'PIERO ADRIANO ', 'ESPINOZA CORONEL ', '92219207', '', '+51 980957332', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-05-27', '2023-05-27', '0000-00-00', '', ''),
(233, 'VALENTINO ', 'ROBLES CARDENAS ', '90391942', '', '+51 949905179', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-05-18', '2023-05-18', '0000-00-00', '', ''),
(234, 'LIAM JOHAN ', 'AVILES VERASTEGUI ', '72999092', '', '+51 987604750', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-05-20', '0000-00-00', '0000-00-00', '', ''),
(235, 'MATIAS ', 'ORTIZ PORRAS ', '40742809', '', '+51 94428790', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-05-12', '0000-00-00', '0000-00-00', '', ''),
(236, 'MIA ', 'HERNANDEZ GUTIERREZ ', '1091', '', '+51 982005919', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2022-11-26', '2022-12-10', '2022-12-10', '', ''),
(237, 'ALONSO RAUL ', 'PIZARRO ZUAZO ', '41409907', '', '+51 942035142', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-02-09', '2022-02-09', '2022-02-09', '', ''),
(238, 'ADRIANA ', 'SATURNO PEREZ ', '78930521', '', '+51 000000', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-02-23', '2023-02-23', '2023-02-23', '', ''),
(239, 'KALET ADRIEL ', 'SOTELO CHAVEZ ', '239', '', '+51 920409194', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-08-25', '2023-08-25', '2023-08-25', '', ''),
(240, 'CAYETANA ANTONELLA ', 'CONDEZO GRANADOS ', '91113705', '', '+51 0000', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-08-26', '2023-08-26', '2023-08-26', '', ''),
(242, 'ROSA ', 'ROBLES HUAMAN ', '242', '', '+51 98637734', 'Los Olivos', 'Huarmey ', 'Ortodoncia', '0000-00-00', '2022-09-01', '2023-02-21', '2022-09-01', '', ''),
(243, 'CARLOS LEONARDO ', 'CALMET LECCA ', '09629097', '', '+51 921876476', 'Los Olivos', '', 'Rehabilitacion Oral', '0000-00-00', '2023-08-07', '2023-09-14', '0000-00-00', '', ''),
(244, 'GERLADIN', 'COLAN OSTOS ', '45357248', '', '+51 975426363', 'Los Olivos', '', 'Rehabilitacion Oral', '0000-00-00', '2023-07-14', '2023-07-21', '0000-00-00', '', ''),
(245, 'RUTH FIORELA ', 'EVARISTO MALPARTIDA ', '74444697', '', '+51 979335001', 'Los Olivos', '', 'Rehabilitacion Oral', '0000-00-00', '2023-10-03', '2023-10-03', '0000-00-00', '', ''),
(246, 'MARILU ', 'HUAMAN CONTRERAS ', '44554940', '', '+51 925430169', 'Los Olivos', '', 'Rehabilitacion Oral', '0000-00-00', '2023-01-12', '2023-11-30', '0000-00-00', '', ''),
(247, 'KAREN MILAGROS', 'VILCAPOMA CORONEL ', '76448052', '', '+51 921323834', 'Los Olivos', '', 'Rehabilitacion Oral', '0000-00-00', '2023-10-13', '2023-11-20', '2023-10-19', '', ''),
(248, 'ANNET KATERINE ', 'PEÑA DE LA CRUZ ', '47397477', 'DNI', '+51 930723391', 'LOS OLIVOS', '', 'Consulta General', '1992-06-30', '2023-01-30', '0000-00-00', '0000-00-00', '', ''),
(249, 'WILLIAM CESAR ', 'SANTOS TELLO ', '249', '', '+51 941619786', 'Los Olivos', 'Lima ', 'Ortodoncia', '0000-00-00', '2022-08-18', '2024-01-06', '2022-08-18', '', ''),
(250, 'EMILY ', 'ARREGU PASCUAL ', '250', '', '+51 995892529', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2023-02-20', '2023-02-20', '2023-02-20', '', ''),
(251, 'AURELIA ', 'MEZA DE ROJAS ', '20886726', '', '+51 990797660', 'Los Olivos', '', 'Endodoncia', '0000-00-00', '2023-12-09', '2023-12-09', '0000-00-00', '', ''),
(252, 'OSWALDO RICHARD ', 'TERRONES PAUYIYAURI ', '40226300', '', '+51 997181161', 'Los Olivos', '', 'Rehabilitacion Oral', '0000-00-00', '2023-03-18', '2023-06-22', '2023-03-18', '', ''),
(253, 'WAGNER', 'CASOS BONETT ', '24707171', '', '+51 984740275', 'Los Olivos', '', 'Rehabilitacion Oral', '0000-00-00', '2023-07-22', '2023-07-22', '0000-00-00', '', ''),
(254, 'JESUS EDMUNDO ', 'ALDAVE RAYO ', '08462600', '', '+51 980201697', 'Los Olivos', '', 'Rehabilitacion Oral', '0000-00-00', '2023-07-04', '2023-07-04', '0000-00-00', '', ''),
(255, 'GIULIANA', 'SANCHEZ DAVILA', '40902571', '', '+51 997849083', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-04-18', '2024-04-18', '0000-00-00', '', ''),
(256, 'BLANCA', 'GARCIA ', '06676748', '', '+51 0000', 'Miraflores', '', 'Consulta General', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', ''),
(257, 'NERLY ', 'GONZALES DIAZ', '43521627', '', '+51 924100386', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-04-02', '2024-04-03', '0000-00-00', '', ''),
(258, 'DANY DOMINGO', 'IRRAZABAL BARDALES', '42417857', '', '+51 927827406', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-04-09', '2024-04-09', '0000-00-00', '', ''),
(259, 'BIBIANA ', 'CANCHAYA SANTIVAÑEZ', '07579625', '', '+51 994644934', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-02-29', '2024-02-29', '0000-00-00', '', ''),
(260, 'PERCY ', 'ALTAMIRANO BURGA', '70107016', '', '+51 952290252', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-04-19', '2024-05-03', '0000-00-00', '', ''),
(261, 'KATIA ', 'MENDOZA', '40945223', '', '+51 981237569', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-04-18', '2024-04-18', '0000-00-00', '', ''),
(262, 'L. FERNANDO ', 'CAMPOS URBINA', '08195600', '', '+51 998163312', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-02-27', '2024-04-15', '0000-00-00', '', ''),
(263, 'REYNALDO ALFREDO', 'ZURITA CRUZ', '43724779', '', '+51 991251933', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-04-06', '2024-04-19', '2024-04-06', '', ''),
(264, 'RAUL ', 'QUISPE SUAREZ ', '10202721', '', '+51 995760594', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-03-26', '2024-03-26', '0000-00-00', '', ''),
(265, 'KATHERINE', 'PALACIOS RUBIO', '43186867', '', '+51 949870630', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-03-04', '2024-04-18', '0000-00-00', '', ''),
(266, 'DANNI JIMMY ', 'DEL AGUILA JONES', '47733139', '', '+51 975469017', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-02-23', '2024-03-26', '2024-02-23', '', ''),
(267, 'MIRIAM GRACIELA ', 'AREVALO', '13852165', '', '+51 1170015177', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-04-22', '2024-04-23', '0000-00-00', '', ''),
(268, 'INES ', 'VILLASIS MORENO', '32982612', '', '+51 940379280', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-03-12', '2024-03-26', '2024-03-12', '', ''),
(269, 'LIZ PAOLA ', 'RIVERA DIAZ', '10230825', '', '+51 991716359', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-03-02', '2024-04-04', '0000-00-00', '', ''),
(270, 'RIBELINHO ', 'FALCON CANCHAYA', '10792689', '', '+51 994644934', 'Miraflores', '', 'Consulta General', '0000-00-00', '2023-12-21', '2024-02-29', '0000-00-00', '', ''),
(271, 'NELLY MARINA ', 'CONDORI ALANOCA', '09766584', '', '+51 987582075', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-03-02', '2024-03-02', '0000-00-00', '', ''),
(272, 'GARMENIA CARMEN ', 'CONTRERAS DARDANET D', '07937686', '', '+51 992844438', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-02-08', '2024-02-13', '2024-02-08', '', ''),
(273, 'CLAUDIA', 'MONTALBAN MONE', '10611005', '', '+51 982190857', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-01-20', '2024-02-05', '0000-00-00', '', ''),
(274, 'CARLOS GERARDO ', 'HEREDIA CENTENO', '00509420', 'Carnet de Extranjeria', '+51 926212291', 'Miraflores', '', 'Consulta General', '0000-00-00', '2023-10-09', '2023-11-06', '2023-11-06', '', ''),
(275, 'FERNANDA LUCIA ', 'JUAREZ CARRERAS', '73482682', '', '+51 994563886', 'Miraflores', '', 'Consulta General', '0000-00-00', '2023-11-09', '2023-11-16', '2023-11-16', '', ''),
(276, 'BETTY R. ', 'MARCELO ALCALA', '15357434', '', '+51 906104425', 'Miraflores', '', 'Consulta General', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', ''),
(277, 'JIMMY ', 'CALDERON DIAZ', '74976426', '', '+51 74976426', 'Miraflores', '', 'Consulta General', '0000-00-00', '2023-10-10', '2024-03-09', '2024-03-09', '', ''),
(278, 'DIEGO ALEJANDRO', 'VASQUEZ SILVA', '46927198', '', '+51 989151571', 'Miraflores', '', 'Consulta General', '0000-00-00', '2023-10-18', '2024-01-14', '2023-10-28', '', ''),
(279, 'LOURDES MARIELA', 'MOSCOSO C.', '41288797', '', '+51 939316775', 'Miraflores', '', 'Consulta General', '0000-00-00', '2023-11-23', '0000-00-00', '0000-00-00', '', ''),
(280, 'JOSE ALEJANDRO', 'DIAZ IZAZIYA', '77207597', '', '+51 986772682', 'Miraflores', '', 'Consulta General', '0000-00-00', '2023-11-16', '2023-12-05', '2023-11-16', '', ''),
(281, 'VANESSA ', 'INGA DIAZ', '15847865', '', '+51 997515069', 'Miraflores', '', 'Consulta General', '0000-00-00', '2023-11-14', '2023-11-24', '2023-11-14', '', ''),
(282, 'JANETH ', 'RODAS RAMOS', '40559120', '', '+51 978483006', 'Miraflores', '', 'Consulta General', '0000-00-00', '2023-12-21', '0000-00-00', '0000-00-00', '', ''),
(283, 'ROCIO CAROLINA ', 'TORRES NUÑEZ', '43809685', '', '+51 903158522', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-01-06', '2024-01-06', '0000-00-00', '', ''),
(284, 'LAURA ISABEL', 'MORALES CANAL', '10685528', '', '+51 955193028', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-01-06', '2024-01-06', '0000-00-00', '', ''),
(285, 'SANDRO DI CARLO', 'BRAVO ORTIZ', '70509472', '', '+51 955316987', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-01-06', '2024-01-06', '0000-00-00', '', ''),
(286, 'ZORAIDA ANGELICA', 'CANTO PALACIOS', '07293768', '', '+51 983516256', 'Miraflores', '', 'Consulta General', '0000-00-00', '2023-12-14', '2024-02-14', '0000-00-00', '', ''),
(287, 'MARILENA ', 'DIAZ CABREJO', '45401747', '', '+51 951202636', 'Miraflores', '', 'Consulta General', '0000-00-00', '2023-10-18', '2024-01-14', '2024-01-14', '', ''),
(288, 'ROSA', 'YNUMA YUMBATO', '05393483', '', '+51 967475694', 'Miraflores', '', 'Consulta General', '0000-00-00', '2023-09-25', '2024-03-07', '2023-09-27', '', ''),
(289, 'MARTHA', 'BUSTAMANTE LOZANO', '41913610', '', '+51 946846408', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-02-26', '2024-02-26', '2024-02-26', '', ''),
(290, 'CARLOS FERNANDO ', 'YONG VEGA', '08102546', '', '+51 996949312', 'Miraflores', '', 'Consulta General', '0000-00-00', '2023-12-19', '2024-02-27', '0000-00-00', '', '');
INSERT INTO `cliente` (`Codigo`, `Nombre`, `Apellido`, `Dni`, `Correo`, `Telefono`, `Sede`, `Direccion`, `Especialidad`, `Fechanac`, `Fecha`, `Fechafin`, `Fechalimpieza`, `NombrePadre`, `DniPadre`) VALUES
(291, 'GIOVANNY ', 'JUAREZ ALARCON', '72164763', '', '+51 986927653', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-03-02', '2024-03-02', '0000-00-00', '', ''),
(292, 'JUAN DE DIOS', 'GUTIERREZ GARCIA', '61333576', '', '+51 988298327', 'Miraflores', '', 'Ortodoncia', '0000-00-00', '2024-04-15', '2024-04-30', '0000-00-00', '', ''),
(293, 'ALEXANDER RONALD', 'BARRERA YNUMA', '72182783', '', '+51 925943792', 'Miraflores', '', 'Ortodoncia', '0000-00-00', '2023-09-25', '2024-02-29', '2023-09-25', '', ''),
(294, 'MARISOL ', 'CAMACHO ESCOBAR', '47096094', '', '+51 966392091', 'Miraflores', '', 'Ortodoncia', '0000-00-00', '2023-09-25', '2024-04-03', '2023-09-25', '', ''),
(295, 'JORGE KIOSHI', 'KOMORI PARIONA', '47736532', '', '+51 980757848', 'Miraflores', '', 'Ortodoncia', '0000-00-00', '2023-11-21', '2024-04-12', '2023-11-21', '', ''),
(296, 'SABRINA SAKAE', ' ZORAIDA DEL BUSTO', '79491129', '', '+51 988298327', 'Miraflores', '', 'Odontopediatria', '0000-00-00', '2024-04-27', '2024-05-03', '0000-00-00', '', ''),
(297, 'WILLIAM JADEN JOSUE', 'ZAMORA HUAMAN', '90666026', '', '+51 996771255', 'Miraflores', '', 'Odontopediatria', '0000-00-00', '2024-01-09', '2024-04-22', '2024-01-09', '', ''),
(298, 'LEONARDO RAUL ', 'QUISPE PALACIOS', '79915329', '', '+51 949870630', 'Miraflores', '', 'Odontopediatria', '0000-00-00', '2024-04-22', '2024-05-08', '2024-04-22', '', ''),
(299, 'CATALINA SOFIA', 'QUISPE PALACIOS', '91108876', '', '+51 949870630', 'Miraflores', '', 'Odontopediatria', '0000-00-00', '2024-04-22', '2024-04-22', '2024-04-22', '', ''),
(300, 'SEBASTIAN ANGEL', 'DIEZ OLIVEIRA', '81660184', '', '+51 994738958', 'Miraflores', '', 'Odontopediatria', '0000-00-00', '2023-11-21', '2023-11-21', '0000-00-00', '', ''),
(301, 'LUCIANO DARIO ', 'VASQUEZ DIAZ', '78312707', '', '+51 951202636', 'Miraflores', '', 'Odontopediatria', '0000-00-00', '2023-10-18', '2023-11-14', '2023-11-14', '', ''),
(302, 'CHAROLETTE ', 'AVERY MOORE', '91920910', '', '+51 953388598', 'Miraflores', '', 'Odontopediatria', '0000-00-00', '2023-08-29', '2024-01-12', '2023-11-21', '', ''),
(303, 'FABIANA DEL PILAR', 'CORDOVA GARCIA', '78834110', '', '+51 952373277', 'Miraflores', '', 'Odontopediatria', '0000-00-00', '2023-01-12', '2024-01-12', '2024-01-12', '', ''),
(304, 'LEONARDO ENRIQUE', 'SALDAÑA MONTALVAN', '78683207', '', '+51 982190857', 'Miraflores', '', 'Odontopediatria', '0000-00-00', '2024-02-27', '2024-02-27', '2024-02-27', '', ''),
(305, 'LYA ARINKA ', 'VEGA MOZO', '73429494', 'DNI', '+51 940093992', 'Los Olivos', 'Los Olivos ', 'Consulta General', '0000-00-00', '2024-06-11', '2024-06-27', '2024-06-27', '', ''),
(306, 'TANIA KELIN ', 'ARROYO ZORRILLA ', '25556771', 'DNI', '+51 989695791', 'Los Olivos', 'Los Olivos', 'Consulta General', '0000-00-00', '2024-05-30', '2024-05-30', '0000-00-00', '', ''),
(307, 'LILIAN ', 'BULEJE GUILLÉN ', '09633740', 'DNI', '+51 977402418', 'Los Olivos', 'Los Olivos', 'Ortodoncia', '0000-00-00', '2024-05-02', '2024-06-01', '0000-00-00', '', ''),
(308, 'CRISTIAN ', 'VELASQUEZ MEJIA', '0000000', 'DNI', '+51 941536582', 'Los Olivos', 'Los Olivos ', 'Consulta General', '0000-00-00', '2022-12-15', '2024-06-08', '2022-12-20', '', ''),
(309, 'TESSY ', 'CUEVA QUEVEDO', '000000', 'DNI', '+51 00000000', 'Los Olivos', 'Los Olivos', 'Consulta General', '0000-00-00', '2023-03-21', '2023-12-03', '2023-04-12', '', ''),
(310, 'GIAN CARLO ', 'VALDERRAMA JACA', '00000', 'DNI', '+51 936797686', 'Los Olivos', 'Los Olivos', 'Consulta General', '0000-00-00', '2022-07-03', '2024-02-06', '2022-07-03', '', ''),
(311, 'KATERINE SOFÍA ', 'SALINAS HUAMAN ', '47231875', 'DNI', '+51 920225256', 'Los Olivos', 'Los Olivos', 'Ortodoncia', '0000-00-00', '2023-05-05', '2023-08-19', '0000-00-00', '', ''),
(312, 'PATRICIA ', 'SANDOVAL VARGAS ', '0000', 'DNI', '+51 993732728', 'Los Olivos', 'Los Olivos', 'Consulta General', '0000-00-00', '2022-04-11', '2024-04-06', '2022-04-18', '', ''),
(313, 'LEONARDO ', 'DE LA CRUZ QUISPE ', '90055607', 'DNI', '+51 991451604', 'Los Olivos', 'Los Olivos ', 'Odontopediatria', '0000-00-00', '2024-03-23', '2024-06-08', '2024-05-30', '', ''),
(314, 'CARLOS ADRIANO EVANS', 'DE LA CRUZ QUISPE ', '78998175', 'DNI', '+51 991451604', 'Los Olivos', 'Los Olivos ', 'Odontopediatria', '0000-00-00', '2023-05-18', '2024-06-08', '2024-01-06', '', ''),
(315, 'YOVANI ', 'MOSTAJA VARGAS ', '21182550', 'DNI', '+51 987486634', 'Los Olivos', 'Los Olivos ', 'Rehabilitacion Oral', '0000-00-00', '2024-06-01', '2024-06-01', '0000-00-00', '', ''),
(316, 'LUCIANA MILAGROS', 'MENDOZA AGUILAR', '78814749', '', '+51 998177000', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2024-06-08', '2024-06-08', '2024-06-08', '', ''),
(317, 'GONZALO OMAR', 'CONTRERAS VICUÑA ', '77454461', '', '+51 988846748', 'Los Olivos', '', 'Ortodoncia', '0000-00-00', '2023-01-28', '2024-06-11', '2023-01-28', '', ''),
(318, 'CARLOS EDUARDO ', 'FLORES LOPEZ', '72621803', '', '+51 962068324', 'Los Olivos', '', 'Ortodoncia', '0000-00-00', '2023-03-11', '2024-05-07', '2023-03-15', '', ''),
(319, 'ANA CAROLINE', 'CAMPOS RIBEIRO ', '61801123', 'DNI', '+51 998715062', 'Miraflores', 'Miraflores', 'Consulta General', '0000-00-00', '2024-06-05', '2024-06-05', '2024-06-05', '', ''),
(320, 'EMILIA ', 'LOPEZ CASTRO', '93104992', 'DNI', '+51 979924341', 'Miraflores', 'Miraflores', 'Consulta General', '0000-00-00', '2024-05-20', '2024-05-20', '0000-00-00', '', ''),
(321, 'EMA CATALINA', 'DE LA CRUZ QUISPE ', '91396677', 'DNI', '+51 991451604', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2023-05-27', '2023-09-09', '2023-06-27', '', ''),
(322, 'ALEXIS JOEL ', 'SORIANO CUMPA ', '74745253', 'DNI', '+51 948705847', 'Los Olivos', 'Los Olivos', 'Rehabilitacion Oral', '0000-00-00', '2024-04-20', '2024-06-27', '0000-00-00', '', ''),
(323, 'JORGE LUIS ', 'PELÁEZ REYES ', '72513019', 'DNI', '+51 947521099', 'null', 'Los Olivos ', 'Consulta General', '0000-00-00', '2022-06-12', '2024-06-20', '2023-03-02', '', ''),
(324, 'JENNY', 'FAJARDO LÓPEZ ', '00', 'DNI', '+51 945754716', 'Los Olivos', 'Los Olivos ', 'Consulta General', '0000-00-00', '2024-01-04', '2024-06-17', '0000-00-00', '', ''),
(325, 'MARIELA ', 'GARCÍA SALDAÑA ', '45980345', 'DNI', '+51 991713624', 'LOS OLIVOS', 'Los Olivos ', 'Consulta General', '1989-09-25', '2022-08-18', '2024-06-15', '0000-00-00', '', ''),
(326, 'NORMA', 'SALCEDO VARGAS', '08603931', 'DNI', '+51 970689819', 'Los Olivos', '', 'Rehabilitacion Oral', '0000-00-00', '2024-06-20', '2024-06-27', '0000-00-00', '', ''),
(327, 'VANESSA ', 'DEL CASTILLO SOTO ', '40211508', 'DNI', '+51 00000', 'Los Olivos', 'Los Olivos ', 'Ortodoncia', '0000-00-00', '2024-05-18', '2024-06-15', '0000-00-00', '', ''),
(328, 'JOSUÉ ', 'SALAS DEL CASTILLO ', '001', 'DNI', '+51 960808711', 'Los Olivos', 'Los Olivos ', 'Consulta General', '0000-00-00', '2024-06-15', '2024-06-15', '0000-00-00', '', ''),
(329, 'JESSICA ', 'PIZARRO HUERTAS ', '40367519', 'DNI', '+51 994955123', 'Los Olivos', 'Los Olivos ', 'Consulta General', '0000-00-00', '2024-05-02', '2024-05-02', '0000-00-00', '', ''),
(330, 'LIDIA ', 'COLAN GUERRERO', '15994215', 'DNI', '+51 987383582', 'Los Olivos', 'Los Olivos ', 'Implantologia', '0000-00-00', '2024-06-22', '2024-06-22', '0000-00-00', '', ''),
(331, 'JULIA ', 'COLAN GUERRERO', '15948013', 'DNI', '+51 987383582', 'Los Olivos', 'Los Olivos ', 'Consulta General', '0000-00-00', '2024-06-22', '2024-06-22', '0000-00-00', '', ''),
(332, 'DAYANA TAMARA ', 'ASCA RODRÍGUEZ', '74084786', 'DNI', '+51 966036220', 'Los Olivos', 'Los Olivos ', 'Consulta General', '0000-00-00', '2024-04-05', '2024-04-05', '0000-00-00', '', ''),
(333, 'MARÍA VERÓNICA ', 'AYLLON CABALLERO', '41724014', 'DNI', '+51 989864125', 'Los Olivos', 'Los Olivos ', 'Consulta General', '0000-00-00', '2024-05-02', '2024-05-02', '2024-05-02', '', ''),
(334, 'PERCY DANIEL ', 'ALTAMIRANO BURGA ', '70107066', 'DNI', '+51 952290252', 'Los Olivos', 'Los Olivos ', 'Consulta General', '0000-00-00', '2024-04-12', '2024-05-25', '0000-00-00', '', ''),
(335, 'ERIKA VANESSA ', 'MARTÍNEZ ARRIAGA', '45839917', 'DNI', '+51 946227394', 'Los Olivos', 'Los Olivos ', 'Consulta General', '0000-00-00', '2024-06-27', '0000-00-00', '0000-00-00', '', ''),
(336, 'LUIS MIGUEL ', 'SALAS ZES', '41192161', 'DNI', '+51 960808711', 'Los Olivos', 'Los Olivos ', 'Consulta General', '0000-00-00', '2024-05-18', '2024-05-18', '2024-05-18', '', ''),
(337, 'FERNANDO ', 'EDA', '16755479', 'DNI', '+51 935160695', 'Los Olivos', 'Los Olivos ', 'Consulta General', '0000-00-00', '2024-05-28', '2024-05-28', '0000-00-00', '', ''),
(338, 'JOSÉ MIGUEL ', 'AGUILAR BURGA', '76951131', 'DNI', '+51 982116680', 'Los Olivos', 'Los Olivos ', 'Consulta General', '0000-00-00', '2023-09-28', '2024-04-05', '2024-04-05', '', ''),
(339, 'MIRIAM BERENICE ', 'ORTIZ HERNÁNDEZ ', '73820477', 'DNI', '+51 931236378', 'Los Olivos', 'Los Olivos ', 'Implantologia', '0000-00-00', '2023-11-02', '2024-05-30', '2023-11-03', '', ''),
(340, 'DORIS MARTHA ', 'VILCA MOLINA ', '07161577', 'DNI', '+51 0', 'Los Olivos', 'Los Olivos ', 'Consulta General', '0000-00-00', '2024-05-06', '2024-05-23', '2024-05-11', '', ''),
(341, 'FABRIZIO ', 'VILLANUEVA LUNA', '62468698', 'DNI', '+51 963674408', 'Los Olivos', 'Xxxx', 'Rehabilitacion Oral', '0000-00-00', '2024-06-27', '2024-07-01', '2024-07-01', '', ''),
(342, 'THAYRA', 'VILLANUEVA LUNA', '77444862', 'DNI', '+51 963674408', 'Los Olivos', 'Xxx', 'Rehabilitacion Oral', '0000-00-00', '2024-07-01', '2024-07-01', '0000-00-00', '', ''),
(343, 'ESTHEFANO ARISTOTELE', 'MARHIOLOYA GOICOCHEA', '74976680', 'DNI', '+51 923887561', 'Los Olivos', 'Los Olivos ', 'Consulta General', '0000-00-00', '2024-07-02', '2024-07-02', '0000-00-00', '', ''),
(344, 'SABRINA', 'RAMOS CORAL ', '70395053', 'DNI', '+51 993334953', 'Los Olivos', 'Los Olivos ', 'Consulta General', '0000-00-00', '2024-07-02', '2024-07-02', '0000-00-00', '', ''),
(345, 'CLAUDIA EVELYN ', ' YURCA YURCA', '73780603', 'DNI', '+51 937709413', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-07-04', '2024-07-04', '2024-07-04', '', ''),
(346, 'LORELAINE ', 'VILCHEZ BRIONES', '79124774', 'DNI', '+51 942774487', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2024-07-06', '2024-07-06', '0000-00-00', '', ''),
(347, 'MIGUEL ANTONIO', 'CHAGRAY INGA', '71732831', 'DNI', '+51 933079528', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-07-08', '2024-07-08', '2024-07-08', '', ''),
(348, 'FRITZIA', 'HUALPA ALARCON', '40389209', 'DNI', '+51 922375563', 'Miraflores', '', 'Rehabilitacion Oral', '0000-00-00', '2024-06-04', '2024-06-19', '2024-06-04', '', ''),
(349, 'LOURDES MAXIMINA', 'HUARCAYA BORDA', '07451458', 'DNI', '+51 990022921', 'Miraflores', '', 'Rehabilitacion Oral', '0000-00-00', '2024-06-25', '2024-07-09', '2024-06-25', '', ''),
(350, 'DIEGO', 'DESCOTLE', '26258592', 'Pasaporte', '+51 61657381', 'Miraflores', '5491161657381', 'Consulta General', '0000-00-00', '2024-06-25', '0000-00-00', '0000-00-00', '', ''),
(351, 'DAYANET', 'CHAMBILLO NINAHUANCA', '08161302', 'DNI', '+51 997728219', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-07-10', '2024-07-10', '0000-00-00', '', ''),
(352, 'LIAM SEBASTIAN ', 'SMITH RODRIGUEZ', '93170640', 'DNI', '+51 967329004', 'Los Olivos', ' ', 'Odontopediatria', '0000-00-00', '2024-07-11', '0000-00-00', '0000-00-00', '', ''),
(353, 'MIGUEL ANGEL ', 'GRANDA DAZA', '07130431', 'DNI', '+51 961617182', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2024-06-27', '0000-00-00', '0000-00-00', '', ''),
(354, 'NELLY HORTENCIA ', 'PORTILLA ROMERO', '07125648', 'DNI', '+51 903072716', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2024-07-11', '0000-00-00', '0000-00-00', '', ''),
(355, 'NAOMI', 'APONTE BENITEZ ', '90825339', 'DNI', '+51 922737312', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2024-07-11', '0000-00-00', '0000-00-00', '', ''),
(356, 'MILAGROS ', 'ROCA COLAN ', '10206931', 'DNI', '+51 992665932', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2024-07-11', '0000-00-00', '0000-00-00', '', ''),
(357, 'CHISTIAN ', 'RAMON ROÑA', '91925005', 'DNI', '+51 974084011', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2024-07-11', '0000-00-00', '0000-00-00', '', ''),
(358, 'BENILDA ', 'PRUDENCIO ', '09394162', 'DNI', '+51 985986258', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2024-07-11', '0000-00-00', '0000-00-00', '', ''),
(359, 'EDWIN PINEDO', 'MINDREAW PASTOR', '72647416', 'DNI', '+51 937438669', 'LOS OLIVOS', '', 'Ortodoncia', '1996-09-30', '2023-08-15', '2024-06-15', '0000-00-00', '', ''),
(360, 'OMAIRA ', 'CACHACHIN HENOSTROZA', '48925348', 'DNI', '+51 921741355', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2024-05-02', '0000-00-00', '0000-00-00', '', ''),
(362, 'YORDAN', 'MINAYA JARA ', '79773946', 'DNI', '+51 904318164', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2024-07-13', '0000-00-00', '0000-00-00', '', ''),
(363, 'RENATO FABRIZIO ', 'RAMÍREZ VÁSQUEZ ', '77873927', 'DNI', '+51 989127596', 'Los Olivos', '', 'Ortodoncia', '0000-00-00', '2024-07-13', '0000-00-00', '0000-00-00', '', ''),
(364, 'BORIS JAVIER ', 'DÍAZ ', '72185379', 'DNI', '+51 987369786', 'Miraflores', 'Miraflores', 'Consulta General', '0000-00-00', '2024-07-15', '2024-07-15', '0000-00-00', '', ''),
(365, 'GABRIEL ALEXANDER', 'ALARCÓN FLORES', '74394671', 'DNI', '+51 960423893', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2024-07-15', '0000-00-00', '0000-00-00', '', ''),
(366, 'SEBASTIÁN EMIR ', 'DE LA CRUZ ARAGÓN ', '92375963', 'DNI', '+51 986595263', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2024-07-15', '0000-00-00', '0000-00-00', '', ''),
(367, 'SAUL VICTOR ', 'SIMON CASTILLO', '06381938', 'DNI', '+51 930402117', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2024-07-18', '0000-00-00', '0000-00-00', '', ''),
(368, 'TIZIANA', 'VILCHEZ SOBENES', '79915061', 'DNI', '+51 952340430', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2024-07-20', '2024-07-20', '0000-00-00', '', ''),
(369, 'MARÍA JOSE', 'BRENIS SOBENES', '90928651', 'DNI', '+51 952340430', 'Los Olivos', '', 'Implantologia', '0000-00-00', '2024-07-20', '2024-07-20', '0000-00-00', '', ''),
(370, 'GIA HALLY', 'PRÍNCIPE LUDEÑA', '90089246', 'DNI', '+51 954704692', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2024-07-20', '2024-07-20', '0000-00-00', '', ''),
(371, 'HAZEL ANNY', 'PRÍNCIPE LUDEÑA', '90089206', 'DNI', '+51 954704692', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2024-07-20', '2024-07-20', '0000-00-00', '', ''),
(372, 'ESTRELLA CATALINA', 'MONTERO SIMBALA', '81892763', 'DNI', '+51 992515809', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2024-07-20', '2024-07-20', '2024-07-20', '', ''),
(373, 'GREGOR', 'MCCRAE', '142379888', 'Pasaporte', '+51 447544948', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-07-20', '2024-07-20', '0000-00-00', '', ''),
(374, 'JORGE', 'RIVERA RODRÍGUEZ ', '9293287', 'DNI', '+51 946745514', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-07-20', '2024-07-20', '0000-00-00', '', ''),
(375, 'IAN SANTIAGO', 'MINAYA JARA', '92578628', 'DNI', '+51 904318164', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2024-07-18', '2024-07-18', '0000-00-00', '', ''),
(376, 'VICTORIA DE LOS MILA', 'ESCUDERO LÓPEZ ', '79097961', 'DNI', '+51 967148219', 'Los Olivos', '', 'Ortodoncia', '0000-00-00', '2023-10-27', '2024-07-20', '0000-00-00', '', ''),
(377, 'MARÍA KATTYA', 'GUTIÉRREZ CANELO', '41406098', 'DNI', '+51 951201606', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2024-07-22', '2024-07-22', '0000-00-00', '', ''),
(378, 'BENJAMIN ', 'THERY', '166173043', 'DNI', '+51 336610042', 'null', '', 'Consulta General', '0000-00-00', '2024-07-24', '0000-00-00', '0000-00-00', '', ''),
(379, 'STEFANO ', 'BALUARTE COSTA ', '91380753', 'DNI', '+51 914931266', 'null', '', 'Odontopediatria', '0000-00-00', '2024-07-25', '0000-00-00', '0000-00-00', '', ''),
(380, 'AMIR NESTOR GABRIEL ', 'MONTES HEREDIA ', '91880755', 'DNI', '+51 987007037', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2024-07-25', '0000-00-00', '0000-00-00', '', ''),
(381, 'LUCIANO FRANCESCO ', 'HERRERA RAEZ ', '91902723', 'DNI', '+51 926637693', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2024-07-27', '0000-00-00', '0000-00-00', '', ''),
(382, 'ALLISON ', 'REAZ ALCOCER', '76416879', 'Pasaporte', '+51 926637693', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2024-07-27', '0000-00-00', '0000-00-00', '', ''),
(383, 'ALEXANDER ', 'PONCE PONCE ', '77591760', 'DNI', '+51 906510667', 'Los Olivos', '', 'Ortodoncia', '0000-00-00', '2024-07-27', '0000-00-00', '0000-00-00', '', ''),
(384, 'GLADYS FERNANDA', 'CARRASCO ZAPATA', '07869086', 'DNI', '+51 927459851', 'null', '', 'Consulta General', '0000-00-00', '2024-07-27', '0000-00-00', '0000-00-00', '', ''),
(385, 'ETY BETZABETH', 'CHUCCHUCAN COBA', '76337257', 'DNI', '+51 94990364', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2024-07-27', '0000-00-00', '0000-00-00', '', ''),
(386, 'ISABELLA', 'ESPINOZA MENDOZA ', '91729017', 'DNI', '+51 921572960', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2024-07-27', '0000-00-00', '0000-00-00', '', ''),
(387, 'ERICA LETICIA ', 'CARDOZA ARDILES', '72491969', 'DNI', '+51 923161356', 'Los Olivos', '', 'Ortodoncia', '0000-00-00', '2024-07-27', '0000-00-00', '0000-00-00', '', ''),
(388, 'CARLA MIRELLA', 'CURIOSO PINEDO', '06423462', 'DNI', '+51 958001989', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2024-08-01', '0000-00-00', '0000-00-00', '', ''),
(389, 'GLORIA ', 'AVENDAÑO ', '00265406', 'DNI', '+51 924895196', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2024-08-01', '0000-00-00', '0000-00-00', '', ''),
(390, 'DAYAN ', 'GILIO DE PAZ ', '74044682', 'DNI', '+51 940730668', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2024-08-01', '0000-00-00', '0000-00-00', '', ''),
(391, 'SEBASTIÁN JOEL ', 'VARGAS ALVARADO ', '72864540', 'DNI', '+51 932492970', 'Los Olivos', '', 'Ortodoncia', '0000-00-00', '2024-02-20', '0000-00-00', '0000-00-00', '', ''),
(392, 'CHISTIAN MANUEL ', 'GÓMEZ CASTILLO', '60526039', 'DNI', '+51 941931131', 'null', '', 'Consulta General', '0000-00-00', '2024-08-01', '0000-00-00', '0000-00-00', '', ''),
(393, 'PRISCILLA', 'LEGROS', '', 'Pasaporte', '+51 621522533', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-07-31', '2024-07-31', '2024-07-31', '', ''),
(394, 'JUAN FRAN ', 'MUÑOZ CHUQUIZUTA', '91046491', 'DNI', '+51 936834828', 'null', '', 'Consulta General', '0000-00-00', '2024-08-05', '0000-00-00', '0000-00-00', '', ''),
(395, 'ELIZABETH ', 'ZAPATA DUEÑAS', '91702902', 'DNI', '+51 966056192', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2024-08-10', '0000-00-00', '0000-00-00', '', ''),
(396, 'ADRIÁN RAMIRO', 'CONTRERAS VICUÑA  ', '79227594', 'DNI', '+51 995774612', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2024-08-10', '0000-00-00', '0000-00-00', '', ''),
(397, 'YENY MARINO', 'GONZÁLEZ AGUETO', '19255345', 'DNI', '+51 955082555', 'null', '', 'Consulta General', '0000-00-00', '2024-08-10', '0000-00-00', '0000-00-00', '', ''),
(398, 'GIADA', 'MANIACCO ESPINOZA', '91383088', 'DNI', '+51 989016196', 'Miraflores', '', 'Odontopediatria', '0000-00-00', '2024-08-07', '2024-08-07', '2024-08-07', '', ''),
(399, 'GINEVRA', 'MANIACCO ESPINOZA', '91383108', 'DNI', '+51 989016196', 'Miraflores', '', 'Odontopediatria', '0000-00-00', '2024-08-07', '2024-08-07', '2024-08-07', '', ''),
(400, 'MARIO', 'GUTIERREZ PACCHA ', '07152457', 'DNI', '+51 999999008', 'LOS OLIVOS', '', 'Consulta General', '1955-10-23', '2024-08-13', '0000-00-00', '0000-00-00', '', ''),
(401, 'VILMA', 'CONDEZO ALVARADO ', '25690751', 'DNI', '+51 987347461', 'Miraflores', '', 'Consulta General', '0000-00-00', '2024-08-14', '0000-00-00', '0000-00-00', '', ''),
(402, 'ALESSIA CATALEYA', 'VARGAS MARQUEZ', '92671151', 'DNI', '+51 934793316', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2024-08-15', '0000-00-00', '0000-00-00', '', ''),
(403, 'CARLOS GIOVANNY ', 'HUAMAN ROJAS ', '10203283', 'DNI', '+51 907151725', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2024-08-17', '0000-00-00', '0000-00-00', '', ''),
(404, 'HENRY', 'ZEVALLOZ SALVATIERRA', '92388528', 'DNI', '+51 995774612', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2024-08-17', '0000-00-00', '0000-00-00', '', ''),
(405, 'ANDRÉ SEBASTIAN ', 'PEREZ MARCOS ', '79163155', 'DNI', '+51 955703980', 'null', '', 'Odontopediatria', '0000-00-00', '2024-08-17', '0000-00-00', '0000-00-00', '', ''),
(406, 'DIEGO FRANCO', 'CHUIMAN ALARCÓN ', '76634576', 'DNI', '+51 936956921', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2024-08-24', '0000-00-00', '0000-00-00', '', ''),
(407, 'THIAGO JOSUE', 'ACEVEDO MARCOS ', '92373618', 'DNI', '+51 955703980', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2024-08-24', '0000-00-00', '0000-00-00', '', ''),
(408, 'JULIA ', 'FERNÁNDEZ ', '07151750', 'DNI', '+51 999999008', 'Los Olivos', '', 'Consulta General', '0000-00-00', '2024-08-24', '0000-00-00', '0000-00-00', '', ''),
(409, 'MATHIAS ADRIAN ', 'LENGUA SANCHEZ', '90895206', 'DNI', '+51 943648192', 'Los Olivos', '', 'Odontopediatria', '0000-00-00', '2024-08-26', '0000-00-00', '0000-00-00', '', ''),
(410, 'GAEL VALENTINO ', 'LLANOS QUISPE ', '92383789', 'DNI', '+51 903140471', 'null', '', 'Consulta General', '0000-00-00', '2024-08-26', '0000-00-00', '0000-00-00', '', ''),
(411, 'ELVA GISSELA', 'ESPINOZA PONCE', '03870163', 'DNI', '+51 989016196', 'Miraflores', '', 'Implantologia', '0000-00-00', '2024-09-03', '0000-00-00', '0000-00-00', '', ''),
(412, 'ALANIA  QUINO', 'LIA ATLETA ', '73728172', 'DNI', '+51 980523113', 'LOS OLIVOS', '', 'Ortodoncia', '0000-00-00', '2024-09-05', '0000-00-00', '0000-00-00', '', ''),
(413, 'PÍA CATHERINE ', 'PRÍNCIPE COLMET', '91459863', 'DNI', '+51 961335371', 'LOS OLIVOS', '', 'Odontopediatria', '2019-08-19', '2024-09-05', '0000-00-00', '0000-00-00', '', ''),
(415, 'SIANE ANHEL', 'NARRO MADRID', '78736742', 'DNI', '+51 981159030', 'LOS OLIVOS', '', 'Odontopediatria', '2014-08-29', '2024-09-05', '0000-00-00', '0000-00-00', '', ''),
(416, 'KAREN LISBET', 'OBREGON ', '47610519', 'DNI', '+51 997704998', 'LOS OLIVOS', '', 'Consulta General', '1992-02-11', '2024-09-05', '0000-00-00', '0000-00-00', '', ''),
(417, 'ALEXANDER ', 'CUBAS LEON ', '25775018', 'DNI', '+51 965824722', 'LOS OLIVOS', '', 'Consulta General', '0000-00-00', '2024-09-05', '0000-00-00', '0000-00-00', '', ''),
(418, 'YOVANA ', 'BARZOLA CABALLERO', '20722199', 'DNI', '+51 965734402', 'LOS OLIVOS', '', 'Consulta General', '1973-10-28', '2024-09-10', '0000-00-00', '0000-00-00', '', ''),
(419, 'SABINA ', 'LAZO LLANOS', '43495390', 'DNI', '+51 941050959', 'LOS OLIVOS', '', 'Consulta General', '1985-08-13', '2024-09-10', '0000-00-00', '0000-00-00', '', ''),
(420, 'MARIA ', 'MARTEL CENTENO', '25764972', 'DNI', '+51 997506056', 'LOS OLIVOS', '', 'Ortodoncia', '1975-08-07', '2024-05-04', '0000-00-00', '0000-00-00', '', ''),
(421, 'IBETH ', 'SANCHEZ HERRERA ', '27730873', 'DNI', '+51 988375388', 'LOS OLIVOS', '', 'Consulta General', '1975-08-30', '0024-01-27', '0000-00-00', '0000-00-00', '', ''),
(422, 'VIRGINIA MILAGROS', 'CONDORI OCHOA', '10267204', 'DNI', '+51 906695475', 'LOS OLIVOS', '', 'Consulta General', '1975-11-07', '2024-09-10', '0000-00-00', '0000-00-00', '', ''),
(423, 'LIZ LUCY', 'ASTUCURI GUTIERREZ', '72482811', 'DNI', '+51 924691014', 'LOS OLIVOS', '', 'Ortodoncia', '1999-05-02', '2022-07-03', '0000-00-00', '0000-00-00', '', ''),
(424, 'ROSA VERÓNICA ', 'ROMERO BARRETO', '09614947', 'DNI', '+51 987076507', 'LOS OLIVOS', '', 'Consulta General', '1971-11-04', '2024-09-12', '0000-00-00', '0000-00-00', '', ''),
(425, 'FRANCIS', 'ESCUDERO LÓPEZ ', '70641866', 'DNI', '+51 970772776', 'LOS OLIVOS', '', 'Ortodoncia', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', ''),
(426, 'ELIZABETH BEATRIZ', 'TORRES OCHOA', '74014489', 'DNI', '+51 970856289', 'LOS OLIVOS', '', 'Odontopediatria', '2010-01-18', '2024-09-14', '0000-00-00', '0000-00-00', '', ''),
(427, 'PAOLO DYLAN ', 'UBALDO ACUÑA', '91599160', 'DNI', '+51 991021671', 'LOS OLIVOS', '', 'Odontopediatria', '2010-09-19', '0000-00-00', '0000-00-00', '0000-00-00', '', ''),
(428, 'ANGHELINA ', 'BERNAL FERNANDEZ ', '90642702', 'DNI', '+51 998106149', 'LOS OLIVOS', '', 'Odontopediatria', '2017-09-30', '2023-09-23', '0000-00-00', '0000-00-00', '', ''),
(429, 'EMMA SOFÍA ', 'TORRES OCHOA ', '90198512', 'DNI', '+51 970856289', 'LOS OLIVOS', '', 'Odontopediatria', '2017-04-26', '0000-00-00', '0000-00-00', '0000-00-00', '', ''),
(430, 'LUCIANO LEONEL ', 'OJEDA ANDIA ', '78667196', 'DNI', '+51 979782437', 'LOS OLIVOS', '', 'Odontopediatria', '2014-07-11', '2022-10-08', '0000-00-00', '0000-00-00', '', ''),
(431, 'FABRICIO GAEL ', 'LANDA VIGO', '91819828', 'DNI', '+51 966407316', 'LOS OLIVOS', '', 'Odontopediatria', '2020-04-17', '2023-10-20', '0000-00-00', '0000-00-00', '', ''),
(432, 'LIA CATALINA ', 'FLORES GARCÍA ', '90563253', 'DNI', '+51 918277199', 'LOS OLIVOS', '', 'Odontopediatria', '2017-12-27', '2023-07-15', '0000-00-00', '0000-00-00', '', ''),
(433, 'MARIANA LUCERO ', 'SARRIA ACUÑA ', '91733519', 'DNI', '+51 95170615', 'LOS OLIVOS', '', 'Odontopediatria', '2020-02-17', '2024-02-10', '0000-00-00', '0000-00-00', '', ''),
(434, 'LUCCA MICAEL', 'VILCHEZ PÉREZ ', '91573221', 'DNI', '+51 923204873', 'LOS OLIVOS', '', 'Odontopediatria', '2019-11-03', '2023-12-16', '0000-00-00', '0000-00-00', '', ''),
(435, 'ADRIÁN MATTEW', 'QUINTE LIMAY', '91999803', 'DNI', '+51 990148844', 'LOS OLIVOS', '', 'Odontopediatria', '2020-09-03', '2023-09-16', '0000-00-00', '0000-00-00', '', ''),
(436, 'ADRIANO ', 'QUIROZ SOTELO', '90828362', 'DNI', '+51 993133800', 'LOS OLIVOS', '', 'Odontopediatria', '2018-06-18', '0000-00-00', '0000-00-00', '0000-00-00', '', ''),
(437, 'SAORI MÍA ', 'ZABALETA OCHOA ', '80590128', 'DNI', '+51 964213935', 'LOS OLIVOS', '', 'Odontopediatria', '2015-09-15', '2023-12-02', '0000-00-00', '0000-00-00', '', ''),
(438, 'ANDRES DANIEL ', 'CAMONES GARCÍA ', '92831574', 'DNI', '+51 974933325', 'LOS OLIVOS', '', 'Odontopediatria', '2022-04-04', '2023-11-02', '0000-00-00', '0000-00-00', '', ''),
(439, 'LOGAN ', 'CCAPALI RAMIREZ ', '81816762', 'DNI', '+51 952342293', 'LOS OLIVOS', '', 'Odontopediatria', '2017-10-18', '2023-11-25', '0000-00-00', '0000-00-00', '', ''),
(440, 'NOAH MILAN ', 'MUÑOZ VALDIVIA ', '91314868', 'DNI', '+51 924868017', 'LOS OLIVOS', '', 'Odontopediatria', '2019-05-05', '2023-01-20', '0000-00-00', '0000-00-00', '', ''),
(441, 'SANTIAGO KALEB', 'GUERRERA GUITIERREZ', '90640275', 'DNI', '+51 990595109', 'LOS OLIVOS', '', 'Odontopediatria', '2018-02-12', '2023-08-13', '0000-00-00', '0000-00-00', '', ''),
(442, 'MIA ANGHELICA ', 'AGUILERA CHAVEZ ', '90651370', 'DNI', '+51 921915456', 'LOS OLIVOS', '', 'Odontopediatria', '2019-01-27', '2023-08-09', '0000-00-00', '0000-00-00', '', ''),
(443, 'YADIRA ', 'GUEVARA ALCANTARA', '72832246', 'DNI', '+51 975404313', 'LOS OLIVOS', '', 'Odontopediatria', '2009-01-04', '2023-10-07', '0000-00-00', '0000-00-00', '', ''),
(444, 'FABIO ALESSANDRO', 'DE LA CRUZ PIZARRO', '90043865', 'DNI', '+51 945552769', 'LOS OLIVOS', '', 'Odontopediatria', '2017-01-19', '2023-05-27', '0000-00-00', '0000-00-00', '', ''),
(445, 'LIAM MATEO ', 'LOPEZ CHUIMA ', '90962676', 'DNI', '+51 977731889', 'LOS OLIVOS', '', 'Odontopediatria', '2017-07-23', '2023-10-14', '0000-00-00', '0000-00-00', '', ''),
(446, 'LÍA SAMARA', 'REYES', '90779372', 'DNI', '+51 922779303', 'LOS OLIVOS', '', 'Odontopediatria', '2018-05-17', '2023-06-30', '0000-00-00', '0000-00-00', '', ''),
(447, 'ERIC ', 'SANTINO ANTUHAN', '06123816', 'DNI', '+51 982333955', 'LOS OLIVOS', '', 'Odontopediatria', '2016-10-13', '2023-08-26', '0000-00-00', '0000-00-00', '', ''),
(448, 'GAELA ANTUANETTE', 'ANUNCIAR COLAN ', '79466060', 'DNI', '+51 975426363', 'LOS OLIVOS', '', 'Odontopediatria', '2016-01-07', '2023-07-01', '0000-00-00', '0000-00-00', '', ''),
(449, 'FLAVIO LUCIANO ', 'RONDAN HERRERA ', '79569780', 'DNI', '+51 959428873', 'LOS OLIVOS', '', 'Odontopediatria', '2015-12-20', '2023-09-05', '0000-00-00', '0000-00-00', '', ''),
(450, 'BRIHANA VALENTINA ', 'FERRADAS RUGEL', '78643164', 'DNI', '+51 977756053', 'LOS OLIVOS', '', 'Odontopediatria', '2014-07-28', '2023-06-03', '0000-00-00', '0000-00-00', '', ''),
(451, 'ENRIQUE YADIEL', 'ADAUTO CHAVEZ  ', '91913363', 'DNI', '+51 967831121', 'LOS OLIVOS', '', 'Odontopediatria', '2020-07-01', '2023-08-19', '0000-00-00', '0000-00-00', '', ''),
(452, 'ASHLEE CATHERINE ', 'ALVA CALMET', '74847489', 'DNI', '+51 961335371', 'LOS OLIVOS', '', 'Odontopediatria', '2006-04-20', '2023-09-16', '0000-00-00', '0000-00-00', '', ''),
(453, 'FABIO MATHIAS ', 'RONDAN HERRERA ', '78368320', 'DNI', '+51 959428873', 'LOS OLIVOS', '', 'Odontopediatria', '2013-10-22', '2023-09-05', '0000-00-00', '0000-00-00', '', ''),
(454, 'ANTONELLA KHALESSI', 'VARA ALLENDE', '46176499', 'DNI', '+51 939613357', 'LOS OLIVOS', '', 'Odontopediatria', '2023-08-18', '2023-07-06', '0000-00-00', '0000-00-00', '', ''),
(455, 'MATTEO FABRIZIO', 'MURILLO RUIZ ', '79735616', 'DNI', '+51 966877193', 'LOS OLIVOS', '', 'Odontopediatria', '2016-06-01', '2024-05-02', '0000-00-00', '0000-00-00', '', ''),
(456, 'BASTIAN THIAGO', 'GARCÍA DE LA CRUZ ', '91140920', 'DNI', '+51 992292445', 'LOS OLIVOS', '', 'Odontopediatria', '2019-01-12', '0000-00-00', '0000-00-00', '0000-00-00', '', ''),
(457, 'YARELI ', 'SUÁREZ BARTOLOME', '92904309', 'DNI', '+51 988836349', 'LOS OLIVOS', '', 'Odontopediatria', '2022-05-23', '2024-09-14', '0000-00-00', '0000-00-00', '', ''),
(458, 'MAE SILLEHY', 'HUARACA GUTIERREZ  ', '91482381', 'DNI', '+51 915232478', 'LOS OLIVOS', '', 'Odontopediatria', '2019-08-15', '2024-09-14', '0000-00-00', '0000-00-00', '', ''),
(459, 'NAZUMY KAORY', 'TAJIRI VALENZUELA ', '79660195', 'DNI', '+51 994177136', 'LOS OLIVOS', '', 'Odontopediatria', '2016-05-06', '2024-09-14', '0000-00-00', '0000-00-00', '', ''),
(460, 'ANA CAMILA ', 'HUAMANCHUMO GARCIA ', '92883533', 'DNI', '+51 921324561', 'LOS OLIVOS', '', 'Odontopediatria', '2023-05-09', '2023-09-15', '2023-09-15', '0000-00-00', '', ''),
(462, 'MATHIAS JORGE ', 'CHAVEZ YAURI', '91741775', 'DNI', '+51 987654321', 'LOS OLIVOS', '', 'Odontopediatria', '2020-02-21', '2023-07-21', '2023-09-30', '0000-00-00', '', ''),
(463, 'VALENTINO', 'SALINAS QUISPE', '91587106', 'DNI', '+51 962641226', 'LOS OLIVOS', '', 'Odontopediatria', '2019-11-11', '2024-09-17', '2024-09-17', '0000-00-00', '', ''),
(464, 'CHARLES', 'DULL', '505535439', 'Pasaporte', '+51 612217209', 'MIRAFLORES', '', 'Consulta General', '1984-06-28', '2024-05-20', '0000-00-00', '0000-00-00', '', ''),
(465, 'MURIEL', 'INCHICAQUI SOLIZ', '70430072', 'DNI', '+51 961243259', 'LOS OLIVOS', '', 'Consulta General', '1990-04-28', '2024-09-18', '0000-00-00', '0000-00-00', '', ''),
(466, 'EDITH JUDITH', 'MARCELO SALAZAR ', '15283155', 'DNI', '+51 94086572', 'LOS OLIVOS', '', 'Consulta General', '1972-07-17', '2024-09-18', '0000-00-00', '0000-00-00', '', ''),
(467, 'HECTOR DOMINICK ', 'ZEGARRA VILLAVICENCI', '79798712', 'DNI', '+51 981159030', 'LOS OLIVOS', '', 'Odontopediatria', '2016-08-09', '2024-09-18', '0000-00-00', '0000-00-00', '', ''),
(468, 'ROGER ROGELIO', 'QUINTE QUISPE', '46959591', 'DNI', '+51 944846070', 'LOS OLIVOS', 'Los Olivos', 'Consulta General', '1992-04-05', '2024-09-19', '0000-00-00', '0000-00-00', '', ''),
(469, 'JOSE AUGUSTO ', 'TORRES DIAZ ', '42085574', 'DNI', '+51 995440360', 'LOS OLIVOS', '', 'Consulta General', '1983-11-17', '2024-09-21', '0000-00-00', '0000-00-00', '', ''),
(470, 'ROSA ', 'RAMOS HUAMAN ', '10505436', 'DNI', '+51 969570715', 'LOS OLIVOS', '', 'Consulta General', '1965-02-05', '2024-09-21', '0000-00-00', '0000-00-00', '', ''),
(471, 'NAYDA LISBETH', 'YAURI ALVARADO', '76303123', 'DNI', '+51 936827000', 'LOS OLIVOS', '', 'Consulta General', '2022-03-16', '2024-09-21', '0000-00-00', '0000-00-00', '', ''),
(472, 'YASON ', 'NEVER CALDERÓN PAUCA', '48037825', 'DNI', '+51 900721536', 'LOS OLIVOS', '', 'Consulta General', '1993-11-24', '2024-09-24', '0000-00-00', '0000-00-00', '', ''),
(473, 'GINA FLORISA', 'OBREGÓN QUESADA', '46827565', 'DNI', '+51 957321590', 'LOS OLIVOS', '', 'Consulta General', '1990-09-16', '2024-09-25', '0000-00-00', '0000-00-00', '', ''),
(474, 'JESUS', 'PONCE SANCHEZ', '43374760', 'DNI', '+51 940429056', 'LOS OLIVOS', '', 'Consulta General', '1985-09-04', '2024-09-25', '0000-00-00', '0000-00-00', '', ''),
(475, 'KENJEY', 'CHAN', '12345678', 'DNI', '+51 148161135', 'MIRAFLORES', '', 'Consulta General', '1992-09-23', '2024-09-26', '2024-09-26', '2024-09-26', '', ''),
(476, 'CARLOS', 'PEÑA PORTOCARRERO', '41866566', 'DNI', '+51 995985145', 'LOS OLIVOS', '', 'Consulta General', '1982-02-06', '2024-09-28', '0000-00-00', '0000-00-00', '', ''),
(477, 'DELANEY SHANNON', 'SMITH QUINTANA', '79957763', 'DNI', '+51 953388598', 'MIRAFLORES', '', 'Odontopediatria', '2016-09-29', '2024-10-01', '0000-00-00', '0000-00-00', '', ''),
(478, 'KATHERINE ANDREA', '  ANDONAIRE ROMERO', '75404900', 'DNI', '+51 960549116', 'LOS OLIVOS', '', 'Consulta General', '1999-12-16', '2024-10-04', '0000-00-00', '0000-00-00', '', ''),
(479, 'EDGARDO ', 'ANDONAIRE MUJICA', '08509306', 'DNI', '+51 994624901', 'LOS OLIVOS', '', 'Ortodoncia', '1961-03-20', '2024-10-04', '0000-00-00', '0000-00-00', '', ''),
(480, 'ARIANA ', 'ANDONAIRE ROMERO ', '70459782', 'DNI', '+51 922016050', 'LOS OLIVOS', '', 'Consulta General', '2006-05-10', '2024-10-07', '0000-00-00', '0000-00-00', '', ''),
(481, 'LIZBETH', 'INCHICAQUI SOLIZ', '48773020', 'DNI', '+51 961243259', 'LOS OLIVOS', '', 'Consulta General', '1986-07-31', '2024-10-08', '0000-00-00', '0000-00-00', '', ''),
(482, 'FATIMA ELENA ', 'PINTO MERINO', '72491832', 'DNI', '+51 611650873', 'MIRAFLORES', '', 'Consulta General', '1997-05-29', '2024-10-09', '2024-10-09', '2024-10-09', '', ''),
(483, 'JESSICA IVONNE', 'ZAVALETA LEDESMA ', '70211451', 'DNI', '+51 979357988', 'LOS OLIVOS', '', 'Consulta General', '1997-02-15', '2024-10-15', '0000-00-00', '0000-00-00', '', ''),
(484, 'HEINZ PAULINO', 'GONZALEZ ', '92598652', 'DNI', '+51 902619155', 'LOS OLIVOS', '', 'Odontopediatria', '2021-10-26', '2024-10-17', '0000-00-00', '0000-00-00', '', ''),
(485, 'YESENIA', 'ZAMUDIO MORENO ', '10816556', 'DNI', '+51 904454141', 'LOS OLIVOS', '', 'Consulta General', '1997-09-10', '2024-10-18', '0000-00-00', '0000-00-00', '', ''),
(486, 'NAYELI ESTHEFFANY', 'SABRERA SANCHEZ ', '743984457', 'DNI', '+51 921155338', 'LOS OLIVOS', '', 'Consulta General', '2004-05-27', '2024-10-18', '0000-00-00', '0000-00-00', '', ''),
(487, 'LIONEL JEAN LUCA', 'FUENTES SEBASTIAN ', '77110322', 'DNI', '+51 994601711', 'LOS OLIVOS', '', 'Consulta General', '2011-06-13', '2024-10-19', '2024-10-19', '0000-00-00', '', ''),
(488, 'QUIRINA', 'DEFOSSE', '76821516', 'DNI', '+51 963799502', 'MIRAFLORES', '', 'Consulta General', '2005-05-16', '2024-10-21', '0000-00-00', '0000-00-00', '', ''),
(489, 'LEONARDO MATIAS', 'ORELLANA MORENO', '70501787', 'DNI', '+51 936560408', 'MIRAFLORES', 'Surquillo', 'Ortodoncia', '2006-07-27', '2024-10-21', '0000-00-00', '0000-00-00', '', ''),
(490, 'JOHEL', 'CHIRRE MARCOS', '48649412', 'DNI', '+51 950292121', 'LOS OLIVOS', '', 'Consulta General', '1988-01-11', '2024-10-22', '0000-00-00', '0000-00-00', '', ''),
(491, 'SONIA ', 'ESPINOZA', '004547518', 'DNI', '+51 920822252', 'LOS OLIVOS', '', 'Consulta General', '1965-04-29', '2024-10-22', '0000-00-00', '0000-00-00', '', ''),
(492, 'KAROL ', 'MOSCOL CHAVEZ', '46465351', 'DNI', '+51 978376230', 'MIRAFLORES', '', 'Consulta General', '1990-07-17', '2024-10-30', '0000-00-00', '0000-00-00', '', ''),
(493, 'NOEMI RUTH', 'LOAIZA PARDO', '41220194', 'DNI', '+51 945072263', 'LOS OLIVOS', '', 'Consulta General', '1982-01-02', '2024-11-02', '2024-11-02', '2024-11-02', '', ''),
(494, 'DANIELA', 'YABAR RODAS', '72881860', 'DNI', '+51 977104723', 'LOS OLIVOS', '', 'Implantologia', '2002-01-23', '2024-11-02', '2024-11-02', '2024-11-02', '', ''),
(495, 'MARUJA', 'MEJIA BERMUDEZ ', '09622246', 'DNI', '+51 7444016', 'LOS OLIVOS', '', 'Rehabilitacion Oral', '1963-03-26', '2024-11-04', '0000-00-00', '0000-00-00', '', ''),
(496, 'JORGE DARIO', 'RODRIGUEZ LOPEZ', '90955459', 'DNI', '+51 943544543', 'MIRAFLORES', '', 'Odontopediatria', '2018-09-10', '2024-11-05', '0000-00-00', '0000-00-00', '', ''),
(497, 'SILVIA JANETH', 'ZOTELO CHAVEZ', '80609268', 'DNI', '+51 999994816', 'MIRAFLORES', '', 'Consulta General', '2024-11-05', '2024-11-05', '2024-11-05', '0000-00-00', '', ''),
(498, 'SOFIA', 'SANTIAGO SARAVIA', '92466847', 'DNI', '+51 914691404', 'LOS OLIVOS', '', 'Odontopediatria', '2022-07-27', '2024-11-09', '0000-00-00', '0000-00-00', '', ''),
(499, 'GABY ', 'TORRES MORENO ', '08540438', 'DNI', '+51 987027636', 'LOS OLIVOS', '', 'Consulta General', '1964-01-28', '2024-11-09', '0000-00-00', '0000-00-00', '', ''),
(500, 'CHRISTIAN VICTOR', 'CAPCHA', '43394599', 'DNI', '+51 989562880', 'LOS OLIVOS', '', 'Consulta General', '1986-02-01', '2024-11-12', '0000-00-00', '0000-00-00', '', ''),
(501, 'ANGELA VICTORIA ', 'SANCHEZ ', '92518703', 'DNI', '+51 993444035', 'LOS OLIVOS', '', 'Odontopediatria', '2021-09-01', '2024-11-14', '0000-00-00', '0000-00-00', '', ''),
(502, 'BELEN ', 'VALDARRAGO ARAUJO', '90011489', 'DNI', '+51 941301283', 'LOS OLIVOS', '', 'Odontopediatria', '2019-01-01', '2024-11-14', '0000-00-00', '0000-00-00', '', ''),
(503, 'LUCCA BENJAMIN', 'TELLO VASQUEZ ', '90444537', 'DNI', '+51 944527772', 'LOS OLIVOS', '', 'Odontopediatria', '0000-00-00', '2024-11-14', '0000-00-00', '0000-00-00', '', ''),
(504, 'GIOVANNA SUSANA', 'NORIEGA SERRANO', '08150355', 'DNI', '+51 988170147', 'LOS OLIVOS', '', 'Consulta General', '1972-11-03', '2024-11-15', '0000-00-00', '0000-00-00', '', ''),
(505, 'MAFFER CATALINA GERA', 'ALMEYDA AYALA', '91403229', 'DNI', '+51 000000000', 'LOS OLIVOS', '', 'Odontopediatria', '2019-07-03', '2024-11-16', '0000-00-00', '0000-00-00', '', ''),
(506, 'EMMA BRIHANA', 'MORE LIBIA', '91873512', 'DNI', '+51 912880690', 'LOS OLIVOS', 'SMP', 'Odontopediatria', '2020-05-30', '2024-11-16', '0000-00-00', '0000-00-00', '', ''),
(507, 'DERYCK LUHAN JOSE', 'NICODEMOS CHOCIALAHU', '79831649', 'DNI', '+51 947627529', 'MIRAFLORES', '', 'Odontopediatria', '2016-09-01', '2024-11-19', '0000-00-00', '2024-11-19', '', ''),
(508, 'WILBER EDUARDO', 'OBLEA ACOSTA', '09011590', 'DNI', '+51 991246657', 'MIRAFLORES', '', 'Implantologia', '1966-10-13', '2024-11-20', '2024-11-20', '0000-00-00', '', ''),
(509, 'NILTON CESAR ', 'QUIAPAZA RAMOS ', '70561193', 'DNI', '+51 974313389', 'MIRAFLORES', 'Santa Anita ', 'Consulta General', '1996-09-09', '2024-11-20', '2024-11-20', '0000-00-00', '', ''),
(510, 'YESENIA', 'LIPA CASTRO', '74685408', 'DNI', '+51 983828419', 'MIRAFLORES', 'Santa Anita ', 'Consulta General', '1998-04-07', '2024-11-20', '2024-11-20', '0000-00-00', '', ''),
(511, 'JOSE LUIS', 'VILLA CORDOVA ', '25702398', 'DNI', '+51 953624733', 'LOS OLIVOS', '', 'Consulta General', '1969-04-15', '2024-11-19', '0000-00-00', '0000-00-00', '', ''),
(512, 'JACOBO', 'FLORES MEDINA ', '06938403', 'DNI', '+51 995573626', 'LOS OLIVOS', '', 'Consulta General', '1945-12-01', '2024-11-21', '0000-00-00', '0000-00-00', '', ''),
(513, 'JOAQUIN EZEQUIEL ', 'FLORES DÍAZ ', '92291385', 'DNI', '+51 987778952', 'LOS OLIVOS', '', 'Odontopediatria', '2024-11-23', '0000-00-00', '0000-00-00', '0000-00-00', '', ''),
(514, 'ETHAN', 'FLORES RUIZ', '90410014', 'DNI', '+51 951295816', 'LOS OLIVOS', '', 'Odontopediatria', '2024-11-23', '0000-00-00', '0000-00-00', '0000-00-00', '', ''),
(515, 'LUANA', 'SANTARIA ZOTELO', '76608117', 'DNI', '+51 988809237', 'MIRAFLORES', '', 'Consulta General', '2006-05-02', '2024-11-26', '2024-11-26', '2024-11-26', '', ''),
(516, 'ANGIE ELIANA', 'TAKEUCHI BAUTISTA', '91235424', 'DNI', '+51 931198339', 'LOS OLIVOS', '', 'Odontopediatria', '2019-02-27', '2024-11-30', '0000-00-00', '0000-00-00', '', ''),
(517, 'BEATRIZ YOLANDA ', 'ARAUJO ARAGÓN ', '42263266', 'DNI', '+51 941301283', 'LOS OLIVOS', '', 'Consulta General', '1984-01-24', '2024-11-30', '0000-00-00', '0000-00-00', '', ''),
(518, 'LIAM FABIANO ', 'ZUMAETA HUAMAN ', '90058265', 'DNI', '+51 963584572', 'LOS OLIVOS', '', 'Odontopediatria', '2016-09-07', '2024-11-30', '0000-00-00', '0000-00-00', '', ''),
(519, 'MARCO ANTONIO', 'DE LA CRUZ T', '60319725', 'DNI', '+51 923137973', 'LOS OLIVOS', '', 'Consulta General', '1993-04-12', '2024-12-03', '0000-00-00', '0000-00-00', '', ''),
(520, 'JHON AZIEL', 'CASTILLO LOZANO ', '92238385', 'DNI', '+51 980617007', 'LOS OLIVOS', '', 'Odontopediatria', '2021-01-18', '2024-12-05', '0000-00-00', '0000-00-00', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientedos`
--

CREATE TABLE `clientedos` (
  `CodigoCli` int(11) NOT NULL,
  `NombreApellido` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `FechaCli` date NOT NULL,
  `SedeCli` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Especialidad` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Doctor` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clinica`
--

CREATE TABLE `clinica` (
  `IdClinica` int(11) NOT NULL,
  `Sede` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clinica`
--

INSERT INTO `clinica` (`IdClinica`, `Sede`) VALUES
(0, ''),
(1001, 'Los Olivos: Calle Marfin 1301'),
(1002, 'Miraflores: Av. Diagonal 550 - oficina 302A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contabilidad`
--

CREATE TABLE `contabilidad` (
  `Codigocont` int(11) NOT NULL,
  `Historia` int(11) NOT NULL,
  `Sedecont` varchar(30) NOT NULL,
  `Dnicont` varchar(10) NOT NULL,
  `Fechacont` date NOT NULL,
  `Clientecont` varchar(60) NOT NULL,
  `Cantidadcont` int(11) NOT NULL,
  `Tratamientocont` varchar(150) NOT NULL,
  `Metodocont` varchar(30) NOT NULL,
  `Pagocont` decimal(10,2) NOT NULL,
  `Tecnico` decimal(10,2) NOT NULL,
  `Doctorcont` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contabilidad`
--

INSERT INTO `contabilidad` (`Codigocont`, `Historia`, `Sedecont`, `Dnicont`, `Fechacont`, `Clientecont`, `Cantidadcont`, `Tratamientocont`, `Metodocont`, `Pagocont`, `Tecnico`, `Doctorcont`) VALUES
(5, 498, 'LOS OLIVOS', '92466847', '2024-11-09', 'SOFIA SANTIAGO', 1, 'Profilaxis + Fluor', 'Efectivo', 160.00, 0.00, 'Dra. Azul Araucano'),
(6, 501, 'LOS OLIVOS', '92518703', '2024-11-14', 'ANGELA SANCHEZ', 1, 'Radiografia', 'Yape', 25.00, 0.00, 'Dra. Azul Araucano'),
(7, 501, 'LOS OLIVOS', '92518703', '2024-11-14', 'ANGELA SANCHEZ', 1, 'Profilaxis + Fluor', 'Yape', 160.00, 0.00, 'Dra. Azul Araucano'),
(8, 502, 'LOS OLIVOS', '90011489', '2024-11-14', 'BELEN VALDARRAGO', 1, 'Radiografia', 'Yape', 25.00, 0.00, 'Dra. Azul Araucano'),
(9, 502, 'LOS OLIVOS', '90011489', '2024-11-14', 'BELEN VALDARRAGO', 1, 'Profilaxis', 'Yape', 80.00, 0.00, 'Dra. Azul Araucano'),
(10, 503, 'LOS OLIVOS', '90444537', '2024-11-14', 'LUCCA TELLO', 1, 'Radiografia', 'Yape', 25.00, 0.00, 'Dra. Azul Araucano'),
(11, 505, 'LOS OLIVOS', '91403229', '2024-11-16', 'MAFFER ALMEYDA', 1, 'Profilaxis + Aplicacion de Fluor', 'Yape', 160.00, 0.00, 'Dra. Azul Araucano'),
(12, 505, 'LOS OLIVOS', '91403229', '2024-11-16', 'MAFFER ALMEYDA', 1, 'Cepillo Vitis Junior', 'Yape', 20.00, 0.00, 'Dra. Azul Araucano'),
(13, 506, 'LOS OLIVOS', '91873512', '2024-11-16', 'EMMA MORE', 1, 'Profilaxis+ Aplicación de Fluor ', 'Plin', 160.00, 0.00, 'Dra. Azul Araucano'),
(14, 493, 'LOS OLIVOS', '41220194', '2024-11-02', 'NOEMI LOAIZA', 1, 'Exodoncia ', 'Visa', 294.00, 0.00, 'Dr. Angel Granda'),
(15, 131, 'LOS OLIVOS', '052', '2024-11-02', 'EMILIA JAUREGUI', 1, 'Operculectomia', 'Yape', 150.00, 0.00, 'Dr. Jhon Zelada'),
(16, 494, 'LOS OLIVOS', '72881860', '2024-11-02', 'DANIELA YABAR', 1, 'Radiografia', 'Yape', 25.00, 0.00, 'Dr. Jhon Zelada'),
(17, 131, 'LOS OLIVOS', '052', '2024-11-02', 'EMILIA JAUREGUI', 1, 'Enjuague Encias', 'Yape', 35.00, 0.00, 'Dr. Jhon Zelada'),
(18, 205, 'LOS OLIVOS', '41011176', '2024-11-04', 'YULIANA VICUÑA', 1, 'Restauraciones + Medicacion + Profilaxis+ Fluor Barniz', 'Visa', 330.00, 0.00, 'Dr. Jhon Zelada'),
(19, 495, 'LOS OLIVOS', '09622246', '2024-11-04', 'MARUJA MEJIA', 1, 'Restauracion PosEndodoncia', 'Efectivo', 100.00, 0.00, 'Dr. Jhon Zelada'),
(20, 359, 'LOS OLIVOS', '72647416', '2024-11-05', 'EDWIN MINDREAW', 1, 'Control de Ortodoncia', 'Visa', 157.50, 0.00, 'Dra. Madelyn Placido'),
(21, 38, 'LOS OLIVOS', '74834979', '2024-11-05', 'ANGELA MORENO', 1, 'Control de Ortodoncia', 'Yape', 150.00, 0.00, 'Dra. Madelyn Placido'),
(22, 323, 'LOS OLIVOS', '72513019', '2024-11-05', 'JORGE PELÁEZ', 1, 'Control de Ortodoncia', 'Yape', 150.00, 0.00, 'Dra. Madelyn Placido'),
(23, 481, 'LOS OLIVOS', '48773020', '2024-11-05', 'LIZBETH INCHICAQUI', 1, '02 Restauraciones Simples ', 'Yape', 140.00, 0.00, 'Dr. Jhon Zelada'),
(24, 465, 'LOS OLIVOS', '70430072', '2024-11-05', 'MURIEL INCHICAQUI', 1, 'Prueba de cofia Cuadrante III ( repericion corregida)', 'Efectivo', 450.00, 0.00, 'Dr. Jhon Zelada'),
(25, 495, 'LOS OLIVOS', '09622246', '2024-11-06', 'MARUJA MEJIA', 1, 'Tallado + Retiro de corona ', 'Efectivo', 250.00, 0.00, 'Dr. Jhon Zelada'),
(26, 493, 'LOS OLIVOS', '41220194', '2024-11-09', 'NOEMI LOAIZA', 1, 'Certificado medico odontologico', 'Visa', 21.00, 0.00, 'Dr. Jhon Zelada'),
(27, 493, 'LOS OLIVOS', '41220194', '2024-11-09', 'NOEMI LOAIZA', 1, 'Destartraje + Profilaxis ', 'Visa', 84.00, 0.00, 'Dr. Jhon Zelada'),
(28, 400, 'LOS OLIVOS', '07152457', '2024-11-09', 'MARIO GUTIERREZ', 1, 'Adelanto de protesis ', 'Efectivo', 500.00, 300.00, 'Dr. Jhon Zelada'),
(29, 495, 'LOS OLIVOS', '09622246', '2024-11-12', 'MARUJA MEJIA', 1, 'Adelanto protesis ', 'Efectivo', 500.00, 300.00, 'Dr. Jhon Zelada'),
(30, 500, 'LOS OLIVOS', '43394599', '2024-11-12', 'CHRISTIAN CAPCHA', 1, 'Extraccion', 'Yape', 80.00, 0.00, 'Dr. Jhon Zelada'),
(31, 493, 'LOS OLIVOS', '41220194', '2024-11-12', 'NOEMI LOAIZA', 1, 'Limpieza + Curetaje pos-exodoncia ', 'Visa', 63.00, 0.00, 'Dr. Jhon Zelada'),
(32, 465, 'LOS OLIVOS', '70430072', '2024-11-13', 'MURIEL INCHICAQUI', 1, 'Adelanto de Protesis ', 'Plin', 2000.00, 0.00, 'Dr. Jhon Zelada'),
(33, 400, 'LOS OLIVOS', '07152457', '2024-11-14', 'MARIO GUTIERREZ', 1, 'Adelanto de protesis ', 'Efectivo', 1000.00, 400.00, 'Dr. Jhon Zelada'),
(34, 400, 'LOS OLIVOS', '07152457', '2024-11-15', 'MARIO GUTIERREZ', 1, 'Adelanto de protesis ', 'Efectivo', 580.00, 0.00, 'Dr. Jhon Zelada'),
(35, 400, 'LOS OLIVOS', '07152457', '2024-11-15', 'MARIO GUTIERREZ', 1, 'Endodoncia Molares o Posterior', 'Efectivo', 420.00, 0.00, 'Dr. Hans Gamarra'),
(36, 496, 'MIRAFLORES', '90955459', '2024-11-05', 'JORGE RODRIGUEZ', 4, 'Radiografia', 'Visa', 25.00, 0.00, 'Dra. Azul Araucano'),
(37, 496, 'MIRAFLORES', '90955459', '2024-11-05', 'JORGE RODRIGUEZ', 1, 'Restauracion c/brix + Adelanto ', 'Transferencia', 400.00, 0.00, 'Dra. Azul Araucano'),
(38, 496, 'MIRAFLORES', '90955459', '2024-11-13', 'JORGE RODRIGUEZ', 1, '02 Rest. Med. c/Brix (84,85) 01 Rest. Simple55', 'Plin', 420.00, 0.00, 'Dra. Azul Araucano'),
(39, 496, 'MIRAFLORES', '90955459', '2024-11-13', 'JORGE RODRIGUEZ', 1, 'Cepillo Vitis Junior', 'Plin', 20.00, 0.00, 'Dra. Azul Araucano'),
(40, 496, 'MIRAFLORES', '90955459', '2024-11-13', 'JORGE RODRIGUEZ', 1, 'Pasta Junior', 'Plin', 23.00, 0.00, 'Dra. Azul Araucano'),
(41, 507, 'MIRAFLORES', '79831649', '2024-11-19', 'DERYCK NICODEMOS', 1, 'Profilaxis + Fluor Barniz', 'Efectivo', 180.00, 0.00, 'Dra. Azul Araucano'),
(42, 502, 'LOS OLIVOS', '90011489', '2024-11-23', 'BELEN VALDARRAGO', 1, 'Restauraciones + Medicacion', 'Yape', 150.00, 0.00, 'Dra. Azul Araucano'),
(43, 313, 'LOS OLIVOS', '90055607', '2024-11-23', 'LEONARDO DE', 1, 'Profilaxis + Fluor', 'Plin', 160.00, 0.00, 'Dra. Azul Araucano'),
(44, 513, 'LOS OLIVOS', '92291385', '2024-11-23', 'JOAQUIN FLORES', 1, 'Profilaxis + Fluor', 'Yape', 160.00, 0.00, 'Dra. Azul Araucano'),
(45, 514, 'LOS OLIVOS', '90410014', '2024-11-23', 'ETHAN FLORES', 2, 'Radiografia', 'Yape', 25.00, 0.00, 'Dra. Azul Araucano'),
(46, 514, 'LOS OLIVOS', '90410014', '2024-11-23', 'ETHAN FLORES', 1, 'Profilaxis', 'Yape', 80.00, 0.00, 'Dra. Azul Araucano'),
(47, 487, 'LOS OLIVOS', '77110322', '2024-11-30', 'LIONEL FUENTES', 1, 'Destartraje + Profilaxis + Fluor + 6 sellantes', 'Yape', 600.00, 0.00, 'Dra. Azul Araucano'),
(48, 516, 'LOS OLIVOS', '91235424', '2024-11-30', 'ANGIE TAKEUCHI', 1, 'Profilaxis + Fluor', 'Yape', 160.00, 0.00, 'Dra. Azul Araucano'),
(49, 516, 'LOS OLIVOS', '91235424', '2024-11-30', 'ANGIE TAKEUCHI', 1, 'Radiografia', 'Yape', 25.00, 0.00, 'Dra. Azul Araucano'),
(50, 379, 'LOS OLIVOS', '91380753', '2024-11-30', 'STEFANO BALUARTE', 1, 'Profilaxis + Fluor + Resina simple ', 'Efectivo', 240.00, 0.00, 'Dra. Azul Araucano'),
(51, 518, 'LOS OLIVOS', '90058265', '2024-11-30', 'LIAM ZUMAETA', 5, 'Radiografia', 'Yape', 25.00, 0.00, 'Dra. Azul Araucano'),
(52, 503, 'LOS OLIVOS', '90444537', '2024-11-30', 'LUCCA TELLO', 1, 'Profilaxis + Fluor', 'Yape', 160.00, 0.00, 'Dra. Azul Araucano'),
(53, 514, 'LOS OLIVOS', '90410014', '2024-11-30', 'ETHAN FLORES', 1, 'Fluor Barniz', 'Yape', 80.00, 0.00, 'Dra. Azul Araucano'),
(54, 489, 'LOS OLIVOS', '70501787', '2024-11-19', 'LEONARDO ORELLANA', 1, 'Restauracion simple', 'Yape', 140.00, 0.00, 'Dr. Jhon Zelada'),
(55, 465, 'LOS OLIVOS', '70430072', '2024-11-19', 'MURIEL INCHICAQUI', 1, 'Adelanto protesis ', 'Plin', 460.00, 0.00, 'Dr. Jhon Zelada'),
(56, 485, 'LOS OLIVOS', '10816556', '2024-11-20', 'YESENIA ZAMUDIO', 1, 'Adelanto Cirugia de Implantes', 'Transferencia', 1000.00, 0.00, 'Dr. Jhon Zelada'),
(57, 142, 'LOS OLIVOS', '08569080', '2024-11-21', 'GUIDO HUERTA', 1, 'Adelanto Protesis ', 'Efectivo', 200.00, 0.00, 'Dr. Jhon Zelada'),
(58, 30, 'LOS OLIVOS', '32609262', '2024-11-23', 'JOSÉ ESCUDERO', 1, '02 Restauracion simple', 'Efectivo', 120.00, 0.00, 'Dr. Jhon Zelada'),
(59, 153, 'LOS OLIVOS', '060', '2024-11-23', 'EMILY ESCUDERO', 1, 'Profilaxis + 02 sellantes', 'Yape', 200.00, 0.00, 'Dr. Jhon Zelada'),
(60, 153, 'LOS OLIVOS', '060', '2024-11-23', 'EMILY ESCUDERO', 1, 'Pasta Ortodoncia', 'Yape', 78.00, 0.00, 'Dr. Jhon Zelada'),
(61, 400, 'LOS OLIVOS', '07152457', '2024-11-26', 'MARIO GUTIERREZ', 1, 'Adelanto de Protesis ', 'Efectivo', 1000.00, 0.00, 'Dr. Jhon Zelada'),
(62, 481, 'LOS OLIVOS', '48773020', '2024-11-26', 'LIZBETH INCHICAQUI', 1, '02 Restauracion + Medicacion ', 'Efectivo', 360.00, 0.00, 'Dr. Jhon Zelada'),
(63, 495, 'LOS OLIVOS', '09622246', '2024-11-26', 'MARUJA MEJIA', 1, 'Restauracion + Instalacion de coronas', 'Efectivo', 150.00, 0.00, 'Dr. Jhon Zelada'),
(64, 488, 'MIRAFLORES', '76821516', '2024-11-21', 'QUIRINA DEFOSSE', 1, 'Destartraje + Profilaxis + Retiro de Brackets + Contencion', 'Efectivo', 700.00, 0.00, 'Dr. Jhon Zelada'),
(65, 325, 'LOS OLIVOS', '45980345', '2024-11-23', 'MARIELA GARCÍA', 1, 'Control de Ortodoncia', 'Yape', 150.00, 0.00, 'Dra. Madelyn Placido'),
(66, 376, 'LOS OLIVOS', '79097961', '2024-11-23', 'VICTORIA ESCUDERO', 1, 'Control de Ortodoncia', 'Yape', 150.00, 0.00, 'Dra. Madelyn Placido'),
(67, 387, 'LOS OLIVOS', '72491969', '2024-11-23', 'ERICA CARDOZA', 1, 'Control de Ortodoncia', 'Yape', 150.00, 0.00, 'Dra. Madelyn Placido'),
(68, 156, 'LOS OLIVOS', '75005144', '2024-11-23', 'AZUL ROBLES', 1, 'Control de Ortodoncia', 'Yape', 150.00, 0.00, 'Dra. Madelyn Placido'),
(69, 497, 'MIRAFLORES', '80609268', '2024-11-30', 'SILVIA ZOTELO', 1, 'Profilaxis', 'Plin', 120.00, 0.00, 'Dr. Jhon Zelada'),
(70, 497, 'MIRAFLORES', '80609268', '2024-11-07', 'SILVIA ZOTELO', 4, 'Radiografia', 'Plin', 100.00, 0.00, 'Dr. Jhon Zelada'),
(71, 515, 'MIRAFLORES', '76608117', '2024-11-26', 'LUANA SANTARIA', 1, 'Destartraje + Profilaxis', 'Plin', 100.00, 0.00, 'Dr. Jhon Zelada'),
(72, 497, 'MIRAFLORES', '80609268', '2024-11-28', 'SILVIA ZOTELO', 1, '03 Extraccion', 'Plin', 210.00, 0.00, 'Dr. Jhon Zelada'),
(73, 497, 'MIRAFLORES', '80609268', '2024-11-30', 'SILVIA ZOTELO', 1, 'Cirugia de Implante Dental', 'Transferencia', 4522.00, 776.00, 'Dr. Jhon Zelada'),
(74, 517, 'LOS OLIVOS', '42263266', '2024-11-30', 'BEATRIZ ARAUJO', 1, 'Consulta + Restauracion Medicada', 'Yape', 200.00, 0.00, 'Dr. Jhon Zelada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor`
--

CREATE TABLE `doctor` (
  `DniDoctor` varchar(20) NOT NULL,
  `CorreoDoctor` varchar(20) NOT NULL,
  `ContraseñaDoctor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `doctor`
--

INSERT INTO `doctor` (`DniDoctor`, `CorreoDoctor`, `ContraseñaDoctor`) VALUES
('Admismiley', 'easymed.pe@gmail.com', '@admismiley#');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `egreso`
--

CREATE TABLE `egreso` (
  `Codigoegre` int(11) NOT NULL,
  `Fechaegre` date NOT NULL,
  `Descripcionegre` varchar(200) NOT NULL,
  `Tipoegre` varchar(30) NOT NULL,
  `Precioegre` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `egreso`
--

INSERT INTO `egreso` (`Codigoegre`, `Fechaegre`, `Descripcionegre`, `Tipoegre`, `Precioegre`) VALUES
(1, '2024-11-06', 'Materiales odontólogicos ( revelador, sector, rx, gasas, guantes)', 'Efectivo', 379.50),
(2, '2024-11-06', 'Óxido de zinc, Eugenol, fuji2, sacafresa', 'Efectivo', 147.00),
(3, '2024-11-14', 'Materiales de limpieza (Dollarcity)', 'Efectivo', 99.00),
(4, '2024-11-12', 'Regalos ODP', 'Efectivo', 36.00),
(5, '2024-11-12', 'Utensilios de aseo', 'Plin', 32.00),
(6, '2024-11-12', 'Bidón de agua ', 'Efectivo', 16.00),
(7, '2024-11-15', 'Pago Dr. Hans', 'Efectivo', 205.00),
(8, '2024-11-12', 'Devolución Dra. Azul', 'Efectivo', 25.50),
(9, '2024-11-09', 'Pago Dr. Sebastián (Exodoncia)', 'Efectivo', 100.00),
(10, '2024-11-06', 'Adelanto Andrea', 'Efectivo', 20.00),
(11, '2024-11-06', 'Adelanto Georgina', 'Efectivo', 45.00),
(12, '2024-11-06', 'Adelanto Nicole ', 'Efectivo', 20.00),
(13, '2024-11-08', 'Materiales Emancipación ', 'Plin', 394.00),
(14, '2024-11-16', 'Pago de Dientito', 'Transferencia', 1150.00),
(15, '2024-11-01', 'Alquiler Miraflores ', 'Efectivo', 1050.00),
(16, '2024-11-17', 'Adornos Navideños ', 'Plin', 300.00),
(17, '2024-11-19', 'Adhesivo Maquira', 'Efectivo', 36.00),
(18, '2024-11-30', 'Técnico de la compresora (Los Olivos)', 'Yape', 120.00),
(19, '2024-11-07', 'Técnico unidades Miraflores', 'Yape', 282.00),
(20, '2024-11-30', 'Pilas ', 'Yape', 8.50),
(21, '2024-11-30', 'Jabón líquido ', 'Yape', 8.00),
(22, '2024-11-30', 'Publicidad Tiktok', 'Transferencia', 210.00),
(23, '2024-11-30', 'Mantenimiento carro', 'Yape', 280.00),
(24, '2024-11-22', 'Pago Asistenta Georgina', 'Efectivo', 350.00),
(25, '2024-11-26', 'Devolución Pac Eduardo (endo)', 'Yape', 150.00),
(26, '2024-11-28', 'Pago Equipo de Marketing', 'Efectivo', 800.00),
(27, '2024-11-27', 'Préstamo BBVA ', 'Debito-Credito', 433.00),
(28, '2024-11-30', 'Canva Pro', 'Yape', 6.00),
(29, '2024-11-30', 'Materiales Dentales', 'Yape', 210.00),
(30, '2024-11-20', 'Materiales Dentales', 'Yape', 149.50),
(31, '2024-11-30', 'Adelanto Andrea', 'Efectivo', 15.00),
(32, '2024-11-30', 'Pago Marketing Cristhopher', 'Transferencia', 500.00),
(33, '2024-11-26', 'Pago Dr. Edinson', 'Transferencia', 75.00),
(34, '2024-11-30', 'Pago de servicios Miraflores ', 'Efectivo', 300.00),
(35, '2024-11-30', 'Servidor web', 'Efectivo', 110.00),
(36, '2024-11-30', 'Julio (Sistemas)', 'Plin', 200.00),
(37, '2024-11-30', 'Alquiler Miraflores Diciembre ', 'Transferencia', 1910.00),
(38, '2024-11-30', 'Dra. Azul Remuneración Noviembre', 'Transferencia', 1334.00),
(39, '2024-11-30', 'Nicole Asistente ', 'Transferencia', 169.00),
(40, '2024-11-30', 'Jazmin Asistente ', 'Transferencia', 175.00),
(41, '2024-11-30', 'Andrea Asistente', 'Transferencia', 179.00),
(42, '2024-11-30', 'Cochera Los Olivos ', 'Efectivo', 250.00),
(43, '2024-11-30', 'Servicios Los Olivos ', 'Plin', 450.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `excel`
--

CREATE TABLE `excel` (
  `CodigoExcel` int(11) NOT NULL,
  `NomExcel` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `DniPaciente` int(11) NOT NULL,
  `NomPaciente` varchar(20) NOT NULL,
  `ApePaciente` varchar(20) NOT NULL,
  `TelfPaciente` varchar(20) NOT NULL,
  `CorreoPaciente` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`DniPaciente`, `NomPaciente`, `ApePaciente`, `TelfPaciente`, `CorreoPaciente`) VALUES
(0, '', '', '+51', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procedimiento`
--

CREATE TABLE `procedimiento` (
  `Codproc` int(11) NOT NULL,
  `Fechaproc` date NOT NULL,
  `Descripcionproc` varchar(300) NOT NULL,
  `Doctorproc` varchar(40) NOT NULL,
  `Nota` varchar(200) NOT NULL,
  `CodigoPaciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `procedimiento`
--

INSERT INTO `procedimiento` (`Codproc`, `Fechaproc`, `Descripcionproc`, `Doctorproc`, `Nota`, `CodigoPaciente`) VALUES
(4, '2024-04-18', 'CONSULTA DENTAL', 'Dr. Jhon Zelada', '0000-00-00', 255),
(5, '2024-04-27', 'PZA(3.4) + REST. POST ENDODONCIA + COLOCACION DE PERNO FIONA', 'Dr. Jhon Zelada', '', 219),
(6, '2024-04-02', 'CONSULTA ODONTOLOGICA', 'Dr. Jhon Zelada', '0000-00-00', 257),
(7, '2024-04-03', '2 REST. SIMPLES(PARA AUMENTAR GROSOR PZA(2.5/2.7) + ENTREGA DE PROTESIS FLEXIBLE', 'Dr. Jhon Zelada', '0000-00-00', 257),
(8, '2024-04-09', '05 REST. SIMPLES PZAS. 1.4, 1.3, 2.4, 2.5, 4.7', 'Dr. Jhon Zelada', '', 258),
(9, '2024-02-29', '2 PLACAS RX.(CANCELADO) + SE ENTREGARON RX AL PACIENTE ', 'Dr. Jhon Zelada', '', 259),
(10, '2024-04-19', 'PIEZA 1.7 NECROSIS PULPAR', 'Dra. Rosario Araujo', '0000-00-00', 260),
(11, '2024-04-24', 'CONOMETRIA R50, R25, R25 + SE DEJA CON HIDROXIDO DE CALCIO X 7DIAS', 'Dra. Rosario Araujo', '0000-00-00', 260),
(12, '2024-05-03', 'OBTURACION FINAL + SE DEJO EL IONOMERO', 'Dra. Rosario Araujo', '0000-00-00', 260),
(13, '2024-04-18', 'CONSULTA DENTAL', 'Dr. Jhon Zelada', '', 261),
(14, '2024-02-27', 'CONSULTA + PEGADO DE PROVISIONAL', 'Dr. Jhon Zelada', '', 262),
(15, '2024-04-15', 'CONSULTA + 1 RADIOGRAFIA', 'Dr. Jhon Zelada', '', 262),
(16, '2024-04-06', 'PROFILAXIS + DESTARTRAJE + RESTAURACION MEDICADA', 'Dr. Angel Granda', '0000-00-00', 263),
(17, '2024-04-19', 'TOMA DE 06 RADIOGRAFIA PERIPICALES(VOLVER A TOMAR PZA. 2.4 POR LESION APICAL)', 'Dr. Angel Granda', '0000-00-00', 263),
(18, '2024-03-26', 'EVALUACION + CONSULTA + (REST. + MEDICACION)(2.6)', 'Dr. Jhon Zelada', '0000-00-00', 264),
(19, '2024-03-04', 'TOMA DE 03 RX. + 1 REST. CON MEDICACION PZA. 2.6', 'Dr. Jhon Zelada', '', 265),
(20, '2024-03-07', 'RESTAURACION + MEDICACION (PZA 1.4/1.6) + COLOCACION DE CORONA PROVISIONAL', 'Dr. Jhon Zelada', '0000-00-00', 265),
(21, '2024-03-07', 'EXODONCIA PZ(2.4)', 'Dr. Jhon Zelada', '0000-00-00', 265),
(22, '2024-03-12', 'REST + MEDICACION PZA.(4.6) + TOMA DE IMPRESION SECTOR(CUADRANTE 1)', 'Dr. Jhon Zelada', '0000-00-00', 265),
(23, '2024-03-18', 'TALLADO PZA.(2.6) + PRUEBA DE COJIA + TOMA DE IMPRESION + COLOCACION DE PROVISIONAL(A PEDIDO DEL PACIENTE)', 'Dr. Jhon Zelada', '0000-00-00', 265),
(24, '2024-03-26', 'ENTREGA PROTESIS FLEX SUP + CORONA PZA.(2.6)', 'Dr. Jhon Zelada', '0000-00-00', 265),
(25, '2024-04-04', 'PZA.(1.4) EN OBSERVACION + REST. SIMPLE + MEDICACION (PZA 1.4) + 2 RESTAURACION + MEDICACION  PX + PRESENTA MOLESTIA A  LA PERCUSION VERTICAL', 'Dr. Jhon Zelada', '0000-00-00', 265),
(26, '2024-04-18', 'CX DE IMPLANTES DENTALES PZA(1.4) + CARGA INMEDIATA', 'Dr. Jhon Zelada', '0000-00-00', 265),
(27, '2024-02-23', 'PROFILAXIS + DESTARTRAJE + TOMA DE IMPRESION + BLANQUEAMIENTO', 'Dr. Angel Granda', '0000-00-00', 266),
(28, '2024-02-24', 'TOMA DE RADIOGRAFIA + CURACIONES CON MEDICACION (3PZA) + SESION DE BLANQUEAMIENTO', 'Dr. Angel Granda', '0000-00-00', 266),
(29, '2024-02-25', 'ENTREGA DE KIT DE BLANQUEAMIENTO + INDICACIONES Y RECOMENDACIONES', 'Dr. Angel Granda', '0000-00-00', 266),
(30, '2024-03-26', 'REST. CON MEDICACION PZA(4.7)OV + RADIOGRAFIA PZA(4.6)', 'Dr. Angel Granda', '0000-00-00', 266),
(31, '2024-04-22', 'CONSULTA GENERAL', 'Dr. Jhon Zelada', '0000-00-00', 267),
(32, '2024-04-23', 'TOMA DE 04 RADIOGRAFIAS PERIOPICALES', 'Dr. Jhon Zelada', '0000-00-00', 267),
(33, '2024-03-12', 'LIMPIEZA COMPLETA + RESTAURACION CON MEDICACION PZA(3.5)', 'Dr. Angel Granda', '0000-00-00', 268),
(34, '2024-03-18', 'REST. CON MEDICACION PZA(4.7) + REST. SIMPLE PZA(3.6)', 'Dr. Angel Granda', '0000-00-00', 268),
(35, '2024-03-26', 'REST. SIMPLE PZA(1.3)V, PZA(1.1)P', 'Dr. Angel Granda', '0000-00-00', 268),
(36, '2024-03-02', 'CONSULTA + ADELANTO DE ENDODONCIA', 'Dr. Jhon Zelada', '0000-00-00', 269),
(37, '2024-04-04', '01 RESTAURACION  CON MEDICACION Pza 3.6', 'Dr. Jhon Zelada', '', 269),
(38, '2024-02-29', 'RESTAURACION +MEDICACION 4.7 + PLACA RX (ENTREGO AL PACIENTE)', 'Dr. Jhon Zelada', '0000-00-00', 270),
(39, '2024-03-02', 'CONSULTA DENTAL', 'Dr. Jhon Zelada', '', 271),
(40, '2024-02-08', 'PROFILAXIS + PLACA RADIOGRAFICA PZA', 'Dr. Jhon Zelada', '0000-00-00', 272),
(41, '2024-02-13', '02 REST. SIMPLES', 'Dr. Jhon Zelada', '0000-00-00', 272),
(42, '2024-01-20', 'CONSULTA + TOMA DE IMPRESION', 'Dr. Jhon Zelada', '', 273),
(43, '2024-01-23', 'TALLADO PILARES + TOMA DE IMPRESION DEFINITIVA + PROVISIONAL', 'Dr. Jhon Zelada', '0000-00-00', 273),
(44, '2024-01-29', 'PRUEBA DE COJIA + PRUEBA EMPILADO + REST. CON MEDICACION (2)', 'Dr. Jhon Zelada', '0000-00-00', 273),
(45, '2024-02-01', 'INSTALACION PROVISIONAL DE PUENTE FIJO', 'Dr. Jhon Zelada', '0000-00-00', 273),
(46, '2024-02-05', 'INSTALACION PROTESIS FIJA + PROTESIS FIJA + PROTESIS FLEXIBLE', 'Dr. Jhon Zelada', '0000-00-00', 273),
(47, '2023-10-09', 'DESTARTRAJE + PROFILAXIS + RX 1.5 + 2.4 + REST. CON MEDICACION 3.6 + 4.6', 'Dra. Rosario Araujo', '', 274),
(48, '2023-10-10', 'APERTURA CORONAL + CONDUCTO CP Y CV + SE DEJA CON IONOMERO + OBTURACION DE CONDUCTOS + CONOMETRIA TAPER', 'Dra. Rosario Araujo', '', 274),
(49, '2023-11-06', 'REST. MEDICODA 1.7 + REST. SIMPLE 2.8 + 2 PROFILAXIS + DESTARTAJE', 'Dra. Piera Hijar', '', 274),
(50, '2023-11-09', 'EVALUACION ODONTOLOGICA ', 'Dr. Jhon Zelada', '0000-00-00', 275),
(51, '2023-11-16', 'PROFILAXIS + RESTAURACION PZA', 'Dr. Jhon Zelada', '0000-00-00', 275),
(52, '0000-00-00', 'CONSULTA ODONTOLOGICA + DX', 'Dr. Jhon Zelada', '0000-00-00', 276),
(53, '2023-10-10', 'REST. SUPERIORES X4', 'Dr. Jhon Zelada', '', 277),
(54, '2023-10-17', 'REST. INFERIORES', 'Dr. Jhon Zelada', '', 277),
(55, '2024-03-09', 'PROFILAXIS', 'Dr. Jhon Zelada', '', 277),
(56, '2023-10-28', 'PROFILAXIS + DESTARTRAJE', 'Dr. Angel Granda', '', 278),
(57, '2024-01-14', 'RESTAURACION + MEDICACION (1.6/2.7)', 'Dr. Angel Granda', '', 278),
(58, '2023-11-16', 'CONSULTA + PROFILAXIS', 'Dr. Jhon Zelada', '0000-00-00', 280),
(59, '2023-11-21', '04 SELLANTES + TOMA DE IMPRESION(CONTENSION)(COLORNEGRO)', 'Dr. Jhon Zelada', '0000-00-00', 280),
(60, '2023-11-30', 'INSTALACION DE RETENEDORES + 06 REST. SIMPLES', 'Dr. Jhon Zelada', '0000-00-00', 280),
(61, '2023-12-05', 'APLICACION DE FLUOR BARNIZ', 'Dr. Jhon Zelada', '0000-00-00', 280),
(62, '2023-11-14', 'PROFILAXIS COMPLETA', 'Dr. Jhon Zelada', '', 281),
(63, '2023-11-21', 'PRUEBA DE ENFILADO', 'Dr. Jhon Zelada', '', 281),
(64, '2023-11-24', 'INSTALACION PROTESIS FLEXIBLE', 'Dr. Jhon Zelada', '', 281),
(65, '2024-01-06', 'CONSULTA ODONTOLOGICA', 'Dr. Jhon Zelada', '0000-00-00', 283),
(66, '2024-01-06', 'CONSULTA ODONTOLOGICA', 'Dr. Jhon Zelada', '0000-00-00', 284),
(67, '2024-01-06', 'CONSULTA ODONTOLOGICA', 'Dr. Jhon Zelada', '0000-00-00', 285),
(68, '2023-12-14', 'REST. + MEDICACION PZA(1.4/4.4)', 'Dr. Jhon Zelada', '', 286),
(69, '2024-01-29', 'TOMA DE IMPRESION SUP/INF + COLOCACION DE TOPES ODUSALES', 'Dr. Jhon Zelada', '', 286),
(70, '2024-02-01', 'TALLADO INFERIOR IZQ. + TOMA DE IMPRESION ', 'Dr. Jhon Zelada', '', 286),
(71, '2024-02-05', 'RODETE SUP + PROVISIONAL REGALO PUENTES INFERIORES(P/J)', 'Dr. Jhon Zelada', '', 286),
(72, '2024-02-08', '04 RESTAURACIONES + PRUEBA DE EUFILADO ', 'Dr. Jhon Zelada', '', 286),
(73, '2024-02-14', 'ENTREGA PROTESIS SUP + INSTALACION DE CORONAS DEFINITIVAS INFERIORES', 'Dr. Jhon Zelada', '', 286),
(74, '2023-10-18', 'SE REALIZO 03 RX RADIOGRAFIAS Y TALLADO + IMPRESION SUP E INFERIOR', 'Dr. Jhon Zelada', '0000-00-00', 287),
(75, '2023-11-14', 'PRUEBA DE COJIA + COLONIMETRO PZA(1.6/2.6)', 'Dr. Jhon Zelada', '0000-00-00', 287),
(76, '2023-11-21', 'INSTALACION CORONA(METAL PORCELANA)', 'Dr. Jhon Zelada', '0000-00-00', 287),
(77, '2023-12-12', 'TOMA DE IMPRESION PARA FERULA DE BLANQUEAMIENTO', 'Dr. Angel Granda', '0000-00-00', 287),
(78, '2024-01-14', 'PROFILAXIS + ENTREGA DE FERULAS DE BLANQUEADORES', 'Dr. Angel Granda', '0000-00-00', 287),
(79, '2023-09-27', 'PROFILAXIS DENTAL', 'Dr. Jhon Zelada', '', 288),
(80, '2023-10-03', 'RESTAURACIONES(2.4/2.6) + TOMA DE IMPRESION  SUP/INF', 'Dr. Jhon Zelada', '', 288),
(81, '2023-10-23', 'PRUEBA DE RODETES + TOMA DE COLOR A2', 'Dr. Jhon Zelada', '', 288),
(82, '2023-12-05', 'PRUEBA DE ENFILADO', 'Dr. Jhon Zelada', '', 288),
(83, '2024-02-13', 'ENTREGA DE PROTESIS SUP E INF', 'Dr. Jhon Zelada', '', 288),
(84, '2024-03-07', 'CONTROL 1 (PROTESIS)', 'Dr. Jhon Zelada', '', 288),
(85, '2024-02-26', 'PROFILAXIS + REST. + MEDICACION', 'Dr. Jhon Zelada', '0000-00-00', 289),
(86, '2023-12-19', 'CONSULTA ODONTOLOGICA', 'Dr. Jhon Zelada', '', 290),
(87, '2023-12-28', 'IMPRESION', 'Dr. Jhon Zelada', '0000-00-00', 290),
(88, '2024-01-07', 'ENFILADO', 'Dr. Jhon Zelada', '0000-00-00', 290),
(89, '2024-02-27', 'ENTREGA DE PROTESIS', 'Dr. Jhon Zelada', '0000-00-00', 290),
(90, '2024-03-02', 'RAGIOGRAFIA PERIAPICAL PZA(1.4)', 'Dr. Jhon Zelada', '', 291),
(91, '2024-05-08', 'RETIRO DE PUNTOS + CONTROL DE IMPLANTE', 'Dr. Jhon Zelada', '0000-00-00', 265),
(92, '2024-04-27', 'Colocación de 08 SELLANTES PZAS. (1.7/1.6/1.5/1.4/2.4/2.5/2.6/2.7) + 04 RESTAURACIONES SIMPLES PZAS (3.7/3.6/4.6/4.7) SE LE DA LAS INDICACIONES DEL CASO AL PACIENTE Y SE LE EXPLICA LA IMPORTANCIA DE UN CORRECTO CEPILLADO DENTAL.', 'Dr. Jhon Zelada', '', 292),
(93, '2024-04-30', 'INSTALACION DE BRACKETS METÁLICOS CONVENCIONALES SUPERIOR ', 'Dra. Madelyn Placido', '', 292),
(94, '2023-09-25', 'DESTARTRAJE + PROFILAXIS(1ERA SESION)', 'Dr. Jhon Zelada', '', 293),
(95, '2023-09-27', 'RESTAURACION + MEDICACION PZA(1.6/2.6) + RESTAURACION SIMPLE PZA(2.7/1.7)', 'Dr. Jhon Zelada', '', 293),
(96, '2023-10-03', 'FLUOR BARNIZ + RESTAURACIONES INFERIORES', 'Dr. Jhon Zelada', '', 293),
(97, '2023-10-23', 'INSTALACION DE APERATOLOGIA FIJA SUPERIOR', 'Dra. Madelyn Placido', '', 293),
(98, '2023-12-05', 'INSTALACION DE APERATOLOGIA FIJA(INFERIOR) + 1ER CONTROL ORTODONCIA', 'Dra. Madelyn Placido', '', 293),
(99, '2024-01-24', 'ARCO NITIO 014 SUP + CADENA DE 41 A 31', 'Dra. Madelyn Placido', '', 293),
(100, '2024-04-03', 'PACIENTE FALTO A SU CONTROL DE ORTODONCIA', 'Dra. Madelyn Placido', '', 293),
(101, '2024-04-24', 'PACIENTE FALTO A SU CONTROL DE ORTODONCIA', 'Dra. Madelyn Placido', '', 293),
(102, '2023-09-25', 'SE REALIZO PROFILAXIS + DESTARTRAJE', 'Dr. Jhon Zelada', '', 294),
(103, '2023-09-26', 'PERNO FIBRA + TALLADO + TOMA DE IMPRESION + RX PERIAPICAL', 'Dr. Jhon Zelada', '', 294),
(104, '2023-09-27', 'RESTAURACIONES SIMPLES PZA(1.7/2.8/3.7) + REST + MEDICACION PZA 4.7', 'Dr. Jhon Zelada', '', 294),
(105, '2023-09-29', 'PRUEBA COJIA PZA(1.7)', 'Dr. Jhon Zelada', '', 294),
(106, '2023-10-18', 'SE REALIZO INSTALACION DE BRACKETS SUP', 'Dr. Jhon Zelada', '', 294),
(107, '2023-11-21', 'SE REALIZO INSTALACION DE BRACKETS INF', 'Dr. Jhon Zelada', '', 294),
(108, '2023-12-22', 'ARCO NITIO 0.016 SUP + ARCO NITIO 0.012 INF', 'Dr. Jhon Zelada', '', 294),
(109, '2024-01-24', 'ARCO NITIO 0.018 SUP + ARCO NITIO 0,016 INF + PACIENTE REQUIERE EXODONCIA(REMANENTE) ENTRE PZAS(2.6/2.4)', 'Dr. Jhon Zelada', '', 294),
(110, '2024-04-03', 'CADENA ELASTICA SUP E INF', 'Dr. Jhon Zelada', '', 294),
(111, '2023-11-21', 'PROFILAXIS + DESTARTRAJE', 'Dr. Jhon Zelada', '', 295),
(112, '2023-11-28', 'SE REALIZO INSTALACION DE BRACKETS AUTOLIGANTES SUP', 'Dr. Jhon Zelada', '', 295),
(113, '2023-12-22', 'INSTALACION MACLATS INF ARCO NITI 0,012 INF + 0,014 SUP', 'Dra. Madelyn Placido', '', 295),
(114, '2024-01-24', 'ARCO NITI 0.018 SUP + ARCO NITI 0.016 INF', 'Dra. Madelyn Placido', '', 295),
(115, '2024-03-13', 'ARCO NITI 0.022 SUP + ARCO NITI 0.018 INF', 'Dra. Madelyn Placido', '', 295),
(116, '2024-04-12', 'ARCO ACERO 17 X 25 SUP + ARCO NITI 16 X 22 INF', 'Dra. Madelyn Placido', '', 295),
(117, '2024-04-27', 'EVALUACIÓN CLÍNICA, TOMA DE RADIOGRAFIA PERIAPICAL PZA. 64', 'Dr. Jhon Zelada', '', 296),
(118, '2024-05-03', 'SE REALIZO DESTARTRAJE + FLUORTERAPIA DE FLUOR DE BARNIZ + SELLANTE RESINOSO PZA(1.6/2.6/3.6/4.6) + RESINA SIMPLE PZA(5.4/8.4/7.4) SE LE DIO LAS INDICACIONES A LA MADRE', 'Dra. Azul Araucano', 'Próxima cita terapia pulpar no instrumentada', 296),
(119, '2024-01-09', 'PACIENTE CON AUTISMO DE 5 AÑOS ACCEDE PORQUE SE SALIO LA CURACION CON MULTIPLES TRATAMIENTOS PERIOPICALES, PRESENCIA DE FISTURAS ENTRE LA PZA(5.3/5.4), SE REALIZO PROFILAXIS, FLUOR BARNIZ, REST PZA(5.3/7.44) Y RX PZAS(5.3/7.4) ', 'Dra. Azul Araucano', '', 297),
(120, '2024-01-22', 'SE VOLVIO A RESTAURAR LA PZA(7.4) SIN COMPLICACIONES', 'Dra. Azul Araucano', '', 297),
(121, '2024-04-22', 'LLEVA PRESENCIA DE FISTULA PIEZA 6.4 + RADIOGRAFIA + RESTAURACION CON TECNICA BRIX PZA 7.4. SE MANTENDRA PZA (5.3/6.4) ', 'Dra. Azul Araucano', '', 297),
(122, '2024-04-22', 'PROFILAXIS + SELLANTE PZA(1.6/2.6/4.6/8.4/8.5/3.6) + FLUOR BARNIZ + RECOMENDACION FLUOR TERAPIA POR PRESENCIA DE MANCHAS BLANCAS. SE DIO INDICACION A LA MADRE', 'Dra. Azul Araucano', '', 298),
(123, '2024-05-08', '2 DA APLICACION DE FLUOR BARNIZ ', 'Dra. Azul Araucano', '', 298),
(124, '2024-04-22', 'PROFILAXIS + SELLANTE PZA(5.5/6.5/7.5/8.5) + FLUOR DE BARNIZ. SE LE INDICO A LA MADRE', 'Dra. Azul Araucano', '', 299),
(125, '2023-11-21', 'SE REALIZO RX PZA(5.5) + REST. SIMPLE PZA(5.5) ', 'Dra. Azul Araucano', '', 300),
(126, '2023-10-23', '02 RESTAURACIONES + MEDICACION PZAS(6.4/6.5) + 02 SELLANTES PZAS(6.4/6.5)', 'Dr. Jhon Zelada', '', 301),
(127, '2023-11-14', 'PROFILAXIS + 02 SELLANTES PZA(7.4/7.5)', 'Dr. Jhon Zelada', '', 301),
(128, '2023-09-29', 'FLUOR DE BARNIZ + PACIENTE POCO COLABORATIVO', 'Dra. Alejandra Noriega', '', 302),
(129, '2023-11-21', 'DESTARTRAJE + PROFILAXIS', 'Dra. Alejandra Noriega', '', 302),
(130, '2023-11-28', 'APLICACION  DE RIVA STAR PZAS(6.4/7.4/8.4)', 'Dra. Alejandra Noriega', '', 302),
(131, '2024-01-12', '03 RESTAURACIONES SIMPLES PZAS(5.4/6.4/8.4)', 'Dra. Alejandra Noriega', '', 302),
(132, '2024-01-12', '02 RX + DESTARTRAJE + PROFILAXIS + FLUOR DE BARNIZ + 04 RESTAURACIONES SIMPLES', 'Dra. Alejandra Noriega', '', 303),
(133, '2024-02-27', 'DESTARTRAJE + PROFILAXIS + FLUOR BARNIZ + REST. RESINA PZA(4.6/2.6)', 'Dra. Alejandra Noriega', '', 304),
(134, '2022-08-22', 'EXODONCIA PZA(3.4) NAPROXENO', 'Dr. Jhon Zelada', '', 249),
(135, '2023-02-11', 'TALLADO + PIEZA(3.5)', 'Dr. Jhon Zelada', '', 249),
(136, '2023-02-13', 'TALLADO PZA(3.3) + TOMA DE IMPRENSION ', 'Dr. Jhon Zelada', '', 249),
(137, '2023-02-17', 'PRUEBA DE COFIA(COLON A3 CLIROMASCOR)', 'Dr. Jhon Zelada', '', 249),
(138, '2023-02-23', 'ENTREGA DE PROTESIS', 'Dr. Jhon Zelada', '', 249),
(139, '2024-01-06', 'CONSULTA ODONTOLOGICA + 03 RADIOGRAFIAS', 'Dr. Jhon Zelada', '', 249),
(140, '2022-12-15', 'SE REALIZO CARESTOP + 01 RESTAURACION + FLUOR BARNIZ + PROFILAXIS', 'Dra. Alejandra Noriega', '', 178),
(141, '2022-12-17', 'SE REALIZO RESTAURACION CON RESINA PZA(5.5)', 'Dra. Alejandra Noriega', '', 178),
(142, '2023-12-02', 'RESTAURACION + MEDICACION PZA(8.5/7.5)', 'Dr. Jhon Zelada', '', 178),
(143, '2024-03-02', 'OPENCULECTOMIA', 'Dr. Jhon Zelada', '', 178),
(144, '2024-01-20', 'PACIENTE NO COLABORADORA. HIPERMINALIZACION DEL ESMALTE AVANZADO', 'Dra. Alejandra Noriega', '', 139),
(145, '2022-11-11', 'D:20MM M:19.5MM', 'Dr. Jhon Zelada', '', 101),
(146, '2024-01-04', '02 RESTAURACIONES SIMPLES', 'Dr. Jhon Zelada', '', 101),
(147, '2022-01-22', 'EXODONCIA PZA(1.4/2.4)', 'Dr. Jhon Zelada', '', 98),
(148, '2022-01-25', 'INICIO TX ORTODONCIA', 'Dr. Jhon Zelada', '', 98),
(149, '2023-10-07', 'CONTROL PZA(1.4/2.4/1.6) BRACKETS', 'Dr. Piera Hijar Espinal', '', 98),
(150, '2023-12-16', 'CONTROL: ARCONITI 16 X 22 INF + CONTINUA CON ARCO ACERO SUP', 'Dr. Piera Hijar Espinal', '', 98),
(151, '2024-01-11', 'SE RETIRO BRACKETS SUP + TOMA DE IMPRESION ', 'Dr. Jhon Zelada', '', 98),
(152, '2024-01-20', 'PROFILAXIS + ENTREGA DE CONTENCION SUP', 'Dr. Jhon Zelada', '', 98),
(153, '2024-01-25', 'CONTENCION FIJA INF', 'Dr. Jhon Zelada', '', 98),
(154, '2024-02-10', 'TOMA DE IMPRENSION DEFINITIVO + TOMA DE COLOR', 'Dr. Jhon Zelada', '', 60),
(155, '2024-02-15', 'SE REALIZO 01 RESTAURACION CON MEDICACION + ENTREGA DE PROTESIS', 'Dr. Jhon Zelada', '', 60),
(156, '2023-08-12', 'TOMA DE IMPRESION SUP/INF + CONSULTA(PX NO TOLERA RECLINARSE A 180°)', 'Dr. Jhon Zelada', '', 123),
(157, '2023-08-17', 'ENTREGA DE PROTESIS FLEX UNITARIA', 'Dr. Jhon Zelada', '', 123),
(158, '2023-01-23', 'EXODONCIA PZA(2.8)-SUTURA SIMPLE', 'Dr. Jhon Zelada', '', 166),
(159, '2023-01-03', 'RESTAURACION + MEDICACION PZA(2.7)', 'Dr. Jhon Zelada', '', 166),
(160, '2023-04-14', 'RESTAURACION PROVISIONAL', 'Dr. Jhon Zelada', '', 166),
(161, '2023-05-11', 'ENDODONCIA ', 'Dr. Jhon Zelada', '', 166),
(162, '2023-05-19', 'RESTAURACION POST-ENDODONCIA(CARIES INTERPROXIMAL)', 'Dr. Jhon Zelada', '', 166),
(163, '2022-10-14', 'ENDODONCIA', 'Dr. Jhon Zelada', '', 187),
(164, '2022-11-10', 'PERNO DE FIBRA DE VIDRIO', 'Dr. Jhon Zelada', '', 187),
(165, '2022-11-17', '2 RESTAURACION + MEDICACION', 'Dr. Jhon Zelada', '', 187),
(166, '2023-03-17', 'FERULACION + RESTAURACION + PROFILAXIS', 'Dr. Jhon Zelada', '', 187),
(167, '2023-04-28', 'CONTROL ENCIA(PERIODONCIA)', 'Dr. Jhon Zelada', '', 187),
(168, '2024-02-15', 'PROFILAXIS + PERIAPICAL PZA(3.4)', 'Dr. Jhon Zelada', '', 187),
(169, '2024-05-19', 'REPOSICIÓN Y PEGADO DE (01) BRACKET ', 'Dra. Madelyn Placido', '', 292),
(170, '2024-05-10', 'SE REALIZÓ TRATAMIENTO PULPAR NO INSTRUMENTADO PZA. 6.4. SE OBSERVA SANGRADO PROFUSO POR LO CUAL SE DEJA MATERIAL PROVISIONAL PARA EVALUAR PRESENCIA DE DOLOR O FÍSTULA, SE LE MEDICA.', 'Dra. Azul Araucano', 'Próxima cita Evaluación / Restauración de la Pza. 6.4', 296),
(171, '2024-05-22', 'RESTAURACIÓN DE LA PIEZA 6.4. SE LE INDICA A LA MAMÁ EVITAR COMER ALIMENTOS DUROS Y PEGAJOSOS, PARA QUE LA RESTAURACIÓN NO SE LE SALGA, NI EL DIENTE SE ROMPA. SE LE DA TODAS LAS INDICACIONES A LA MADRE. ', 'Dra. Azul Araucano', 'Si presenta dolor o presencia de fístula se indica exodoncia ', 296),
(172, '2024-05-11', 'PROFILAXIS + 2 RESTAURACIONES MED.+ RADIOGRAFÍA ', 'Dr. Jhon Zelada', '', 166),
(173, '2024-05-16', '2 RESTAURACIONES MEDICADAS', 'Dr. Jhon Zelada', '', 166),
(174, '2024-07-01', '1 RESTAURACION MED. (4.7)', 'Dr. Jhon Zelada', 'Se indica reforzar la higiene en la parte posterior ', 166),
(175, '2022-12-15', 'PROFILAXIS + FLÚOR BARNIZ ', 'Dra. Alejandra Noriega', '', 69),
(176, '2022-12-19', 'CARIESTOP ( PZA.51, 52,61,62,54)', 'Dra. Alejandra Noriega', '', 69),
(177, '2023-01-02', 'RESTAURACIONES PZA 51 Y 52 ', 'Dra. Alejandra Noriega', 'Desapareció fístula pza. 51 , Se encuentra pequeña reacción alérgica a la plata', 69),
(178, '2023-01-05', '02 RESTAURACIONES ', 'Dra. Alejandra Noriega', '', 69),
(179, '2023-05-26', 'PROFILAXIS + FLÚOR BARNIZ ', 'Dra. Alejandra Noriega', '', 69),
(180, '2024-05-30', 'RADIOGRAFÍA + RESTAURACIONES 54 Y 64 + PROFILAXIS + FLÚOR BARNIZ ', 'Dra. Azul Araucano', 'Paciente acude a consulta porque presenta sensibilidad en la zona anteroposterior se le saca radiografía y se encuentra compromiso pulpar. ', 69),
(181, '2024-06-01', 'ENTREGA DE INFORME RADIOGRAFICO', 'Dra. Azul Araucano', 'Mamá acude a consulta a pedir radiografía tomada el día 30/05/24 se le entrega sin ningún tipo de percance con la pacientita Meissy Sanary ', 69),
(182, '2024-06-08', 'RESTAURACIÓN CON MEDICACIÓN PAZ (8:5) + PROFILAXIS DENTAL + FLÚOR BARNIZ + RADIOGRAFÍA PAZ (8.5)', 'Dra. Azul Araucano', 'Pacientita llega con una restauración desprendida de La pieza (8.5), se toma rx y se observa que presenta una terapia pulpar anterior y está próximo a exfoliar ', 316),
(183, '2023-11-02', 'SE REALIZÓ EXODONCIA COMPLEJA PZA 85 , SE INDICÓ AMOXICILINA 5ML C/8H POR 5 DÍAS / PARACETAMOL 5 ML C/8H POR 3 DÍAS ', 'Dra. Alejandra Noriega', 'Se dio indicaciones comidas blandas ', 314),
(184, '2024-01-06', 'SE REALIZÓ PROFILAXIS , APLICACIÓN DE FLÚOR BARNIZ MAS RESTAURACIÓN SIMPLE PIEZA 26', 'Dra. Alejandra Noriega', '', 314),
(185, '2024-06-08', 'SE REALIZÓ UNA EXODONCIA PIEZA 84 ', 'Dra. Azul Araucano', 'Se le dió todas las indicaciones a la mamita , próxima cita profilaxis mas flúor barniz ', 314),
(186, '2024-07-01', 'PROFILAXIS Y DESTARTRAJE + FLÚOR BARNIZ', 'Dr. Jhon Zelada', '', 341),
(187, '2024-07-01', 'PRIMERA CONSULTA', 'Dr. Jhon Zelada', '', 342),
(188, '2024-06-18', 'CONSULTA Y RE-EVALUACIÓN (ACTUALIZACIÓN DE ODONTOGRAMA)', 'Dr. Jhon Zelada', '', 274),
(189, '2024-06-21', 'APERTURA CAMERAL, AISLAMIENTO ABSOLUTO, CONDUCTOMETRÍA CV.21MM/ CL.21MM, CONOMETRÍA, SE DEJA CON HIDRÓXIDO DE CALCIO PZA 2.4', 'Dra. Rosario Araujo', 'Se informa al paciente de tratamiento complementario con cirugía apical pza.2.4', 274),
(190, '2024-06-28', 'CONOMETRÍA CV.23MM/ CL.21MM OBTURACIÓN FINAL, SE DEJA CON IONOMERO; MEDICACIÓN: SE INDICA CLINDAMICINA 300MG C/8H X 5 DÍAS ', 'Dra. Rosario Araujo', '', 274),
(191, '2024-07-03', 'DDD', 'Dra. Madelyn Placido', 'Hola', 1),
(192, '2023-07-03', 'PROFILAXIS ', 'Dr. Jhon Zelada', '', 310),
(193, '2022-11-03', 'RESTAURACIÓN DE RESINA PZA  2.4 + DESTARTRAJE Y PROFILAXIS ', 'Dr. Jhon Zelada', '', 310),
(194, '2022-07-04', 'PLACA PZ. 1.5', 'Dr. Jhon Zelada', '', 310),
(195, '2022-12-03', 'INSTALACIÓN DE BRACKETS SUPERIOR', 'Dra. Madelyn Placido', '', 310),
(196, '2023-01-10', 'INSTALACIÓN DE BRACKETS INFERIOR ', 'Dra. Madelyn Placido', '', 310),
(197, '2024-07-03', 'EXODONCIA PZA 2.5 ', 'Dr. Jhon Zelada', '', 310),
(198, '2024-06-27', 'PROVISIONAL DE RESINA PZA. 2.2', 'Dr. Jhon Zelada', '', 330),
(199, '2024-04-12', 'RESTAURACIÓN CON RESINA PZA 3.6 + RX PERIAPICAL PZA 1.7', 'Dr. Jhon Zelada', '', 334),
(200, '2024-05-25', 'CEMENTACIÓN DE INDOCROW PZA 1.7', 'Dr. Jhon Zelada', '', 334),
(201, '2024-01-01', 'EVALUACIÓN + HISTORIA CLÍNICA ', 'Dr. Jhon Zelada', '', 324),
(202, '2024-01-06', 'EXODONCIA PZA 1.2', 'Dr. Jhon Zelada', '', 324),
(203, '2024-06-17', 'TOMA DE IMPRESIÓN + CUBETA INDIVIDUAL ', 'Dr. Jhon Zelada', '', 324),
(204, '2024-07-02', 'COLOCACIÓN DE CICATRIZAL ', 'Dr. Jhon Zelada', '', 324),
(205, '2024-07-03', 'ENDODONCIA PZA 2.7', 'Dr. Jhon Zelada', '', 343),
(206, '2024-07-02', 'CONSULTA ', 'Dr. Jhon Zelada', '', 343),
(207, '2023-01-14', 'INSTALACIÓN DE IMPLANTE DENTAL PZA 1,2 + HUESO + MEMBRANA ', 'Dr. Jhon Zelada', '', 324),
(208, '2024-07-04', 'FRER', 'Dra. Ginna Llanque', 'Rrr', 1),
(211, '2024-07-04', 'CONSULTA + PROFILAXIS ', 'Dr. Jhon Zelada', '', 345),
(212, '2024-07-06', 'PROFILAXIS ', 'Dra. Azul Araucano', '', 321),
(213, '2024-07-06', 'FLÚOR BARNIZ, RESTAURACIÓN SIMPLE', 'Dra. Azul Araucano', '', 321),
(214, '2024-07-06', 'RESTAURACIÓN SIMPLE', 'Dra. Azul Araucano', '', 314),
(215, '2024-07-06', 'RESTAURACIÓN SIMPLE PZA.21', 'Dr. Jhon Zelada', '', 123),
(216, '2024-07-06', 'RESTAURACIÓN SIMPLE PZA 65 (O) ', 'Dra. Azul Araucano', 'Control 06 meses ', 314),
(217, '2024-07-06', 'PROFILAXIS, RESTAURACIÓN PZA 51 Y FLÚOR BARNIZ ', 'Dra. Azul Araucano', '', 321),
(218, '2024-07-06', 'RESTAURACIÓN MEDICADA PZA 85 ', 'Dra. Azul Araucano', '', 346),
(219, '2024-07-06', '01 RADIOGRAFÍA Y PROFILAXIS ', 'Dr. Jhon Zelada', '', 342),
(220, '2024-07-06', '06 SELLANTES ', 'Dr. Jhon Zelada', '', 341),
(221, '2024-07-06', 'PROFILAXIS Y FLÚOR BARNIZ ', 'Dra. Azul Araucano', '', 76),
(222, '2024-07-06', 'PROFILAXIS ', 'Dr. Jhon Zelada', '', 4),
(223, '2024-07-10', 'CONSULTA ODONTOLÓGICA + HISTORIA CLÍNICA ', 'Dr. Jhon Zelada', 'Se explica lo referente a la prótesis removible ', 351),
(224, '2024-07-11', 'CONSULTA', 'Dra. Azul Araucano', 'Px de 1 año y 7 meses acude a consulta se observa lesiones de caries en la pieza 51 , 52 , 61 ,62 con probable compromiso dentinario , para lo cual se le indica aplicación FDP y posible corona de acet', 352),
(225, '2024-07-11', 'RADIOGRAFÍAS ', 'Dr. Jhon Zelada', 'Rx sector inf/sup izquierda ', 354),
(226, '2024-07-11', 'RADIOGRAFÍA PZA. 55, 75, 85 + PROFILAXIS + FLUOR BARNIZ ', 'Dra. Azul Araucano', 'Px con múltiples lesiones de caries, se onserva compromiso de furca y reabsorcion  radicular. Proxima cita sellantes', 355),
(227, '2024-07-11', 'CONSULTA ', 'Dra. Azul Araucano', 'Px de 4 años conducta negativa. Se solicita sacar radiografías para visualizar las raíces del diente. Se encuentra presencia de absceso dental pza 64', 357),
(228, '2024-07-11', 'PERNO DE FIBRA + RESTAURACIÓN CON MUÑON', 'Dr. Jhon Zelada', '', 356),
(229, '2024-07-11', 'RESTAURACIÓN POST ENDO ', 'Dr. Jhon Zelada', 'Se le indicó al px que posteriormente requiere perno y corona', 343),
(230, '2024-07-06', '', 'Dra. Azul Araucano', 'Se le dió todas las indicaciones a la madre ', 346),
(231, '2024-07-11', 'PROFILAXIS + DESTARTRAJE + CURETAJE ', 'Dr. Jhon Zelada', '', 15),
(232, '2024-07-11', '1 RESTAURACIÓN CON MEDICACIÓN ', 'Dr. Jhon Zelada', '', 358),
(233, '2024-07-11', 'RESTAURACIÓN SIMPLE PZA 16', 'Dr. Jhon Zelada', '', 341),
(234, '2024-07-11', '', 'Dr. Jhon Zelada', ' ', 341),
(235, '2024-07-11', '3 RESTAURACIONES SIMPLES + FLÚOR BARNIZ', 'Dr. Jhon Zelada', 'Culminó tratamiento', 342),
(236, '2024-07-11', '1 RESTAURACIÓN SIMPLE', 'Dr. Jhon Zelada', '', 194),
(237, '2024-07-13', 'SELLANTES PZAS 16, 36 Y 46', 'Dra. Azul Araucano', 'Próxima cita restauración ', 355),
(238, '2024-07-13', 'TOMA DE IMPRESIÓN + REGISTRO DE MORDIDA ', 'Dr. Jhon Zelada', '', 356),
(239, '2024-07-13', 'RESTAURACIÓN MEDICADA PZA 74', 'Dra. Azul Araucano', 'Se le dió todas las indicaciones a la madre ', 346),
(240, '2024-07-13', 'SE REALIZÓ PROFILAXIS + RESTAURACIÓN CON IONOMETRO + FLÚOR BARNIZ', 'Dra. Azul Araucano', 'Px llega a consulta por lesión de caries pza 75(0)', 362),
(242, '2024-07-15', 'PROFILAXIS ', 'Dr. Jhon Zelada', '', 359),
(243, '2024-07-17', 'COLOCACIÓN DE PERNO DE FIBRA DE VIDRIO PZA. (1.5) DE 10 MM', 'Dr. Jhon Zelada', 'Se le indica al paciente evitar morder alimentos duros', 274),
(244, '2024-07-18', 'RESTAURACIÓN SIMPLE + RESTAURACIÓN CON MEDICACIÓN ', 'Dra. Azul Araucano', '', 355),
(245, '2024-07-18', 'PRUEBA DE COFIA METÁLICA + TOMA DE COLOR', 'Dr. Jhon Zelada', '', 356),
(246, '2024-07-20', 'PERNO DE FIBRA + RECONSTRUCCIÓN ', 'Dr. Jhon Zelada', '', 101),
(247, '2024-07-20', 'CONSULTA', 'Dra. Azul Araucano', '', 369),
(248, '2024-07-20', 'CONSULTA', 'Dra. Azul Araucano', '', 368),
(249, '2024-07-20', 'CONSULTA + PROFILAXIS + FLÚOR BARNIZ', 'Dra. Azul Araucano', '', 370),
(250, '2024-07-20', 'CONSULTA', 'Dra. Azul Araucano', '', 371),
(251, '2024-07-20', 'PROFILAXIS + CONSULTA DENTA', 'Dr. Jhon Zelada', '', 373),
(252, '2024-07-20', 'EXODONCIA PZA 2.8', 'Dr. Angel Granda', '', 263),
(253, '2024-06-25', 'CONSULTA + HISTORIA CLINICA', 'Dr. Jhon Zelada', '', 349),
(254, '2024-07-09', 'RETIRO DE PRÓTESIS FIJA', 'Dr. Jhon Zelada', '', 349),
(255, '2024-07-20', 'TOMA DE MODELOS SUPERIOR E INFERIOR', 'Dr. Jhon Zelada', '', 349),
(256, '2024-07-20', 'CONSULTA ', 'Dr. Jhon Zelada', '', 374),
(257, '2024-07-18', 'PRIMERA APLICACIÓN DE FLÚOR TERAPIA', 'Dra. Azul Araucano', '', 375),
(258, '2024-02-03', 'REPOSICIÓN DE BRACKETS ', 'Dr. Jhon Zelada', '', 376),
(259, '2024-07-18', 'APLICACIÓN DE FLÚOR BARNIZ ', 'Dra. Azul Araucano', 'Se le da todas las indicaciones a los padres, próxima cita 3ra aplicación de flúor barniz ', 362),
(260, '2024-07-20', 'SE LE HIZO UNA RESTAURACIÓN CON IONOMERO FOTOCURABLE + FLÚOR BARNIZ ', 'Dra. Azul Araucano', 'Acude a cita por lesión de caries pza B4', 372),
(261, '2024-03-02', 'RESORTE ENTRE PZAS 41 Y 43 PARA CREAR ESPACIO , ARCO MITI 0,016 INFERIOR', 'Dra. Madelyn Placido', 'Próxima cita brackets  sup.', 376),
(262, '2024-05-30', 'BRACKEADO ARCADA SUPLENTE, AUTOLIGANTES ARCO MITI 0,012 , TOMA DE MODELO SUPLENTE PARA HYRAX , PEGADO DE BRACKETS PZA 42 SE INCLUYE AL ARCO ', 'Dra. Madelyn Placido', '', 376),
(263, '2024-07-20', 'CONTROL + TUVO DE IMPRESIÓN ', 'Dr. Jhon Zelada', '', 376),
(264, '2024-07-18', 'CONSULTA ODONTOLOGICA + COLOCACIÓN DE PROVISIONAL PZA 4.6', 'Dr. Jhon Zelada', '', 367),
(265, '2024-07-22', 'PROVISIONALIZACION , COPIA PROVISIONAL + CARILLA + ADAPTACIÓN + CEMENTACIÓN ', 'null', '', 324),
(266, '2024-07-22', 'RESTAURACIÓN MEDICADA + RESTAURACIÓN ESTÉTICA + 01 RADIOGRAFÍA ', 'Dra. Ginna Llanque', '', 377),
(267, '2024-07-25', 'RADIOGRAFÍA + PROFILAXIS + FLUOR BARNIZ ', 'Dra. Azul Araucano', 'Paciente masculino de 5 años 02 meses asiste a consulta por falta de dientes inferiores ', 379),
(268, '2024-07-25', '2 RX (75 Y 85) + PROFILAXIS ', 'Dra. Azul Araucano', 'Manejo de conducta ', 380),
(269, '2024-07-25', '1 RESTAURACION SIMPLE ', 'Dr. Jhon Zelada', '', 110),
(270, '2024-07-27', 'PROFILAXIS + CEMENTACIÓN DE CORONA ', 'Dr. Jhon Zelada', '', 356),
(271, '2024-07-27', 'APLICACIÓN DE FLÚOR BARNIZ ', 'Dra. Azul Araucano', 'Paciente de 4 años preventa conducta negativa. Se reforzó la técnica de cepillado. Se sugiere volver en 2 meses para aplicación de flúor barniz ', 381),
(272, '2024-07-27', 'CONSULTA + PROFILAXIS ', 'Dr. Jhon Zelada', '', 382),
(273, '2024-07-27', 'COLOCACIÓN DE HOOPS DE LIGADURAS 43 Y 24', 'Dra. Madelyn Placido', '', 359),
(274, '2024-07-27', 'ARCO NITI SUPERIOR 0.19 X 0.25', 'Dra. Madelyn Placido', '', 317),
(275, '2024-07-27', 'RESTAURACIÓN MEDICADA PZA. 1.6 + TOMA DE IMPRESIÓN ', 'Dr. Jhon Zelada', '', 384),
(276, '2024-07-27', 'APLICACIÓN DE FLÚOR BARNIZ ', 'Dr. Jhon Zelada', '', 178),
(277, '2023-02-18', 'PROFILAXIS + RESTAURACIÓN MEDICADA ', 'Dr. Jhon Zelada', '', 387),
(278, '2023-02-23', '4 RESTAURACIONES SIMPLES ', 'Dr. Jhon Zelada', '', 387),
(279, '2023-03-11', 'INSTALACIÓN SUPERIOR ', 'Dr. Jhon Zelada', '', 387),
(280, '2023-03-29', 'ENDODONCIA PZA 2.6', 'Dr. Jhon Zelada', '', 387),
(281, '2023-04-22', 'PEGADA DE BRACKETS ', 'Dra. Madelyn Placido', '', 387),
(282, '2023-06-29', 'RADIOGRAFÍA ', 'Dra. Madelyn Placido', '', 387),
(283, '2023-09-16', 'ARCO SUPERIOR / INFERIOR ', 'Dra. Madelyn Placido', '', 387),
(284, '2023-11-25', 'ARCO SUPERIOR/ INFERIOR ', 'Dra. Madelyn Placido', '', 387),
(285, '2024-01-01', 'ARCO MITI INFERIOR 0.19 X0.25', 'Dra. Madelyn Placido', '', 387),
(286, '2024-07-31', 'PROFILAXIS + RESTAURACION MEDICADA PZA. 3.7', 'Dr. Jhon Zelada', 'Se le explica y entrega las indicaciones post destartraje dental', 384),
(287, '2024-07-18', 'HOLA', 'Dra. Madelyn Placido', 'Holf', 1),
(289, '2024-08-01', 'PROFILAXIS + FLUOR BARNIZ ', 'Dr. Jhon Zelada', '', 91),
(290, '2024-08-01', 'PROFILAXIS + TOMA DE IMPRESIÓN ', 'Dr. Jhon Zelada', '', 312),
(291, '2024-08-01', 'PROFILAXIS + 2 RESTAURACIONES SIMPLES. ', 'Dr. Jhon Zelada', '', 390),
(292, '2024-08-01', 'RETIRO Y PULIDO DE BRACKETS + RADIOGRAFÍA PERIAPICAL ', 'Dr. Jhon Zelada', '', 392),
(293, '2024-08-03', 'ACUDE A CONSULTA POR RUPTURA DE PRÓTESIS A CAUSA DE MAL MANEJO DE LA MISMA ', 'Dr. Jhon Zelada', 'Se manda prótesis al técnico para su revisión ', 34),
(294, '2024-08-05', 'CONSULTA CORONA CON HENDIDURA A NIVEL CERVICAL ', 'Dr. Jhon Zelada', '', 144),
(295, '2024-08-05', 'RADIOGRAFÍA PIEZA 74 , APLICACIÓN DE FLÚOR BARNIZ Y RESTAURACIÓN SIMPLE CON BRIX PIEZA 74', 'Dra. Azul Araucano', '', 394),
(296, '2024-08-10', 'CONSULTA + 2 RADIOGRAFÍAS ', 'Dra. Azul Araucano', '', 395),
(297, '2024-08-10', 'PERNO DE FIBRA PZA 1.2', 'Dr. Jhon Zelada', '', 101),
(298, '2024-08-10', 'CIRUGÍA EXPLORATORIA ', 'Dr. Jhon Zelada', '', 317),
(299, '2024-08-10', 'SELLANTES RESINOSO PZA 46', 'Dra. Azul Araucano', 'Se le recomendó a la mamita realizar profilaxis y flúor barniz. Se le dió todas las indicaciones ', 396),
(300, '2024-08-10', 'RESINA SIMPLE PZA 74 CON IONOMERO RESTAURADOR. SE LE DIÓ TODAS LAS INDICACIONES A LOS PADRES ', 'Dra. Azul Araucano', '', 372),
(301, '2024-08-07', 'APERTURA DE HISTORIA CLÍNICA + PROFILAXIS DENTAL + APLICACION DE FLUOR BARNIZ', 'Dra. Azul Araucano', '', 399),
(302, '2024-08-07', 'APERTURA DE HISTORIA CLÍNICA + PROFILAXIS DENTAL + APLICACIÓN DE FLUOR BARNIZ ', 'Dra. Azul Araucano', '', 398),
(303, '2024-08-05', 'TOMA DE IMPRESIÓN FÉRULA + REBASE DE PRÓTESIS FLEXIBLE', 'Dr. Jhon Zelada', '', 384),
(304, '2024-07-31', 'APERTURA DE HISTORIA CLÍNICA + CONSULTA GENERAL + PERIAPICAL PZA. 2.3', 'Dr. Jhon Zelada', '', 393),
(305, '2024-08-05', 'EVALUACIÓN DE PANORÁMICA ', 'Dr. Jhon Zelada', '', 393),
(306, '2023-12-21', 'CONSULTA + APERTURA DE HISTORIA CLÍNICA ', 'Dr. Jhon Zelada', '', 282),
(307, '2024-08-12', 'CONSULTA PARA IMPLANTE DENTAL + ORDEN TOMOGRAFÍA ', 'Dr. Jhon Zelada', '', 282),
(308, '2024-08-20', 'TOMA DE IMPRESIONES PARA FERULAS + ARTICULADO DE MODELOS SUPERIOR E INFERIOR. ENTREGA DE PRÓTESIS FLEXIBLE SUPERIOR', 'Dr. Jhon Zelada', '', 384),
(309, '2024-08-20', 'RESTAURACIÓN C/ MEDICACIÓN PZA. 2.3 + RADIOGRAFÍA PZA. 2.4', 'Dr. Jhon Zelada', '', 272),
(310, '2024-08-17', 'PROFILAXIS + RESINA EN EL PROVISIONAL (REFUERZO)', 'Dr. Jhon Zelada', '', 330),
(311, '2024-08-22', 'PRUEBA DE ENFILADO', 'Dr. Jhon Zelada', '', 34),
(312, '2024-06-22', 'EXODONCIA PZA 32/41/42', 'Dr. Jhon Zelada', '', 331),
(313, '2024-06-27', 'IMPRESIÓN PARA WIPLA SUPERIOR INFERIOR ', 'Dr. Jhon Zelada', '', 331),
(314, '2024-08-17', 'PROFILAXIS + TOMA DE IMPRESIÓN INFERIOR DEFINITIVA ', 'Dr. Jhon Zelada', '', 331),
(315, '2024-08-24', 'PRUEBA DE BASE METÁLICA ', 'Dr. Jhon Zelada', '', 331),
(316, '2024-08-27', 'INSTALACIÓN FÉRULA ANTIBRUXISMO + TOMA DE RX PERIAPICAL', 'Dr. Jhon Zelada', 'Se le brinda las recomendación del uso, lavado y cuidado de la férula.', 384),
(317, '2024-08-27', 'PACIENTE ACUDE A LA CONSULTA POR MOLESTIAS EN LA ENCÍA DE LA PZA 2.3', 'Dr. Jhon Zelada', 'Se le recomienda uso de cepillos interprox para reforzar la H.O', 272),
(318, '2024-08-27', 'TOMA DE MODELOS PARA CIRUGÍA GUIADA', 'Dr. Jhon Zelada', 'Se le explica al paciente toda la información sobre la colocación de implantes y las posibles complicación ', 282),
(319, '2024-09-03', 'RESTAURACIÓN CON MEDICACIÓN PZAS. (1.6 / 1.4 / 2.5 / 2.6)', 'null', 'Se le indica al paciente no comer durante 1 hora ', 269),
(320, '2024-09-03', 'CONSULTA ODONTOLOGICA + RESTAURACIÓN SIMPLE PZA. 4.4', 'Dr. Jhon Zelada', 'No se realiza cobro alguno del Tratamiento realizado ', 411),
(321, '2024-09-03', '01 RESTAURACIÓN MEDICADA PZA.2.5 + 01 RESTAURACIÓN C/ IONOMERO PZA. 2.6', 'Dr. Jhon Zelada', '', 264),
(322, '2024-09-12', 'CONSULTA', 'Dr. Jhon Zelada', 'Evaluación', 142),
(323, '2024-09-12', 'PROFILAXIS + FLÚOR BARNIZ + PRUEBA DE COFIA', 'Dr. Jhon Zelada', '', 422),
(324, '2024-09-14', 'CIRUGÍA IMPLANTE DENTAL MARCA SIN (3.5X10MM) - TORQUE 10N - TAPA DE IMPLANTE / SIN SUTURA', 'Dr. Jhon Zelada', 'Evaluación en 3 días, Se le entregan las indicaciones y Receta de medicamentos ', 282),
(325, '2024-09-14', 'SE SACARON RADIOGRAFÍAS SECTOR POSTERIOR EN EL SUPERIOR E INFERIOR. SE LE REALIZÓ 2 CURACIONES 63 (D) ,84 (V) .', 'Dra. Azul Araucano', 'Se le dió todas las indicaciones a la madre.', 459),
(326, '2024-09-14', 'PROFILAXIS + FLUOR BARNIZ + RESTAURACIÓN MEDICADA CON BRIX PZA 74 ', 'Dra. Azul Araucano', 'Se le dió todas las indicaciones a la mamita', 458),
(327, '2024-09-14', 'RADIOGRAFÍA SECTOR ANTERO SUPERIOR ', 'Dra. Azul Araucano', '', 457),
(328, '2024-05-02', 'CONSULTA ESPECIALIZADA + CHARLA EDUCATIVA ', 'Dra. Azul Araucano', '', 455),
(329, '2023-07-06', 'RESTAURACIÓN CON MEDICACIÓN EN LA PZA 74 CON TÉCNICA BRIX ', 'Dra. Alejandra Noriega', 'Pronostico reservado próx consulta restauración pza 84', 454),
(330, '2024-09-05', 'SE REALIZÓ 2 RADIOGRAFÍAS PZA 55 Y 85 , SE LE REALIZÓ PROFILAXIS + FLÚOR BARNIZ ', 'Dra. Azul Araucano', 'Se le dió todas las indicaciones a la mamá ', 73),
(331, '2024-09-15', 'RESTAURACIÓN PZA 55 ( P ) ', 'Dra. Azul Araucano', 'Se le dió las indicaciones a la mamita', 73),
(332, '2024-09-14', 'SE LE REALIZÓ DESTARTAJE ', 'Dra. Azul Araucano', 'Se le dió todas las indicaciones a la madre', 43),
(333, '2023-09-15', 'SE APLICÓ FLÚOR BARNIZ ', 'Dra. Alejandra Noriega', '', 460),
(334, '2024-05-25', 'FLUOR BARNIZ ', 'Dr. Jhon Zelada', '', 75),
(335, '2023-12-14', 'CONSULTA + RADIOGRAFÍA ', 'Dr. Jhon Zelada', '', 2),
(336, '2023-12-19', 'SE REALIZÓ ENDODONCIA PZA 2.6', 'Dr. Jhon Zelada', '', 2),
(337, '2024-03-19', 'PEGADO PROVISIONAL', 'Dr. Jhon Zelada', '', 2),
(338, '2024-01-11', 'EXODONCIA PZA (3.1 / 3.2 / 4.1 / 4.2 )', 'Dr. Jhon Zelada', '', 3),
(339, '2024-01-20', 'IMPRESIÓN INDIVIDUAL (SUP)', 'Dr. Jhon Zelada', '', 3),
(340, '2024-02-03', 'TOMA DE IMPRESIÓN DEFINITIVA SUPERIOR/INFERIOR', 'Dr. Jhon Zelada', '', 3),
(341, '2024-02-15', 'PRUEBA DE ENFILADO ', 'Dr. Jhon Zelada', '', 3),
(342, '2023-02-24', 'ENTREGA PRÓTESIS SUP.', 'Dr. Jhon Zelada', '', 3),
(343, '2024-03-02', 'TALLADO (CORONAS INFERIORES) + TOMA DE MODELOS', 'Dr. Jhon Zelada', '', 3),
(344, '2024-03-09', 'PRUEBA DE COFIA', 'Dr. Jhon Zelada', '', 3),
(345, '2024-04-02', 'RESTAURACIÓN + MEDICACIÓN PZA (1.5/1.7)', 'Dr. Jhon Zelada', '', 3),
(346, '2024-03-14', 'EXODONCIA PZA (2.6)', 'Dr. Jhon Zelada', '', 4),
(347, '2024-03-21', 'TALLADO + PROVISIONAL ', 'Dr. Jhon Zelada', '', 4),
(348, '2024-04-11', 'PRUEBA DE COFIA METÁLICA + TOMA DE MODELO', 'Dr. Jhon Zelada', '', 4),
(349, '2024-04-25', 'INSTALACIÓN CORONA PZA (2.1)', 'Dr. Jhon Zelada', '', 4),
(350, '2024-02-06', 'RESTAURACIÓN + MEDICACIÓN PZA 46 + 4 (RX)', 'Dr. Jhon Zelada', '', 5),
(351, '2024-03-25', 'CONSULTA + PEGADO DE PROV', 'Dr. Jhon Zelada', '', 6),
(352, '2024-02-26', 'PROFILAXIS + 2 PEGADO DE CORONAS', 'Dr. Jhon Zelada', '', 7),
(353, '2024-03-21', 'EXODONCIA + GASA DE HEMOCOLAGENO', 'Dr. Jhon Zelada', '', 7),
(354, '2024-03-27', 'CLAVADO DE HERIDA + APO. DE HEMOCOLAGENO + 2 RADIOGRAFÍAS ', 'Dr. Jhon Zelada', 'Se medicó con Dexametazona + diclofemnaco', 7),
(355, '2024-05-06', 'RETIRO DE PUNTOS ', 'Dr. Jhon Zelada', 'Se observa una bolita de consistencia dura , compatible probablemente con un quiste (encapsulado) Se indica Biopsia ', 7),
(356, '2024-08-24', 'CONTROL DE RECUPERACIÓN DE ESPACIO BIOLÓGICO ', 'Dr. Jhon Zelada', '', 7),
(357, '2024-09-14', 'TOMA DE IMPRESIÓN DEFINITIVA + PROV.', 'Dr. Jhon Zelada', '', 7),
(358, '2024-08-26', 'COLOCACIÓN DE PERNO FIBRA ', 'Dr. Jhon Zelada', '', 7),
(359, '2024-01-13', 'CONSULTA + TOMA DE IMPRESIÓN ', 'Dr. Jhon Zelada', '', 8),
(360, '2024-01-18', 'TOMA DE IMPRESIÓN DEFINITIVA ', 'Dr. Jhon Zelada', '', 8),
(361, '2024-01-27', 'PRUEBA DE ROPETES', 'Dr. Jhon Zelada', '', 8),
(362, '2024-02-03', 'ENFILADO + (2 REST. CON MEDICACIÓN ', 'Dr. Jhon Zelada', '', 8),
(363, '2024-02-10', 'ENTREGA DE PRÓTESIS SUPERIOR E INFERIOR ', 'Dr. Jhon Zelada', '', 8),
(364, '2024-02-15', 'CONTROL 1 ( PRÓTESIS)', 'Dr. Jhon Zelada', '', 8),
(365, '2024-02-20', 'SE REALIZÓ 2DO CONTROL DE PRÓTESIS FLEXIBLE', 'Dr. Jhon Zelada', '', 8),
(366, '2024-03-09', '3ER CONTROL DE PRÓTESIS ', 'Dr. Jhon Zelada', '', 8),
(367, '2024-03-19', 'CONTROL 04 DE PRÓTESIS ', 'Dr. Jhon Zelada', '', 8),
(368, '2024-04-05', 'CONTROL PRÓTESIS INFERIOR + SUPERIOR / PZA (1.7) ', 'Dr. Jhon Zelada', 'Presenta sensibilidad y/o dolor', 8),
(369, '2024-05-30', 'PROFILAXIS + CONTROL 05', 'Dr. Jhon Zelada', '', 8),
(370, '2024-03-07', 'IMPRESIÓN INFERIOR (CUBETA INDIVIDUAL)', 'Dr. Jhon Zelada', '', 9),
(371, '2024-03-09', 'IMPRESIÓN INFERIOR DEFINITIVO', 'Dr. Jhon Zelada', '', 9),
(372, '2024-03-14', 'PRUEBA DE RODETE', 'Dr. Jhon Zelada', '', 9),
(373, '2024-03-19', 'PRUEBA DE ENFILADO ', 'Dr. Jhon Zelada', '', 9),
(374, '2024-04-01', 'ENTREGA DE PRÓTESIS SUPERIOR/INFERIOR', 'Dr. Jhon Zelada', '', 9),
(375, '2023-10-02', 'RESTAURACIÓN CON MEDICACIÓN 3.4', 'Dr. Jhon Zelada', '', 10),
(376, '2023-10-13', 'DESTARTAJE . TOMA DE IMPRESIÓN PP2 INFERIOR ', 'Dr. Jhon Zelada', '', 10),
(377, '2023-10-21', 'PRUEBA DE RODETES + RECETA MEDICACIÓN CLORNEXIDINA 0,12%', 'Dr. Jhon Zelada', '', 10),
(378, '2024-02-10', 'TOMA DE IMPRESIÓN DEFINITIVA SUPERIOR ', 'Dr. Jhon Zelada', '', 11),
(379, '2024-03-02', 'TOMA DE IMPRESIÓN DEFINITIVA SUPERIOR CON CUBETA', 'Dr. Jhon Zelada', '', 11),
(380, '2024-03-14', 'PRUEBA METÁLICA BASE', 'Dr. Jhon Zelada', '', 11),
(381, '2024-03-16', 'PRUEBA DE RODETES + REGISTRO DE MORDIDAS', 'Dr. Jhon Zelada', '', 11),
(382, '2024-05-02', 'ENTREGA DE PRÓTESIS ', 'Dr. Jhon Zelada', '', 11),
(383, '2024-03-09', 'CONSULTA + TOMA DE IMPRESIÓN CORONA METALICA', 'Dr. Jhon Zelada', '', 12),
(384, '2024-03-14', 'PRUEBA DE COFIA', 'Dr. Jhon Zelada', '', 12),
(385, '2024-08-13', 'EXODONCIA PZA 1.3 + FRENECTOMIA ', 'Dr. Jhon Zelada', 'Px con poca rapidez a la coagulación. Sangrado profuso ', 400),
(386, '2024-08-13', 'PX VUELVE A CONSULTA CON HEMORRAGIA SEVERA DEBIDO A LA ROTURA DE PUNTOS EN EL FRENILLO. PRESENTA P.A 169 ', 'Dr. Jhon Zelada', 'Es llevado a emergencia en la clínica Jesús del norte. Donde fue derivado a la clínica Cayetano Heredia. Donde a su vez fue fue transladado al hospital Cayetano Heredia  ', 400),
(387, '2024-08-22', 'RETIRO DE PUNTOS ', 'Dr. Jhon Zelada', '', 400),
(388, '2024-08-24', 'IMPRESIÓN DE LA ZONA DE INFERIOR', 'Dr. Jhon Zelada', '', 400),
(389, '2024-08-29', 'GINGIVECTOMIA PZA (1.1 / 1.2)', 'Dr. Jhon Zelada', '', 400),
(390, '2024-09-10', 'TOMA DE IMPRESIÓN DEFINITIVA SUPERIOR ', 'Dr. Jhon Zelada', '', 400),
(391, '2024-09-17', 'PRUEBA DE COFIA Y COLOR ', 'Dr. Jhon Zelada', '', 400),
(392, '2022-07-21', 'RESTAURACION Y PEGADO DE CORONA ', 'Dr. Jhon Zelada', '', 194),
(393, '2022-08-18', 'ENTREGA DE PRÓTESIS FLEXIBLE ', 'Dr. Jhon Zelada', '', 194),
(394, '2024-08-15', 'PROFILAXIS + CARILLAS PZA (4.1/3.1/3.2)', 'Dr. Jhon Zelada', '', 194),
(395, '2024-02-06', 'ARCO NITI 0,16 INFERIOR. ARCO NITI 16X22 SUPERIOR', 'Dra. Madelyn Placido', '', 359),
(396, '2023-08-17', 'SE REALIZÓ RESTAURACIÓN SIMPLES PZA (1.7/1.6/2.7/4.7)', 'Dr. Jhon Zelada', '', 359),
(397, '2022-06-26', 'RETIRO DE BRACKETS + PROFILAXIS + PULIDO DE ÁREAS ', 'Dr. Jhon Zelada', '', 323),
(398, '2022-08-06', 'RESTAURACIÓN SIMPLE Y MEDICACIÓN ', 'Dr. Jhon Zelada', '', 323),
(399, '2022-08-13', 'RAYOS X , RESTAURACIONES ANTERIORES (1.1 - 1.2 - 2.1 - 2.2)', 'Dr. Jhon Zelada', '', 323),
(400, '2023-05-20', 'PEGADO DE TUBOS ', 'Dr. Jhon Zelada', '', 323),
(401, '2023-09-16', 'ARO ACERO 16 X 22 SUPERIOR , CADENA ELÁSTICA SUPERIOR E INFERIOR ', 'Dr. Jhon Zelada', '', 323),
(402, '2023-03-11', 'RESTAURACIÓN SIMPLE + INSTALACIÓN DE BRACKETS SUPERIOR ', 'Dr. Jhon Zelada', '', 323),
(403, '2023-03-18', 'PEGADO DE BRACKETS ', 'Dr. Jhon Zelada', '', 323),
(404, '2023-04-15', 'INSTALACIÓN BRACKETS INFERIOR ', 'Dr. Jhon Zelada', '', 323),
(405, '2023-12-16', 'ARO DE ACERO 17 X 25 SUPERIOR. CADENA ELÁSTICA 16 A 26. ARO 16 X 22 INFERIOR ', 'Dr. Jhon Zelada', '', 323),
(406, '2024-03-02', 'PEGADO DE BRACKETS PZA 26 . ARO 0,018 INFERIOR. CADENA ELÁSTICA SUPERIOR ', 'Dra. Madelyn Placido', '', 323),
(407, '2024-04-02', 'PEGADO DE BRACKET PZA 36. ARO 0,018 INFERIOR / LIGADURA INDIVIDUAL. CADENA ELÁSTICA DE 35 A 33 Y 45 A 43', 'Dra. Madelyn Placido', '', 323),
(408, '2024-07-27', 'CADENA ELÁSTICA SUPERIOR E INFERIOR. DOBLECES DE 12 A 22 PARA INTRUSIÓN ', 'Dra. Madelyn Placido', '', 323),
(409, '2024-03-02', 'ARCO NITI 16 X 22 INFERIOR. LIGADURA 8 SUPERIOR E INFERIOR ', 'Dra. Madelyn Placido', '', 387),
(410, '2024-07-27', 'ARCO NITI INFERIOR 0.19 X 0.2.5', 'Dra. Madelyn Placido', '', 387),
(411, '2022-10-13', 'PLAN DE TRATAMIENTO I INCOMPLETO ', 'Dr. Jhon Zelada', '', 156),
(412, '2022-10-12', 'PROFILAXIS > PLAN DE TRATAMIENTO II', 'Dr. Jhon Zelada', '', 156),
(413, '2022-10-13', 'BLANQUEAMIENTO CASERO (ENTREGA)', 'Dr. Jhon Zelada', '', 156),
(414, '2024-09-03', 'MALOCLUSION CLASE I POR DAD / MORDIDA PROFUNDA  / APIÑAMIENTO MODERADA. Instalación de bracket superior / arco Niti 0,012 superior ', 'Dra. Madelyn Placido', '', 156),
(415, '2023-09-16', 'COLOCACIÓN DE BRACKETS SUPERIOR . ARCO NITI 0.012 SUPERIOR ', 'Dr. Jhon Zelada', '', 359),
(416, '2023-10-13', 'PEGADO DE BRACKETS ', 'Dr. Jhon Zelada', '', 359),
(417, '2023-11-05', 'PEGADO DE TUBO SUPERIOR/ INFERIOR (PZA 2.7/3.7)', 'Dr. Jhon Zelada', '', 359),
(418, '2022-12-14', 'PROFILAXIS ', 'Dr. Jhon Zelada', '', 359),
(419, '2023-12-19', 'ARO NITI SUPERIOR E INFERIOR ', 'Dr. Jhon Zelada', '', 359),
(420, '2024-03-02', 'DOBLECES DE CRISTAL 12 Y 22 . ARO NITI 0,018 INFERIOR ', 'Dra. Madelyn Placido', '', 359),
(421, '2024-07-13', 'CADENA ELÁSTICA INFERIOR DE 33 - 43 . ELÁSTICO INTER MAX ENCAJA BILATERAL', 'Dra. Madelyn Placido', '', 359),
(422, '2024-09-17', 'SE LE SACÓ UNA RADIOGRAFÍA EN EL SECTOR SUPERIOR EVIDENCIANDO LESIÓN DE CARIES EN DENTINA', 'Dra. Azul Araucano', 'Adquirio kit de vitis', 463),
(423, '2023-01-28', 'PROFILAXIS + FLUOR BARNIZ + RESTAURACIÓN ', 'Dra. Alejandra Noriega', '', 317),
(424, '2023-02-06', 'SE REALIZÓ UN SELLANTE PZA 55', 'Dra. Alejandra Noriega', '', 317),
(425, '2023-05-09', 'INSTALÓ BRACKETS INFERIOR ', 'Dr. Jhon Zelada', '', 317),
(426, '2023-05-12', 'SE REALIZÓ 2 EXODONCIAS ', 'Dr. Jhon Zelada', '', 317),
(427, '2023-08-16', 'LIGADURA 8 SUPERIOR Y CADENA ELÁSTICA ', 'Dra. Madelyn Placido', '', 317),
(428, '2023-09-16', 'PEGADO DE BRACKETS PZA 13. ARCO NITI 0.012 SUPERIOR ', 'Dr. Jhon Zelada', '', 317),
(429, '2023-11-11', 'CONTROL + NITI 0.12 + TOMOGRAFÍA + TOMA DE MODELOS + PROFILAXIS Y FOTOS.', 'Dra. Piera Hijar', '', 317),
(430, '2023-02-06', 'CADENA ELÁSTICA SUPERIOR DE PZA 24', 'Dra. Madelyn Placido', '', 317),
(431, '2024-09-17', 'ARO NITI 16 X 22 INFERIOR / DOBLECES DE EXTENSIÓN CRISTAL PZAS 13 Y 23. CADENA ELÁSTICA SUPERIOR E INFERIOR ', 'Dra. Madelyn Placido', '', 359),
(432, '2024-09-17', 'ARO NITI 0,018 INF / TUBOS PZAS 36 , 37 , 46 , 47 / CADENA ELÁSTICA SUPERIOR ', 'Dra. Madelyn Placido', '', 323),
(433, '2024-09-17', 'ARCO NITI 0,018 INFERIOR/ LIGADURA INDIVIDUAL PZA 32 . ARCO ACERO 17X25 SUPERIOR/ CADENA ELÁSTICA SUPERIOR ', 'Dra. Madelyn Placido', '', 387),
(434, '2024-09-17', 'ARCO ACERO 17X25 SUPERIOR/ TRACCIÓN PZA 23 / CADENA ELÁSTICA ', 'Dra. Madelyn Placido', '', 317),
(435, '2024-09-17', 'CONTROL DE IMPLANTE, TEJIDOS BRANDOS Y DUROS CIRCUNDANTES CONSERVADOS, NO HAY INFLAMACIÓN, PROCESO CICATRICIAL ADECUADO ', 'Dr. Jhon Zelada', '', 265),
(436, '2024-09-17', 'PROVISIONALIZACION DE IMPLANTE DENTAL + CONTROL N01', 'Dr. Jhon Zelada', '', 282),
(437, '2024-08-20', 'PACIENTE LLEGÓ A CONSULTA POR MOLESTIA EN PZA.4.7, SE RETIRÓ MATERIAL DE RESTAURACIÓN Y SE VOLVIÓ A MEDICAR Y CURAR. PACIENTE REFIERE DOLOR EN GRADO 1.5', 'Dr. Jhon Zelada', 'Se cita paciente en dos semanas para control ', 270),
(438, '2024-09-18', 'CONSULTA ESPECIALIZADA ', 'Dr. Jhon Zelada', '', 465),
(440, '2023-03-31', 'RESTAURACIONES PZA 1.5/2.6/3.6', 'Dr. Jhon Zelada', '', 318),
(442, '2023-04-01', 'INSTALACION DE BRACKETS SUPERIOR (3.5)', 'Dra. Madelyn Placido', '', 318),
(443, '2023-03-15', 'PROFILAXIS', 'Dr. Jhon Zelada', '', 318),
(444, '2023-05-23', 'PEGADO DE TUBO INFERIOR ', 'Dra. Madelyn Placido', '', 318),
(445, '2023-09-16', 'ARCO ACERO SUPE 0.017 X 0.025. ARCO NITI 0.04 INF', 'Dra. Madelyn Placido', '', 318),
(446, '2023-11-25', 'ARCO NITI SUP 0.012 X 0.025. ARCO NITI INF 16 NITI + RESORTE PZA 31.42', 'Dra. Madelyn Placido', '', 318),
(447, '2023-01-06', 'ARCO NITI 0.016 INF. ARCO NITI 16X22 SUP ', 'Dra. Madelyn Placido', '', 318),
(448, '2024-02-06', 'PEGADO DE BRACKETS 4.4', 'Dra. Madelyn Placido', '', 318),
(449, '2024-03-09', 'ARCO NITI 0.018 INF. CADENA ELASTICA SUP', 'Dra. Madelyn Placido', '', 318),
(450, '2024-09-18', 'RESTAURACION PZA 85(0) ', 'Dra. Azul Araucano', 'se le dio todas la indicaciones a la mamita ', 73),
(451, '2023-08-17', 'ENDODONCIA PZA (3.2)', 'Dr. Jhon Zelada', 'naproxeno sodico (550mg) x 2 dias ', 142),
(452, '2023-08-29', 'TRATAMIENTO DE ENDODONCIA PZA (3.1)', 'Dr. Jhon Zelada', '', 142),
(453, '2023-09-05', 'TALLADO + TOMA DE IMPRESIONES + PROVISIONAL INF', 'Dr. Jhon Zelada', '', 142),
(454, '2023-09-08', 'PRUEBA COFIA METALICA + IMPRESION SUP + TOMA DE REGISTRO ', 'Dr. Jhon Zelada', '', 142),
(455, '2023-04-15', 'INSTALACION DE PUNTE ANTERIOR (3.1-3.3)', 'Dr. Jhon Zelada', '', 142),
(457, '2024-09-18', 'CONSULTA GENERAL + 4 RADIOGRAFIAS PERIAPICALES ', 'Dr. Jhon Zelada', '', 466),
(458, '2024-09-18', 'ENDODONCIA TERMINADA PZA (43). LONGITUD DE TRABAJO 21MM CONO 50', 'Dr. Hans Gamarra', '', 142),
(459, '2024-09-18', 'SE REALIZO UNA RX PZA (73). SE REALIZÓ PROFILAXIS + FLUOR BARNIZ ', 'Dra. Azul Araucano', '', 467),
(460, '2023-09-16', 'PERIAPICAL 51 Y 61', 'Dra. Alejandra Noriega', 'Paciente no colaborador ', 435),
(461, '2023-09-19', 'PROFILAXIS + FLÚOR BARNIZ ', 'Dra. Alejandra Noriega', '', 435),
(462, '2023-11-25', 'NO SE REALIZÓ ', 'Dra. Alejandra Noriega', 'No se puedo realizar ningún tratamiento paciente no  ', 435),
(463, '2024-09-19', 'RADIOGRAFÍA + PROFILAXIS + FLÚOR BARNIZ ', 'Dra. Azul Araucano', 'Se le dió su charla preventiva ', 435),
(465, '2024-09-19', 'RESTAURACIÓN SIMPLE', 'Dr. Jhon Zelada', 'Segunda restauración de la pieza ', 194),
(466, '2024-09-19', 'CONSULTA', 'Dr. Jhon Zelada', 'Consulta', 468),
(467, '2024-09-21', 'CONSULTA ODONTOLOGICA ', 'Dr. Jhon Zelada', '', 469),
(468, '2024-09-14', 'PROFILAXIS + FLUOR BARNIZ ', 'Dra. Azul Araucano', '', 426),
(469, '2024-09-21', '2 SELLANTES PZA 36 Y 37', 'Dra. Azul Araucano', '', 426),
(470, '2023-12-02', 'DESTARTRAJE + PROFILAXIS + FLUOR BARNIZ ', 'Dra. Alejandra Noriega', '', 429),
(471, '2023-02-16', 'RESTAURACIONES PZA 74,75 Y 84', 'Dra. Azul Araucano', 'sin complicaciones ', 429),
(472, '2023-12-19', 'RESTAURACION PZA 65 + SELLANTES PZA 16 Y 46', 'Dra. Alejandra Noriega', '', 429),
(473, '2024-09-14', 'RESINA 84 (OCLUSO DISTAL) CON BRIXX + PROFILAXIS + FLUOR BARNIZ ', 'Dra. Azul Araucano', '', 429),
(474, '2024-09-21', 'SELLANTE RESINOSO PZA 16 Y 46', 'Dra. Azul Araucano', '', 429),
(475, '2024-09-21', 'SE COLOCO RIVASTAR PZA 34 (0)', 'Dra. Azul Araucano', 'se le dio todas las indicaciones ', 435),
(478, '2024-09-05', '2 RADIOGRAFÍAS. PZA 55 Y 85 + PROFILAXIS + FLÚOR BARNIZ ', 'Dra. Azul Araucano', '', 413),
(479, '2024-09-15', 'RESTAURACIÓN PZA 55(P) ', 'Dra. Azul Araucano', '', 413),
(480, '2024-09-18', 'RESTAURACIÓN PZA 85(0) ', 'Dra. Azul Araucano', '', 413),
(481, '2024-09-21', 'RESTAURACIÓN CON IONOMERO DE VIDRIO MEDICADA. PZA 54(OD) ', 'Dra. Azul Araucano', 'Control en 2 meses ', 413),
(482, '2022-11-05', 'RESTAURACIONES SIMPLES ', 'Dr. Jhon Zelada', '', 169),
(483, '2022-12-01', 'EXODONCIA + IMPRESIÓN ', 'Dr. Jhon Zelada', '', 169),
(484, '2022-12-23', 'ENTREGA DE PRÓTESIS SUPERIOR E INFERIOR ', 'Dr. Jhon Zelada', '', 169),
(485, '2024-09-21', 'RESTAURACIÓN SIMPLE  PZA 11 ', 'Dr. Jhon Zelada', '', 169),
(486, '2024-02-06', '3 RESTAURACIONES PZA 37, 46 Y 47 + PROFILAXIS + TOMA DE IMPRESIÓN SUPERIOR E INFERIOR ', 'Dra. Alejandra Noriega', '', 38),
(487, '2024-04-13', 'RESTAURACIÓN PZA (16 Y 26) + PULIDO DE RESINA ', 'Dr. Jhon Zelada', '', 38),
(488, '2024-05-18', 'INSTALACIÓN DE BRACKETS SUPERIORES', 'Dra. Madelyn Placido', '', 38),
(489, '2024-06-11', '1 CONTROL DE BRACKETS ', 'Dra. Madelyn Placido', '', 38),
(490, '2024-07-27', 'ARCO NITI 0,014 X 0,002 SUP. ARCHIVACION RESORTE . 2 CONTROL', 'Dra. Madelyn Placido', '', 38),
(491, '2024-09-21', 'LIGADURA Y CADENA CLASTICA 11 Y 13 PARA VESTIBULARIZAR', 'Dra. Madelyn Placido', '', 38),
(492, '2024-09-10', 'CONSULTA ', 'Dr. Jhon Zelada', '', 418),
(493, '2024-09-21', 'PEGADO PROVISIONAL PUENTE ', 'Dr. Jhon Zelada', '', 418),
(494, '2024-09-21', 'ARCO NITI 0.16 SUP Y LIGADURA CADENA ELÁSTICA EN MOLAR', 'Dra. Madelyn Placido', '', 156),
(495, '2024-09-21', 'CONSULTA + 2 RADIOGRAFIAS', 'Dr. Jhon Zelada', '', 471);
INSERT INTO `procedimiento` (`Codproc`, `Fechaproc`, `Descripcionproc`, `Doctorproc`, `Nota`, `CodigoPaciente`) VALUES
(496, '2024-09-21', 'SE REALIZÓ 4 SELLANTES 16,26,36,46', 'Dra. Azul Araucano', '', 459),
(497, '2024-09-24', 'PRUEBA DE RODOTE + REGISTRO DE MORDIDA ', 'Dr. Jhon Zelada', '', 400),
(498, '2023-02-28', 'FLUOR BARNIZ ', 'Dra. Alejandra Noriega', '', 135),
(499, '2024-09-24', 'RESINA SIMPLE CON BRIXX PZA 85 (OB)', 'Dra. Azul Araucano', '', 463),
(500, '2024-09-24', 'RESTAURACION MEDICADA CON BRIXX PZA 54 (O). SE RESTAURÓ CON IONOMERO DE VIDRIO ', 'Dra. Azul Araucano', '', 135),
(502, '2024-02-03', '2 RESTAURACIONES CON MEDICAMENTO PZAS 3.5 Y 2.5', 'Dr. Jhon Zelada', '', 2),
(503, '2024-09-25', 'PROFILAXIS', 'Dr. Jhon Zelada', '', 416),
(504, '2024-09-26', 'PROFILAXIS + ULTRASONIDO ', 'Dr. Jhon Zelada', '.', 475),
(505, '2024-09-12', '2 RADIOGRAFIAS + PROFILAXIS + IONOMERO PZA 4.5', 'Dr. Jhon Zelada', '', 424),
(506, '2024-09-27', 'CONSULTA + EVALUACION DE RADIOGRAFIA ', 'Dr. Jhon Zelada', '', 424),
(507, '2024-09-27', 'PX SE CAYÓ Y SE LE ROMPIÓ SU PLACA LINGUAL. SE LE TOMO IMPRESIÓN PARA FABRICAR OTRO APARATO', 'Dra. Azul Araucano', '', 313),
(508, '2024-08-17', 'PRESENCIA DE FÍSTULA PZA. 8.5 , SE SACÓ RADIOGRAFIA Y SE OBSERVO UNA REABSORCIÓN RADICULAR DE LA RAÍZ DISTAL, SE DRENO LA FISTULA Y SE MEDICO. LA BANDA ANSA SE ROMPIO A LO CUAL SE LE EXPLICA AL PADRE QUE SE OBTURA POR UNA PRÓTESIS WIPLA.', 'Dra. Azul Araucano', '', 313),
(509, '2024-08-24', 'SE LE COLOCO UNA PROTESIS WIPLA. SE LE DIÓ TODAS LAS INDICACIONES A LA MADRE, SE SUGIERE UN CONTROL EN UNA SEMANA PARA AJUSTAR SI FUERA NECESARIO.', 'Dra. Azul Araucano', '', 313),
(510, '2024-08-29', 'SE LE AJUSTO SU PLACA LINGUAL Y SE LE REALIZO PROFILAXIS. CONTROL EN 3 MESES. SE LE DIO TODAS LAS INDICACIONES A LA MADRE.', 'Dra. Azul Araucano', '', 313),
(511, '2024-09-28', 'PADRE AYUDÓ A COLOCAR IONOMERO DE VIDRIO EN LA PZA 75(O) DEBIDO A QUE NO HABÍA UN CORRECTO SELLADO DE LA RESTAURACIÓN. SE LE DIÓ TODAS LAS INDICACIONES AL PADRE ', 'Dra. Azul Araucano', '', 394),
(512, '2024-09-28', 'SE COLOCÓ RIVASTAR PZA 51, 61 (P) ', 'Dra. Azul Araucano', 'Conducta del px (Frank IV)', 435),
(513, '2024-09-28', 'RESINA MEDICADA PZA 55(O). SE DA TODAS LAS INDICACIONES A LA MADRE ', 'Dra. Azul Araucano', 'Se toma impresión para el mantenedor de espacio “wippla”', 459),
(514, '2024-10-01', 'INSTALACIÓN DE PERNO FIBRA + RECONSTRUCCIÓN DE MUÑÓN ', 'Dr. Jhon Zelada', '.', 465),
(515, '2024-10-01', 'retallado + REGISTRO DE MORDIDA ', 'Dr. Jhon Zelada', '.', 424),
(516, '2024-10-01', 'TOMA DE IMPRESIÓN + PRUEBA DE BIZCOCHO DIENTES DELANTEROS', 'Dr. Jhon Zelada', '.', 400),
(517, '2024-10-01', 'CONSULTA ODONTOLOGICA + TOMA DE RADIOGRAFÍA PERIAPICAL PZA. 51', 'Dra. Azul Araucano', 'Persistencia dental pza 5.1', 477),
(518, '2024-10-01', 'SE REALIZÓ PROFILAXIS +COLOCACIÓN DE RIVASTAR PZA 6.4(O) + APLICACIÓN DE FLÚOR BARNIZ ', 'Dra. Azul Araucano', 'Se le da todas las indicaciones a la Mamá ', 302),
(519, '2024-10-01', 'CONTROL N02 + RADIOGRAFÍA DE CONTROL ', 'null', 'Próxima cita: 2 meses ', 282),
(520, '2024-10-03', 'PRUEBA DE COFIA + COLORIMETRO + COLOCACIÓN DE PROVISIONAL', 'Dr. Jhon Zelada', '', 424),
(521, '2024-10-03', 'PRÓTESIS CON POCA SUCCIÓN + TOMA DE IMPRESIÓN DEFINITIVA  POR 2DA VEZ', 'Dr. Jhon Zelada', '', 400),
(522, '2022-11-05', 'RESTAURACIÓN + MEDICACIÓN PZA (2.6) + PROFILAXIS ', 'Dr. Jhon Zelada', '', 146),
(523, '2023-10-17', 'RESTAURACIÓN SIMPLE PZA (2.7) + RESTAURACIÓN + MEDICACIÓN PZA (4.5)', 'Dr. Jhon Zelada', '', 149),
(524, '2022-06-11', 'CONTROL DE ORTODONCIA ', 'Dra. Madelyn Placido', '', 150),
(525, '2022-08-27', 'CONTROL DE ORTODONCIA ', 'Dra. Madelyn Placido', '', 150),
(526, '2022-11-22', 'CONTROL DE ORTODONCIA NOVIEMBRE ', 'Dra. Madelyn Placido', '', 150),
(527, '2023-07-12', 'SE REALIZÓ PZA (2.5) , SE REALIZÓ EN UNA SOLA CITA', 'Dr. Hans Gamarra', 'Se recetó naproxeno sodico', 151),
(528, '2023-07-08', 'SE REALIZÓ COLOCACIÓN DE PERNO DE FIBRA + TOMA DE IMPRESIÓN ', 'Dr. Hans Gamarra', '', 151),
(529, '2023-07-18', 'SE PROBÓ COFIA METÁLICA ', 'Dr. Hans Gamarra', '', 151),
(530, '2023-07-20', 'SE INSTALÓ PRÓTESIS FIJA PZAS (2.4/2.5/2.6) SE PEGÓ CON CEMENTO F.', 'Dr. Hans Gamarra', '', 151),
(531, '2024-10-04', 'PEGADO DE PROVISIONAL ', 'Dr. Jhon Zelada', '', 418),
(532, '2024-10-04', 'RESTAURACIÓN + MEDICACIÓN PZA (1.7 / 4.6)', 'Dr. Jhon Zelada', '', 478),
(533, '2024-09-28', 'ENDODONCIA (3.7) ENDODONCIA (1.4) LD:18mm LM:18mm', 'Dr. Hans Gamarra', '', 471),
(534, '2021-01-12', 'DESTARTRAJE + PROFILAXIS', 'Dr. Jhon Zelada', '', 152),
(535, '2021-09-13', 'OPERCULECTOMIA', 'Dr. Jhon Zelada', '', 152),
(536, '2022-01-30', 'DESTARTRAJE + PROFILAXIS + FLUOR', 'Dr. Jhon Zelada', '', 152),
(537, '2023-02-28', 'DESTARTRAJE + PROFILAXIS + FLUOR', 'Dr. Jhon Zelada', '', 152),
(538, '2023-10-02', 'PROFILAXIS + DESTARTRAJE ', 'Dr. Jhon Zelada', '', 152),
(539, '2022-04-11', 'RETIRO DE APARATO DE CONTENCIÓN ', 'Dr. Jhon Zelada', '', 153),
(540, '2022-04-13', 'PROFILAXIS + DESTARTRAJE + FLUOR', 'Dr. Jhon Zelada', '', 153),
(541, '2022-04-18', 'INSTALACIÓN DE APARATO DE ORTODONCIA ', 'Dr. Jhon Zelada', '', 153),
(542, '2023-03-27', 'ENTREGA DE FÉRULAS ', 'Dr. Jhon Zelada', '', 153),
(543, '2023-12-07', 'EVALUACIÓN / DIAGNÓSTICO ', 'Dr. Jhon Zelada', '', 155),
(544, '2023-12-07', 'SE REALIZÓ 1 RESTAURACIÓN + MEDICACIÓN + 1 RESTAURACIÓN SIMPLE', 'Dr. Jhon Zelada', '', 157),
(545, '2022-10-10', 'EXODONCIA PZA (1.8)', 'Dr. Jhon Zelada', '', 158),
(546, '2022-10-12', 'EXODONCIA PZA (2.8)', 'Dr. Jhon Zelada', '', 158),
(547, '2022-12-09', 'EXODONCIA PZA (4.6) ', 'Dr. Jhon Zelada', 'Cancelada', 163),
(548, '2022-04-26', 'RESTAURACIONES ', 'Dr. Jhon Zelada', '', 164),
(549, '2020-11-25', '02 RESTAURACIONES DE CARILLA', 'Dr. Jhon Zelada', '', 165),
(550, '2024-08-24', 'LAVADO SURCO GINGIVAL + RX PZA (27 / 2.6)', 'Dr. Jhon Zelada', 'Se indica mejorar higiene oral en la parte posterior ', 166),
(551, '2024-10-07', 'SE LE COLOCÓ UN APARATO REMOVIBLE TIPO WIPPLA EN EL SECTOR INFERIOR ', 'Dra. Azul Araucano', 'Se le dió todas las indicaciones a la madre ( control en 1 mes )', 459),
(552, '2024-10-07', 'INSTALACIÓN PUENTE (2.4 / 2.6)', 'Dr. Jhon Zelada', '', 424),
(553, '2022-09-08', 'EXTRACCIÓN 1.4 - 2.4', 'Dr. Jhon Zelada', '', 167),
(554, '2022-10-18', 'EXODONCIA 2 PZA 3.4 - 4.4', 'Dr. Jhon Zelada', '', 167),
(555, '2023-06-12', 'SE REALIZÓ PROFILAXIS Y RX', 'Dr. Jhon Zelada', '', 168),
(556, '2024-10-07', 'SE COLOCÓ UNA PLACA LINGUAL / CONTROL EN UN MES PARA PROFILAXIS Y FLÚOR ', 'Dra. Azul Araucano', 'Se colocó indicaciones a la mamita ', 313),
(557, '2024-10-07', 'COLOCACIÓN PERNO (1.4) FIBRA DE VIDRIO', 'Dr. Jhon Zelada', '', 471),
(558, '2024-09-21', 'CONSULTA + RESTAURACIÓN PROVISIONAL ', 'Dr. Jhon Zelada', '', 470),
(559, '2024-10-08', 'RESTAURACIÓN + MEDICACIÓN (1.7)', 'Dr. Jhon Zelada', '', 481),
(560, '2024-10-08', 'TALLADO PZA (4.7/4.5)', 'Dr. Jhon Zelada', 'Px refiere sensibilidad Próx cita (anestesia)', 465),
(561, '2024-10-09', 'CONSULTA ODONTOLOGICA + TOMA DE IMPRESION PARA FÉRULAS DE BLANQUEAMIENTO ', 'Dr. Jhon Zelada', 'Se observa manchas marrones en fosas y fisuras ', 482),
(562, '2024-10-09', 'ENTREGA DE KIT DE BLANQUEAMIENTO AMBULATORIO (CASERO) + PROFILAXIS COMPLETA ', 'Dr. Jhon Zelada', 'Se le entrega las indicaciones de forma verbal y escrita ', 482),
(563, '2024-09-05', 'PACIENTITA DE 10 AÑOS , PRESENTA MORDIDA ABIERTA , SE LE REALIZÓ PROFILAXIS + SELLANTE PZA (16/26/36/46) + FLÚOR BARNIZ ', 'Dra. Azul Araucano', 'Se le indica que es candidata a ortodoncia ', 415),
(564, '2024-10-14', 'PRUEBA DE RODETE + PRUEBA DE COLOR ', 'Dr. Jhon Zelada', '', 400),
(565, '2024-10-08', 'DOBLECES PZAS. 1.1, 2.1. ARCO ACERO 18X25 SUP. ARCO NiTi 16X22 INF.', 'Dra. Madelyn Placido', '', 294),
(566, '2024-10-14', 'RESTAURACION CON CARILLAS PZAS. 1.1, 1.2, 2.1, 2.2', 'Dr. Jhon Zelada', 'Se realiza pulido de resinas ', 482),
(567, '2023-10-02', 'PROFILAXIS + RX + EXTRACCIÓN PZA 13', 'Dr. Jhon Zelada', '', 171),
(568, '2023-04-20', 'SE REALIZÓ 02 EXODONCIAS + 01 PLACA', 'Dr. Jhon Zelada', '', 172),
(569, '2023-04-29', 'SE REALIZÓ PROFILAXIS MEDICADA CON ULTRASONIDO ', 'Dr. Jhon Zelada', '', 172),
(570, '2023-05-08', 'SE REALIZÓ 03 RESTAURACIONES ', 'Dr. Jhon Zelada', '', 173),
(571, '2023-02-20', 'CURACIÓN CON MEDICACIÓN ', 'Dr. Jhon Zelada', '', 174),
(572, '2022-10-08', 'DESTARTRAJE ', 'Dr. Jhon Zelada', '', 175),
(573, '2022-06-12', 'PROFILAXIS ', 'Dr. Jhon Zelada', '', 176),
(574, '2022-06-23', 'RESTAURACIONES (1.3- 1.4- 4.2- 4.3) ', 'Dr. Jhon Zelada', '', 176),
(575, '2022-06-26', 'ENDODONCIA PZA (1.5) 18mm', 'Dr. Jhon Zelada', '', 176),
(576, '2022-07-16', 'ENDODONCIA PZA (2.4)     (16mm)', 'Dr. Jhon Zelada', '', 176),
(577, '2023-12-23', 'RESTAURACIÓN SIMPLE PZA 2.7 ', 'Dr. Jhon Zelada', '', 176),
(578, '2024-10-15', 'RESTAURACIÓN + MEDICACIÓN (4.7)', 'Dr. Jhon Zelada', '', 481),
(579, '2022-08-14', 'ENDODONCIA (2.7)  P : 20mm    M : 20mm        D :19mm', 'Dr. Jhon Zelada', '', 179),
(580, '2022-09-03', 'ENTREGA DE PRÓTESIS ', 'Dr. Jhon Zelada', '', 179),
(581, '2024-10-15', 'ENTREGA DE PRÓTESIS SUPERIOR ', 'Dr. Jhon Zelada', 'Control en 1 semana', 34),
(582, '2024-10-15', 'TALLADO PZA 3 (4.7/4.3) (3.4/3.5/3.7) + TOMA DE IMPRESIÓN DEFINITIVA + REGISTRO DE MORDIDA ', 'Dr. Jhon Zelada', '', 465),
(583, '2023-10-17', 'EXODONCIA PZA (1.1/2.1/5.4/6.4)', 'Dr. Jhon Zelada', '', 34),
(584, '2023-10-27', 'SE REALIZÓ PROFILAXIS ', 'Dr. Jhon Zelada', '', 34),
(585, '2023-11-20', 'RESTAURACIÓN + MEDICACIÓN/ RESTAURACIÓN SIMPLE (3)', 'Dr. Jhon Zelada', '', 34),
(586, '2023-11-23', 'TOMA DE IMPRESIÓN (FÉRULAS DE BLANQUEAMIENTO (ACLARAMIENTO) )', 'Dr. Jhon Zelada', '', 34),
(587, '2023-12-02', 'CONTROL BLANQUEAMIENTO ', 'Dr. Jhon Zelada', '', 34),
(588, '2023-12-09', 'TOMA DE IMPRESIÓN + REGISTRO DE MORDIDA ', 'Dr. Jhon Zelada', '', 34),
(589, '2023-12-16', 'TOMA DE COLOR Y REGISTRO DE MORDIDA ', 'Dr. Jhon Zelada', '', 34),
(590, '2023-12-23', 'ENTREGA PRÓTESIS FLEXIBLE SUPERIOR ', 'Dr. Jhon Zelada', '', 34),
(591, '2024-02-06', 'CONTROL #1 PRÓTESIS ', 'Dr. Jhon Zelada', '', 34),
(592, '2024-10-15', 'RESINA MEDICADA CON TECNICA BRIX PIEZA 75 (0) ', 'Dra. Azul Araucano', 'Se le dió las indicaciones a la mamita ', 463),
(593, '2024-10-15', 'SE HIZO UN RESELLADO PZA 54 . SE REALIZÓ PROFILAXIS + FLÚOR BARNIZ ', 'Dra. Azul Araucano', 'Se le dió todas las indicaciones a la madre ', 135),
(594, '2024-10-15', 'CONSULTA GENERAL + 3 RADIOGRAFÍAS ', 'Dr. Jhon Zelada', '', 483),
(595, '2024-10-17', 'CONTROL PRÓTESIS FIJA ', 'Dr. Jhon Zelada', 'Primer control ', 424),
(596, '2024-10-17', 'RADIOGRAFÍA + APLICACIÓN DE FLÚOR BARNIZ + APLICACIÓN DE RIVASTAR', 'Dra. Azul Araucano', 'Se le da todas las indicaciones a la madre', 484),
(597, '2023-09-05', 'SE REALIZÓ 3 PERIAPICALES  , PROFILAXIS , DESTARTRAJE Y APLICACIÓN DE FLÚOR BARNIZ', 'Dra. Alejandra Noriega', '', 449),
(598, '2024-10-18', 'SE REALIZÓ 2 RADIOGRAFÍAS PZA 26 Y 75 . SE LE REALIZÓ PROFILAXIS + 1 RESINA SIMPLE PZA 26 (0) Y FLÚOR BARNIZ', 'Dra. Azul Araucano', '', 449),
(599, '2024-10-18', '2 RX PZA 54 / 65 . SE REALIZÓ PROFILAXIS + FLÚOR BARNIZ + SELLANTES PZA 16,26,36,46 ', 'Dra. Azul Araucano', 'Se le dió todas las indicaciones a la mamá ', 453),
(600, '2023-09-05', '3 PERIAPICALES + DESTARTRAJE + PROFILAXIS + FLÚOR BARNIZ ', 'Dra. Alejandra Noriega', '', 453),
(601, '2024-10-18', 'CONSULTA GENERAL', 'Dr. Jhon Zelada', '', 486),
(602, '2024-10-19', 'PACIENTE DE 13 AÑOS PASA CONSULTA POR DIASTEMAS ANTEROSUPERIOR E INTERIOR. SE LE SOLICITO QUE PASE CONSULTA CON “ORTODONCIA” PARA EVALUACION ', 'Dra. Azul Araucano', '', 487),
(603, '2024-10-19', 'PRUEBA DE ENFILADO ', 'Dr. Jhon Zelada', '', 400),
(604, '2024-10-19', 'RESTAURACIÓN + MEDICACIÓN PZA (27)', 'Dr. Jhon Zelada', '', 8),
(605, '2024-10-21', 'CONSULTA ESPECIALIZADA', 'Dr. Jhon Zelada', '', 489),
(606, '2024-10-21', 'CONSULTA', 'Dr. Jhon Zelada', '', 488),
(607, '2023-01-30', 'SE REALIZO 02 PERNOS DE VIDRIO DE FIBRA', 'Dr. Jhon Zelada', '', 248),
(608, '2023-05-05', 'SE REALIZÓ 2 RESTAURACIONES DE CARILLAS', 'Dr. Jhon Zelada', '', 248),
(609, '2024-10-22', 'CONSULTA + CARILLA PZA (1.1)', 'Dr. Jhon Zelada', '', 248),
(610, '2024-10-17', 'CAMBIO DE LIGAS (CONTROL NRO 16)', 'Dr. Jhon Zelada', '', 387),
(611, '2024-10-22', 'RESTAURACION + MEDICACION', 'Dr. Jhon Zelada', '', 481),
(612, '2024-10-22', 'PRUEBA DE COFIA METÁLICA + CUADRANTE 3 ( REPETICIÓN DE COFIA)', 'Dr. Jhon Zelada', '', 465),
(613, '2024-10-22', 'PERNO FIBRA + PROVISIONALIZACION', 'Dr. Jhon Zelada', '', 142),
(614, '2024-10-22', 'SE SUJETA LA LIGADURA AL BRACKET DE PZA DENTAL . LIGADURA EN 8 SUPERIOR DE PZA 24 A 25', 'Dra. Madelyn Placido', '', 317),
(615, '2024-10-22', 'CONSULTA ESPECIALIZADA ', 'Dr. Jhon Zelada', '', 491),
(616, '2024-10-22', 'LIGADURA EN 8 ARCADA SUPERIOR / CADENA DE 14 A 13.        LIGADURA EN 8 INFERIOR ', 'Dra. Madelyn Placido', '', 423),
(617, '2024-10-22', 'ARCO NITI 0,016 X 0,0225 SUP .    ARCO NITI 0,012 INFERIOR Y BRACKEADO ARCADA INFERIOR ', 'Dra. Madelyn Placido', '', 156),
(618, '2024-10-22', 'PERNO FIBRA PZA (2.5) ', 'Dr. Jhon Zelada', 'Diente con aparente ruptura de paredes proximales', 310),
(619, '2024-10-26', 'SE COLOCÓ RIVASTAR PZA 52 Y 62 (C,P) ', 'Dra. Azul Araucano', 'Se le dió todas las indicaciones a la mamá. Conducta del paciente (Frank IV)', 435),
(620, '2024-10-29', 'RESINA SIMPLE PIEZA 8.4 (OCLUSAL), RESINA SIMPLE PIEZA 7.4 Y 7.5 (OCLUSAL) Y SELLANTE PIEZA 8.5. SE LE DIO TODAS LAS INDICACIONES A LA MADRE.', 'Dra. Azul Araucano', '', 379),
(621, '2024-10-29', 'APLICACIÓN DE FLÚOR AMINO DE PLATA (RIVASTAR) PIEZA 6.2 (VESTIBULAR), SE LE DIO TODAS LAS INDICACIONES A LOS PADRES', 'Dra. Azul Araucano', '', 484),
(622, '2024-10-29', 'TOMA DE IMPRESION ', 'Dr. Jhon Zelada', '', 142),
(623, '2024-10-30', 'CONSULTA ESPECIALIZADA + LECTURA DE TOMOGRAFÍA ', 'Dr. Jhon Zelada', '', 492),
(624, '2024-10-16', 'RETIRO DE BRACKETS SUP. E INF. COLOCACION DE ATACHES INTERPROXIMALES ', 'Dr. Jhon Zelada', '', 294),
(625, '2024-10-30', 'COLOCACION DE RETENEDOR FIJO INFERIOR ', 'Dr. Jhon Zelada', '', 294),
(626, '2024-10-29', 'PRUEBA DE PROTESIS + PRUEBA DE CORONAS', 'Dr. Jhon Zelada', 'falta aumentar el borde incisal', 400),
(627, '2024-10-31', 'ENTREGA DE PRÓSTESIS (SUP + CORONA)  ', 'Dr. Jhon Zelada', 'cementadas ', 400),
(628, '2024-10-31', 'PROFILAXIS + DESTARTRAJE (2DA SESIÓN) + 2 RESTAURACIONES (1.4/1.7) + APLICACION DE FLUOR BARNIZ', 'Dr. Jhon Zelada', '', 474),
(629, '2024-09-25', 'PROFIFLAXIS + DESTARTRAJE (1RA SESION)', 'Dr. Jhon Zelada', '', 474),
(630, '2024-11-02', 'CONSULTA + RADIOGRAFIA', 'Dr. Jhon Zelada', '', 493),
(631, '2024-11-02', 'CONSULTA + RADIOGRAFÍA ', 'Dr. Jhon Zelada', '', 494),
(632, '2024-11-02', 'OPERCULECTOMIA', 'Dr. Jhon Zelada', '', 131),
(633, '2024-11-02', 'PRIMER CONTROL DE PRÓTESIS ', 'Dr. Jhon Zelada', '', 400),
(634, '2024-11-04', 'RESINA + MEDICACIÓN/ PROFILAXIS (1RA SESIÓN) / FLÚOR BARNIZ ', 'Dr. Jhon Zelada', '', 205),
(635, '2024-11-04', 'RETIRO DE CORONAS INFERIORES + TOMA DE MODELO PROVISIONALES', 'Dr. Jhon Zelada', '', 400),
(636, '2024-08-10', 'CONSULTA ODONTOLÓGICA ', 'Dr. Jhon Zelada', '', 397),
(637, '2024-08-15', 'TOMA DE IMPRESIÓN PRÓTESIS FLEXIBLE ', 'Dr. Jhon Zelada', '', 397),
(638, '2024-08-24', 'PROFILAXIS + 02 RESTAURACIONES PZA 22 Y 23 ', 'Dr. Jhon Zelada', '', 397),
(639, '2024-09-05', 'ENTREGA DE PRÓTESIS FLEXIBLE ', 'Dr. Jhon Zelada', '', 397),
(640, '2024-09-19', '02 RESTAURACIONES SIMPLES PZA 2.5 / 4.5 ', 'Dr. Jhon Zelada', '', 397),
(641, '2024-11-04', 'RESTAURACIÓN + MEDICACIÓN PZA(3.7) ', 'Dr. Jhon Zelada', 'Se indica mejorar la (H.O) ; presencia de pigmentaciones', 397),
(642, '2024-11-04', 'RESTAURACIÓN POST ENDODONCIA PZA 1.5', 'Dr. Jhon Zelada', '', 495),
(643, '2024-11-05', 'LIGADURA EN 8 SUPERIOR E INFERIOR / ELÁSTICOS INTERMAXILARES', 'Dra. Madelyn Placido', '', 359),
(644, '2024-11-05', 'CAMBIO DE CADENA SUPERIOR ', 'Dra. Madelyn Placido', '', 38),
(645, '2024-11-05', 'ARCO NITI 17 X 25 INFERIOR / CADENA SUPERIOR Y LIGADURA INFERIOR ', 'Dra. Madelyn Placido', '', 323),
(646, '2024-11-05', 'RESTAURACIÓN SIMPLE PZA 1.4 / 2.7', 'Dr. Jhon Zelada', '', 481),
(647, '2024-11-05', 'PRUEBA DE COFIA CUADRANTE (3) (REPETICIÓN CORREGIDA)', 'Dr. Jhon Zelada', '', 465),
(648, '2024-11-05', 'COLOCACION (TÉCNICA 4X1) SUPERIOR', 'Dr. Jhon Zelada', '', 294),
(649, '2024-11-05', 'RESTAURACIÓN MEDICADA CON BRIX + PROFILAXIS + FLÚOR BARNIZ ', 'Dra. Azul Araucano', 'Se le dio las indicaciones a la madre', 496),
(650, '2024-11-02', 'CEMENTACIÓN PROVISIONAL PZA. 2.3', 'Dr. Jhon Zelada', '', 282),
(651, '2024-11-05', 'CEMENTACIÓN PROVISIONAL PZA. 2.3', 'Dr. Jhon Zelada', '', 282),
(652, '2024-11-06', 'PROFILAXIS (2DA SESIÓN / FLÚOR BARNIZ)', 'Dr. Jhon Zelada', '', 205),
(653, '2023-03-24', 'PROFILAXIS + MICROABRASIÓN ', 'Dr. Jhon Zelada', '', 205),
(654, '2024-11-06', 'PEGADO PRÓTESIS BANDERA CON RESINA PESADA', 'Dr. Jhon Zelada', '', 4),
(655, '2024-11-06', 'TALLADO + RETIRO DE CORONA EN MAL ESTADO + TOMA DE IMPRESIÓN ', 'Dr. Jhon Zelada', '', 495),
(656, '2024-11-05', 'CONSULTA ESPECIALIZADA', 'Dr. Jhon Zelada', '', 497),
(657, '2024-11-07', 'PROFILAXIS DENTAL + 04 RADIOGRAFÍAS ', 'Dr. Jhon Zelada', '', 497),
(658, '2024-11-09', 'PROFILAXIS + DESTARTRAJE ', 'Dr. Jhon Zelada', '', 493),
(659, '2024-11-09', 'COLOCACIÓN PROVISIONAL INFERIOR', 'Dr. Jhon Zelada', '', 400),
(660, '2024-11-09', 'REPOSICIÓN DE LA RESTAURACIÓN PZA 75(O)', 'Dra. Azul Araucano', '', 463),
(661, '2024-11-09', 'EXODONCIA (2,8) + COLGAJO + OSTEOTOMIA + COLOCACIÓN DE HEMOTAM', 'Dr. Jhon Zelada', '', 493),
(662, '2024-11-09', 'CONSULTA ESPECIALIZADA ', 'Dr. Jhon Zelada', '', 499),
(663, '2024-11-09', 'PROFILAXIS + FLÚOR', 'Dra. Azul Araucano', 'Se le dió todas la indicaciones a la madre y se le dió una charla informativa', 498),
(664, '2024-08-13', 'CONTROL DE PROVISIONALIZACION', 'Dra. Milly Flores', '', 324),
(665, '2024-08-29', 'TOMA DÉ IMPRESIÓN CORONA DEFINITIVA ', 'Dra. Milly Flores', '', 324),
(666, '2024-11-12', 'CEMENTACIÓN DEFINITIVA CORONA (1.2)', 'Dra. Milly Flores', '', 324),
(667, '2024-11-12', 'PRUEBA DE COFIA', 'Dr. Jhon Zelada', '', 495),
(668, '2024-11-12', 'EXODONCIA PZA (1.4) + CONSULTA ', 'Dr. Jhon Zelada', '', 500),
(669, '2024-11-12', 'LIMPIEZA + CURETAJE DE LA HERIDA ', 'Dr. Jhon Zelada', '', 493),
(670, '2024-11-12', 'TOMA DE COLOR + PRUEBA DE COFIA', 'Dr. Jhon Zelada', '', 142),
(671, '2024-11-13', '02 RESTAURACIONES MEDICADAS CON BRIX (PIEZAS 84,85) Y 01 RESTAURACIÓN SIMPLE CON BRIX (PIEZA 55)', 'Dra. Azul Araucano', 'Se le dio indicaciones a la madre y se entrega pasta y cepillo vitis junior ', 496),
(672, '2024-11-14', 'SE REALIZO UNA RADIOGRAFIA PZA 61 + PROFILAXIS + APLICACION DE FLUOR BARNIZ. SE LE DIO TODAS LAS INDICACIONES A LA MAMÁ.', 'Dra. Azul Araucano', ' Se evidencia reabsorcion radicular,  a lo cual se le sugiere hacerse una extraccion.', 501),
(673, '2024-11-14', 'TOMA DE IMPRESION DEFINITIVA INF + REGISTRO DE MORDIDA', 'Dra. Azul Araucano', '', 400),
(674, '2024-11-14', 'SE REALIZO UNA RADIOGRAFIA PZA 54. TAMBIEN SE REALIZO UNA PROFILAXIS ', 'Dra. Azul Araucano', '', 502),
(675, '2024-11-14', 'SE REALIZO UNA RADIOGRAFIA PZA 85', 'Dra. Azul Araucano', '', 503),
(676, '2024-11-15', 'ENDODONCIA PZA 3.7  (11-23)   (D-22)', 'Dr. Hans Gamarra', '', 400),
(677, '2024-11-15', 'CONSULTA ', 'Dr. Jhon Zelada', '', 504),
(678, '2024-11-15', 'RESINA PROVISIONAL PZA (1.3)', 'Dr. Jhon Zelada', '', 8),
(679, '2024-10-18', 'CONSULTA ESPECIALIZADA', 'Dr. Jhon Zelada', '', 485),
(680, '2024-11-16', 'PROFILAXIS DENTAL + APLICACIÓN DE FLUOR BARNIZ', 'Dra. Azul Araucano', 'Se le enseña técnica de cepillado (vitis junior). Próxima cita control Enero', 505),
(681, '2024-11-16', 'PROFILAXIS DENTAL + APLICACIÓN DE FLÚOR BARNIZ', 'Dra. Azul Araucano', 'Se le da las indicaciones a la madre y se sugiere sacar radiografías para brindarle un diagnóstico completo ', 506),
(682, '2024-11-19', 'RESTAURACIÓN SIMPLE PZA 2.5/2.8', 'Dr. Jhon Zelada', '', 481),
(684, '2024-11-19', 'PRUEBA DE BIZCOCHO ', 'Dr. Jhon Zelada', '', 465),
(685, '2024-11-19', 'SE REALIZÓ PROFILAXIS + APLICACIÓN DE FLUOR. SE OBSERVA EN TOMOGRAFÍA (QUE LA MADRE TRAJO) DX. PRESUNTIVO: QUISTE DENTIGERO', 'Dra. Azul Araucano', 'Se le da las indicaciones a la madre y se refiere interconsulta con Maxilofacial', 507),
(686, '2024-11-20', 'CONSULTA + APERTURA DE HISTORIA CLÍNICA ', 'Dr. Jhon Zelada', 'Se le da las indicaciones sobre el tratamiento de Endodoncia y paciente realiza la separación para Endodoncia ', 508),
(687, '2024-11-20', 'LIMPIEZA (DESINFLAMANTE)', 'Dra. Milly Flores', 'Próxima cita 23/11/24', 265),
(688, '2024-11-21', 'EXODONCIA PZA (2.2) + COLOCACIÓN DE PROVISIONAL', 'Dr. Jhon Zelada', '', 485),
(689, '2024-11-21', 'CONSULTA ODONTOLOGICA', 'Dr. Jhon Zelada', '', 512),
(690, '2024-11-23', 'SE REALIZÓ UNA RESINA MEDICADA PZ 54(O) ', 'Dra. Azul Araucano', 'Se le dió todas la indicaciones a la madre. Si hubiera dolor es tratamiento de elección sería pulpotomia', 502),
(691, '2024-11-23', 'SE REALIZÓ PROFILAXIS + FLÚOR BARNIZ ', 'Dra. Azul Araucano', 'Se le dió todas las indicaciones a la mamita y se ajustó su placa lingual ', 313),
(692, '2024-11-23', 'INSTALACIÓN DE PROTESIS REMOVIBLE INFERIOR  ', 'Dr. Jhon Zelada', '', 330),
(693, '2024-11-23', 'SE REALIZÓ 2 RX PZA 54 Y 64. TAMBIÉN SE REALIZÓ PROFILAXIS ', 'Dra. Azul Araucano', '', 514),
(694, '2024-11-23', 'SE REALIZÓ PROFILAXIS + FLÚOR BARNIZ ', 'Dra. Azul Araucano', 'Se le dió todas las indicaciones a la madre ', 513),
(695, '2024-11-26', 'PRUEBA DE COFIA METÁLICA SECTOR (ANTERIOR INFERIOR)', 'Dr. Jhon Zelada', '', 400),
(696, '2024-11-26', '2 RESTAURACIONES CON MEDICACIÓN PZA (1.5/ 3.7)', 'Dr. Jhon Zelada', '', 481),
(697, '2024-11-26', 'INSTALACIÓN DE CORONA (4.5/ 4.6)  + RESTAURACIÓN (1.1)', 'Dr. Jhon Zelada', '', 495),
(698, '2024-11-26', 'PEGADO PROVISIONAL + AJUSTE OCLUSAL', 'Dr. Jhon Zelada', '', 265),
(699, '2024-11-26', 'ADENITIS CERVICAL POR ENFERMEDAD DE ARAÑAZO DE GATO CIE10:A28.1', 'Dr. Edison Santiago', 'Al examen extraoral: tumefaccion  submandibular derecho de 3x3 aprox. De consistencia firme, leve al dolor a la palpación, piel suprayacente de aspecto conservado. Al examen intraoral: Pza. 8.5 remane', 507),
(701, '2024-11-26', 'PROFILAXIS + DESTARTRAJE', 'Dr. Jhon Zelada', '', 515),
(702, '2024-11-28', 'EXODONCIA REMANENTE R. PZA. 24, 25, 37', 'Dr. Jhon Zelada', '', 497),
(703, '2024-11-21', 'RETIRO DE BRACKETS SUP. + CONTENCIÓN FIJA (SUP.) + PROFILAXIS SUPERIOR (PRIMERA SESIÓN)', 'Dr. Jhon Zelada', '', 488),
(704, '2024-11-30', 'SE REALIZO DESTARTRAJE + PROFILAXIS + FLUOR BARNIZ. TAMBIEN SELLANTE PZA 14,15,16,24,25,26', 'Dra. Azul Araucano', 'Se le dió todas las indicaciones a la madre ', 487),
(705, '2024-11-30', 'SE REALIZÓ PROFILAXIS + APLICACIÓN DE FLÚOR BARNIZ ', 'Dra. Azul Araucano', 'Se le dió todas las indicaciones a la madre. Crx pza 61. Control en 06 meses ', 516),
(706, '2024-11-30', 'RESTAURACIÓN + MEDICACIÓN (2.5) + COLOCACIÓN DE DYCAL ', 'Dr. Jhon Zelada', 'Esperar una semana ', 517),
(707, '2024-11-30', 'SE REALIZÓ PROFILAXIS + FLÚOR BARNIZ ', 'Dra. Azul Araucano', '', 503),
(708, '2024-11-30', 'SE REALIZÓ 5 RADIOGRAFÍAS SECTOR ANTERO SUPERIOR, SECTOR ANTEROPOSTERIOR (CUADRANTE IY II) Y SECTOR INFEROPOSTERIOR(cuadrante II y IV)', 'Dra. Azul Araucano', '', 518),
(709, '2024-11-30', 'SE REALIZÓ FISIOTERAPIA ORAL+ FLÚOR BARNIZ ', 'Dra. Azul Araucano', 'Se le dió todas  las indicaciones al padre ', 514),
(710, '2024-12-03', 'INSTALACIÓN DE PRÓTESIS INFERIOR PROVISIONAL ', 'Dr. Jhon Zelada', 'Se le indica a la paciente ingerir alimentos suaves por 24 horas', 465),
(711, '2024-12-03', 'EXTRACCION PZA 2.4', 'Dr. Jhon Zelada', '', 519),
(712, '2024-12-04', 'CEMENTADO SEMIDEFINITIVO CHARMTEMP', 'Dra. Milly Flores', 'Próxima cita en 15 días (19/12/24)', 265),
(713, '2024-12-05', 'PROCEDIMIENTO DE ENDODONCIA, LT:18 / CONO 50 APROXIMADO ', 'Dr. Hans Gamarra', 'Se realizó medicación intra conducto ', 519),
(714, '2024-12-05', 'PACIENTE CONDUCTA FRANK IV. SE LE EXPLICA ACERCA DEL TRATAMIENTO CON BRIXX Y RIVASTAR. SE SUGIERE HACERLO CON RESTRICCIÓN FÍSICA ', 'Dra. Azul Araucano', 'Se le brinda toda la información a los padres ', 520),
(715, '2024-12-05', 'PROFILAXIS+ FLUOR BARNIZ + RESINA SIMPLE', 'Dra. Azul Araucano', '', 296);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `radiografia`
--

CREATE TABLE `radiografia` (
  `CodigoRadiografia` int(11) NOT NULL,
  `NomRadiografia` varchar(100) NOT NULL,
  `CodigoPaciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `IdReserva` int(11) NOT NULL,
  `DniPaciente` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` varchar(10) NOT NULL,
  `IdClinica` int(11) NOT NULL,
  `Motivo` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`IdReserva`, `DniPaciente`, `Fecha`, `Hora`, `IdClinica`, `Motivo`) VALUES
(55, 0, '0000-00-00', '', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamiento`
--

CREATE TABLE `tratamiento` (
  `CodigoTra` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Descripcion` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `PrecioUni` decimal(10,2) NOT NULL,
  `PrecioTotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `archivo`
--
ALTER TABLE `archivo`
  ADD PRIMARY KEY (`CodigoArchivo`),
  ADD KEY `FK_codPaciente` (`CodigoPaciente`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indices de la tabla `clientedos`
--
ALTER TABLE `clientedos`
  ADD PRIMARY KEY (`CodigoCli`);

--
-- Indices de la tabla `clinica`
--
ALTER TABLE `clinica`
  ADD PRIMARY KEY (`IdClinica`);

--
-- Indices de la tabla `contabilidad`
--
ALTER TABLE `contabilidad`
  ADD PRIMARY KEY (`Codigocont`);

--
-- Indices de la tabla `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`DniDoctor`);

--
-- Indices de la tabla `egreso`
--
ALTER TABLE `egreso`
  ADD PRIMARY KEY (`Codigoegre`);

--
-- Indices de la tabla `excel`
--
ALTER TABLE `excel`
  ADD PRIMARY KEY (`CodigoExcel`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`DniPaciente`);

--
-- Indices de la tabla `procedimiento`
--
ALTER TABLE `procedimiento`
  ADD PRIMARY KEY (`Codproc`),
  ADD KEY `CodigoPaciente` (`CodigoPaciente`);

--
-- Indices de la tabla `radiografia`
--
ALTER TABLE `radiografia`
  ADD PRIMARY KEY (`CodigoRadiografia`),
  ADD KEY `FK_codigoPaciente` (`CodigoPaciente`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`IdReserva`) USING BTREE,
  ADD KEY `Fk_ReservaClinica` (`IdClinica`) USING BTREE,
  ADD KEY `Fk_ReservaPaciente` (`DniPaciente`) USING BTREE;

--
-- Indices de la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  ADD PRIMARY KEY (`CodigoTra`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `archivo`
--
ALTER TABLE `archivo`
  MODIFY `CodigoArchivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=521;

--
-- AUTO_INCREMENT de la tabla `clientedos`
--
ALTER TABLE `clientedos`
  MODIFY `CodigoCli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT de la tabla `contabilidad`
--
ALTER TABLE `contabilidad`
  MODIFY `Codigocont` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `egreso`
--
ALTER TABLE `egreso`
  MODIFY `Codigoegre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `excel`
--
ALTER TABLE `excel`
  MODIFY `CodigoExcel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `procedimiento`
--
ALTER TABLE `procedimiento`
  MODIFY `Codproc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=716;

--
-- AUTO_INCREMENT de la tabla `radiografia`
--
ALTER TABLE `radiografia`
  MODIFY `CodigoRadiografia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `IdReserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  MODIFY `CodigoTra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=764;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `archivo`
--
ALTER TABLE `archivo`
  ADD CONSTRAINT `FK_codPaciente` FOREIGN KEY (`CodigoPaciente`) REFERENCES `cliente` (`Codigo`);

--
-- Filtros para la tabla `procedimiento`
--
ALTER TABLE `procedimiento`
  ADD CONSTRAINT `procedimiento_ibfk_1` FOREIGN KEY (`CodigoPaciente`) REFERENCES `cliente` (`Codigo`);

--
-- Filtros para la tabla `radiografia`
--
ALTER TABLE `radiografia`
  ADD CONSTRAINT `FK_codigoPaciente` FOREIGN KEY (`CodigoPaciente`) REFERENCES `cliente` (`Codigo`);

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `Fk_ReservaClinica` FOREIGN KEY (`IdClinica`) REFERENCES `clinica` (`IdClinica`),
  ADD CONSTRAINT `Fk_ReservaPaciente` FOREIGN KEY (`DniPaciente`) REFERENCES `paciente` (`DniPaciente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
