-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-04-2022 a las 00:16:50
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectoweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guest`
--

CREATE TABLE `guest` (
  `idguest` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `idtype` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `name` text COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `phone` int(10) NOT NULL,
  `nationality` text COLLATE utf8_spanish2_ci NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `property`
--

CREATE TABLE `property` (
  `idprop` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `type` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `addres` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `country` text COLLATE utf8_spanish2_ci NOT NULL,
  `city` text COLLATE utf8_spanish2_ci NOT NULL,
  `stratuim` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roomproperty`
--

CREATE TABLE `roomproperty` (
  `idroom` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `idprop` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `bednumber` int(10) NOT NULL,
  `price` int(30) NOT NULL,
  `availeble` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `capacity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`idguest`);

--
-- Indices de la tabla `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`idprop`);

--
-- Indices de la tabla `roomproperty`
--
ALTER TABLE `roomproperty`
  ADD PRIMARY KEY (`idroom`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
