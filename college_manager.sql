-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 12-09-2024 a las 04:18:38
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `college_manager`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `emails` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `students`
--

INSERT INTO `students` (`id`, `code`, `full_name`, `emails`) VALUES
(69, '6537', 'Carlos Umbarila Perez', 'carlos.umbarilaperez@gmail.com'),
(70, '6977', 'Diana Vasquez Cifuentes', 'diana.vasquezcifuentes@gmail.com'),
(71, '3599', 'Manuela Rios Amelines', 'manuela.riosamelines@gmail.com'),
(72, '5239', 'Jacobo Umbarila Vasquez', 'jacobo.umbarilavasquez@gmail.com'),
(73, '1996', 'Santiago Umbarila Vasquez', 'santiago.umbarilavasquez@gmail.com'),
(74, '5403', 'Jairo Umbarila Perez', 'jairo.umbarilaperez@gmail.com'),
(75, '2422', 'Adiela Perez Taborda', 'adiela.pereztaborda@gmail.com'),
(76, '1251', 'German Umbarila Perez', 'german.umbarilaperez@gmail.com'),
(77, '2563', 'Mauricio Perez Martinez', 'mauricio.perezmartinez@gmail.com'),
(78, '9151', 'Hector Umbarila Perez', 'hector.umbarilaperez@gmail.com'),
(79, '1205', 'Jordi Jaramillo Aguirre', 'jordi.jaramilloaguirre@gmail.com'),
(80, '5741', 'Ronald Perez Salazar', 'ronald.perezsalazar@gmail.com'),
(81, '5947', 'Harvey Corrales Rios', 'harvey.corralesrios@gmail.com'),
(82, '9708', 'Ruben Amelines Marin', 'ruben.amelinesmarin@gmail.com'),
(83, '1739', 'Sergio Umbarila Romero', 'sergio.umbarilaromero@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
