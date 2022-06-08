-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-05-2022 a las 20:55:08
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bloquera`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bloque`
--

CREATE TABLE `bloque` (
  `id_bloque` int(11) NOT NULL,
  `blq_nombre` varchar(50) NOT NULL,
  `blq_precio_unitario` float NOT NULL,
  `blq_precio_venta` float NOT NULL,
  `blq_tamano` varchar(30) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `blq_existencia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bloque`
--

INSERT INTO `bloque` (`id_bloque`, `blq_nombre`, `blq_precio_unitario`, `blq_precio_venta`, `blq_tamano`, `estado`, `blq_existencia`) VALUES
(1, 'tabicon', 2.4, 4, '4x4', 1, 441),
(4, 'tabicon', 3, 4.5, '5x5', 1, 458),
(8, 'nnn', 90, 90, 'ff', 0, 100),
(9, 'tabicon', 5, 8, '6x6', 1, 180),
(10, 'tabicon', 10, 15, '7x7', 0, 200),
(11, 'tabicon', 15, 20, 'AxA', 0, 100),
(12, 'tabicon', 0, 0, 'a', 0, 0),
(13, 'tabicon', 15, 23, '7x7', 0, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `cl_nombre` varchar(50) NOT NULL,
  `cl_apaterno` varchar(20) NOT NULL,
  `cl_amaterno` varchar(20) NOT NULL,
  `cl_calle` varchar(50) NOT NULL,
  `cl_numb` varchar(20) NOT NULL,
  `cl_codpostal` varchar(10) NOT NULL,
  `cl_colonia` varchar(30) NOT NULL,
  `cl_lugar` varchar(20) NOT NULL,
  `cl_municipio` varchar(30) NOT NULL,
  `cl_telefono` varchar(30) NOT NULL,
  `estado` int(1) DEFAULT NULL,
  `usuario` varchar(10) DEFAULT NULL,
  `contrasena` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `cl_nombre`, `cl_apaterno`, `cl_amaterno`, `cl_calle`, `cl_numb`, `cl_codpostal`, `cl_colonia`, `cl_lugar`, `cl_municipio`, `cl_telefono`, `estado`, `usuario`, `contrasena`) VALUES
(1, 'omar', 'gomez', 'peralta', 'ixtlahuacan', '565', '28046', 'oriental', 'casa', 'colima', '3121679078', 0, 'omar', 'A13D75H'),
(2, 'pedro', 'marines', 'larios', 'condor', '164', '28017', 'colinas de santa barbara', 'casa', 'colima', '3121774657', 1, 'pedro', 'J74HAT12'),
(3, 'aldo', 'gomez', 'matuz', 'ixtlahuacan', '555', '28046', 'oriental', 'casa', 'colima', '3122739381', 1, 'aldo', 'LAR1423'),
(4, 'britney', 'garcia', 'gonzalez', 'morelos', '118', '28200', 'manzanillo', 'casa', 'colima', '3141380821', 0, 'britney', 'OSW1844Q'),
(5, 'julio', 'vergara', 'plascencia', 'av.constitucion', '1450', '28017', 'jardines vista hermosa', 'terreno', 'colima', '3122014062', 0, 'julio', 'HS32HA3'),
(6, 'Nicolas', 'Salazar', 'Victoria', 'luis', '515', '9876543', 'vista', 'casa', 'colima', '3014868726', 1, 'nico.salaz', 'n1c0l4s10'),
(7, 'Daniela', 'Velez', 'Castillo', 'vista', '122', '98765', 'Villa', 'Casa', 'Colima', '1278765432', 0, 'daniv', 'daniela123'),
(8, 'Gonzalo', 'Gonzalez', 'Rocha', 'Luis Paez Brotchie', '515', '09876', 'Jardines de vista hermosa', 'casa', 'Colima', '87234578', 1, 'ggonzalezr', '123456'),
(9, 'david', 'diaz', 'perez', 'calle', '510', '245432', 'sandoval', 'casa', 'colima', '12345679', 0, 'juan.diaz', '12345'),
(10, 'Juan David', 'Muñoz', 'Gaviria', 'calle', '1746', '12345', 'Villa', 'Casa', 'Colima', '1234567', 1, 'jd.munoz', '12345'),
(11, '123', '1234', '1234', 'asdg', 'asdf', 'asdf', 'asdfg', 'Casa', 'asdfg', '124', 0, 'cualquiera', '123'),
(12, 'juan', 'diaz', 'velez', '12 de mayo', '515', '12345', 'centro', 'Casa', 'Colima', '3014675342', 1, 'juan.diaz.', '12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta_bloque`
--

CREATE TABLE `detalle_venta_bloque` (
  `id_det_vta_blq` int(11) NOT NULL,
  `fk_id_bloque` int(11) NOT NULL,
  `fk_id_venta` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_venta_bloque`
--

INSERT INTO `detalle_venta_bloque` (`id_det_vta_blq`, `fk_id_bloque`, `fk_id_venta`, `cantidad`, `precio_venta`) VALUES
(1, 1, 1, 50, 200),
(2, 1, 2, 100, 400),
(3, 4, 1, 50, 225),
(4, 4, 2, 50, 225),
(7, 4, 3, 100, 450),
(8, 4, 4, 100, 450),
(11, 1, 17, 99, 396),
(12, 4, 18, 10, 40),
(13, 1, 18, 20, 80),
(16, 1, 21, 22, 88),
(18, 4, 23, 20, 80),
(19, 1, 24, 10, 40),
(20, 1, 25, 10, 40),
(21, 4, 25, 20, 80),
(22, 4, 26, 20, 90),
(23, 1, 27, 12, 48),
(24, 4, 27, 5, 22.5),
(25, 1, 28, 10, 40),
(26, 4, 28, 7, 31.5),
(27, 1, 28, 6, 24),
(28, 9, 29, 20, 160),
(29, 1, 30, 11, 44);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_venta` int(11) NOT NULL,
  `fk_id_cliente` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `tipo_venta` varchar(50) NOT NULL,
  `total` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id_venta`, `fk_id_cliente`, `fecha`, `tipo_venta`, `total`, `estado`) VALUES
(1, 1, '2020-02-11', 'Linea', 100, 0),
(2, 2, '2019-01-23', 'Mostrador', 625, 1),
(3, 3, '2021-05-05', 'Linea', 450, 1),
(4, 4, '2020-07-19', 'Mostrador', 450, 1),
(17, 2, '2022-04-07', 'Linea', 396, 1),
(18, 6, '2022-04-24', 'Linea', 120, 1),
(21, 3, '2022-04-23', 'Linea', 88, 1),
(23, 2, '2022-04-25', 'Linea', 80, 1),
(24, 6, '2022-04-24', 'Linea', 40, 1),
(25, 2, '2022-04-06', 'Linea', 120, 1),
(26, 6, '2022-04-06', 'Linea', 90, 0),
(27, 3, '2022-04-20', 'Mostrador', 71, 1),
(28, 8, '2022-04-13', 'Mostrador', 96, 0),
(29, 3, '2022-04-20', 'Linea', 160, 1),
(30, 2, '2022-07-12', 'Linea', 44, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bloque`
--
ALTER TABLE `bloque`
  ADD PRIMARY KEY (`id_bloque`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `detalle_venta_bloque`
--
ALTER TABLE `detalle_venta_bloque`
  ADD PRIMARY KEY (`id_det_vta_blq`),
  ADD KEY `fk_det_vta_blq_bloque` (`fk_id_bloque`),
  ADD KEY `fk_det_vta_blq_venta` (`fk_id_venta`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `fk_venta_cliente` (`fk_id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bloque`
--
ALTER TABLE `bloque`
  MODIFY `id_bloque` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `detalle_venta_bloque`
--
ALTER TABLE `detalle_venta_bloque`
  MODIFY `id_det_vta_blq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_venta_bloque`
--
ALTER TABLE `detalle_venta_bloque`
  ADD CONSTRAINT `fk_det_vta_blq_bloque` FOREIGN KEY (`fk_id_bloque`) REFERENCES `bloque` (`id_bloque`),
  ADD CONSTRAINT `fk_det_vta_blq_venta` FOREIGN KEY (`fk_id_venta`) REFERENCES `venta` (`id_venta`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `fk_venta_cliente` FOREIGN KEY (`fk_id_cliente`) REFERENCES `cliente` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
