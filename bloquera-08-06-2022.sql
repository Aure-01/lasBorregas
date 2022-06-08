-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-06-2022 a las 22:04:56
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

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
(1, 'tabicon', 2.4, 4, '4x4', 1, 400),
(2, 'tabicon', 2.7, 4.5, '5x5', 1, 400),
(3, 'tabicon', 3, 6, '6x6', 1, 400),
(4, 'tabicon', 3.5, 9, '7x7', 1, 400),
(5, 'tabicon', 4, 10, '8x8', 1, 400);

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
  `estado` int(1) NOT NULL,
  `fkidrol` int(11) NOT NULL,
  `fkidusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `cl_nombre`, `cl_apaterno`, `cl_amaterno`, `cl_calle`, `cl_numb`, `cl_codpostal`, `cl_colonia`, `cl_lugar`, `cl_municipio`, `cl_telefono`, `estado`, `fkidrol`, `fkidusuario`) VALUES
(1, 'Omar Aurelio', 'Gomez', 'Peralta', 'Ixtlahuacan', '565', '28046', 'Oriental', 'Casa', 'Colima', '3121679078', 1, 3, 1),
(2, 'Pedro Raul', 'Marines', 'Larios', 'Condor', '164', '28017', 'Colinas de Santa Barbara', 'Terreno', 'Colima', '3121774657', 1, 3, 2),
(3, 'AldoOmar', 'Gomez', 'Matuz', 'Ixtlahuacan', '555', '28046', 'Oriental', 'Casa', 'Colima', '3122739381', 1, 3, 3),
(4, 'Britney', 'Garcia', 'Gonzales', 'Morelos', '118', '28200', 'Manzanillo', 'Terreno', 'Colima', '3141380821', 1, 3, 4),
(5, 'Julio', 'Vergara', 'Plascencia', 'Av.Constitucion', '1450', '28017', 'Jardines Vista Hermosa', 'Casa', 'Colima', '3122014062', 1, 3, 5),
(6, 'Nicolas', 'Salazar', 'Victoria', 'Ruiz', '515', '9876543', 'Vista Hermosa', 'Terreno', 'Colima', '3014868726', 1, 3, 6),
(7, 'Daniela', 'Velez', 'Castillo', 'Sinaloa', '122', '98765', 'Villa', 'Casa', 'Colima', '1278765432', 1, 3, 7),
(8, 'Gonzalo', 'Gonzalez', 'Rocha', 'Luis Paez Brotchie', '515', '19876', 'Jardines de vista hermosa', 'Terreno', 'Colima', '87234578', 1, 3, 8),
(9, 'David', 'Ahumada', 'Perez', 'Minatitlan', '510', '245432', 'Oriental', 'Casa', 'Colima', '12345679', 1, 3, 9),
(10, 'Juan David', 'Muñoz', 'Gaviria', 'Guadalajara', '1746', '12345', 'Villa', 'Terreno', 'Colima', '1234567', 1, 3, 10);

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
(31, 1, 32, 50, 200),
(32, 1, 33, 50, 200),
(33, 2, 34, 50, 225),
(34, 3, 35, 50, 300),
(35, 2, 36, 50, 225),
(36, 3, 37, 50, 300),
(37, 4, 38, 50, 450),
(38, 4, 39, 50, 450),
(39, 5, 40, 50, 500),
(40, 5, 41, 50, 500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL,
  `nombre_empleado` varchar(50) NOT NULL,
  `apellido_empleado` varchar(50) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_egreso` date DEFAULT NULL,
  `telefono` varchar(10) NOT NULL,
  `estado_actividad` tinyint(1) NOT NULL,
  `fkidrol` int(11) NOT NULL,
  `fkiduser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `nombre_empleado`, `apellido_empleado`, `fecha_ingreso`, `fecha_egreso`, `telefono`, `estado_actividad`, `fkidrol`, `fkiduser`) VALUES
(1, 'Administrador General', 'Bloquera Las Borregas', '2015-05-11', NULL, '3123102246', 1, 1, 11),
(2, 'Esteban Gregorio', 'Gomez Vargas', '2016-06-02', NULL, '3125952867', 1, 1, 12),
(3, 'Juan Felipe', 'Fernandez Rey', '2022-05-17', NULL, '3014868725', 1, 2, 13),
(4, 'Daniel', 'Ruiz Bedoya', '2022-05-17', NULL, '3014879725', 1, 2, 14),
(5, 'EMPLEADO EN LINEA', 'EMPLEADO EN LINEA', '2022-05-25', NULL, '1234509567', 0, 2, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre_rol`) VALUES
(1, 'ADMIN'),
(2, 'EMPLEADO'),
(3, 'CLIENTE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `nombre_usuario` varchar(30) NOT NULL,
  `clave` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nombre_usuario`, `clave`) VALUES
(1, 'omar', '1234'),
(2, 'pedro', 'J74HAT12'),
(3, 'aldo', 'LAR1423'),
(4, 'britney', 'OSW1844Q'),
(5, 'julio', 'HS32HA3'),
(6, 'nico.salaz', 'n1c0l4s10'),
(7, 'daniv', 'daniela123'),
(8, 'ggonzalezr', '123456'),
(9, 'juan.diaz', '12345'),
(10, 'jd.munoz', '12345'),
(11, 'admin', '123'),
(12, 'goyo', '1105'),
(13, 'j_fernandez', '12345'),
(14, 'dani_ruiz', 'dani123'),
(15, 'empleado_en_linea', '12345');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_venta` int(11) NOT NULL,
  `fk_id_cliente` int(11) NOT NULL,
  `fk_id_empleado` int(11) DEFAULT NULL,
  `fecha` date NOT NULL,
  `tipo_venta` varchar(50) NOT NULL,
  `total` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id_venta`, `fk_id_cliente`, `fk_id_empleado`, `fecha`, `tipo_venta`, `total`, `estado`) VALUES
(32, 1, 3, '2022-06-08', 'Linea', 200, 1),
(33, 1, 3, '2022-06-08', 'Mostrador', 200, 1),
(34, 2, 3, '2022-06-08', 'Mostrador', 225, 1),
(35, 3, 3, '2022-06-08', 'Mostrador', 300, 1),
(36, 2, 5, '2022-05-13', 'Linea', 225, 1),
(37, 3, 5, '2022-05-17', 'Linea', 300, 1),
(38, 4, 5, '2022-06-01', 'Linea', 450, 1),
(39, 4, 3, '2022-06-03', 'Mostrador', 450, 1),
(40, 5, 5, '2022-05-11', 'Linea', 500, 1),
(41, 5, 4, '2022-05-12', 'Mostrador', 500, 1);

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
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `fk_cl_rol` (`fkidrol`),
  ADD KEY `fk_cl_user` (`fkidusuario`);

--
-- Indices de la tabla `detalle_venta_bloque`
--
ALTER TABLE `detalle_venta_bloque`
  ADD PRIMARY KEY (`id_det_vta_blq`),
  ADD KEY `fk_det_vta_blq_bloque` (`fk_id_bloque`),
  ADD KEY `fk_det_vta_blq_venta` (`fk_id_venta`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`),
  ADD KEY `fk_emp_rol` (`fkidrol`),
  ADD KEY `fk_emp_user` (`fkiduser`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

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
  MODIFY `id_det_vta_blq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `fk_cl_rol` FOREIGN KEY (`fkidrol`) REFERENCES `rol` (`id_rol`),
  ADD CONSTRAINT `fk_cl_user` FOREIGN KEY (`fkidusuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `detalle_venta_bloque`
--
ALTER TABLE `detalle_venta_bloque`
  ADD CONSTRAINT `fk_det_vta_blq_bloque` FOREIGN KEY (`fk_id_bloque`) REFERENCES `bloque` (`id_bloque`),
  ADD CONSTRAINT `fk_det_vta_blq_venta` FOREIGN KEY (`fk_id_venta`) REFERENCES `venta` (`id_venta`);

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `fk_emp_rol` FOREIGN KEY (`fkidrol`) REFERENCES `rol` (`id_rol`),
  ADD CONSTRAINT `fk_emp_user` FOREIGN KEY (`fkiduser`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `fk_venta_cliente` FOREIGN KEY (`fk_id_cliente`) REFERENCES `cliente` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
