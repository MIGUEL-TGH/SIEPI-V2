-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-10-2024 a las 23:29:46
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `siepi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `afromexicana_por_municipio`
--

CREATE TABLE `afromexicana_por_municipio` (
  `id` int(11) NOT NULL,
  `Id_Mun` int(11) NOT NULL,
  `Genero` varchar(2) NOT NULL,
  `A` varchar(10) NOT NULL COMMENT 'De 0 a 4 años',
  `B` varchar(10) NOT NULL COMMENT 'De 5 a 9 años',
  `C` varchar(10) NOT NULL COMMENT 'De 10 a 14 años',
  `D` varchar(10) NOT NULL COMMENT 'De 15 a 19 años',
  `E` varchar(10) NOT NULL COMMENT 'De 20 a 24 años',
  `F` varchar(10) NOT NULL COMMENT 'De 25 a 29 años',
  `G` varchar(10) NOT NULL COMMENT 'De 30 a 34 años',
  `H` varchar(10) NOT NULL COMMENT 'De 35 a 39 años ',
  `I` varchar(10) NOT NULL COMMENT 'De 40 a 44 años',
  `J` varchar(10) NOT NULL COMMENT 'De 45 a 49 años',
  `K` varchar(10) NOT NULL COMMENT 'De 50 a 54 años',
  `L` varchar(10) NOT NULL COMMENT 'De 55 a 59 años',
  `M` varchar(10) NOT NULL COMMENT 'De 60 a 64 años',
  `N` varchar(10) NOT NULL COMMENT 'De 65 a 69 años',
  `P` varchar(10) NOT NULL COMMENT 'De 70 a 74 años',
  `O` varchar(10) NOT NULL COMMENT 'De 75 a 79 años',
  `Q` varchar(10) NOT NULL COMMENT 'De 80 a 84 años',
  `R` varchar(10) NOT NULL COMMENT '85 años y más',
  `S` varchar(10) NOT NULL COMMENT 'No especificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `afromexicana_por_municipio`
--

INSERT INTO `afromexicana_por_municipio` (`id`, `Id_Mun`, `Genero`, `A`, `B`, `C`, `D`, `E`, `F`, `G`, `H`, `I`, `J`, `K`, `L`, `M`, `N`, `P`, `O`, `Q`, `R`, `S`) VALUES
(1, 100, 'H', '*', '*', '*', '2', '*', '3', '1', '*', '1', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*'),
(2, 100, 'M', '*', '*', '*', '1', '2', '*', '1', '*', '*', '3', '*', '2', '1', '*', '*', '1', '*', '*', '*'),
(3, 213, 'H', '*', '3', '1', '1', '1', '3', '*', '2', '3', '1', '1', '1', '*', '2', '*', '1', '*', '*', '*'),
(4, 213, 'M', '1', '2', '3', '*', '3', '2', '1', '3', '1', '1', '*', '*', '1', '*', '*', '*', '*', '*', '*'),
(5, 111, 'H', '6', '5', '2', '2', '1', '5', '5', '8', '1', '2', '5', '4', '6', '2', '2', '2', '1', '2', '*'),
(6, 111, 'M', '4', '9', '4', '5', '7', '2', '4', '6', '2', '3', '4', '7', '4', '1', '*', '1', '3', '1', '*'),
(7, 178, 'H', '2', '2', '5', '*', '3', '2', '3', '4', '2', '2', '6', '2', '4', '5', '*', '1', '*', '*', '*'),
(8, 178, 'M', '4', '7', '4', '6', '2', '2', '3', '3', '2', '3', '2', '4', '3', '3', '*', '*', '1', '1', '*'),
(9, 109, 'H', '3', '1', '2', '4', '4', '3', '4', '6', '6', '2', '2', '3', '*', '4', '1', '2', '*', '*', '*'),
(10, 109, 'M', '3', '3', '2', '7', '5', '6', '2', '6', '3', '6', '1', '*', '3', '1', '1', '1', '2', '*', '*'),
(11, 197, 'H', '6', '7', '5', '14', '20', '16', '17', '14', '9', '12', '17', '9', '8', '10', '2', '1', '1', '2', '*'),
(12, 197, 'M', '11', '12', '8', '12', '27', '23', '12', '17', '13', '13', '15', '8', '2', '2', '5', '4', '1', '2', '*'),
(13, 184, 'H', '*', '*', '*', '*', '*', '2', '*', '*', '1', '*', '1', '*', '*', '*', '*', '*', '*', '*', '*'),
(14, 184, 'M', '*', '*', '*', '3', '*', '*', '*', '1', '1', '*', '1', '*', '*', '*', '*', '*', '*', '*', '*'),
(15, 49, 'H', '11', '13', '12', '17', '11', '11', '7', '10', '5', '6', '3', '3', '*', '3', '1', '2', '1', '*', '*'),
(16, 49, 'M', '12', '11', '14', '8', '19', '11', '9', '6', '6', '7', '4', '3', '2', '2', '3', '1', '*', '1', '*'),
(17, 183, 'H', '*', '3', '4', '4', '2', '2', '2', '2', '1', '4', '*', '*', '1', '1', '*', '*', '1', '*', '*'),
(18, 183, 'M', '1', '3', '*', '1', '4', '9', '4', '3', '2', '4', '*', '4', '*', '*', '*', '*', '*', '*', '*'),
(19, 89, 'H', '*', '*', '1', '3', '2', '2', '*', '3', '1', '*', '1', '1', '*', '2', '2', '1', '*', '*', '*'),
(20, 89, 'M', '*', '*', '*', '*', '2', '2', '2', '1', '1', '1', '3', '1', '2', '*', '1', '3', '2', '*', '*'),
(21, 71, 'H', '8', '5', '11', '13', '20', '22', '14', '23', '15', '18', '18', '13', '9', '5', '4', '6', '1', '2', '*'),
(22, 71, 'M', '12', '9', '10', '12', '30', '18', '18', '24', '18', '16', '23', '16', '5', '8', '4', '1', '4', '1', '*'),
(23, 162, 'H', '1', '*', '*', '*', '*', '*', '*', '1', '*', '*', '*', '1', '*', '*', '*', '*', '*', '1', '*'),
(24, 162, 'M', '*', '1', '*', '*', '*', '*', '1', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*'),
(25, 68, 'H', '8', '14', '21', '12', '15', '16', '13', '8', '9', '12', '16', '9', '7', '9', '6', '4', '3', '*', '*'),
(26, 68, 'M', '14', '25', '16', '20', '11', '10', '16', '9', '7', '20', '9', '11', '7', '4', '4', '3', '2', '1', '*'),
(27, 28, 'H', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*'),
(28, 28, 'M', '*', '*', '*', '*', '1', '*', '*', '*', '*', '*', '1', '*', '*', '*', '*', '*', '*', '*', '*'),
(29, 14, 'H', '3', '2', '2', '2', '1', '*', '2', '2', '3', '1', '*', '1', '2', '1', '*', '*', '1', '*', '*'),
(30, 14, 'M', '3', '*', '*', '2', '2', '1', '2', '2', '2', '2', '1', '*', '1', '1', '1', '*', '1', '*', '*'),
(31, 123, 'H', '*', '*', '*', '1', '3', '2', '3', '1', '1', '*', '*', '2', '1', '1', '*', '*', '1', '*', '*'),
(32, 123, 'M', '1', '4', '1', '*', '*', '1', '4', '2', '1', '*', '1', '1', '1', '*', '1', '2', '*', '*', '*'),
(33, 30, 'H', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*'),
(34, 30, 'M', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*'),
(35, 167, 'H', '1', '7', '7', '7', '7', '8', '7', '3', '9', '5', '4', '5', '2', '6', '*', '9', '*', '3', '*'),
(36, 167, 'M', '11', '6', '12', '14', '9', '8', '10', '6', '7', '5', '7', '7', '1', '9', '3', '6', '2', '2', '*'),
(37, 6, 'H', '46', '51', '68', '68', '62', '48', '36', '33', '35', '40', '33', '23', '22', '20', '21', '20', '5', '5', '*'),
(38, 6, 'M', '47', '55', '71', '68', '66', '46', '39', '38', '39', '51', '40', '28', '22', '31', '23', '21', '7', '11', '*'),
(39, 208, 'H', '35', '32', '24', '47', '35', '24', '26', '25', '29', '29', '21', '9', '16', '8', '7', '3', '1', '*', '*'),
(40, 208, 'M', '32', '35', '36', '41', '46', '29', '26', '29', '25', '37', '19', '10', '14', '4', '7', '7', '3', '2', '*'),
(41, 84, 'H', '23', '15', '20', '21', '21', '14', '11', '14', '12', '6', '10', '4', '8', '9', '5', '3', '2', '*', '*'),
(42, 84, 'M', '11', '16', '16', '16', '24', '15', '20', '12', '13', '8', '10', '11', '3', '4', '6', '7', '1', '3', '*'),
(43, 77, 'H', '2', '2', '3', '2', '*', '1', '*', '1', '2', '1', '*', '*', '1', '1', '*', '*', '*', '*', '*'),
(44, 77, 'M', '*', '1', '*', '1', '1', '2', '2', '1', '1', '1', '*', '*', '*', '*', '*', '1', '*', '*', '*'),
(45, 80, 'H', '1', '*', '1', '*', '*', '1', '*', '*', '*', '1', '*', '*', '*', '1', '*', '1', '*', '1', '*'),
(46, 80, 'M', '*', '1', '1', '*', '1', '*', '*', '*', '*', '1', '*', '*', '*', '*', '*', '*', '*', '1', '*'),
(47, 72, 'H', '7', '4', '2', '11', '10', '8', '5', '6', '3', '4', '3', '3', '*', '2', '4', '1', '2', '2', '*'),
(48, 72, 'M', '4', '3', '6', '14', '6', '5', '7', '5', '4', '1', '7', '3', '2', '6', '2', '4', '2', '*', '*'),
(49, 107, 'H', '11', '7', '9', '10', '7', '4', '3', '6', '1', '3', '5', '1', '1', '3', '4', '*', '1', '*', '*'),
(50, 107, 'M', '11', '11', '7', '13', '4', '5', '4', '5', '3', '6', '*', '3', '1', '4', '3', '*', '1', '*', '*'),
(51, 29, 'H', '*', '*', '1', '*', '*', '*', '*', '3', '2', '1', '1', '*', '1', '1', '1', '*', '*', '*', '*'),
(52, 29, 'M', '2', '2', '1', '1', '1', '3', '3', '*', '1', '1', '1', '*', '2', '*', '*', '*', '*', '*', '*'),
(53, 215, 'H', '2', '5', '5', '5', '5', '2', '5', '6', '4', '4', '5', '1', '3', '1', '3', '*', '1', '*', '*'),
(54, 215, 'M', '2', '6', '4', '3', '1', '4', '5', '4', '6', '*', '6', '2', '1', '*', '1', '*', '*', '1', '*'),
(55, 210, 'H', '9', '6', '7', '7', '5', '3', '3', '5', '5', '6', '4', '3', '1', '1', '2', '*', '3', '*', '*'),
(56, 210, 'M', '4', '7', '5', '8', '6', '9', '7', '3', '9', '6', '6', '3', '1', '6', '1', '3', '1', '1', '*'),
(57, 202, 'H', '8', '13', '13', '13', '10', '7', '10', '6', '12', '8', '6', '14', '9', '10', '6', '6', '3', '4', '*'),
(58, 202, 'M', '10', '15', '10', '13', '12', '15', '12', '13', '11', '14', '7', '9', '10', '12', '12', '10', '5', '6', '*'),
(59, 78, 'H', '208', '197', '209', '189', '172', '152', '134', '130', '92', '67', '57', '53', '52', '52', '31', '26', '13', '7', '2'),
(60, 78, 'M', '171', '164', '184', '169', '184', '173', '122', '127', '65', '90', '68', '57', '52', '46', '17', '27', '18', '16', '*'),
(61, 216, 'H', '1', '1', '1', '*', '1', '*', '*', '*', '*', '1', '*', '1', '1', '*', '*', '*', '*', '*', '*'),
(62, 216, 'M', '*', '*', '*', '1', '1', '*', '1', '*', '*', '*', '1', '*', '1', '*', '1', '*', '*', '*', '*'),
(63, 88, 'H', '*', '3', '4', '*', '1', '*', '*', '1', '3', '*', '*', '1', '1', '*', '*', '*', '*', '*', '*'),
(64, 88, 'M', '*', '*', '*', '1', '*', '*', '*', '4', '*', '*', '1', '1', '1', '2', '*', '*', '1', '*', '*'),
(65, 200, 'H', '*', '1', '2', '1', '1', '*', '2', '3', '1', '1', '1', '*', '1', '*', '*', '1', '*', '*', '*'),
(66, 200, 'M', '*', '3', '4', '1', '2', '1', '2', '1', '1', '2', '2', '*', '1', '*', '*', '2', '*', '*', '*'),
(67, 192, 'H', '5', '9', '10', '4', '5', '8', '8', '5', '5', '4', '5', '3', '4', '3', '*', '7', '1', '3', '*'),
(68, 192, 'M', '7', '7', '5', '3', '2', '13', '6', '4', '6', '3', '4', '3', '5', '7', '1', '2', '4', '1', '*'),
(69, 212, 'H', '10', '6', '5', '4', '8', '6', '10', '10', '4', '4', '3', '4', '6', '1', '*', '1', '1', '*', '*'),
(70, 212, 'M', '5', '11', '7', '4', '7', '15', '4', '8', '3', '6', '10', '4', '2', '2', '1', '*', '*', '1', '*'),
(71, 43, 'H', '22', '29', '28', '21', '29', '19', '25', '17', '26', '26', '9', '15', '16', '12', '8', '14', '5', '3', '*'),
(72, 43, 'M', '23', '26', '33', '27', '28', '23', '38', '27', '27', '24', '19', '15', '15', '19', '10', '9', '11', '4', '*'),
(73, 207, 'H', '13', '26', '23', '28', '25', '17', '21', '12', '16', '16', '17', '17', '9', '1', '1', '7', '1', '2', '*'),
(74, 207, 'M', '18', '30', '20', '27', '28', '22', '25', '15', '18', '26', '14', '13', '7', '7', '3', '6', '5', '3', '*'),
(75, 75, 'H', '1', '*', '2', '1', '1', '1', '*', '1', '2', '1', '1', '1', '2', '*', '*', '*', '*', '*', '*'),
(76, 75, 'M', '*', '*', '*', '1', '2', '1', '1', '1', '2', '*', '*', '*', '1', '*', '*', '*', '*', '*', '*'),
(77, 25, 'H', '7', '5', '8', '10', '9', '9', '7', '1', '4', '3', '7', '3', '4', '1', '*', '2', '*', '*', '*'),
(78, 25, 'M', '5', '6', '3', '6', '11', '7', '2', '6', '6', '9', '7', '5', '2', '2', '2', '2', '1', '1', '*'),
(79, 17, 'H', '3', '*', '4', '6', '6', '5', '1', '2', '6', '3', '*', '3', '*', '1', '2', '1', '*', '1', '*'),
(80, 17, 'M', '3', '2', '3', '8', '7', '4', '3', '4', '2', '3', '2', '1', '*', '1', '*', '*', '2', '*', '*'),
(81, 54, 'H', '8', '5', '4', '9', '9', '9', '9', '14', '4', '6', '3', '4', '7', '2', '2', '1', '1', '1', '*'),
(82, 54, 'M', '5', '6', '6', '9', '15', '8', '12', '10', '8', '11', '7', '5', '3', '2', '5', '3', '*', '*', '*'),
(83, 174, 'H', '34', '51', '47', '69', '67', '59', '56', '51', '44', '44', '50', '34', '23', '26', '15', '10', '4', '7', '*'),
(84, 174, 'M', '44', '36', '55', '44', '65', '74', '54', '46', '62', '62', '54', '39', '38', '30', '22', '8', '8', '11', '*'),
(85, 186, 'H', '6', '7', '6', '18', '15', '21', '14', '16', '11', '17', '18', '10', '12', '4', '3', '4', '1', '4', '*'),
(86, 186, 'M', '15', '9', '13', '20', '25', '19', '6', '16', '12', '16', '16', '11', '5', '4', '4', '4', '3', '5', '*'),
(87, 204, 'H', '*', '*', '1', '1', '*', '1', '*', '*', '2', '2', '1', '1', '*', '*', '1', '1', '*', '*', '*'),
(88, 204, 'M', '2', '*', '*', '*', '1', '1', '*', '1', '1', '2', '*', '1', '*', '*', '1', '*', '*', '*', '*'),
(89, 39, 'H', '1', '2', '3', '6', '5', '3', '6', '1', '4', '6', '4', '1', '3', '*', '2', '1', '*', '*', '*'),
(90, 39, 'M', '2', '2', '2', '5', '3', '3', '1', '4', '2', '3', '5', '4', '2', '3', '*', '*', '*', '1', '*'),
(91, 83, 'H', '5', '7', '12', '7', '10', '6', '3', '2', '7', '11', '8', '4', '7', '3', '2', '*', '1', '2', '*'),
(92, 83, 'M', '7', '7', '10', '7', '8', '7', '10', '5', '3', '8', '8', '3', '4', '*', '1', '3', '*', '*', '*'),
(93, 172, 'H', '18', '20', '10', '13', '6', '16', '8', '18', '9', '9', '8', '11', '9', '6', '3', '2', '3', '4', '*'),
(94, 172, 'M', '16', '15', '32', '14', '15', '16', '17', '19', '17', '10', '8', '9', '5', '8', '7', '4', '4', '7', '*'),
(95, 50, 'H', '70', '84', '83', '79', '90', '60', '47', '45', '39', '38', '25', '26', '18', '10', '7', '15', '4', '3', '*'),
(96, 50, 'M', '66', '82', '93', '90', '78', '70', '46', '58', '52', '31', '24', '28', '17', '20', '14', '10', '7', '5', '*'),
(97, 177, 'H', '36', '49', '33', '33', '25', '33', '21', '15', '21', '16', '24', '11', '12', '4', '6', '4', '1', '1', '*'),
(98, 177, 'M', '31', '44', '27', '41', '31', '43', '28', '25', '24', '25', '23', '16', '9', '7', '7', '8', '4', '4', '*'),
(99, 120, 'H', '1', '5', '*', '3', '3', '1', '2', '2', '3', '3', '1', '1', '*', '1', '*', '*', '*', '*', '*'),
(100, 120, 'M', '2', '1', '3', '1', '1', '4', '3', '2', '2', '1', '2', '2', '1', '*', '1', '*', '*', '*', '*'),
(101, 129, 'H', '7', '6', '2', '9', '10', '6', '8', '7', '1', '8', '5', '*', '2', '*', '4', '2', '1', '1', '*'),
(102, 129, 'M', '6', '1', '5', '3', '4', '7', '4', '7', '6', '4', '3', '2', '3', '4', '1', '1', '1', '*', '*'),
(103, 124, 'H', '4', '3', '3', '3', '2', '2', '1', '1', '3', '2', '1', '3', '*', '*', '*', '*', '*', '*', '*'),
(104, 124, 'M', '2', '1', '2', '2', '1', '5', '2', '*', '5', '4', '3', '2', '*', '*', '*', '*', '1', '*', '*'),
(105, 35, 'H', '3', '1', '2', '3', '6', '3', '6', '2', '1', '2', '2', '2', '1', '2', '2', '*', '*', '1', '*'),
(106, 35, 'M', '2', '3', '1', '6', '4', '8', '8', '6', '4', '6', '*', '3', '2', '1', '*', '1', '*', '*', '*'),
(107, 13, 'H', '8', '11', '11', '16', '6', '8', '10', '16', '12', '8', '9', '8', '4', '2', '2', '2', '1', '1', '*'),
(108, 13, 'M', '8', '15', '9', '5', '11', '6', '12', '10', '11', '11', '5', '7', '5', '6', '3', '1', '3', '2', '*'),
(109, 156, 'H', '147', '175', '194', '232', '240', '189', '189', '184', '189', '149', '128', '105', '78', '45', '26', '25', '7', '13', '*'),
(110, 156, 'M', '158', '177', '162', '193', '230', '230', '193', '208', '184', '174', '147', '112', '91', '75', '35', '34', '23', '28', '*'),
(111, 214, 'H', '41', '35', '46', '50', '51', '32', '43', '42', '34', '21', '16', '21', '15', '13', '7', '3', '5', '3', '*'),
(112, 214, 'M', '40', '39', '47', '51', '47', '44', '39', '43', '50', '21', '23', '25', '16', '16', '10', '5', '9', '3', '*'),
(113, 149, 'H', '14', '7', '7', '14', '12', '16', '5', '9', '9', '7', '10', '6', '*', '*', '3', '1', '1', '*', '*'),
(114, 149, 'M', '2', '7', '6', '12', '17', '7', '6', '10', '13', '13', '3', '4', '2', '7', '*', '2', '3', '1', '*'),
(115, 61, 'H', '12', '9', '9', '3', '11', '8', '6', '2', '2', '*', '*', '4', '1', '2', '*', '1', '*', '*', '*'),
(116, 61, 'M', '8', '8', '7', '5', '11', '6', '10', '1', '1', '1', '1', '7', '*', '2', '*', '1', '1', '*', '*'),
(117, 217, 'H', '31', '39', '41', '40', '31', '20', '24', '18', '17', '15', '11', '14', '8', '11', '9', '6', '4', '*', '*'),
(118, 217, 'M', '37', '38', '34', '23', '45', '25', '21', '20', '16', '23', '7', '12', '11', '9', '4', '10', '5', '4', '*'),
(119, 195, 'H', '29', '23', '25', '20', '22', '20', '13', '14', '8', '9', '11', '6', '4', '6', '1', '1', '3', '3', '*'),
(120, 195, 'M', '25', '17', '14', '25', '35', '21', '11', '10', '9', '13', '12', '7', '7', '5', '3', '7', '1', '7', '*'),
(121, 36, 'H', '*', '*', '*', '*', '2', '*', '*', '2', '1', '2', '1', '*', '1', '*', '*', '*', '*', '*', '*'),
(122, 36, 'M', '*', '*', '*', '2', '2', '2', '3', '*', '2', '*', '1', '1', '*', '*', '1', '*', '*', '1', '*'),
(123, 145, 'H', '1', '3', '2', '1', '4', '1', '1', '2', '1', '1', '1', '*', '2', '1', '1', '*', '*', '*', '*'),
(124, 145, 'M', '1', '1', '3', '2', '3', '1', '5', '1', '3', '1', '1', '2', '1', '2', '*', '1', '*', '*', '*'),
(125, 10, 'H', '30', '34', '38', '43', '55', '30', '36', '27', '30', '19', '17', '15', '10', '7', '4', '5', '1', '2', '*'),
(126, 10, 'M', '34', '35', '35', '31', '50', '31', '38', '33', '20', '22', '24', '13', '13', '12', '5', '2', '*', '*', '*'),
(127, 159, 'H', '*', '1', '*', '1', '1', '*', '*', '*', '1', '*', '*', '*', '1', '*', '*', '*', '*', '*', '*'),
(128, 159, 'M', '*', '*', '*', '*', '*', '*', '*', '1', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*'),
(129, 127, 'H', '10', '14', '14', '18', '11', '14', '4', '7', '11', '4', '6', '10', '7', '2', '6', '3', '3', '3', '*'),
(130, 127, 'M', '9', '14', '6', '11', '6', '14', '8', '6', '9', '9', '9', '6', '13', '3', '2', '6', '2', '5', '*'),
(131, 196, 'H', '*', '*', '*', '1', '*', '*', '*', '*', '*', '1', '*', '*', '1', '*', '*', '*', '*', '*', '*'),
(132, 196, 'M', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '1', '*', '*', '*', '*', '*', '*', '*', '*'),
(133, 52, 'H', '*', '*', '*', '*', '*', '*', '*', '1', '*', '*', '*', '1', '*', '*', '*', '*', '*', '*', '*'),
(134, 52, 'M', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '1', '*', '*', '*'),
(135, 70, 'H', '1', '1', '*', '1', '*', '*', '*', '*', '1', '2', '1', '1', '2', '*', '1', '*', '*', '*', '*'),
(136, 70, 'M', '*', '*', '1', '*', '2', '*', '3', '2', '1', '2', '1', '2', '1', '*', '*', '*', '*', '*', '*'),
(137, 146, 'H', '*', '*', '*', '*', '*', '*', '1', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*'),
(138, 146, 'M', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*', '*'),
(139, 5, 'H', '5', '4', '2', '9', '11', '17', '2', '5', '5', '8', '5', '7', '8', '4', '4', '6', '1', '1', '*'),
(140, 5, 'M', '7', '7', '8', '12', '12', '13', '8', '8', '11', '6', '12', '12', '10', '6', '4', '3', '*', '*', '*'),
(141, 19, 'H', '43', '44', '42', '51', '52', '67', '49', '42', '34', '34', '40', '32', '32', '22', '14', '10', '3', '5', '*'),
(142, 19, 'M', '37', '49', '31', '51', '65', '58', '55', '52', '52', '41', '47', '34', '34', '30', '18', '8', '6', '2', '*'),
(143, 15, 'H', '137', '148', '169', '195', '163', '187', '150', '150', '144', '135', '73', '68', '54', '32', '28', '15', '3', '5', '*'),
(144, 15, 'M', '152', '152', '190', '193', '197', '140', '171', '150', '154', '113', '97', '64', '54', '35', '19', '9', '9', '6', '*'),
(145, 114, 'H', '1014', '1190', '1266', '1642', '2081', '1809', '1508', '1511', '1436', '1425', '1138', '926', '742', '591', '343', '200', '116', '103', '1'),
(146, 114, 'M', '1029', '1165', '1150', '1564', '2050', '1771', '1594', '1582', '1584', '1573', '1351', '1014', '851', '641', '437', '275', '222', '179', '*'),
(147, 119, 'H', '96', '85', '113', '129', '237', '179', '170', '138', '127', '147', '120', '104', '79', '32', '20', '19', '6', '7', '*'),
(148, 119, 'M', '104', '89', '90', '140', '199', '181', '179', '138', '144', '141', '143', '91', '61', '37', '38', '17', '11', '7', '*'),
(149, 163, 'H', '3', '7', '9', '7', '9', '4', '4', '9', '2', '7', '2', '2', '1', '*', '2', '*', '*', '*', '*'),
(150, 163, 'M', '5', '7', '6', '1', '7', '3', '8', '10', '3', '8', '2', '4', '4', '2', '*', '*', '*', '1', '*'),
(151, 1, 'H', '15', '6', '9', '12', '10', '16', '15', '12', '13', '6', '1', '6', '1', '3', '1', '*', '1', '*', '*'),
(152, 1, 'M', '15', '10', '8', '8', '14', '18', '11', '13', '9', '9', '5', '8', '12', '7', '6', '1', '*', '4', '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cultura_por_municipio`
--

CREATE TABLE `cultura_por_municipio` (
  `Id` int(11) NOT NULL,
  `Id_Mun` int(11) NOT NULL,
  `Tradiciones` text NOT NULL,
  `EIC` text NOT NULL COMMENT 'Espacios de intercambio cultural',
  `CC` text NOT NULL COMMENT 'Casas de la cultura',
  `Museos` text NOT NULL,
  `Bibliotecas` text NOT NULL,
  `Auditorios` text NOT NULL,
  `CD` text NOT NULL COMMENT 'Centros deportivos',
  `PPA` text NOT NULL COMMENT 'Proporción de Población afromexicana'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cultura_por_municipio`
--

INSERT INTO `cultura_por_municipio` (`Id`, `Id_Mun`, `Tradiciones`, `EIC`, `CC`, `Museos`, `Bibliotecas`, `Auditorios`, `CD`, `PPA`) VALUES
(1, 100, '1.- Fiesta de la Candelaria\n2.- Fiesta de la Santa Cruz\n3.- Fiesta Patronal de San Marcos', '3', '1.- Casa de la Cultura Nahuiopan - Plaza Principal s/n Centro CP 73140, Naupan, Puebla.        \n       2.- Casa de Cultura Nahue Otle - Villa Juárez 46 Centro CP 73140, Naupan, Puebla.', 'S/D', '1.- Biblioteca Pública Municipal de Amoxcalli - Gobierno Municipal', 'S/D', 'S/D', '18'),
(2, 213, '1.- Fiesta de San Manuel\n2.- Fiesta de la Sagrada Familia', '1', 'S/D', 'S/D', '1.- Luis Donaldo Colosio Murrieta - Av. Venustiano Carranza s/n CP 73242, Zihuateutla, Puebla.', 'S/D', 'S/D', '38'),
(3, 111, '1.- Feria de la Tinaja en Semana Santa\r\n2.- Feria Patronal a San Juan Bautista 24 de Junio', '1', 'S/D', 'S/D', '1.- Ignacio Manuel Altamirano - Calle 20 de Noviembre s/n CP 73020, Pantepec, Puebla.                 \n      2.-Raúl Valderrábano - Pl.Principal s/n CP 73029, Pantepec, Puebla.', 'S/D', 'S/D', '128'),
(4, 178, '1.- Fiesta de Santa Catalina', '2', '1.- Casa de la Cultura Tlacuilotepec - Palacio Municipal s/n Centro CP 73070, Tlacuilotepec, Puebla', 'S/D', '1.- Tlacuilotepec - Benito Juárez s/n CP 73070, Tlacuilotepec, Puebla.', 'S/D', 'S/D', '93'),
(5, 109, '1.- Fiesta del Señor Santiago, 25 julio\r\n2.- Fiesta de Noche Buena\r\n3.- Fiesta del Pueblo en San Pablito Pahuatlán', '3', 'S/D', 'S/D', '1.- Elvira Ángeles Zapata - Leandro Valle No. 1 (a un costado del Palacio Mpal.) CP 73100, Pahuatlán, Puebla.\n2.- Luis Saucedo Ramírez  - Calle 5 de Mayo s/n CP 73117, Pahuatlán, Puebla.\n3.- Octavio Paz - Calle 26 de Mayo No. 64, (PB, Int. de la Pdcia Auxiliar) CP 73100, Pahuatlán, Puebla.', 'S/D', 'S/D', '99'),
(6, 197, '1.- Aniversario Pueblo Mágico, xpo Feria Xicotepec (Semana Santa)\n2.- Carnaval Xicotepec\n3.- Día de muertos\n4.- Feria de la Primavera', '11', '1.- Casa de Cultura Xikotepekali - Tejería 115 Centro CP 73080, Xicotepec, Puebla.', '1.- Museo Casa Carranza - Plaza de la Constitución s/n Centro CP 73080 Xicotepec de Juárez, Xicotepec, Puebla.', '1.- Xicotepekali - Tejeria 115 Centro CP 73080, Xicotepec, Puebla.\n2.- José Martí - Avenida Adolfo López Mateos San Isidro CP 73080, Xicotepec, Puebla.\n3.- General Francisco Villa - Venustiano Carranza s/n San Pedro Itztla CP 73080, Xicotepec, Puebla.\n4.- Juan Rulfo - Av. Emiliano Zapata Esq. Morelos S/N CP 73080, Xicotepec, Puebla.\n5.- Jaime Nunó - Av. del Trabajo No. 100 (Esquina Emiliano Zapata) CP 73097, Xicotepec, Puebla.\n6.- Israel Gómez Díaz - Alatriste s/n, (Esq. Camelias) CP 73080, Xicotepec, Puebla.\n7.- Santa Rita - Constitución s/n CP 73096, Xicotepec, Puebla.\n8.- Benjamín Franklin - Hidalgo s/n, (altos de la presidencia) CP 73080, Xicotepec, Puebla.\n9.- Prof. Ignacio Monroy Torres - Carr. México -Tuxpan s/n km 127.5 CP 73086, Xicotepec, Puebla.', '1.- Auditorio de San Isidro - Cerrada 16 de Septiembre Colonia Los Perales 73080, Xicotepec, Puebla.', '', '357'),
(7, 184, 'S/D', '2', '1.- Casa de la Cultura Acala - Anexo a la Presidencia Municipal Centro CP 73280, Tlapacoya, Puebla.', 'S/D', '1.- Abundio Vargas - Omar Herrero s/n CP 73280, Tlapacoya, Puebla.', 'S/D', 'S/D', '10'),
(8, 49, '1.- Fiesta de la Virgen del Rosario', '1', 'S/D', 'S/D', '1.- Josefa Ortíz de Domínguez - Avendaño s/n CP 73320, Chiconcuautla, Puebla.', 'S/D', 'S/D', '235'),
(9, 183, 'S/D', '1', 'S/D', 'S/D', '1.- Lic. Vicente Fox Quezada - PB de la Pdcia Mpal. CP 73220, Tlaola, Puebla.', 'S/D', 'S/D', '62'),
(10, 89, '1.- Fiesta de San Andrés', '2', 'S/D', 'S/D', '1.- Ignacio Gómez Cipriano - Av. Principal s/n CP 73260, Jopala, Puebla.    \n2.- Niños Héroes - Principal s/n CP 73270, Jopala, Puebla.', 'S/D', 'S/D', '40'),
(11, 71, '1.- Feria de las flores\n2.- Fiesta del Señor del Santo Entierro', '11', '1.- Casa de la Cultura In Xochitl In Cuicatl - Mina 1 Centro Huauchinango, Puebla.', 'S/D', '1.- Hermanos Serdán - Calle 30 de Abril s/n Col. del Maestro CP 73160, Huauchinango, Puebla.\n2.- Aureliano Morales Valentín - Alberto Jiménez s/n CP 73160, Huauchinango, Puebla.\n3.- Gral. Lázaro Cárdenas - Calle 16 de Septiembre s/n CP 73160, Huauchinango, Puebla.\n4.- Prof. Sandalio Mejía Castelán - Mina No. 1 CP 73160, Huauchinango, Puebla.\n5.- Octavio Paz - Ignacio Zaragoza s/n CP 73160, Huauchinango, Puebla.\n6.- Juan de la Barrera - Nicolás Bravo s/n, (a un costado de la escuela) CP 73160, Huauchinango, Puebla.\n7.- Santuario de los Viveros - Av. Constitución No. 1 CP 73161, Huauchinango, Puebla.\n8.- Carmen Serdán Alatriste - Miguel Alemán s/n CP 73160, Huauchinango, Puebla.\n9.- Gral. Rafael Gravioto Pacheco - Francisco Oropeza No. 49 (ubicada en el Centro Escolar) CP 73160, Huauchinango, Puebla.\n10.- Jaime Sabines - Miguel Hidalgo s/n CP 73160, Huauchinango, Puebla.', 'S/D', 'S/D', '436'),
(12, 162, 'S/D', '1', 'S/D', 'S/D', '1.- Ignacio Galindo Calleja - Av. 13 de Junio Ote. s/n CP 73370, Tepango de Rodríguez, Puebla.', '1.- Auditorio Municipal - Calle Venustiano Carranza Sección Segunda 73370, Tepango de Rodríguez, Puebla.', 'S/D', '6'),
(13, 68, 'S/D', '1', 'S/D', 'S/D', '1.- Prof. Ambrosio Carmona Lecona - Pl. de La Constitución s/n CP 73390, Hermenegildo Galeana, Puebla.', 'S/D', 'S/D', '371'),
(14, 28, 'S/D', '2', '1.- Casa de la Cultura Vicente Fox Quesada - Plaza Principal s/n Centro CP 73120, Camocuautla, Puebla.', 'S/D', '1.- Lic. Carlos Salinas de Gortari - Principal s/n CP 73240, Camocuautla, Puebla.', 'S/D', 'S/D', '2'),
(15, 14, 'S/D', '2', '1.- Casa de la Cultura Mixtlán - Ex oficinas de Correos CP 75560, Amixtlán, Puebla.', 'S/D', '1.- Erasto Morales Santos - 16 de Septiembre s/n CP 73360, Amixtlán, Puebla.', 'S/D', 'S/D', '44'),
(16, 123, 'S/D', '1', 'S/D', 'S/D', '1.- Lic. Miguel de la Madrid Hurtado - Luis Donaldo Colosio s/n CP 73350, San Felipe Tepatlán, Puebla.', 'S/D', 'S/D', '36'),
(17, 30, 'S/D', '1', 'S/D', 'S/D', '1.- Biblioteca del Centro Cultural FOX - 16 de septiembre s/n Centro CP 73410, Coatepec, Puebla.', 'S/D', 'S/D', '0'),
(18, 167, '1.- Feria Patronal de Tepezintla\r\n2.- Jueves de corpus', '1', '1.- Casa de la Cultura Abraham Sosa Barragán - Palacio Municipal s/n Centro Ahuacatlán, Puebla.', 'S/D', '1.- Tepochcali - Benito Juárez s/n CP 73340, Tepetzintla, Puebla.', 'S/D', 'S/D', '215'),
(19, 6, 'S/D', '1', '1.- Casa de la Cultura Abraham Sosa Barragán - Ayuntamiento de Ahuacatlán, Palacio Municipal s/n, Centro Ahuacatlán, Puebla', 'S/D', '1.- Coronel José María Heraclio Sosa - Plaza Juárez No. 1, (PB del palacio municipal) CP 73330, Ahuacatlán, Puebla.', 'S/D', 'S/D', '1339'),
(20, 208, '1.- Feria de la Manzana\r\n2.- Fiesta del Señor de Jicolapa\r\n3.- Fiesta Patronal de San Miguel', '32', '1.- Centro Civico Cultural Maquixtla - Real Maquixtla S/N Centro S/N  CP 73310, Zacatlán, Puebla.', '1.- Museo Regional Comunitario Luciano Márquez Becerra - Josefa Ortiz de Domínguez 4 Centro CP 73310, Zacatlán, Puebla.\n2.- Museo del Vino La Primavera - Josefa Ortiz de Domínguez 11 Centro, Santa Julia CP 73310, Zacatlán, Puebla.\n3.- Museo del Reloj - Carr. Jicolapa km. 3.5 Col. Jicolapa CP 73310, Zacatlán, Puebla.\n4.- Museo de Relojería Alberto Olvera Hernández - Nigromante 3 Centro CP 73310, Zacatlán, Puebla.\n5.- Museo Zacatlán MUZA - Leandro Valle 12 Centro CP 73310, Zacatlán, Puebla.', '1.- Prof. Eduardo Arroyo Cruz - Principal No. 2, 1ª Secc. (PA ubicada en la Primaria Narciso Mendoza) CP 73310, Zacatlán, Puebla.\n2.- Prof. Baudelio Candanedo Castillo - Prolg. Chapultepec s/n, (Centro Escolar Pdte. Juan N. Méndez) CP 73310, Zacatlán, Puebla.\n3.- Sor Juana Inés de la Cruz - Av. Principal s/n, (Int. de la pdcia auxiliar) CP 73310, Zacatlán, Puebla.\n4.- Lic. Carlos Salinas de Gortari - Niños Héroes No. 1 int. 2 CP 73900, Zacatlán, Puebla.\n5.- Lic. Carlos Salinas de Gortari - Benito Pérez Galdos s/n, (atrás de la pdcia) CP 73310, Zacatlán, Puebla.\n6.- C. Silvestre Reyes Luna - Libertad s/n, (PA de la Pdcia Auxiliar) CP 73310, Zacatlán, Puebla.\n7.- Prof. J. Baudelio Candanedo Castillo - Av. Lic. Luis Cabrera No. 68 CP 73310, Zacatlán, Puebla.\n8.- Herlindo Herrera Mejorada - Av. Principal s/n CP 73310, Zacatlán, Puebla.\n9.- Prof. Fernando Pérez - Av. Principal s/n CP 73310, Zacatlán, Puebla.\n10.- Ignacio Zaragoza - Miguel Hidalgo No. 3 (a un costado de la Primaria Emiliano Zapata) CP 73310, Zacatlán, Puebla.\n11.- Prof. Fausto Félix Aguilar Quiroz - Benito Juárez No. 1 CP 73310, Zacatlán, Puebla.\n12.- Sor Juana Inés de la Cruz - Av. Principal s/n, (explanada deportiva, entre la escuela Melchor Ocampo y la Iglesia de la Santa Cruz) CP 73310, Zacatlán, Puebla.\n13.- Lic. Gustavo Díaz Ordaz - Roseville s/n, (Int. del Centro Escolar Pdte. Guadalupe Victoria) CP 73300, Zacatlán, Puebla.\n14.- Niña Esther López Flores - Insurgentes s/n, (Esq. 20 de Noviembre) CP 73310, Zacatlán, Puebla.\n15.- C. Ricardo Charolet Castro - José Dolores Pérez s/n, (junto a la cancha) CP 73310, Zacatlán, Puebla.\n16.- Octavio Paz - Pl. de la Constitución s/n CP 73501, Zacatlán, Puebla.\n17.- De Jilotzingo - Domicilio Conocido (Int. de la primaria Sor Juana Inés de la Cruz) CP 73310, Zacatlán, Puebla.\n18.- Benito Juárez - Reforma s/n, (PA de la Pdcia) CP 73317, Zacatlán, Puebla.\n19.- Silviana Trejo - Calle 20 de Noviembre No. 6 CP 73310, Zacatlán, Puebla.\n20.- Adolfo Cruz Cerón - José María Morelos s/n, PA (frente a la Iglesia de Santiago Apostol) CP 73310, Zacatlán, Puebla.\n21.- La Hoja - Hermenegildo Galeana No. 3 CP 73310, Zacatlán, Puebla.\n22.- De Tulimán - Plaza Principal (dentro de la primaria) CP 73310, Zacatlán, Puebla.\n23.- Prof. Gabriel Herrera González - Corregidora No. 4 CP 73310, Zacatlán, Puebla.\n24.- Joel Alarcón Castro - Carr. Federal Zacatlán- Tulancingo s/n, Col. Las Lajas, (junto al Juzgado de Paz) CP 73310, Zacatlán, Puebla.\n25.- Nicolás Bravo - Av. Principal s/n, (a un costado de la Primaria Nicolás Bravo) CP 73620, Zacatlán, Puebla.\n26.- Lic. Luis Cabrera Lobato - Av. Daniel Cabrera y Constituciòn No. 21 CP 73310, Zacatlán, Puebla.', 'S/D', 'S/D', '773'),
(21, 84, 'S/D', '1', 'S/D', 'S/D', '1.- Juan Miguel Bautista Saínos - Av. Reforma s/n CP 73480, Ixtepec, Puebla.', '1.- Auditorio Municipal de Ixtepec - Avenida Reforma Localidad Ixtepec 73480, Ixtepec, Puebla.', 'S/D', '394'),
(22, 77, 'S/D', '1', 'S/D', 'S/D', '1.- Luis Cabrera - Pl. de la Constitución No. 1, (PA Pdcia. Mpal.) CP 73430, Hueytlalpan, Puebla.', 'S/D', 'S/D', '27'),
(23, 80, 'S/D', '1', 'S/D', 'S/D', '1.- Lázaro Cárdenas - Cuauhtémoc s/n CP 73490, Atlequizayan, Puebla.', 'S/D', 'S/D', '12'),
(24, 72, 'S/D', '3', 'S/D', 'S/D', '1.- Josefa Ortiz de Domínguez - Maximino Ávila Camacho s/n CP 75220, Huehuetla, Puebla.    \n 2.- Pedro González Barrios - Deportes s/n CP 74120, Huehuetla, Puebla.   \n 3.- Luis Donaldo Colosio Murrieta - Benito Juárez s/n, (anexo a la presidencia) CP 73410, Huehuetla, Puebla.', 'S/D', 'S/D', '158'),
(25, 107, '1.- Feria patronal a San Jóse', '2', 'S/D', 'S/D', '1.- Emiliano Zapata - Benito Juárez s/n Centro CP 73400, Olintla, Puebla. \n 2.- Dimas López - Porfirio Díaz s/n CP 73400, Olintla, Puebla.', '1.- Auditorio Municipal de Olintla - Calle Benito Juárez Colonia Centro 73400, Olinta, Puebla.    \n 2.- Auditorio Municipal Vicente Guerrero - Localidad Vicente Guerrero 73406, Olintla, Puebla. ', 'S/D', '157'),
(26, 29, 'S/D', '1', 'S/D', 'S/D', '1.- Prof. Alemberth Dinorín Cabrera - Constitución e Hidalgo s/n CP 73520, Caxhuacan, Puebla.', 'S/D', 'S/D', '29'),
(27, 215, 'S/D', 'S/D', 'S/D', 'S/D', '1.- Prof. Raúl Isidro Burgos - Pl.de la Idependencia No. 1 CP 73380, Zongozotla, Puebla.', '1.- Auditorio Municipal Xchik Kgamananin - Calle Plaza de la Independencia Localidad Zongozotla 73380, Zongozotla, Puebla.', 'S/D', '103'),
(28, 210, '1.- Fiesta Patronal a la Virgen de la Natividad\r\n2.- Carnaval de la Santa Cruz', '3', 'S/D', 'S/D', '1.- Celia Mazano Vda. de Rodríguez - Allende s/n CP 73440, Zapotitlán de Méndez, Puebla. \n 2.- Prof. Miguel Antonio Martín Hernández - Principal e Idependencia, (PB de la Pdcia.) CP 73440, Zapotitlán de Méndez, Puebla. \n 3.- Valentín Muñoz Soto - Av. 5 de Mayo s/n, (esq. Gonzalo Bautista) CP 73440, Zapotitlán de Méndez, Puebla.', 'S/D', 'S/D', '156'),
(29, 202, 'S/D', '2', 'S/D', 'S/D', '1.- Casa de la Cultura - Domicilio Conocido CP 73430, Xochitlán de Vicente Suárez, Puebla. \n 2.- Prof. José María R. Gómez - Av. Reforma s/n CP 73460, Xochitlán de Vicente Suárez, Puebla.', 'S/D', 'S/D', '354'),
(30, 78, 'S/D', '2', 'S/D', 'S/D', '1.- Prof. Idulio Cortés López - Benito Juárez s/n CP 73450, Huitzilan de Serdán, Puebla. \n 2.- Profa. Clara Córdova Moran - Av. Refugio Carmona s/n CP 73450, Huitzilan de Serdán, Puebla.', 'S/D', 'S/D', '3593'),
(31, 216, '1.- Fiesta de Corpus Christi', '1', '1.- Casa de la Cultura Masewal Tanex - Revolución s/n Centro CP 73540, Zoquiapan, Puebla.', 'S/D', 'S/D', '1.- Auditorio Municipal - Calle Primero de Mayo Colonia Centro 73540, Zoquiapan, Puebla.', 'S/D', '13'),
(32, 88, '1.- Fiesta de la Aparición de la Virgen de Guadalupe en Jonotla', '4', '1.- Casa de la Cultura Jonotla - Av. Independencia s/n Centro  CP 73530, Jonotla, Puebla.', 'S/D', '1.- Ruperto Ventura - Cuauhtémoc s/n CP 73530, Jonotla, Puebla. \n 2.- Ecatl - Independencia s/n CP 73530, Jonotla, Puebla. \n 3.- Teresa Arriaga Mora - Pl.de La Constitución No. 1 CP 73530, Jonotla, Puebla.', 'S/D', 'S/D', '25'),
(33, 200, '1.- Feria anual en honor a San Francisco de Asis\r\n2.- Fiesta Patronal en honor a San Pedro', '3', 'S/D', '1.- Museo Comunitario Gral. Juan Francisco Lucas - Calle 5 de Mayo 1 Centro CP 73660 Cinco de Mayo, Xochiapulco, Puebla.', '1.- Juan Crisóstomo Bonilla - Melchor Ocampo No. 1 (dentro de la Escuela Secundaria Técnica 23) CP 73665, Xochiapulco, Puebla. \n 2.- Mtro. Raúl Isidro Burgos - Av. 5 de Mayo No. 5 CP 73660, Xochiapulco, Puebla.', 'S/D', 'S/D', '37'),
(34, 192, 'S/D', 'S/D', 'S/D', 'S/D', '1.- Juan N. Méndez - Av. Nicolás Bravo s/n CP 73510, Tuzamapan de Galeana, Puebla. \n 2.- Octavio Paz - Independencia No. 1, (PA del Palacio Mpal.) CP 73530, Tuzamapan de Galeana, Puebla. \n 3.- Rafael López Solís - Cuauhtémoc s/n CP 73517, Tuzamapan de Galeana, Puebla.', '1.- Auditorio Municipal - Avenida José María Morelos Colonia Centro 73510, Tuzamapan de Galeana, Puebla.', 'S/D', '172'),
(35, 212, 'S/D', '3', '1.- Casa de Cultura Pinahuizapan - Francisco I. Madero 1 Centro CP 73740, Zautla, Puebla.', 'S/D', '1.- Lorenzo Servitje - Rancho Capolihtic s/n CP 73740, Zautla, Puebla. \n 2.- Profa. Delfina Aguilar Contreras - Francisco I. Madero No. 1, (int. del Palacio Mpal.) CP 73740, Zautla, Puebla.', 'S/D', 'S/D', '173'),
(36, 43, '1.- Voladores de Cuetzalan Caballeros Águila', '5', '1.- Casa de la Cultura de Cuetzalan del Progreso - Miguel Alvarado 18 Centro CP 72560, Cuetzalan del Progreso, Puebla.', '1.- Museo Regional de Cuetzalan Emma Flores de Morante - Av. Miguel Alvarado 18 Centro CP 73560 Ciudad de Cuetzalan, Cuetzalan del Progreso, Puebla.', '1.- Lic. Adolfo López Mateos - Pl. Celestino Gazca s/n CP 73560, Cuetzalan del Progreso, Puebla. \n 2.- Prof. Enrique Cordero y Torres - Miguel Alvarado No. 18 CP 73560, Cuetzalan del Progreso, Puebla. \n 3.- Yankuiktanemililis - Adolfo López Mateos s/n CP 73566, Cuetzalan del Progreso, Puebla.', '1.- Auditorio Municipal de Cuetzalan - Calle Carmen Serdan Colonia Centro 73560, Cuetzalan del Progreso, Puebla.', 'S/D', '702'),
(37, 207, '1.- Feria Cívica, Social y Cultural de Zacapoaxtla', '32', '1.- Casa de la Cultura Zacapoaxtla - Plaza de la Constitucion s/n Centro CP 73680, Zacapoaxtla, Puebla. \n 2.- Complejo de la Juventud - Texpilco s/n Texpilco CP 73680, Zacapoaxtla, Puebla.', '1.- Museo Comunitario Xolalpancalli (casa del pueblo) - Plaza de la Constitución s/n Centro Histórico CP 73680 Zacapoaxtla, Zacapoaxtla, Puebla.', '1.- Profa. Adriana Hernández Reyes - Calle 2 de Abril s/n CP 73680, Zacapoaxtla, Puebla.\n2.- Sor Juana Inés de la Cruz - Av. Principal s/n, (al lado derecho Hotel Pozo Viejo y al izquierdo El Panteón) CP 73680, Zacapoaxtla, Puebla.\n3.- Juan Contreras - Pl. Principal s/n, (PB del Juzgado de Paz) CP 73680, Zacapoaxtla, Puebla.\n4.- Lic. Benito Juárez - Pedro Molina Corona s/n, (a un costado del Kínder) CP 73680, Zacapoaxtla, Puebla.\n5.- Mariano Piña Olaya - Carretera a Xochiapulco s/n, (junto a la Casa de Salud) CP 73680, Zacapoaxtla, Puebla.\n6.- Kalamataixtemolis - Av. Principal s/n, (frente al Juzgado de Paz) CP 73680, Zacapoaxtla, Puebla.\n7.- Emilia Lobato Pérez - Ignacio Zaragoza No. 1 CP 73680, Zacapoaxtla, Puebla.\n8.- Ignacio Zaragoza - Juan Francisco Lucas s/n CP 73680, Zacapoaxtla, Puebla.\n9.- Benito Juárez - De las Rosas s/n CP 73680, Zacapoaxtla, Puebla.\n10.- Emmanuel Toral Soto - Carretera a Xochiapulco s/n, (a un costado de la iglesia) CP 73680, Zacapoaxtla, Puebla.\n11.- Sor Juana Inés de la Cruz - Calle 6 de Enero s/n, (junto a la clínica) CP 73680, Zacapoaxtla, Puebla.\n12.- Benito Juárez García - Av. Principal s/n, (PA del Juzgado de Paz) CP 73682, Zacapoaxtla, Puebla.\n13.- Esteban Zacarias - Calle Benito Juárez s/n Sección 1ª ,(PB del Palacio) CP 73690, Zacapoaxtla, Puebla.\n14.- Carmen Serdán - 1ª Sección de Nexticapan, (frente al Panteón ) CP 73680, Zacapoaxtla, Puebla.\n15.- Amoxcalli - Calle 5 de Mayo s/n CP 73680, Zacapoaxtla, Puebla.\n16.- José María Morelos - Calle 18 de Enero de 1936, (PA de la Pdcia.) CP 73680, Zacapoaxtla, Puebla.\n17.- Rafael Molina Betancourt - Calz. 25 de Abril No. 46 CP 73680, Zacapoaxtla, Puebla.\n18.- Cuauhtémoc - Av. Principal s/n CP 73680, Zacapoaxtla, Puebla.\n19.- Miguel de Cervantes Saavedra - Rcho los Manzanos s/n (dentro del Instituto del C.B.T.A. 168) CP 73680, Zacapoaxtla, Puebla.\n20.- Abraham Sosa - Emiliano Zapata No. 5 CP 73680, Zacapoaxtla, Puebla.\n21.- José María Peralta - Constitución s/n CP 73680, Zacapoaxtla, Puebla.\n22.- Miguel Hidalgo - Emiliano Zapata s/n CP 73680, Zacapoaxtla, Puebla.\n23.- Prof. Manuel Tirado Guerrero - Calle 12 de Octubre s/n CP 73680, Zacapoaxtla, Puebla.\n24.- Aarón Vasquez Castañeda - Arboledas s/n CP 73680, Zacapoaxtla, Puebla.\n25.- Carlos Vázquez - Emiliano Zapata s/n CP 73680, Zacapoaxtla, Puebla.\n26.- Sargento Mariano Xilot - Plaza de La Constitución s/n CP 73680, Zacapoaxtla, Puebla.\n27.- Manuel Bartlett Díaz - Calle 6 de Abril s/n, (PA de la pdcia ) CP 73680, Zacapoaxtla, Puebla.\n28.- Lic. Luis Cabrera Lobato - Pl. de la Constitución s/n, (PA, dentro del palacio municipal) CP 73680, Zacapoaxtla, Puebla.\n29.- Porfirio Díaz - Av. Principal s/n, (PA del Juzgado de Paz) CP 73680, Zacapoaxtla, Puebla.', 'S/D', 'S/D', '539'),
(38, 75, 'S/D', '2', '1.- Casa de la Cultura José Martín Selvas - Ocampo s/n Centro CP 73920, Hueyapan, Puebla.', 'S/D', 'Lucrecia Ortega Valera - Av. Hidalgo s/n CP 73920, Hueyapan, Puebla.', 'S/D', 'S/D', '23'),
(39, 25, 'S/D', '1', '1.- Casa de la Cultura de Aayootoochih - Juárez 2 Centro  CP 73570, Ayotoxco de Guerrero, Puebla.', 'S/D', '1.- Guillermo Luna Segura - Gustavo Díaz Ordaz s/n CP 73570, Ayotoxco de Guerrero, Puebla. \n 2.- Ignacio Manuel Altamirano - Pl. Feliciano de la Torre No. 3 CP 73570, Ayotoxco de Guerrero, Puebla.', 'S/D', 'S/D', '163'),
(40, 17, 'S/D', '1', 'S/D', 'S/D', '1.- Lic. Manuel Bartlett Díaz - Calle 2 Sur y Calle 5 Oriente No. 19 CP 73940, Atempan, Puebla.', 'S/D', 'S/D', '89'),
(41, 54, 'S/D', '4', '1.- Casa de la Cultura Xochipatli - Hidalgo 411 Centro CP 73950, Chignautla, Puebla.', 'S/D', '1.- Ángeles Mastretta - Los Ciruelos s/n CP 73950, Chignautla, Puebla. \n 2.- Carlos Monsiváis - El Convento s/n CP 73950, Chignautla, Puebla. \n 3.- Lic. Vicente Lombardo Toledano - Juárez s/n CP 73950, Chignautla, Puebla.', 'S/D', 'S/D', '213'),
(42, 174, 'S/D', '9', '1.- Centro Cultural Ferrocarrilero - Av. Hidalgo s/n esq. Allende Centro  CP 73800, Teziutlán, Puebla.', 'S/D', '1.- Dra. María del Carmen Millán - Rafael Ávila Camacho No. 7, 3er. Piso, Col. Centro, (antigua Casa de Cultura y a un costado del parque El Carmen) CP 73800, Teziutlán, Puebla. \n 2.- Dra. Ana María Magaloni - Av. 7 de Octubre s/n CP 73967, Teziutlán, Puebla. \n 3.- Gral. Guadalupe Victoria - Pl. de la Constitución s/n CP 73960, Teziutlán, Puebla. \n 4.- Plan de Ayutla - Av. Hidalgo No. 402 (ubicada en el Centro Escolar Manuel Ávila) CP 73800, Teziutlán, Puebla. \n 5.- Roberto Castro Aparicio - Alfonso Herrera No. 2 CP 73800, Teziutlán, Puebla. \n 6.- Dra. Ana María Magaloni de Bustamante - Carr. Libre 119 Chignahuapan- Tlaxco km 7+500, (junto a la clínica) CP 73300, Teziutlán, Puebla. \n 7.- General Juan Francisco Lucas - 5 de Mayo s/n, Secc. 1 CP 73967, Teziutlán, Puebla. \n 8.- Luis Audirac Gálvez - Manuel Ávila Camacho s/n CP 73820, Teziutlán, Puebla.', 'S/D', 'S/D', '1443'),
(43, 186, '1.- Concurso de ofrendas de dia de muertos', '7', '1.- Casa de la Cultura Dr. Ernesto de la Torre Villar - Av. Revolución 19 Centro CP 73900, Tlatlauquitepec, Puebla.', 'S/D', '1.- Dr. Ernesto de la Torre Villar - Revolución No. 19 (Casa de La Cultura) CP 73900, Tlatlauquitepec, Puebla. \n 2.- Profa. Melita Villar Polanco - Av. Revolución No. 37 CP 73900, Tlatlauquitepec, Puebla. \n 3.- José de Betancourt - Reforma No. 702 CP 73900, Tlatlauquitepec, Puebla.  \n 4.- Manuel Bartlett Díaz - Benito Juárez s/n CP 73900, Tlatlauquitepec, Puebla. \n 5.- Pbro. Gustavo García Martínez - Ángeles Peralta s/n CP 73900, Tlatlauquitepec, Puebla. \n 6.- Celestino Hernández Ordoñez - Av. Ángela Vázquez López s/n CP 73900, Tlatlauquitepec, Puebla.', '1.- Auditorio de Contla - Avenida Dolores Betancourt Localidad Contla 73900, Tlatlauquitepec, Puebla.', 'S/D', '93'),
(44, 204, 'S/D', '1', 'S/D', 'S/D', '1.- Fuente Inagotable del Saber - Av. Hidalgo No.1 ,(PB del Palacio Mpal.) CP 73910, Yaonáhuac, Puebla.', 'S/D', 'S/D', '21'),
(45, 39, 'S/D', '5', '1.- Casa de la Cultura Eduardo Arroyo - Plaza de la Constitución s/n Centro Cuautempan, Puebla.', 'S/D', '1.- Miguel de la Madrid Hurtado - Pl. de La Constitución s/n CP 73600, Cuautempan, Puebla. \n 2.- José María Morelos y Pavón - Av. Principal s/n, (edificio anexo a la Pdcia) CP 73600, Cuautempan, Puebla. \n 3.- Lic. Carlos Salinas de Gortari - Av. Principal s/n, (anexo a la Pdcia Auxiliar) CP 73600, Cuautempan, Puebla. \n 4.- Prof. José María Bonilla - Av. Principal s/n CP 73610, Cuautempan, Puebla.', '1.- Auditorio Municipal Cuautempan - Calle Miguel Hidalgo Pueblo Cuautempan 73600, Cuautempan, Puebla.', 'S/D', '90'),
(46, 83, 'S/D', '10', '1.- Casa de la Cultura Ixtacamaxtitlán - Reforma s/n Centro CP 73720, Ixtacamaxtitlán, Puebla.', '1.- Museo Comunitario Ixtacamaxtitlán (cerrado temporalmente) - Av. Reforma s/n Centro CP 73720 Ixtacamaxtitlán, Ixtacamaxtitlán, Puebla.', '1.- Emiliano Zapata - Av. Reforma No. 20 CP 73720, Ixtacamaxtitlán, Puebla.\n 2.- Francisco Villa - Carr. Atexquilla s/n (dentro de la escuela) CP 73720, Ixtacamaxtitlán, Puebla.\n 3.- Natividad Portilla Huerta - Atezquilla y Cuxac s/n CP 73720, Ixtacamaxtitlán, Puebla.\n 4.- Lic. Benito Juárez - Pl. Principal s/n CP 73720, Ixtacamaxtitlán, Puebla.\n 5.- Pilar Flores - Pl. Principal s/n CP 73720, Ixtacamaxtitlán, Puebla.\n 6.- Adolfo Briones - 16 de Septiembre s/n, (antigua Escuela Primaria) CP 73720, Ixtacamaxtitlán, Puebla.\n 7.- Lic. Laura Martínez Rossier - San Martín No. 9 CP 73739, Ixtacamaxtitlán, Puebla.\n 8.- Juan Crisóstomo Bonilla - Antonio Cabezas s/n CP 73720, Ixtacamaxtitlán, Puebla.', 'S/D', 'S/D', '188'),
(47, 172, 'S/D', '16', '1.- Casa Toral - Rafael A. Camacho 7 Col. El Carmen CP 73800, Tetela de Ocampo, Puebla. \n 2.- Casa de la Cultura General Juan N. Méndez - Plaza de la Constitución s/n Centro CP 73640, Tetela de Ocampo, Puebla.', '1.- Museo de los Tres Juanes (en proceso de remodelación) - Plaza de la Constitución 1 Centro CP 73640, Tetela de Ocampo, Puebla. \n 2.- Casa Museo Tlapalcalli - Calle del Pintor s/n Barrio Juárez CP 73640, Tetela de Ocampo, Puebla. \n 3.- Casa Museo Posada Olayo - Plaza de la Constitución 16 Centro CP 73640, Tetela de Ocampo, Puebla. ', '1.- Ma. Dolores Posadas Olaya Carr. Interserrana Zoyatitla-Zacapoaxtla s/n CP 73640, Tetela de Ocampo, Puebla. \n 2.- Sabino Rivera Santos Av. Principal s/n CP 73655, Tetela de Ocampo, Puebla. \n 3.- Reyes Cabrera Arriaga Principal s/n CP 73647, Tetela de Ocampo, Puebla.\n 4.- Prof. Guillermo Bonilla y Segura Calle 20 de Noviembre s/n CP 73640, Tetela de Ocampo, Puebla.\n 5.- Prof. Porfirio Olmos Vázquez Av. Principal s/n CP 73657, Tetela de Ocampo, Puebla.\n 6.- Prof. Ángel Molina Xalcuaco Principal s/n CP 73657, Tetela de Ocampo, Puebla.\n 7.- Prof. Juan Hernández Bezies Calle 16 de Septiembre No. 1 CP 73645, Tetela de Ocampo, Puebla.\n 8.- Gral. Gabriel Barrios Cabrera Carretera Tetela de Ocampo-Aquixtla s/n, (anexo a la Pdcia) CP 73654, Tetela de Ocampo, Puebla.\n 9.- Prof. Rubén Dinorin Bonilla Av. Independencia No. 3 CP 73650, Tetela de Ocampo, Puebla.\n 10.- Prof. Ismael García Rivera Pl. de La Constitución No. 14 CP 73659, Tetela de Ocampo, Puebla.\n 11.- Lic. Carlos Salinas de Gortari Av. Benito Juárez s/n CP 73655, Tetela de Ocampo, Puebla.', 'S/D', 'S/D', '396'),
(48, 50, 'S/D', '1', 'S/D', 'S/D', '1.- Lic. Benito Juárez García - Mixtla s/n CP 75090, Chichiquila, Puebla.', 'S/D', 'S/D', '1534'),
(49, 177, '1.- Fiesta de la Virgen de la Candelaria\r\n2.- Fiesta San Marcos\r\n3.- Virgen de Guadalupe', '7', '1.- Casa de la Cultura Yeyetepetl - Plaza Principal 1 Centro CP 75680, Tlacotepec de Benito Juárez, Puebla. \n 2.- Casa de Cultura de Tlacotepec de Benito Juárez - Av. Baja California s/n Centro CP 75680, Tlacotepec de Benito Juárez, Puebla.', '1.- Museo de Sitio de Teteles de Santo Nombre - Carr. Tlacotepec Zona Arqueológica km 13 s/n CP 75689 Tlacotepec de Benito Juárez, Tlacotepec de Benito Juárez, Puebla.', '1.- Lic. Benito Juárez García - Pl. Principal No. 1 CP 75680, Tlacotepec de Benito Juárez, Puebla.\n 2.- Jesús Barrios Luna - Carr. Federal Zacatlán- Tulancingo s/n Col. Maquixtla CP 73310, Tlacotepec de Benito Juárez, Puebla.\n 3.- Lic. Benito Juárez - Independencia No. 8 CP 75685, Tlacotepec de Benito Juárez, Puebla.\n 4.- Ángela Peralta - Av Reforma s/n CP 75689, Tlacotepec de Benito Juárez, Puebla.', 'S/D', 'S/D', '742'),
(50, 120, 'S/D', '1', 'S/D', 'S/D', '1.- Antonio Linares - Bustamantes s/n, (bajos de la Pdcia. Mpal.) CP 75860, San Antonio Cañada, Puebla.', 'S/D', 'S/D', '52'),
(51, 129, 'S/D', '2', 'S/D', 'S/D', '1.- Prof. Facundo Alfonso Herrera - Reforma No. 1 CP 75970, San José Miahuatlán, Puebla.\n 2.- Tanajtsintli - Gabino Barreda No. 2 CP 75970, San José Miahuatlán, Puebla.', 'S/D', 'S/D', '141'),
(52, 124, '1.- Fiesta de la Pasión del Señor', '3', '1.- Casa de la Cultura Itzamná Teool Temachtiani - Calle 16 de Septiembre Centro s/n Centro CP 75880, San Gabriel Chilac, Puebla.', '1.- Museo del Agua, Agua para Siempre - Km. 63 de la autopista Tehuacán Oaxaca, y Carr. San Gabriel Chilac - San Juan Atzingo km. 1 San Gabriel Chilac, Barranca Oxtoyo CP 75880 San Gabriel Chilac, San Gabriel Chilac, Puebla.', '1.- Carmen Serdán - Av. Rafael Ávila Camacho s/n CP 75880, San Gabriel Chilac, Puebla.', 'S/D', 'S/D', '58'),
(53, 35, 'S/D', '2', '1.- Casa de la Cultura Aurelia Izquierdo de Bravo - Juárez s/n Centro  CP 75985, Coxcatlán, Puebla.', 'S/D', '1.- Prof. Enrique de la Vega Valencia - Francisco I. Madero y Donato Izquierdo s/n CP 75985, Coxcatlán, Puebla.', 'S/D', 'S/D', '94'),
(54, 13, 'S/D', '1', 'S/D', 'S/D', '1.- Silverio Pérez - Mariano Matamoros y Calle 5 de Febrero s/n CP 75950, Altepexi, Puebla.', 'S/D', 'S/D', '265'),
(55, 156, 'S/D', '19', 'S/D', '1.- Museo de la Evolución Tehuacán - Carr. Federal Puebla-Tehuacan 1211 o Km. 114 San Lorenzo Teotipilco Col. Manantiales CP 75855, Tehuacán, Puebla.\n 2.- Museo Comunitario Histórico Cultural Paleontológico (HICUPA) - Juárez Nte. s/n Centro CP 75856, Tehuacán, Puebla. \n 3.- Museo de Sitio y Zona Arqueológica de Tehuacán El Viejo La Mesa (Temporalmente cerrado) - Camino a San Isidro s/n San Diego Chalma CP 75859, Tehuacán, Puebla.\n 4.- Museo del Valle de Tehuacán - Av. Reforma Nte. 200 Centro CP 75700, Tehuacán, Puebla.\n 5.- Museo Hidromineral de Peñafiel - Av. José García Crespo 2805 Col. San Nicolás Tetitzintla CP 75710, Tehuacán, Puebla.', '1.- Ignacio Allende - Priv. 5ª de Ponciano Arriaga CP 73310, Tehuacán, Puebla.\n 2.- Porfirio Fernández Ascensión - Emiliano Zapata No. 4 CP 75167, Tehuacán, Puebla.\n 3.- Diana Laura Riojas de Colosio - Independencia No.1 CP 75853, Tehuacán, Puebla.\n 4.- 5 Señores - José María Morelos s/n CP 75718, Tehuacán, Puebla.\n 5.- Prof. Joaquín Paredes Colin - Av. Reforma Norte y 4 Oriente, (Complejo Cultural El Carmen) CP 75700, Tehuacán, Puebla.\n 6.- Diego Rivera - Calle 3 Ote. No.1 y Av. Nacional CP 75859, Tehuacán, Puebla.\n 7.- Frida Kahlo - Calle 26 Sur No. 1924 Col. Puebla CP 75700, Tehuacán, Puebla.\n 8.- Gilberto Huerta Martínez - Av. Nacional No. 137 CP 75855, Tehuacán, Puebla.\n 9.- Luis Donaldo Colosio Murrieta - Pl. Principal s/n CP 75855, Tehuacán, Puebla.\n 10.- Gregorio Nicolás Aguilar - Libertad s/n CP 75857, Tehuacán, Puebla.\n 11.- Profa. Cenobia Hernández Cruz - Independencia s/n, Centro CP 75853, Tehuacán, Puebla.\n 12.- Ing. Alejo López Alvarado - Nacional s/n CP 75859, Tehuacán, Puebla.\n 13.- Alhuelican - Morelos Sur No. 2033 CP 75710, Tehuacán, Puebla.   \n 14.- Rodolfo de Jesús Hernández - Calle Uno Sur s/n CP 75859, Tehuacán, Puebla.', 'Auditorio Escuela Jorge L Tamayo - Calle 3 Poniente Fraccionamiento Arcadia 75760, Tehuacán, Puebla.', 'S/D', '4769'),
(56, 214, '1.- Fiesta Patronal San Sebastian Martir', '1', 'S/D', 'S/D', '1.- Sor Juana Inés de la Cruz - Av. Álvarez No. 203 CP 75960, Zinacatepec, Puebla.', 'S/D', 'S/D', '1006'),
(57, 149, '1.- Feria patronal\r\n2.- Feria del mole', '1', 'S/D', 'S/D', '1.- Netzahualcóyotl - Calle 7 Sur y Av. Nacional CP 74820, Santiago Miahuatlán, Puebla.', 'S/D', 'S/D', '236'),
(58, 61, 'S/D', '1', 'S/D', 'S/D', '1.- Margarito Hernández Hernández - Pl. Principal s/n CP 75920, Eloxochitlán, Puebla.', 'S/D', 'S/D', '140'),
(59, 217, '1.- Fiesta de la Virgen de la Asunción\r\n2.- Semana Santa\r\n3.- Fiesta de San Pedro', '2', '1.- Casa de la Cultura Ma Ti Mo Machtika - Av. Nacional s/n Centro CP 75930, Zoquitlán, Puebla.', 'S/D', '1.- Prof. Ignacio Rossainz Carrillo - Av. Nacional s/n CP 75930, Zoquitlán, Puebla.', 'S/D', 'S/D', '683'),
(60, 195, 'S/D', '1', 'S/D', 'S/D', '1.- Luis Donaldo Colosio Murrieta - Principal s/n CP 75900, Vicente Guerrero, Puebla.', 'S/D', 'S/D', '447'),
(61, 36, 'S/D', '1', 'S/D', 'S/D', '1.- Lic. Benito Juárez - Pl. Principal s/n, (PB de la Pdcia. Mpal.) CP 75990, Coyomeapan, Puebla.', 'S/D', 'S/D', '24'),
(62, 145, 'S/D', '1', 'S/D', 'S/D', '1.- Lic. Benito Juárez - Aquiles Serdán s/n CP 75940, San Sebastián Tlacotepec, Puebla.', 'S/D', 'S/D', '50'),
(63, 10, 'S/D', '3', '1.- Casa de la Cultura de Ajalpan - Palacio Municipal s/n Centro  CP 75910, Ajalpan, Puebla.', 'S/D', '1.- Prof. Antonio Ruanova Vargas - Av. Juárez s/n, (Esq. Hidalgo Norte) CP 75910, Ajalpan, Puebla. \n 2.- Chapoltzin - Miguel Hidalgo No. 1 CP 75810, Ajalpan, Puebla.', 'S/D', 'S/D', '801'),
(64, 159, '1.- Altepeilhuilt, Fiesta Patronal Santiago Apóstol\r\n2.- Fiesta de la virgen de maíz', '1', 'S/D', 'S/D', '1.- Benito Juárez - Puebla No. 2 CP 74600, Teopantlán, Puebla.', 'S/D', 'S/D', '6'),
(65, 127, '1.- El Carnaval de Xayacatlán', '3', '1.- Casa de la Cultura Nuu Davi - Plaza Principal s/n Centro CP 74950, San Jerónimo Xayacatlán, Puebla.', 'S/D', '1.- Ricardo Flores Magón - Telesforo García Pajares s/n CP 74950, San Jerónimo Xayacatlán, Puebla.\n 2.- Veeda Tuun Saximituni - Vicente Guerrero (Esq. Calle 16 de Septiembre) s/n CP 74955, San Jerónimo Xayacatlán, Puebla.', 'S/D', 'S/D', '285'),
(66, 196, 'S/D', '1', 'S/D', 'S/D', '1.- Prof. Marciano Z. Martínez - Nicolás Bravo s/n, (Esq. Marciano Z. Martínez) CP 74920, Xayacatlán de Bravo, Puebla.', 'S/D', 'S/D', '4'),
(67, 52, 'S/D', '2', '1.- Casa de la Cultura Ve`e Xin Kunduutna`anda - Av. Independencia s/n Centro CP 74670, Chigmecatitlán, Puebla.', 'S/D', '1.- Pbro. Luis Palacios - Av. Ayuntamiento No. 1,(anexo a la Pdcia. Mpal.) CP 74670, Chigmecatitlán, Puebla.', 'S/D', 'S/D', '3'),
(68, 70, '1.- Fiesta de los Santos Reyes Semana Santa', '3', '1.- Casa de la Cultura Kalixtlamaxtilis - 20 de Noviembre s/n Centro  Huatlatlauca, Puebla.', 'S/D', '1.- Ignacio Manuel Altamirano - Pl. Principal s/n CP 75380, Huatlatlauca, Puebla. \n 2.- Profa. Guadalupe Reyes - Cjón. Priv. s/n CP 75399, Huatlatlauca, Puebla.', 'S/D', 'S/D', '26'),
(69, 146, '1.- Fiesta de Santa Catarina', '1', 'S/D', 'S/D', 'Lic. Benito Juárez - Independencia No. 44 CP 74660, Santa Catarina Tlaltempan, Puebla.', 'S/D', 'S/D', '1'),
(70, 5, 'S/D', '2', '1.- Casa de la Cultura Acteopan - Plaza Constitución s/n Acteopan, Puebla.', 'S/D', '1.- Pascual Alamirra Vicuña - Calle 5 de Mayo No. 2 CP 74510, Acteopan, Puebla', '1.- Auditorio Municipal de Acteopan - Calle Colón Barrio San Miguel 74510, Acteopan, Puebla.', 'S/D', '243'),
(71, 19, 'S/D', '14', '1.- Casa de la Cultura Acapetlahuacan - Av. del Trabajo 1301 El Carmen CP 74280, Atlixco, Puebla.', '1.- Museo Industrial de Metepec - Av. de la Compañia s/n Col. Metepec CP 74360 Atlixco, Atlixco, Puebla', '1.- El León - Priv. Miguel Hidalgo s/n CP 74360, Atlixco, Puebla.\n 2.- Camilo Cornejal Ventura - Reforma No. 1 CP 74365, Atlixco, Puebla.\n 3.- Francisco Morales Vanden Eynden - Av. del Trabajo No. 130 El Carmen, (Casa de Cultura) CP 74200, Atlixco, Puebla.\n 4.- Metepec - Av. Leopoldo Gavito s/n, Av. Puebla (junto a la Escuela Primaria \"Belisario Domínguez\") CP 74360, Atlixco, Puebla.\n 5.- Presidente Juárez - Blvd. de Los Ferrocarriles s/n Bo. Smart, (antigua estación del tren) CP 74200, Atlixco, Puebla.\n 6.- Agustín de Iturbide - Ignacio Zaragoza s/n, (Esq. Agustín de Iturbide) CP 74369, Atlixco, Puebla.\n 7.- José Domínguez González - Pl. Principal s/n CP 74363, Atlixco, Puebla. \n 8.- Lic. Juan Gómez - Calle 2 Pte. No. 112 Centro CP 74340, Atlixco, Puebla.\n 9.- Carmen Serdàn - Porfirio Díaz s/n CP 74363, Atlixco, Puebla.\n 10.- Joaquín Carranza Flores - Francisco I. Madero No. 10 CP 74290, Atlixco, Puebla.\n 11.- Ignacio Chávez Rivera - Av. Matamoros No. 2 CP 74200, Atlixco, Puebla. \n 12.- Emiliano Zapata - Monterrey s/n CP 74200, Atlixco, Puebla.', '1.- Auditorio de San Pedro Benito Juárez - Calle La Concepción Localidad San Pedro Benito Juárez 74363, Atlixco, Puebla.', 'S/D', '1286'),
(72, 15, 'S/D', '2', 'S/D', 'S/D', '1.- Lic. Adolfo López Mateos - Ferrocarril s/n, (Esq. Francisco I. Madero) CP 72980, Amozoc, Puebla. 2.- Miguel Guevara Picazo - Ayuntamiento No.3 (frente a la Pl .Cívica) CP 72980, Amozoc, Puebla.', '1.- Auditorio Antorchista - Calle Central Barrio Tepalcayuca (El Carmen) 72980, Amozoc, Puebla.', 'S/D', '3761'),
(73, 114, 'S/D', '100', '1.- Casa de la Cultura de Puebla - Calle 5 Ote. 5 Centro Histórico CP 72000, Puebla, Puebla.\n2.- Casa de la Cultura Juridica de la Suprema Corte de Justicia de Puebla - Calz. de los Fuertes 24 Rincón del Bosque CP 72290, Puebla, Puebla.\n3.- Centro Cultural Consejo Puebla de Lectura - Calle 14 Norte 1802 Barrio del Alto CP 72000, Puebla, Puebla.\n4.- Casa de la Cultura Huitzilcalli - 3 Norte s/n Centro CP 75640, Puebla, Puebla.\n5.- Colegio de Arte Dramático - 10 Oriente 415 Centro Histórico CP 72000, Puebla, Puebla.\n6.- Casa de la Ópera Angelopolitana - Av. 2 Oriente 211 Centro Histórico CP 72000, Puebla, Puebla.\n7.- Casa Tripulantes - Av. 19 Poniente 3113 Col. Belisario Domínguez CP 72180, Puebla, Puebla.\n8.- Centro Cultural Cubano Mexicano José Martí A.C. - 11 Poniente 104 int. 4 Centro CP 72000, Puebla, Puebla.\n9.- Centro Cultural Nice Art Galerie - Av. Alejandra Col. Zavaleta Puebla, Puebla.\n10.- Centro Cultural Creciente - 11 Oriente 205 Centro CP 72000, Puebla, Puebla.\n11.- La Casa del Escritor de Puebla - 5 Oriente 201 Centro Histórico CP 72000, Puebla, Puebla.\n12.- Centro Cultural Musa Cultura Visual - Av. 2 Oriente 809 Centro CP 72000, Puebla, Puebla.\n13.- Centro Cultural ACD - 17 Sur 3015 Col. Volcanes CP 72410, Puebla, Puebla.\n14.- Centro Cultural D\' Los - Calle 5 Sur 506 Centro CP 72000, Puebla, Puebla.\n15.- Instituto Cultural Poblano - Av. Reforma 1305 Centro CP 72000, Puebla, Puebla.\n16.- Culturarte Producciones - 3 Sur 5733 El Cerrito CP 72440, Puebla, Puebla.\n17.- Bellas Artes y Protección Cultural UPAEP - 11 Pte. 1914 Santiago CP 72410, Puebla, Puebla.\n18.- Centro Cultural Crear AC - Av. 12 Oriente 201 Centro Histórico CP 72000, Puebla, Puebla.\n19.- Centro Cultural Consejo Puebla de Lectura - Calle 14 Norte 1802 Barrio del Alto CP 72000, Puebla, Puebla.\n20.- Duermevela - 8 Nte. 402 centro barrio del artista Centro CP 72821, Puebla, Puebla.\n21.- Academia Cultural y Artística de Puebla - 18 Sur 2106 Bella Vista CP 72500, Puebla, Puebla.\n22.- Alianza Francesa de Puebla, Plantel Huexotitla - C. 2 Sur 4920 San Baltazar Campeche CP 72550, Puebla, Puebla.', '1.- Museo Casa del Títere Marionetas Mexicanas - Blvd. Esteban de Antuñano 111 Luz Obrera CP 72110, Puebla, Puebla.\n2.- Museo Regional Casa del Alfeñique - Av. 4 Oriente 416 Centro Histórico CP 72000, Puebla, Puebla.\n3.- Galería Tesoros de la Catedral de Puebla - 5 Oriente 5 altos de la casa de cultura Centro Histórico CP 72000, Puebla, Puebla.\n4.- San Pedro Museo de Arte - 4 Nte. 203 Centro Histórico CP 72000, Puebla, Puebla.\n5.- Museo Interactivo de la Batalla del 5 de Mayo - Ejército de Oriente s/n y Unidad Cívica 5 de Mayo Col. Moctezuma CP 72260, Puebla, Puebla.\n6.- Museo Universitario Casa de los Muñecos - 2 Nte. 2 Centro Histórico CP 72000, Puebla, Puebla.\n7.- Museo Biblioteca Palafoxiana - 5 Oriente 5 Centro Histórico CP 72000, Puebla, Puebla.\n8.- Museo del Ejército y Fuerza Aérea Mexicanos - Calle 13 Sur núm. 103 Centro CP 72000, Puebla, Puebla.\n9.- Museo José Luis Bello y Zetina 5 de Mayo 409 Centro CP 72000, Puebla, Puebla.\n10.- Museo Regional de la Revolución Mexicana, Casa de los Hermanos Serdán - Av. 6 Ote. 206 esq. 2 Nte. Centro Histórico CP 72000, Puebla, Puebla.\n11.- Casa de la Música de Viena en Puebla (Cerrado temporalmente) - Av. Obreros Independientes s/n, esq. 15 Sur Ex-Fábrica La Constancia Mexicana Col. Luz Obrera CP 72110, Puebla, Puebla.\n12.- Patio de los Azulejos - 11 poniente 110 Centro Histórico CP 72000, Puebla, Puebla.\n13.- Museo Amparo - Av. 2 Sur 708 Centro Histórico CP 72000, Puebla, Puebla.\n14.- Museo de Arte Religioso Ex Convento de Santa Mónica - Av. 18 Poniente 103 Centro Histórico CP 72000, Puebla, Puebla.\n15.- Museo Casa del Deán - 16 de Septiembre núm. 507 Centro Histórico CP 72000, Puebla, Puebla,\n16.- Museo Fuerte de Guadalupe - Av. Ejércitos de Oriente s/n, Centro Cívico 5 de Mayo Col. Los Fuertes CP 72270, Puebla, Puebla.\n17.- Museo Histórico de la No Intervención Fuerte de Loreto - Centro Cívico 5 de Mayo, Av. Ejércitos de Oriente s/n Col. Los Fuertes CP 72720, Puebla, Puebla.\n18.- Museo Regional de Puebla - Centro Cívico 5 de mayo, Av. Ejércitos de Oriente s/n Col. Los Fuertes CP 72270, Puebla.\n19.- Museo de la Evolución Puebla - Calz. Ejército de Oriente s/n esq Cazadores de Morelia, Plaza Cívica 5 de Mayo Zona Los Fuertes CP 72260, Puebla, Puebla.\n20.- Museo Internacional del Barroco - Vía Atlixcáyotl 2501 Col. Reserva Territorial Atlixcáyotl CP 72830, Puebla, Puebla.\n21.- Museo de Arte Popular Ex-Convento de Santa Rosa - Calle 3 Nte. núm. 1210 Centro Histórico CP 72000, Puebla, Puebla.\n22.- Museo Comunitario de Ignacio Romero Vargas - Rafael Cañedo Benítez s/n (ex Presidencia) Col. Ignacio Romero Vargas CP 72120 , Puebla, Puebla.\n23.- Museo Casa del Mendrugo Calle 4 Sur 304 Centro Histórico CP 72000, Puebla, Puebla.\n24.- Museo Nacional de los Ferrocarriles Mexicanos - Calle 11 Nte. 1005 Centro Histórico CP 72000, Puebla, Puebla.\n25.- Museo de la Memoria Histórica Universitaria - Calle 3 Oriente 1008 Barrio de Analco CP 72500, Puebla, Puebla.\n26.- Museo del Tecnológico de Monterrey - Calle 4 Norte 5 entre Palafox y Mendoza Centro CP 72000, Puebla, Puebla.\n27.- Museo Interactivo de Casa Talavera Celia - Calle Fresno 97- A Arboledas de Guadalupe CP 72260, Puebla, Puebla.\n28.- Museo de la Música Mexicana Rafael Tovar y de Teresa - Av. Obreros Independientes s/n esq. 15 Sur Ex-Fábrica La Constancia Mexicana Luz Obrera CP 72110, Puebla, Puebla.\n29.- Museo Taller Erasto Cortés (MUTEC) - 7 Oriente 4 Centro Histórico CP 72000, Puebla, Puebla.\n30.- Museo José Luis Bello y González - Calle 3 Pte. 302 Centro Histórico CP 72000, Puebla, Puebla.\n31.- Museo Infantil de la Constancia Mexicana - Ex Fábrica La Constancia Mexicana, Av. Obreros Independientes s/n, esq. 15 Sur Col. Luz Obrera CP 72110, Puebla, Puebla.\n32.- Museo del Automóvil Puebla - Av. 3 Sur núm. 1501 Centro CP 72000, Puebla, Puebla.\n33.- Museo Urbano Interactivo (MUI) - Calle 4 Norte 5 Centro CP 72000, Puebla, Puebla.\n34.- Museo del Automóvil de Puebla - Col. La Constancia Mexicana Blvd. Esteban de Antuñano 33 CP 75200, Puebla, Puebla.\n35.- Museo San José María de Yermo y Parres - 12 Norte 2003 Barrio El Alto CP 72000, Puebla, Puebla.\n36.- Museo Viviente Puebla - Av. 5 Ote. núm. 402 Centro Histórico CP 72000, Puebla, Puebla.\n37.- Museo UPAEP - 11 Poniente 1914 Barrio de Santiago CP 72160, Puebla, Puebla.\n38.- Planetario de Puebla Germán Martínez Hidalgo - Calz. Ejército de Oriente s/n esq. Cazadores de Morelia Zona de los Fuertes, Unidad Cívica 5 de Mayo CP 72260, Puebla, Puebla.', '1.- Campo de la 25 Zona Militar - Calle 25 A, Zona Militar CP 72380, Puebla, Puebla.\n2.- Profética Casa de la Lectura - Calle 3 Sur No. 701 CP 72000, Puebla, Puebla.\n3.- General Ignacio Zaragoza - Calle 4 Poniente No. 506 (Esq. 7 Norte) CP 72000, Puebla, Puebla.\n4.- Nicolás Reyes Alegre - Av. Jesús Reyes Heroles No. 4402 Col. González Ortega, (Centro Escolar José María Morelos y Pavón) CP 72040, Puebla, Puebla.\n5.- Lic. Martha Nájera Santillana - Av. Fidel Velázquez y Calle 42 Sur s/n CP 72560, Puebla, Puebla.\n6.- Lic. Benito Juárez García - Calle 18 Oriente No. 210, Bo. San José CP 72000, Puebla, Puebla.\n7.- Pdte. Gustavo Díaz Ordaz - Prolg. Calle 3 Sur y 119 Pte s/n, San Bartolo Coatepec CP 72496, Puebla, Puebla.\n8.- Lic. Carlos Salinas de Gortari - Av. Venustiano Carranza s/n CP 75046, Puebla, Puebla.\n9.- Gregorio Degante - Camino Real a Tlaxcala No. 11, (Int. del Centro Escolar Gregorio de Gante) CP 72100, Puebla, Puebla.\n10.- Benito Juárez - Carretera Federal México-Puebla s/n km 98 San Juan Tlautla CP 72750, Puebla, Puebla.\n11.- Centro de Bienestar ISSSTEP - Calle 17 Oriente No. 1408 Col. El Ángel CP 72500, Puebla, Puebla.\n12.- Biblioteca Pública del Estado - Calle 4 Norte No. 203 Altos, Centro CP 72000, Puebla, Puebla.\n13.- Escuela Militar de Sargentos - Campo Militar No. 25-A CP 72380, Puebla, Puebla.\n14.- Guillermo Prieto - Blvd. Hermanos Serdán No. 221, Col. Valle del Rey, anexa al BINE (frente al Monumento de los Hermanos Serdán) CP 72140, Puebla, Puebla.\n15.- Lic. César Garibay G. - Av. Reforma No. 1305 (Centro Cultural Poblano), Centro CP 72000, Puebla, Puebla.\n16.- Gral. Juan Crisóstomo Bonilla - Blvd Valsequillo s/n, (int.de la Pdcia. Auxiliar) CP 72960, Puebla, Puebla.\n17.- Blas Chumacero Sánchez - Calle 63 Ote. No. 405 (edif. pastel 3er. piso, int. 2) Infonavit Margarita CP 72560, Puebla, Puebla.\n18.- Emiliano Zapata - Pl. Principal s/n CP 72960, Puebla, Puebla.\n19.- Lic. Carlos Salinas de Gortari - Av. Juárez No. 10 CP 72970, Puebla, Puebla.\n20.- Candelario Morales Ramírez - Allende s/n CP 72960, Puebla, Puebla.\n21.- Lic. Marco Antonio Rojas Flores - Pl. Principal s/n CP 72100, Puebla, Puebla.\n22.- Profa. Concepción Martínez Padilla - Calle 16 de Septiembre s/n CP 72960, Puebla, Puebla.\n23.- Carlos E. Castillo Peraza - Calle 5 de Febrero, (Esq. Av. Gonzalo Bautista) CP 72380, Puebla, Puebla.\n24.- Solidaridad - Hidalgo No. 4 CP 72030, Puebla, Puebla.\n25.- Lic. Efraín González Luna - Benito Juárez No. 1 CP 72920, Puebla, Puebla.\n26.- Lic. Marco Antonio Rojas Flores - Francisco I. Madero esq. Calle 5 de Febrero s/n CP 72920, Puebla, Puebla.\"\n27.- Esteban de Antuñano - Niños Héroes No. 2 CP 72100, Puebla, Puebla.\n28.- Enrique Benítez Reyes - Eduardo Cue Merlo s/n, (Esq. Calle 20 de Noviembre, PB de la Pdcia. Mpal) CP 72550, Puebla, Puebla.\n29.- Ricardo Flores Magón - Av. Anahuatl s/n CP 72120, Puebla, Puebla.\n30.- Lic. Miguel de la Madrid Hurtado - Blvd. 5 de Mayo y 14 Oriente, (Explanada del Templo de San Francisco) CP 72000, Puebla, Puebla.\n31.- Museo del Ferrocarril - Av. 11 Norte No. 1005, Esq. 14 Poniente Col. Centro CP 72000, Puebla, Puebla.\n32.- Museo de Antropología e Historia - Centro Cívico 5 de Mayo Col. Los Fuertes CP 72270, Puebla, Puebla.\n33.- Luis Álvarez Barret - Km. 2.5 Carretera Puebla-El Batán Col. Lomas de San Miguel CP 72140, Puebla, Puebla.\n34.- General Manuel Ávila Camacho - Calle 10 Sur No. 1501 Col. El Mirador CP 72500, Puebla, Puebla.\n35.- Gabino Barreda - Calle 5 Oriente No. 5 (Casa de la Cultura), Col. Centro CP 72000, Puebla, Puebla.\n36.- Leopoldo Melchor Flores - Calle 5 de Mayo s/n, (Esq. Ignacio Zaragoza) CP 74910, Puebla, Puebla.\n37.- Presidente Manuel Ávila Camacho - Ayuntamiento s/n CP 72130, Puebla, Puebla.\n38.- Rosendo Márquez - Domicilio Conocido (frente la Pl. Principal) CP 72920, Puebla, Puebla.\n39.- Malintzi - Frente a la Plaza Principal CP 72900, Puebla, Puebla.\n40.- Renacimiento - Av. Cristóbal Colón No. 1 CP 72940, Puebla, Puebla.', '1.- Auditorio de la Reforma - Calzada Unidad Civica 5 de Mayo Colonia Unidad Civica 5 de Mayo 72000, Heroica Puebla de Zaragoza, Puebla.   \n 2.- Auditorio de la Reforma - Calle Ejércitos de Oriente #100 Colonia Zona de los Fuertes 72260, Heroica Puebla de Zaragoza, Puebla.', 'S/D', '39074'),
(74, 119, '1.- Fiesta de la Virgen de los Remedios\n2.- Fiesta de San Bernardino de Sena', '13', '1.- Casa de la Cultura Tlanezcalli -  3 Ote 204 Centro  CP 72810, San Andrés Cholula, Puebla.', 'S/D', '1.- Centro Divino Quetzalcóatl - Reforma Sur y Benito Juárez s/n CP 72840, San Andrés Cholula, Puebla.\n2.- Amoxcalli - Priv. 5 de Mayo s/n CP 72830, San Andrés Cholula, Puebla\n3.- Ixtliyollotl - Camino Real a Cholula s/n CP 72810, San Andrés Cholula, Puebla\n4.- Quetzalcóatl - 2 Oriente No. 4, Centro CP 72810, San Andrés Cholula, Puebla.\n5.- Coronel Juan Itzcóatl - Emiliano Zapata s/n (Esq. Revolución) CP 72810, San Andrés Cholula, Puebla.\n6.- Profa. Emilia Villegas de Tirado - Benito Juárez y Av. Central s/n CP 72450, San Andrés Cholula, Puebla.\n7.- Emperador Cuauhtémoc - Central Norte s/n CP 72821, San Andrés Cholula, Puebla.\n8.- Aurora Monterrubio Peña - Av. Emiliano Zapata s/n CP 72197, San Andrés Cholula, Puebla.\n9.- Profa. Socorro Esquivel Beltrán - Tlaxco No. 1 CP 72845, San Andrés Cholula, Puebla.\n10.- Ahmica Thiotlac Setlazalos - Calle 24 de Febrero No. 10 CP 72845, San Andrés Cholula, Puebla.\n11.- Xitihuaca - Moctezuma No. 4 CP 72840, San Andrés Cholula, Puebla.\n12.- Cuna del Saber - Calle 16 de Septiembre No. 2 CP 72840, San Andrés Cholula, Puebla.', 'S/D', 'S/D', '3618'),
(75, 163, '1.- Grupos de Contradanza, Tepatlaxco.', '1', 'S/D', 'S/D', '1.- Prof. Lorenzo Centeno - Calle 2 Sur No. 706 Esq. 9 Oriente CP 75100, Tepatlaxco de Hidalgo, Puebla.', '1.- Auditorio Tepatlaxco Puebla - Avenida 16 de Septiembre Localidad Teplataxco de Hidalgo 75100, Tepatlaxco de Hidalgo, Puebla.', 'S/D', '139'),
(76, 1, 'S/D', '10', 'S/D', 'S/D', '1.- Leoncio Luna González - Av. Ayuntamiento No. 2 CP 75117, Acajete, Puebla.\n 2.- Daniel Flores Campos - Av. Revolución s/n CP 75537, Acajete, Puebla.\n 3.- Malintzi - Av. Ayuntamiento s/n CP 75110, Acajete, Puebla.\n 4.- Sor Juana Inés de la Cruz - Av. Ayuntamiento y Calle 7 Poniente No. 90 (a un costado de la presidencia. Municipal) CP 75110, Acajete, Puebla.\n 5.- Ángeles Mastretta - Calle 9 Norte y Reforma s/n CP 75117, Acajete, Puebla.\n 6.- Frida Kahlo - Av. Reforma y calle 16 de Septiembre s/n CP 75110, Acajete, Puebla.\n 7.- Prof. Eliseo Flores Pérez - Av. Morelos s/n CP 75118, Acajete, Puebla.\n 8.- Luis Donaldo Colosio - Av. Reforma s/n CP 75119, Acajete, Puebla.\n 9.- Octavio Paz - Pl. de Armas No. 1 CP 75114, Acajete, Puebla.\n 10.- Justo Sierra - Av. Insurgentes Sur s/n CP 75116, Acajete, Puebla.', 'S/D', 'S/D', '263');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `economia_por_municipio`
--

CREATE TABLE `economia_por_municipio` (
  `Id` int(11) NOT NULL,
  `Id_Mun` int(11) NOT NULL,
  `GMM` varchar(15) NOT NULL COMMENT 'Grado de Marginación Municipal ',
  `Poblacion` varchar(15) NOT NULL,
  `PM` varchar(15) NOT NULL COMMENT 'Pobreza Moderada',
  `PE` varchar(15) NOT NULL COMMENT ' Pobreza Extrema',
  `ACEAAFPC` varchar(15) NOT NULL COMMENT 'Agricultura, Cría y Explotación de Animales, Aprovechamiento Forestal, Pesca y Caza',
  `C_Menor` varchar(15) NOT NULL COMMENT 'Comercio al por menor',
  `C_Mayor` varchar(15) NOT NULL COMMENT 'Comercio al por mayor',
  `Ind_M` varchar(15) NOT NULL COMMENT 'Industrias manufctureras',
  `SATPAB` varchar(15) NOT NULL COMMENT 'Servicios de Alojamiento Temporal y de Preparación de Alimentos y Bebidas',
  `Otros` varchar(15) NOT NULL,
  `Micro` varchar(35) NOT NULL COMMENT '(0-10 personas)',
  `Pequenia` varchar(35) NOT NULL COMMENT '(11-50 personas)',
  `Mediana` varchar(35) NOT NULL COMMENT '(51-250 personas)',
  `Grande` varchar(35) NOT NULL COMMENT '(251 y más personas)',
  `PO` varchar(10) NOT NULL COMMENT 'Población Ocupada',
  `PD` varchar(10) NOT NULL COMMENT 'Población Desocupada',
  `Fecha` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `economia_por_municipio`
--

INSERT INTO `economia_por_municipio` (`Id`, `Id_Mun`, `GMM`, `Poblacion`, `PM`, `PE`, `ACEAAFPC`, `C_Menor`, `C_Mayor`, `Ind_M`, `SATPAB`, `Otros`, `Micro`, `Pequenia`, `Mediana`, `Grande`, `PO`, `PD`, `Fecha`) VALUES
(1, 100, 'Alto', '9310', '5177', '2934', 'S/D', '53.5', 'S/D', '26.8', '5.4', '14.3', '113 establecimientos ', '5  establecimientos', '0 establecimientos', '0 establecimientos', '5128', '8', '2020'),
(2, 213, 'Alto', '11967', '7863', '3280', 'S/D', '34.8', 'S/D', '9.1', '6.8', '49.3', '190 establecimientos', '9 establecimientos', '1 establecimiento', '0 establecimientos', '5480', '11', '2020'),
(3, 111, 'Alto', '18528', '11370', '3955', 'S/D', '71', '8.4', '7.8', '6.2', '6.6', '674 establecimientos', '14 establecimientos', '0 establecimientos', '0 establecimientos', '8446', '85', '2020'),
(4, 178, 'Alto', '15977', '8311', '5094', 'S/D', '53', '7.2', '21.3', '8.2', '10.3', '174 establecimientos', '2 establecimientos', '1 establecimiento', '0 establecimientos', '7570', '44', '2020'),
(5, 109, 'Alto', '20274', '11307', '6085', 'S/D', '28.6', 'S/D', '15.6', '3.3', '52.4', '1094 establecimientos', '12 establecimientos', '0 establecimientos', '0 establecimientos', '10190', '124', '2020'),
(6, 197, 'Bajo', '80591', '44525', '14511', 'S/D', '56.5', '15.7', '10.3', '5.1', '12.5', '4650 establecimientos ', '118 establecimientos ', '19 establecimientos ', '0 establecimientos ', '38340', '579', '2020'),
(7, 184, 'Alto', '6422', '3530', '1987', 'S/D', '68.8', 'S/D', '22.3', '6.1', '2.8', ' 68 establecimientos ', '1 establecimiento ', '0 establecimientos ', '0 establecimientos ', '2822', '9', '2020'),
(8, 49, 'Alto', '17382', '7096', '6812', 'S/D', '74.8', '2.2', '9.4', '3.7', '10', '222 establecimientos ', ' 4 establecimientos ', ' 1 establecimiento', ' 0 establecimientos ', '9307', '52', '2020'),
(9, 183, 'Alto', '20433', '9567', '6735', 'S/D', '84.1', 'S/D', '7', '2.3', '6.6', ' 340 establecimientos ', ' 11 establecimientos ', ' 1 establecimiento ', ' 0 establecimientos ', '10224', '40', '2020'),
(10, 89, 'Alto', '12131', '7514', '2444', 'S/D', '73', '1.5', '15.4', '4.1', '5.9', '416 establecimientos ', '7 establecimientos ', '1 establecimiento', '0 establecimientos ', '4731', '81', '2020'),
(11, 71, 'Bajo', '103946', '48822', '17181', 'S/D', '61.7', '16.6', '3,6', '5.1', '13', ' 6348 establecimientos ', ' 176 establecimientos ', ' 23 establecimientos ', ' 1 establecimiento', '49642', '850', '2020'),
(12, 162, 'Muy Alto', '4155', '1836', '2081', 'S/D', '74', '1.9', '16.2', '2.3', '5.6', ' 211 establecimientos ', '4 establecimientos ', ' 1 establecimiento ', ' 0 establecimientos ', '1313', '104', '2020'),
(13, 68, 'Alto', '7011', '3709', '1977', 'S/D', '73.5', '4.7', '9.8', '6', '6', ' 121 establecimientos ', '1 establecimiento ', '1 establecimiento', '0 establecimientos ', '2988', '7', '2020'),
(14, 28, 'Alto', '2758', '1498', '965', 'S/D', '87.3', 'S/D', '5.4', '4.3', '3.1', ' 69 establecimientos ', ' 1 establecimiento', ' 0 establecimientos ', ' 0 establecimientos ', '940', '6', '2020'),
(15, 14, 'Alto', '4812', '2770', '1118', 'S/D', '72.3', '9.4', '8.1', '3.7', '6.5', ' 161 establecimientos ', '4 establecimientos ', ' 0 establecimientos ', ' 0 establecimientos ', '1528', '41', '2020'),
(16, 123, 'Alto', '3793', '2149', '989', 'S/D', '85.7', 'S/D', 'S/D', '7.3', '7', '27 establecimientos ', '1 establecimiento', '0 establecimientos ', '0 establecimientos ', '1244', '19', '2020'),
(17, 30, 'Alto', '772', '376', '164', 'S/D', '82.5', 'S/D', '4', 'S/D', '13.6', ' 34 establecimientos ', ' 3 establecimientos ', '0 establecimientos ', ' 0 establecimientos ', '269', '0', '2020'),
(18, 167, 'Alto', '10373', '5587', '3494', 'S/D', '69.5', '5', '7.1', '5.7', '12.7', ' 88 establecimientos ', '1 establecimiento', ' 1 establecimiento', '0 establecimientos ', '3037', '243', '2020'),
(19, 6, 'Alto', '14542', '7118', '2503', 'S/D', '52.9', 'S/D', '5.5', '4', '37.6', ' 332 establecimientos ', '11 establecimientos ', '2 establecimientos ', '1 establecimiento ', '6730', '27', '2020'),
(20, 208, 'Bajo', '87361', '43509', '13411', 'S/D', '51.2', '24.4', '6.8', '4.4', '13.1', '4314 establecimientos ', '160 establecimientos ', ' 20 establecimientos ', ' 1 establecimiento', '44189', '418', '2020'),
(21, 84, 'Alto', '6950', '3356', '2904', 'S/D', '43', '9', '24.9', '3', '20', '228  establecimientos ', '5 establecimientos ', ' 1 establecimiento ', '0 establecimientos ', '2674', '55', '2020'),
(22, 77, 'Muy Alto', '5951', '3089', '2218', 'S/D', '79.8', 'S/D', '9.5', '2.9', '7.8', ' 112 establecimientos ', '2 establecimientos ', '1 establecimiento', '0 establecimientos ', '2033', '22', '2020'),
(23, 80, 'Alto', '2633', '1425', '835', 'S/D', '91.7', 'S/D', '4.3', 'S/D', '4', ' 72 establecimientos ', '3 establecimientos ', '0 establecimientos ', ' 0 establecimientos ', '842', '7', '2020'),
(24, 72, 'Muy Alto', '17082', '7937', '6092', 'S/D', '73.6', '0.8', '9.8', '5.6', '10.2', '315 establecimientos ', ' 10 establecimientos ', ' 1 establecimiento', '0 establecimientos ', '6002', '81', '2020'),
(25, 107, 'Muy Alto', '11993', '5119', '5533', 'S/D', '56.2', '12.9', '12.6', '5.6', '12.7', '216 establecimientos ', '5 establecimientos ', '1 establecimiento ', '0 establecimientos ', '3510', '44', '2020'),
(26, 29, 'Alto', '3811', '1726', '1431', 'S/D', '64.4', 'S/D', '14', '2.9', '18.8', ' 176 establecimientos ', '6 establecimientos ', '1 establecimiento', '0 establecimientos ', '1413', '9', '2020'),
(27, 215, 'Alto', '4539', '3209', '838', 'S/D', '27.3', '55.8', '6.7', '3.7', '6.5', ' 232 establecimientos ', '4 establecimientos ', '1 establecimiento', '0 establecimientos ', '1705', '65', '2020'),
(28, 210, 'Medio', '5675', '3139', '1306', 'S/D', '43.9', '1.9', '23.8', '7.3', '23', '220 establecimientos ', '4 establecimientos ', '1 establecimiento ', '0 establecimientos ', '2355', '27', '2020'),
(29, 202, 'Alto', '13025', '7336', '4167', 'S/D', '71.2', 'S/D', '20.1', '3.3', '5.3', '472 establecimientos ', '6 establecimientos ', '1 establecimiento', '0 establecimientos ', '6352', '30', '2020'),
(30, 78, 'Alto', '15928', '7673', '6889', 'S/D', '70.8', 'S/D', '20.2', '4.2', '4.8', ' 228 establecimientos ', '3 establecimientos ', '2 establecimientos ', ' 0 establecimientos ', '6674', '30', '2020'),
(31, 216, 'Alto', '2452', '1330', '573', 'S/D', '83.6', 'S/D', '10.8', '2.2', '3.4', ' 75 establecimientos ', '3 establecimientos ', '0 establecimientos ', '0 establecimientos ', '995', '9', '2020'),
(32, 88, 'Alto', '4457', '2383', '1078', 'S/D', '54', 'S/D', '22.7', '15.4', '7.9', ' 112 establecimientos ', ' 2 establecimientos ', '1 establecimiento', '0 establecimientos ', '1656', '14', '2020'),
(33, 200, 'Alto', '3443', '1852', '677', 'S/D', '15.6', 'S/D', '75.9', '6.1', '2.3', '123 establecimientos ', '6 establecimientos ', ' 1 establecimiento', ' 0 establecimientos ', '1213', '17', '2020'),
(34, 192, 'Medio', '5924', '3404', '1076', 'S/D', '57', '7.3', '6.4', '3.2', '26.1', ' 152 establecimientos ', '2 establecimientos ', '0 establecimientos ', '0 establecimientos ', '2784', '16', '2020'),
(35, 212, 'Alto', '20717', '12441', '7007', 'S/D', '72.8', '0.9', '16.1', '2.5', '7.7', '1157 establecimientos ', ' 15 establecimientos ', '0 establecimientos ', '0 establecimientos ', '9762', '181', '2020'),
(36, 43, 'Alto', '49864', '31949', '17280', 'S/D', '63.3', '4.2', '5.7', '9.6', '17.2', ' 1383 establecimientos ', '33 establecimientos ', '2 establecimientos ', '0 establecimientos ', '26813', '194', '2020'),
(37, 207, 'Medio', '57887', '32075', '11461', '0.07', '62.8', '15.2', '4.7', '5.6', '11.7', '2573 establecimientos ', '83 establecimientos ', '7 establecimientos ', '1 establecimiento', '28582', '203', '2020'),
(38, 75, 'Medio', '13080', '6872', '3076', 'S/D', 'S/D', '2.2', '16.7', '3.9', '77.2', '733 establecimientos ', '15 establecimientos ', ' 1 establecimiento ', '0 establecimientos ', '6454', '54', '2020'),
(39, 25, 'Alto', '8208', '4472', '1687', '0.06', '56.6', 'S/D', '3.9', '3.7', '35.6', ' 386 establecimientos ', '5 establecimientos ', '2 establecimientos ', '0 establecimientos ', '3881', '35', '2020'),
(40, 17, 'Medio', '29742', '15826', '7265', 'S/D', '60.9', '9.5', '12.9', '4.9', '11.8', '1182 establecimientos ', '29 establecimientos ', '2 establecimientos ', '0 establecimientos ', '14101', '234', '2020'),
(41, 54, 'Medio', '35223', '19901', '6149', 'S/D', '27.7', '1.7', '55.2', '2.3', '13.1', '1087 establecimientos ', '67 establecimientos ', '3 establecimientos ', '0 establecimientos ', '17291', '109', '2020'),
(42, 174, 'Muy Bajo', '103583', '44569', '7241', 'S/D', '43.2', '13.5', '32.1', '2.4', '8.8', '6119 establecimientos ', '357 establecimientos ', '67 establecimientos ', '7 establecimientos ', '53409', '518', '2020'),
(43, 186, 'Bajo', '55576', '28285', '6072', 'S/D', '48.7', '22.6', '19.4', '3.6', '5.7', '1910 establecimientos ', ' 56 establecimientos ', '7 establecimientos ', ' 2 establecimientos ', '27808', '220', '2020'),
(44, 204, 'Bajo', '7926', '4070', '939', 'S/D', '51', '9', '14.3', '7.2', '18.5', '339 establecimientos ', '4 establecimientos ', ' 0 establecimientos ', '0 establecimientos ', '3726', '22', '2020'),
(45, 39, 'Alto', '9837', '5662', '2305', 'S/D', '66.6', '12.6', '11.1', '6.1', '3.7', '228 establecimientos ', '5 establecimientos ', '1 establecimiento', '0 establecimientos ', '4774', '39', '2020'),
(46, 83, 'Alto', '25319', '15588', '4138', 'S/D', '59.3', 'S/D', '34.3', '3.7', '2.7', '115 establecimientos ', '1 establecimiento', '1 establecimiento', '0 establecimientos ', '12429', '63', '2020'),
(47, 172, 'Medio', '27216', '16093', '6482', 'S/D', '73.9', '8.5', '6.6', '4.4', '6.7', '887 establecimientos ', '23 establecimientos ', '2 establecimientos ', '0 establecimientos ', '13669', '98', '2020'),
(48, 50, 'Alto', '26928', '13804', '9467', 'S/D', '71.8', 'S/D', '4.8', '3.3', '20.1', ' 216 establecimientos ', '6 establecimientos ', '0 establecimientos ', '0 establecimientos ', '12291', '126', '2020'),
(49, 177, 'Medio', '54757', '33089', '9309', 'S/D', '25.3', '22.5', '43.7', '3.6', '5', '3454 establecimientos ', '48 establecimientos', '4 establecimientos ', '0 establecimientos ', '26531', '258', '2020'),
(50, 120, 'Alto', '5938', '3107', '1922', 'S/D', '77.4', 'S/D', '12.2', '4.1', '6.3', '78 establecimientos ', '1 establecimiento ', '1 establecimiento ', '0 establecimientos ', '2127', '72', '2020'),
(51, 129, 'Medio', '14018', '8971', '4216', 'S/D', '55.5', '0.6', '33.7', '3.3', '7', '870 establecimientos ', ' 16 establecimientos ', ' 1 establecimiento ', '0 establecimientos ', '6156', '112', '2020'),
(52, 124, 'Medio', '15954', '9876', '3813', 'S/D', '39.1', '3.4', '44.5', '5.8', '7.2', '1373 establecimientos ', '32 establecimientos ', '2 establecimientos ', '0 establecimientos ', '7527', '120', '2020'),
(53, 35, 'Medio', '20653', '10632', '4669', '0.08', '49.6', '0.4', '44.3', '2.8', '2.7', '701 establecimientos ', '17 establecimientos ', '2 establecimientos', '1 establecimiento', '9002', '314', '2020'),
(54, 13, 'Bajo', '22629', '13706', '5858', 'S/D', '39.9', '5.5', '39.1', '6.6', '9', '2311 establecimientos ', '102 establecimientos ', '3 establecimientos ', '0 establecimientos ', '12115', '93', '2020'),
(55, 156, 'Muy Bajo', '327312', '160759', '27339', '0.45', '33.2', '21.6', '30.8', '2.2', '11.8', '21322 establecimientos ', '976 establecimientos ', '179 establecimientos ', '23 establecimientos ', '172075', '2493', '2020'),
(56, 214, 'Medio', '18359', '10629', '3770', 'S/D', '49.7', '6.5', '28', '6', '9.8', '1537 establecimientos ', '46 establecimientos ', '2 establecimientos ', '0 establecimientos ', '9577', '90', '2020'),
(57, 149, 'Medio', '30309', '17512', '4244', 'S/D', '11.4', '71.9', '15.9', '0.2', '0.6', '1105 establecimientos ', '45 establecimientos ', '22 establecimientos ', '0 establecimientos ', '15059', '143', '2020'),
(58, 61, 'Muy Alto', '14461', '4986', '8688', 'S/D', '70.8', 'S/D', '7.2', '6', '16.1', '148 establecimientos ', '4 establecimientos ', '1 establecimiento', '0 establecimientos ', '4773', '28', '2020'),
(59, 217, 'Muy Alto', '20335', '9513', '9602', 'S/D', '58.4', '32.6', '2.7', '1.5', '4.8', '609 establecimientos ', '15 establecimientos ', '1 establecimientos', '0 establecimientos ', '6411', '91', '2020'),
(60, 195, 'Muy Alto', '26559', '13241', '11269', 'S/D', '55.9', '32.1', '4.8', '2.2', '5', '378 establecimientos ', '9 establecimientos ', '0 establecimientos ', '0 establecimientos ', '7914', '332', '2020'),
(61, 36, 'Muy Alto', '14806', '6816', '7115', 'S/D', '73.8', 'S/D', '8', '6.7', '11.4', '132 establecimientos ', '1 establecimientos ', '1 establecimiento', '0 establecimientos ', '4019', '32', '2020'),
(62, 145, 'Muy Alto', '13189', '5458', '6626', '0.14', '32.6', 'S/D', '2.7', '1.2', '63.3', '171 establecimientos ', '8 establecimientos', '1 establecimiento', '0 establecimientos ', '4478', '55', '2020'),
(63, 10, 'Alto', '74768', '37565', '19592', 'S/D', '29.9', '12.5', '49.5', '3.1', '5', '4244 establecimientos ', ' 172 establecimientos ', '10 establecimientos ', '0 establecimientos ', '40341', '218', '2020'),
(64, 159, 'Alto', '3836', '1884', '1635', 'S/D', '46.7', 'S/D', '42.7', '4.9', '5.6', '926 establecimientos ', '9 establecimientos ', '0 establecimientos ', '0 establecimientos ', '1224', '6', '2020'),
(65, 127, 'Alto', '3606', '1699', '414', 'S/D', '57.7', 'S/D', '11.2', '4.5', '26.6', '108 establecimientos ', '3 establecimientos ', ' 1 establecimiento ', '0 establecimientos ', '1368', '9', '2020'),
(66, 196, 'Medio', '1570', '819', '172', 'S/D', '18.3', 'S/D', '4', '4.6', '73.1', '81 establecimientos ', '2 establecimientos ', '1 establecimiento', '0 establecimientos ', '494', '10', '2020'),
(67, 52, 'Alto', '1215', '774', '254', 'S/D', '32', 'S/D', '53.8', '2.1', '12.2', ' 398 establecimientos ', '0 establecimientos ', '1 establecimiento', '0 establecimientos ', '506', '23', '2020'),
(68, 70, 'Alto', '6111', '3536', '1360', 'S/D', '31.7', 'S/D', '28.2', '9.2', '30.9', '202 establecimientos ', '0 establecimientos ', '1 establecimiento ', '0 establecimientos ', '2733', '9', '2020'),
(69, 146, 'Alto', '749', '413', '156', 'S/D', '30.1', 'S/D', '27.8', 'S/D', '42.1', '148 establecimientos ', '1 establecimiento', '0 establecimientos ', '0 establecimientos ', '276', '13', '2020'),
(70, 5, 'Muy Alto', '3070', '1575', '1135', 'S/D', '21.7', 'S/D', '72.6', '1.3', '4.4', '591 establecimientos ', '4 establecimientos ', '0 establecimientos ', '0 establecimientos ', '1691', '1', '2020'),
(71, 19, 'Muy Bajo', '141793', '74001', '15668', 'S/D', '55.2', '15.4', '15.8', '5.5', '8.1', '8423 establecimientos ', '303 establecimientos ', '38 establecimientos ', ' 7 establecimientos ', '73562', '757', '2020'),
(72, 15, 'Muy Bajo', '125876', '63780', '15574', 'S/D', '14.6', '15.4', '63.9', '1', '5', '6320 establecimientos ', '205 establecimientos ', '43 establecimientos ', '10 establecimientos ', '58896', '1304', '2020'),
(73, 114, 'Muy Bajo', '1692181', '591869', '89076', '0.0023', '31.6', '21', '29', '3', '15.4', '88241 establecimientos ', '5344 establecimientos ', '1082 establecimientos ', '201 establecimientos ', '849316', '20115', '2020'),
(74, 119, 'Muy Bajo', '154448', '66609', '12214', 'S/D', '37.2', '10.7', '13.8', '5.5', '32.8', '7284 establecimientos ', '547 establecimientos ', '117 establecimientos ', '24 establecimientos ', '77822', '1645', '2020'),
(75, 163, 'Bajo', '18854', '11801', '3312', 'S/D', '60.5', '4.7', '21.5', '4.8', '8.4', '1124 establecimientos ', '19 establecimientos ', '1 establecimiento', '0 establecimientos ', '7915', '155', '2020'),
(76, 1, 'Medio', '72894', '42863', '17688', 'S/D', '42.2', '1.6', '45.1', '2', '9.1', '2824 establecimientos ', '59 establecimientos ', '7 establecimientos ', '1 establecimiento', '31180', '572', '2020');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `educacion_por_municipio`
--

CREATE TABLE `educacion_por_municipio` (
  `Id` int(11) NOT NULL,
  `Id_Mun` int(11) NOT NULL,
  `RS` varchar(10) NOT NULL,
  `TCTM` varchar(10) NOT NULL COMMENT 'Total de Centros de Trabajo por Municipio',
  `CAM` varchar(10) NOT NULL COMMENT '% Centro de Atención Múltiple',
  `Secundarias` varchar(10) NOT NULL COMMENT '%',
  `Primarias` varchar(10) NOT NULL COMMENT '%',
  `Preescolares` varchar(10) NOT NULL COMMENT '%',
  `EATECS` varchar(10) NOT NULL COMMENT '% de escuelas con aulas que tienen equipo de cómputo que sirven',
  `IA` varchar(10) NOT NULL COMMENT '% de aulas con internet',
  `PIM` varchar(10) NOT NULL COMMENT 'Primarias indígenas por municipio',
  `PIM_` varchar(10) NOT NULL COMMENT 'Preescolares indígenas por municipio'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `educacion_por_municipio`
--

INSERT INTO `educacion_por_municipio` (`Id`, `Id_Mun`, `RS`, `TCTM`, `CAM`, `Secundarias`, `Primarias`, `Preescolares`, `EATECS`, `IA`, `PIM`, `PIM_`) VALUES
(1, 100, 'Alto', '39', '0', '22.9', '37.1', '40', '68.6', '17.1', '6', '11'),
(2, 213, 'Medio', '68', '0', '24.2', '38.7', '37.1', '54.8', '14.5', '11', '6'),
(3, 111, 'Medio', '92', '0', '19', '42.9', '38.1', '53.7', '8.5', '18', '17'),
(4, 178, 'Alto', '95', '0', '21.7', '41.3', '37', '51.1', '8.7', '3', '8'),
(5, 109, 'Medio', '69', '1.6', '18.8', '40.5', '39.1', '50', '14.1', '5', '8'),
(6, 197, 'Bajo', '202', '1.1', '19.9', '39.2', '39.8', '59.1', '28.4', '11', '8'),
(7, 184, 'Alto', '33', '0', '18.8', '40.6', '40.6', '78.1', '12.5', '6', '7'),
(8, 49, 'Muy alto', '62', '0', '19', '41.3', '39.7', '46.6', '5.2', '13', '12'),
(9, 183, 'Alto', '74', '0', '23.5', '39.7', '36.8', '64.7', '11.8', '14', '16'),
(10, 89, 'Medio', '35', '0', '26.5', '38.2', '35.3', '64.7', '14.7', '5', '7'),
(11, 71, 'Alto', '218', '0.5', '18.7', '38', '42.8', '62.4', '26.3', '17', '17'),
(12, 162, 'Alto', '9', '0', '12.5', '37.5', '50', '87.5', '12.5', '2', '4'),
(13, 68, 'Medio', '43', '0', '17.1', '43.9', '39', '65.9', '2.4', '11', '11'),
(14, 28, 'Medio', '13', '0', '23.1', '38.5', '38.4', '53.8', '7.7', '2', '2'),
(15, 14, 'Alto', '18', '0', '25', '37.5', '37.5', '62.5', '18.8', '3', '3'),
(16, 123, 'Alto', '23', '0', '18.2', '45.4', '36.4', '68.2', '18.2', '4', '5'),
(17, 30, 'Alto', '3', '0', '33.3', '33.3', '33.4', '100', '33.3', '0', '1'),
(18, 167, 'Muy alto', '43', '0', '21.1', '36.8', '42.1', '86.8', '10.5', '12', '12'),
(19, 6, 'Alto', '49', '2.2', '17.8', '40', '40', '77.8', '11.1', '10', '13'),
(20, 208, 'Bajo', '238', '0.5', '22.6', '35.1', '41.8', '72.8', '19.9', '5', '19'),
(21, 84, 'Alto', '16', '0', '6.3', '49.9', '43.8', '81.3', '6.3', '5', '4'),
(22, 77, 'Alto', '33', '0', '12.5', '43.8', '43.7', '74.2', '9.7', '9', '0'),
(23, 80, 'Bajo', '7', '0', '33.3', '33.3', '33.4', '63.3', '16.7', '1', '2'),
(24, 72, 'Medio', '54', '0', '20', '33.3', '46.7', '86.4', '11.6', '8', '15'),
(25, 107, 'Muy alto', '47', '0', '16.3', '41.9', '41.8', '48.8', '7', '8', '10'),
(26, 29, 'Medio', '9', '0', '12.5', '50', '37.5', '75', '12.5', '2', '2'),
(27, 215, 'Alto', '5', '0', '20', '40', '40', '100', '40', '0', '1'),
(28, 210, 'Medio', '12', '0', '33.33', '33.33', '33.33', '88.9', '33.3', '0', '2'),
(29, 202, 'Alto', '40', '0', '16.7', '38.9', '44.4', '86.1', '5.6', '10', '8'),
(30, 78, 'Alto', '48', '0', '11.1', '44.4', '44.5', '66.7', '2.2', '9', '10'),
(31, 216, 'Alto', '14', '0', '18.2', '45.4', '36.4', '54.5', '18.2', '4', '2'),
(32, 88, 'Medio ', '30', '0', '17.2', '41.4', '41.4', '51.7', '17.2', '3', '4'),
(33, 200, 'Medio', '26', '0', '9.1', '50', '40.9', '50', '9.1', '5', '2'),
(34, 192, 'Medio', '28', '0', '23.1', '38.5', '38.5', '61.5', '15.4', '4', '4'),
(35, 212, 'Alto', '97', '0', '16.5', '40.7', '42.8', '59.6', '15.7', '14', '18'),
(36, 43, 'Muy alto', '242', '0', '12.8', '43.4', '43.8', '40.8', '4', '38', '34'),
(37, 207, 'Medio', '177', '0.7', '20.3', '35', '44', '79', '22.4', '10', '26'),
(38, 75, 'Muy alto', '40', '0', '17.1', '37.1', '45.8', '60', '8.6', '6', '10'),
(39, 25, 'Alto', '41', '2.9', '20', '37.1', '40', '51.4', '17.1', '5', '6'),
(40, 17, 'Medio', '62', '0', '20.4', '31.5', '48.1', '75.9', '20.4', '6', '16'),
(41, 54, 'Medio', '59', '0', '14.3', '41.1', '44.6', '80.4', '25', '12', '18'),
(42, 174, 'Muy bajo ', '169', '0.7', '17.3', '40.3', '41.7', '74.1', '48.9', '6', '11'),
(43, 186, 'Bajo', '213', '0.5', '18', '40.2', '41.3', '64.4', '15.5', '20', '20'),
(44, 204, 'Bajo', '24', '0', '12.5', '41.7', '45.8', '62.5', '12.5', '4', '3'),
(45, 39, 'Medio', '38', '0', '16.7', '36.1', '47.2', '17.8', '16.7', '8', '9'),
(46, 83, 'Medio', '218', '0', '17.5', '41.5', '41', '55', '17.4', '11', '10'),
(47, 172, 'Medio', '127', '0.9', '18.1', '46.5', '34.5', '59.5', '16.4', '17', '10'),
(48, 50, 'Bajo', '101', '0', '18.8', '39.6', '41.6', '62.1', '15.8', '15', '21'),
(49, 177, 'Medio', '113', '0', '19.6', '40.2', '40.2', '74.8', '21.5', '7', '12'),
(50, 120, 'Medio', '15', '0', '20', '40', '40', '60', '20', '5', '4'),
(51, 129, 'Bajo', '20', '0', '31.6', '36.8', '31.6', '84.2', '26.3', '3', '5'),
(52, 124, 'Bajo', '21', '5.3', '15.8', '36.8', '42.1', '84.2', '42.1', '1', '4'),
(53, 35, 'Alto', '66', '0', '15.9', '39.7', '44.4', '62.3', '16.4', '3', '6'),
(54, 13, 'Bajo', '15', '0', '6.7', '40', '53.3', '73.3', '53.3', '1', '4'),
(55, 156, 'Bajo', '378', '0.9', '14.8', '37.4', '46.9', '80.9', '69.4', '11', '13'),
(56, 214, 'Bajo', '13', '0', '15.4', '38.5', '46.1', '69.2', '53.8', '1', '0'),
(57, 149, 'Medio', '30', '0', '14.3', '42.9', '42.8', '67.9', '32.1', '3', '4'),
(58, 61, 'Alto', '77', '0', '11', '42.5', '46.5', '58.9', '12.3', '16', '15'),
(59, 217, 'Muy alto', '110', '0', '9.5', '42.9', '47.6', '67.6', '9.5', '21', '23'),
(60, 195, 'Muy alto', '100', '0', '10.3', '42.3', '47.4', '58.9', '4.2', '17', '14'),
(61, 36, 'Medio', '98', '0', '10.6', '45.8', '43.6', '65.2', '8.7', '30', '24'),
(62, 145, 'Muy alto', '92', '0', '13.5', '46.1', '40.4', '49.9', '6.7', '17', '17'),
(63, 10, 'Alto', '195', '0.6', '15.5', '43.6', '40.3', '70.7', '21', '33', '31'),
(64, 159, 'Alto', '12', '0', '25', '41.7', '33.3', '83.3', '16.7', '1', '2'),
(65, 127, 'Bajo', '22', '0', '15', '50', '35', '75', '5', '3', '4'),
(66, 196, 'Bajo', '7', '0', '16.7', '33.3', '50', '83.3', '0', '1', '4'),
(67, 52, 'Medio', '3', '0', '33.3', '33.3', '33.4', '100', '33.3', '0', '0'),
(68, 70, 'Bajo', '46', '0', '16.7', '42.8', '40.5', '61.9', '11.9', '3', '15'),
(69, 146, 'Medio', '4', '0', '25', '50', '25', '75', '75', '1', '1'),
(70, 5, 'Alto', '8', '0', '37.5', '37.5', '25', '87.5', '12.5', '0', '1'),
(71, 19, 'Medio', '251', '0.5', '18.6', '40.5', '40.4', '72.2', '44.8', '1', '3'),
(72, 15, 'Bajo', '133', '0.8', '20', '30.8', '48.4', '78.3', '60', '1', '3'),
(73, 114, 'Muy bajo', '2036', '0.7', '16.3', '36.2', '46.8', '81.5', '76.7', '10', '18'),
(74, 119, 'Muybajo', '110', '1', '17.3', '35.7', '46', '81.6', '77.6', '0', '0'),
(75, 163, 'Bajo', '18', '5.9', '5.9', '47', '41.2', '76.5', '41.2', '1', '1'),
(76, 1, 'Bajo', '76', '1.4', '16.9', '45.1', '36.6', '71.8', '35.2', '1', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fuentes_informacion`
--

CREATE TABLE `fuentes_informacion` (
  `id` int(11) NOT NULL,
  `id_mod` int(11) NOT NULL,
  `desc_` text NOT NULL,
  `link` text DEFAULT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fuentes_informacion`
--

INSERT INTO `fuentes_informacion` (`id`, `id_mod`, `desc_`, `link`, `status`) VALUES
(1, 3, '1. Instituto Nacional de Estadística y Geografía. (2021). Etnicidad. Población total por municipio, sexo y grupos quinquenales de edad según condición de autoadscripción afromexicana o afrodescendiente. [Conjunto de datos]. Censo de Población y Vivienda 2020. Tabulados del Cuestionario Básico.', 'https://www.inegi.org.mx/programas/ccpv/2020/#Tabulados', 1),
(2, 4, '1. Secretaria de Cultura. (s.f.). Espacios culturales. [Conjunto de datos]. Sistema de Información Cultural.\n', 'https://sic.gob.mx/lista_recursos.php?estado_id=21', 1),
(3, 4, '2. Instituto Nacional de Estadística y Geografía. (s.f.). Servicios artísticos, culturales y deportivos, y otros servicios recreativos. [Conjunto de datos]. Directorio Estadístico Nacional de Unidades Económicas.\n', 'https://www.inegi.org.mx/app/mapa/denue/default.aspx', 1),
(4, 4, '3. Instituto Nacional de Estadística y Geografía. (2020). Condición de autoadscripción afromexicana o afrodescendiente. [Conjunto de datos]. Censo de Población y Vivienda 2020. Tabulados del Cuestionario Básico.', 'https://www.inegi.org.mx/programas/ccpv/2020/#Tabulados', 1),
(5, 4, '4. Instituto Poblano de los Pueblos Indígenas, Dirección de la Academia de Lenguas Indígenas. (2024). Indicadores sobre lenguas Indígenas. [Conjunto de datos]. Lenguas y Cultura.', NULL, 1),
(6, 5, '1. Instituto Nacional de Estadística y Geografía. (2021). Localidades y población total por municipio según tamaño de localidad. [Conjunto de datos]. Censo de Población y Vivienda 2020. Tabulados del Cuestionario Básico.', 'https://www.inegi.org.mx/programas/ccpv/2020/#Tabulados', 1),
(7, 5, '2. Consejo Nacional de Evaluación de la Política de Desarrollo Social. (2022). Indicadores de pobreza por municipio. [Conjunto de datos]. Medición de la pobreza. Pobreza a nivel municipio 2010-2020', 'https://www.coneval.org.mx/Medicion/Paginas/Pobreza-municipio-2010-2020.aspx', 1),
(8, 5, '3. Consejo Nacional de Población. (2021). Índice de marginación por municipio. [Conjunto de datos]. Población total, indicadores socioeconómicos, índice y grado de marginación por municipio, 2020.\n', 'https://www.gob.mx/conapo/documentos/indices-de-marginacion-2020-284372', 1),
(9, 5, '4. Instituto Nacional de Estadística y Geografía. (s.f.). Establecimientos económicos [Conjunto de datos]. Directorio Estadístico Nacional de Unidades Económicas.\n', 'https://www.inegi.org.mx/app/mapa/denue/default.aspx', 1),
(10, 5, '5. Instituto Nacional de Estadística y Geografía. (2021). Población económicamente activa. [Conjunto de datos]. Censo de Población y Vivienda 2020. Tabulados del Cuestionario Básico.', 'https://www.inegi.org.mx/programas/ccpv/2020/#Tabulados', 1),
(11, 5, '6. Instituto Nacional de Estadística y Geografía. (2021). Sistema Automatizado de Información Censal (SAIC). [Tabulados Interativos]. Censos economicos 2019.', 'https://www.inegi.org.mx/app/saic/', 1),
(12, 5, '*Estimación del Instituto Poblano de los Pueblos indígenas, Dirección de Patrimonio Cultural, Investigación y Educación para la Equidad. (2024). Con base a datos del Consejo Nacional de Evaluación de la Política de Desarrollo Social e Instituto Nacional de Estadística y Geografía.', NULL, 1),
(13, 6, '1. Gobierno de México. (2013). Porcentaje de escuelas (nivel básico). [Conjunto de datos]. Censo de Escuelas, Maestros y Alumnos de Educación Básica y Especial 2013\n', 'https://datos.gob.mx/busca/dataset/censo-de-escuelas-maestros-y-alumnos-de-educacion-basica-y-especial', 1),
(14, 6, '2. Portal de educación. (s.f.). Guía completa de centros educativos en México, Preescolares indígenas en México.', 'https://portaldeeducacion.com.mx/preescolar-indigena/index.htm', 1),
(15, 6, '3. Portal de educación. (s.f.). Guía completa de centros educativos en México, primarias indígenas en México.', 'https://portaldeeducacion.com.mx/primaria-indigena/index.htm', 1),
(16, 6, '4. Consejo Nacional de Evaluación de la Política de Desarrollo Social. (2020). Índice de rezago social. [Conjunto de datos]. Medición de la Pobreza.', 'https://www.coneval.org.mx/Medicion/IRS/Paginas/Indice_de_Rezago_Social_2020_anexos.aspx', 1),
(17, 7, '1. Instituto Nacional de Estadística y Geografía. (2023). Ayuntamientos y acaldías. [Conjunto de datos]. Censo Nacional de Gobiernos Municipales y Demarcaciones Territoriales de la Ciudad de México 2023. Tabulados Básico.', 'https://www.inegi.org.mx/programas/cngmd/2023/#tabulados', 1),
(18, 8, '1. Instituto Nacional de Estadistica y Geográfia. (s.f.). Servicios básicos por municipio. [Conjunto de datos]. Espacios y datos de México.\n', 'https://www.inegi.org.mx/app/indicadores/?t=56&ag=21001#D56#D1003000011_56#D1003000001_56', 1),
(19, 8, '2. Consejo Nacional de Evaluacion de la Politica de Desarrollo Social. (2022). Carencia por calidad y espacios de la vivienda. [Conjunto de datos]. Medición de la pobreza. Pobreza a nivel municipio 2010-2020.\n', 'https://www.coneval.org.mx/Medicion/Paginas/Pobreza-municipio-2010-2020.aspx', 1),
(20, 8, '3. Estimaciones del Instituto Poblano de los Pueblos indígenas, Dirección de Patrimonio Cultural, Investigación y Educación para la Equidad. (2024). Con base a datos del Instituto Nacional de Estadística y Geografía, Censo de Población y Vivienda 2020.', NULL, 1),
(21, 9, '1. Poder Judicial del Estado de Puebla. (2024). Juzgados municipales. [Directorio]. Directorio oficial de juzgados municipales.', 'https://pjpuebla.gob.mx/directorio-oficial/itemlist/category/175-juzgados-municipales', 1),
(22, 9, '2. Fiscalía General del Estado de Puebla.(2024). Incidencia delictiva por municipio 2023. [Conjunto de datos]. Incidencia delictiva del fuero común Puebla.', 'https://fiscalia.puebla.gob.mx/Incidencia', 1),
(23, 9, '3. Padrón e Historial de Núcleos Agrarios. (s.f). Beneficiarios ejidatarios y comuneros. [Conjunto de datos]. Registro Agrario Nacional.', 'https://phina.ran.gob.mx/consultaPhina.php', 1),
(24, 9, '4. Poder Judicial del Estado de Puebla. (2024). Poder Judicial. [Conjunto de datos]. Tribunales Laborales del Estado.\n', 'https://pjpuebla.gob.mx/directorio-oficial/item/662-tribunales-laborales-del-estado', 1),
(25, 9, '5. Registro Agrario Nacional. (2024). Ejidos, Comunidades y Núcleos Agrarios. [Conjunto de datos]. Estructura de la Propiedad Social.', 'https://datos.ran.gob.mx/conjuntoDatosPublico.php', 1),
(26, 10, '1. Instituto Poblano de los Pueblos Indígenas, Dirección de la Academia de Lenguas Indígenas. (2024). Indicadores sobre lenguas Indígenas. [Conjunto de datos]. Lenguas y Cultura.', NULL, 1),
(27, 10, '2. Instituto Poblano de los Pueblos Indígenas, Dirección de la Academia de Lenguas Indígenas. (2024). Indicadores sobre lenguas Indígenas. [Conjunto de datos]. Padrón de intérpretes del Instituto Poblano de los Pueblos Indígenas.', NULL, 1),
(28, 11, '1. Instituto Nacional de Estadística y Geografía. (2010). Datos Geograficos. [Compendios]. México en cifas.\n', 'https://www.inegi.org.mx/app/areasgeograficas/default.aspx#collapse-Resumen', 1),
(29, 11, '2. Instituto Nacional de Estadística y Geografía. (2022). Incendios forestales. [Conjunto de datos]. Incendios forestales y superficie afectada por municipio donde ocurrió el siniestro 2022.', 'https://www.inegi.org.mx/app/cuadroentidad/Pue/2023/02/2_7', 1),
(30, 12, '1. Consejo Nacional de Población. (2020). Grado del Índice de Intensidad Migratoria. [Conjunto de datos]. Indicadores del Índice de Intensidad Migratoria México-Estados Unidos a nivel municipal 2020.', 'https://www.gob.mx/conapo/documentos/indices-de-intensidad-migratoria-mexico-estados-unidos-2020', 1),
(31, 12, '2. Banco de México. (s.f.). Ingresos por remesas. [Conjunto de datos]. Ingresos por remesas, distribución por municipio.', 'https://www.banxico.org.mx/SieInternet/consultarDirectorioInternetAction.do?sector=1&accion=consultarCuadro&idCuadro=CE166&locale=es', 1),
(32, 12, '3. Instituto Nacional de Estadística y Geografía. (2021). Población total por municipio de residencia actual y lugar de nacimiento según sexo . [Conjunto de datos]. Censo de Población y Vivienda 2020. Tabulados del Cuestionario Básico.', 'https://www.inegi.org.mx/programas/ccpv/2020/#Tabulados', 1),
(33, 12, '4.- Consejo Nacional de Población. (2010). Indicador de grado de intensidad migratoria (lugar que ocupa de intensidad por municipio en el estado, año 2010). [Conjunto de datos]. Puebla: Total de viviendas, indicadores sobre migración a Estados Unidos, índice y grado de intensidad migratoria, y lugar que ocupa en los contextos estatal y nacional, por municipio, 2010.', 'http://www.conapo.gob.mx/work/models/CONAPO/intensidad_migratoria/anexos/Anexo_B2.pdf', 1),
(34, 12, '5. Estimaciones del Instituto Poblano de los Pueblos indígenas, Dirección de Patrimonio Cultural, Investigación y Educación para la Equidad. (2024). Con base a datos del Instituto Nacional de Estadística y Geografía, Censo de Población y Vivienda 2020.', NULL, 1),
(35, 13, '1. Instituto Nacional de Estadística y Geografía. (2022). Defunciones generales por municipio de residencia habitual del fallecido según sexo. [Conjunto de datos]. Estadísticas de Defunciones Registradas (EDR).', 'https://www.inegi.org.mx/programas/edr/#tabulados', 1),
(36, 13, '2. Instituto Nacional de Estadística y Geografía. (2022). Nacimientos registrados por municipio de residencia habitual de la madre y sexo del registrado según año de ocurrencia. [Conjunto de datos]. Estadística de Nacimientos Registrados (ENR).', 'https://www.inegi.org.mx/programas/natalidad/#tabulados', 1),
(37, 13, '3. Instituto Nacional de Estadística y Geografía. (2023). Unidades médicas en servicio de las instituciones del sector público de salud. [Conjunto de datos]. Unidades médicas en servicio de las instituciones del sector público de salud por municipio y nivel de atención según institución Al 31 de diciembre de 2022.', 'https://www.inegi.org.mx/app/cuadroentidad/Pue/2023/05/5_6', 1),
(38, 13, '4. Instituto Nacional de Estadística y Geografía. (2023). Casas y técnicas en salud coordinadas por la SSA. [Conjunto de datos]. Casas y técnicas en salud coordinadas por la SSA por municipio Al 31 de diciembre de 2022. ', 'https://www.inegi.org.mx/app/cuadroentidad/Pue/2023/05/5_7', 1),
(39, 13, '5. Instituto Nacional de Estadística y Geografía. (2023). Personal médico de las instituciones del sector público de salud. [Conjunto de datos]. Personal médico de las instituciones del sector público de salud por municipio según institución Al 31 de diciembre de 2022.', 'https://www.inegi.org.mx/app/cuadroentidad/Pue/2023/05/5_5', 1),
(40, 13, '6. Consejo Nacional de Evaluación de la Política de Desarrollo Social. (2022). Porcentaje de personas con carencia por acceso a los servicios de salud. [Conjunto de datos]. Medición de la pobreza. Pobreza a nivel municipio 2010-2020.', 'https://www.coneval.org.mx/Medicion/Paginas/Pobreza-municipio-2010-2020.aspx', 1),
(41, 13, '7. Estimaciones del Instituto Poblano de los Pueblos indígenas, Dirección de Patrimonio Cultural, Investigación y Educación para la Equidad. (2024). Con base a datos del Instituto Nacional de Estadística y Geografía.', NULL, 1),
(42, 14, '1. Instituto Nacional de Estadística y Geografía. (2021). Vivienda. Bienes y TIC. [Conjunto de datos]. Censo de Población y Vivienda 2020. Tabulados del Cuestionario Básico.', 'https://www.inegi.org.mx/programas/ccpv/2020/#Tabulados', 1),
(43, 14, '2. Comisión Federal de Electricidad. (s.f.). Puntos de Wifi gratuito. [Conjunto de datos]. Telecomunicaciones e Internet para Todos.', 'https://mapa.internetparatodos.cfe.mx/', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gobernanza_por_municipio`
--

CREATE TABLE `gobernanza_por_municipio` (
  `Id` int(11) NOT NULL,
  `Id_Mun` int(11) NOT NULL,
  `PH` varchar(2) NOT NULL COMMENT 'Presidentes Hombres',
  `PM` varchar(2) NOT NULL COMMENT 'Presidentes Mujeres',
  `SH` varchar(2) NOT NULL COMMENT 'Síndicos Hombres',
  `SM` varchar(2) NOT NULL COMMENT 'Síndicos Mujeres',
  `RH` varchar(2) NOT NULL COMMENT 'Regidores Hombres',
  `RM` varchar(2) NOT NULL COMMENT 'Regidores Mujeres',
  `IASC` varchar(2) NOT NULL COMMENT 'Iniciativas aprobadas en sesión de cabildo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `gobernanza_por_municipio`
--

INSERT INTO `gobernanza_por_municipio` (`Id`, `Id_Mun`, `PH`, `PM`, `SH`, `SM`, `RH`, `RM`, `IASC`) VALUES
(1, 100, '1', '0', '0', '1', '3', '5', '0'),
(2, 213, '1', '0', '0', '1', '3', '5', '0'),
(3, 111, '1', '0', '0', '1', '5', '3', '2'),
(4, 178, '1', '0', '0', '1', '4', '4', '0'),
(5, 109, '1', '0', '0', '1', '3', '5', '1'),
(6, 197, '0', '1', '1', '0', '5', '5', '0'),
(7, 184, '1', '0', '0', '1', '4', '4', '0'),
(8, 49, '1', '0', '0', '1', '4', '4', '0'),
(9, 183, '1', '0', '0', '1', '3', '5', '0'),
(10, 89, '1', '0', '0', '1', '3', '5', '0'),
(11, 71, '1', '0', '0', '1', '6', '6', '1'),
(12, 162, '1', '0', '0', '1', '4', '4', '0'),
(13, 68, '1', '0', '0', '1', '4', '4', '1'),
(14, 28, '1', '0', '0', '1', '4', '4', '1'),
(15, 14, '1', '0', '0', '1', '4', '4', '3'),
(16, 123, '1', '0', '0', '1', '4', '4', '0'),
(17, 30, '1', '0', '0', '1', '3', '5', '0'),
(18, 167, '1', '0', '0', '1', '3', '5', '1'),
(19, 6, '1', '0', '0', '1', '4', '4', '0'),
(20, 208, '1', '0', '0', '1', '5', '6', '0'),
(21, 84, '1', '0', '0', '1', '3', '5', '0'),
(22, 77, '0', '1', '1', '0', '3', '5', '4'),
(23, 80, '0', '1', '1', '0', '4', '4', '0'),
(24, 72, '1', '0', '0', '1', '3', '5', '0'),
(25, 107, '1', '0', '0', '1', '4', '4', '0'),
(26, 29, '0', '1', '1', '0', '4', '4', '0'),
(27, 215, '1', '0', '0', '1', '4', '4', '0'),
(28, 210, '1', '0', '0', '1', '3', '5', '0'),
(29, 202, '1', '0', '0', '1', '3', '5', '7'),
(30, 78, '1', '0', '0', '1', '4', '4', '0'),
(31, 216, '0', '1', '1', '0', '3', '5', '0'),
(32, 88, '1', '0', '0', '1', '5', '4', '2'),
(33, 200, '0', '1', '1', '0', '4', '4', '0'),
(34, 192, '1', '0', '0', '1', '3', '5', '0'),
(35, 212, '1', '0', '0', '1', '3', '5', '1'),
(36, 43, '1', '0', '0', '1', '4', '4', '0'),
(37, 207, '1', '0', '0', '1', '4', '4', '0'),
(38, 75, '0', '1', '1', '0', '3', '5', '0'),
(39, 25, '1', '0', '0', '1', '4', '4', '0'),
(40, 17, '1', '0', '0', '1', '3', '5', '0'),
(41, 54, '1', '0', '0', '1', '3', '5', '0'),
(42, 174, '1', '0', '0', '1', '4', '8', '0'),
(43, 186, '1', '0', '0', '1', '4', '4', '0'),
(44, 204, '1', '0', '0', '1', '3', '5', '0'),
(45, 39, '1', '0', '0', '1', '3', '5', '1'),
(46, 83, '1', '0', '0', '1', '3', '5', '0'),
(47, 172, '1', '0', '0', '1', '4', '4', '0'),
(48, 50, '1', '0', '0', '1', '4', '4', '0'),
(49, 177, '1', '0', '0', '1', '3', '5', '0'),
(50, 120, '1', '0', '0', '1', '3', '5', '0'),
(51, 129, '0', '1', '1', '0', '4', '4', '0'),
(52, 124, '1', '0', '1', '0', '4', '4', '0'),
(53, 35, '1', '0', '0', '1', '4', '4', '0'),
(54, 13, '1', '0', '0', '1', '5', '3', '0'),
(55, 156, '1', '0', '0', '1', '4', '8', '0'),
(56, 214, '1', '0', '0', '1', '4', '4', '0'),
(57, 149, '1', '0', '0', '1', '3', '5', '0'),
(58, 61, '1', '0', '0', '1', '4', '4', '0'),
(59, 217, '1', '0', '0', '1', '3', '5', '0'),
(60, 195, '1', '0', '0', '1', '3', '5', '0'),
(61, 36, '1', '0', '0', '1', '2', '2', '0'),
(62, 145, '1', '0', '0', '1', '4', '4', '0'),
(63, 10, '1', '0', '0', '1', '4', '7', '0'),
(64, 159, '1', '0', '0', '1', '4', '4', '0'),
(65, 127, '1', '0', '1', '0', '4', '3', '0'),
(66, 196, '1', '0', '0', '1', '3', '4', '0'),
(67, 52, '0', '1', '1', '0', '5', '3', '0'),
(68, 70, '1', '0', '0', '1', '3', '5', '0'),
(69, 146, '0', '1', '1', '0', '4', '4', '1'),
(70, 5, '1', '0', '0', '1', '3', '5', '0'),
(71, 19, '0', '1', '1', '0', '6', '6', '0'),
(72, 15, '1', '0', '0', '1', '4', '8', '0'),
(73, 114, '1', '0', '0', '1', '11', '12', '1'),
(74, 119, '1', '0', '0', '1', '5', '7', '1'),
(75, 163, '1', '0', '0', '1', '3', '5', '0'),
(76, 1, '1', '0', '0', '1', '5', '6', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infraestructura_por_municipio`
--

CREATE TABLE `infraestructura_por_municipio` (
  `Id` int(11) NOT NULL,
  `Id_Mun` int(11) NOT NULL,
  `TV` varchar(10) NOT NULL COMMENT 'Total de viviendas',
  `AV` varchar(10) NOT NULL COMMENT 'Agua por No. de vivienda',
  `EV` varchar(10) NOT NULL COMMENT 'Electricidad por No. Vivienda',
  `DV` varchar(10) NOT NULL COMMENT 'Drenaje por No. Vivienda',
  `CCEV_2020` varchar(10) NOT NULL COMMENT 'Carencia por calidad y espacios de la vivienda (Personas 2020)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `infraestructura_por_municipio`
--

INSERT INTO `infraestructura_por_municipio` (`Id`, `Id_Mun`, `TV`, `AV`, `EV`, `DV`, `CCEV_2020`) VALUES
(1, 100, '2364', '2295', '2340', '2202', '2702'),
(2, 213, '3174', '2932', '3084', '2742', '2263'),
(3, 111, '2936', '2894', '2903', '2823', '2905'),
(4, 178, '4446', '3158', '4338', '3747', '2676'),
(5, 109, '5352', '5271', '5230', '5103', '3973'),
(6, 197, '21258', '19319', '20926', '20244', '13039'),
(7, 184, '1704', '1588', '1694', '1316', '2246'),
(8, 49, '4080', '4003', '4044', '3209', '5384'),
(9, 183, '5006', '4699', '4947', '4235', '4631'),
(10, 89, '3188', '3025', '3147', '2851', '1747'),
(11, 71, '27575', '26089', '27427', '26108', '21103'),
(12, 162, '1045', '946', '1015', '848', '1986'),
(13, 68, '1996', '1950', '1964', '1805', '2305'),
(14, 28, '724', '717', '710', '702', '664'),
(15, 14, '1352', '1266', '1320', '1191', '1477'),
(16, 123, '1073', '1036', '1046', '922', '1417'),
(17, 30, '224', '224', '222', '207', '90'),
(18, 167, '2566', '2407', '2494', '2002', '4122'),
(19, 6, '3643', '3510', '3598', '3115', '3135'),
(20, 208, '22888', '22091', '22667', '21030', '14108'),
(21, 84, '1734', '1606', '1655', '1491', '2305'),
(22, 77, '1438', '1135', '1342', '993', '1439'),
(23, 80, '667', '662', '665', '642', '477'),
(24, 72, '3922', '3455', '3737', '3295', '7047'),
(25, 107, '2778', '1600', '2641', '1963', '5411'),
(26, 29, '953', '936', '928', '922', '1111'),
(27, 215, '1160', '1149', '1151', '1146', '869'),
(28, 210, '1456', '1424', '1438', '1431', '1484'),
(29, 202, '3399', '3096', '3270', '2938', '2208'),
(30, 78, '3922', '3836', '3832', '3556', '3443'),
(31, 216, '740', '718', '694', '690', '498'),
(32, 88, '1291', '1240', '1241', '1160', '1096'),
(33, 200, '1017', '966', '958', '782', '897'),
(34, 192, '1650', '1605', '1603', '1599', '1077'),
(35, 212, '5151', '4883', '5010', '3718', '3931'),
(36, 43, '12636', '11727', '12097', '10872', '11386'),
(37, 207, '14785', '14298', '14479', '13514', '10710'),
(38, 75, '3287', '3254', '3249', '2767', '2957'),
(39, 25, '2318', '2239', '2247', '2170', '2629'),
(40, 17, '6921', '6779', '6820', '6086', '4201'),
(41, 54, '7850', '7531', '7716', '7116', '5333'),
(42, 174, '28286', '28085', '28126', '27715', '6572'),
(43, 186, '14394', '14120', '14138', '13243', '4350'),
(44, 204, '1997', '1969', '1971', '1788', '1549'),
(45, 39, '2859', '2789', '2796', '2435', '1999'),
(46, 83, '6426', '6130', '6279', '5109', '2690'),
(47, 172, '7718', '7291', '7530', '6886', '3615'),
(48, 50, '5311', '4536', '5221', '3348', '5573'),
(49, 177, '13122', '12477', '12834', '11750', '5842'),
(50, 120, '1381', '1308', '1345', '1186', '1699'),
(51, 129, '3531', '3494', '3507', '3448', '2313'),
(52, 124, '3895', '3862', '3861', '3748', '3053'),
(53, 35, '5121', '4891', '5069', '4805', '3353'),
(54, 13, '4712', '4599', '4689', '4566', '4115'),
(55, 156, '85356', '83079', '84728', '84315', '28967'),
(56, 214, '4407', '4353', '4371', '4349', '3200'),
(57, 149, '7414', '6958', '7234', '6663', '4746'),
(58, 61, '3370', '2443', '3268', '2212', '7625'),
(59, 217, '4721', '4425', '4634', '3578', '7783'),
(60, 195, '5973', '4772', '5849', '2806', '7780'),
(61, 36, '3498', '3180', '3417', '2691', '4301'),
(62, 145, '3280', '2887', '3114', '2258', '6046'),
(63, 10, '15575', '12617', '15252', '10854', '18522'),
(64, 159, '1161', '1124', '1148', '1075', '1173'),
(65, 127, '1157', '1030', '1135', '1063', '460'),
(66, 196, '482', '454', '473', '461', '176'),
(67, 52, '385', '379', '382', '359', '271'),
(68, 70, '1773', '1708', '1744', '1591', '1000'),
(69, 146, '256', '252', '252', '234', '170'),
(70, 5, '850', '528', '827', '671', '845'),
(71, 19, '37573', '36345', '37305', '36557', '11960'),
(72, 15, '31585', '27891', '31247', '30849', '9218'),
(73, 114, '477609', '465939', '475608', '472959', '69641'),
(74, 119, '44808', '42928', '44111', '43925', '5531'),
(75, 163, '4096', '3806', '4048', '4026', '1733'),
(76, 1, '15226', '13240', '14971', '14429', '7865');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `justicia_seguridad_por_municipio`
--

CREATE TABLE `justicia_seguridad_por_municipio` (
  `Id` int(11) NOT NULL,
  `Id_Mun` int(11) NOT NULL,
  `ICJI` varchar(6) NOT NULL COMMENT 'Indicador cuantitativo de juzgados índigenas',
  `DVF_2022` varchar(6) NOT NULL COMMENT 'Delitos de violencia Familiar 2022',
  `DVGTSDVF_2022` varchar(6) NOT NULL COMMENT 'Delitos de violencia de genero en todas sus modalidades distinta a la violencia familiar 2022',
  `BE` varchar(6) NOT NULL COMMENT 'Beneficados Ejidatarios',
  `BC` varchar(6) NOT NULL COMMENT 'Beneficiados Comuneros',
  `TP` varchar(6) NOT NULL COMMENT 'Trata de Personas 2022',
  `Ejidos` varchar(6) NOT NULL,
  `Comunidades` varchar(6) NOT NULL,
  `NA` varchar(6) NOT NULL COMMENT 'Núcleos Agrarios'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `justicia_seguridad_por_municipio`
--

INSERT INTO `justicia_seguridad_por_municipio` (`Id`, `Id_Mun`, `ICJI`, `DVF_2022`, `DVGTSDVF_2022`, `BE`, `BC`, `TP`, `Ejidos`, `Comunidades`, `NA`) VALUES
(1, 100, '0', '5', '0', '0', '0', '0', '0', '0', '0'),
(2, 213, '0', '4', '0', '946', '82', '0', '7', '1', '8'),
(3, 111, '0', '7', '0', '743', '467', '0', '14', '2', '16'),
(4, 178, '0', '2', '0', '79', '95', '0', '1', '2', '3'),
(5, 109, '0', '34', '0', 'S/D', '82', '0', '0', '2', '2'),
(6, 197, '0', '118', '0', '888', 'S/D', '0', '9', '0', '9'),
(7, 184, '0', '2', '0', '475', 'S/D', '0', '3', '0', '3'),
(8, 49, '0', '12', '0', 'S/D', '379', '0', '0', '1', '1'),
(9, 183, '0', '7', '0', 'S/D', 'S/D', '0', '0', '0', '0'),
(10, 89, '0', '1', '0', '107', 'S/D', '0', '1', '0', '1'),
(11, 71, '0', '216', '0', '195', 'S/D', '0', '4', '0', '4'),
(12, 162, '0', '2', '0', 'S/D', 'S/D', '0', '0', '0', '0'),
(13, 68, '0', '1', '0', 'S/D', 'S/D', '0', '0', '0', '0'),
(14, 28, '0', '0', '0', '61', 'S/D', '0', '1', '0', '1'),
(15, 14, '0', '3', '0', 'S/D', '222', '0', '0', '1', '1'),
(16, 123, '0', '1', '0', 'S/D', 'S/D', '0', '0', '0', '0'),
(17, 30, '0', '1', '0', 'S/D', 'S/D', '0', '0', '0', '0'),
(18, 167, '0', '4', '0', '208', 'S/D', '0', '3', '0', '3'),
(19, 6, '0', '9', '0', 'S/D', '519', '0', '0', '2', '2'),
(20, 208, '1', '143', '0', '1237', '2931', '0', '13', '5', '18'),
(21, 84, '0', '1', '0', 'S/D', 'S/D', '0', '0', '0', '0'),
(22, 77, '0', '0', '0', '70', '26', '0', '0', '0', '0'),
(23, 80, '0', '0', '0', 'S/D', 'S/D', '0', '0', '0', '0'),
(24, 72, '1', '26', '0', '0', '0', '0', '1', '1', '2'),
(25, 107, '0', '2', '0', '317', 'S/D', '0', '1', '0', '1'),
(26, 29, '0', '0', '0', '83', 'S/D', '0', '1', '0', '1'),
(27, 215, '0', '0', '0', 'S/D', 'S/D', '0', '0', '0', '0'),
(28, 210, '0', '1', '0', 'S/D', 'S/D', '0', '0', '0', '0'),
(29, 202, '0', '7', '0', '57', '38', '0', '1', '2', '3'),
(30, 78, '0', '4', '0', '344', 'S/D', '0', '1', '0', '1'),
(31, 216, '0', '0', '0', 'S/D', '68', '0', '0', '1', '1'),
(32, 88, '0', '0', '0', '166', 'S/D', '0', '3', '0', '3'),
(33, 200, '0', '1', '0', '64', 'S/D', '0', '1', '0', '1'),
(34, 192, '0', '0', '0', '42', 'S/D', '0', '1', '0', '1'),
(35, 212, '0', '12', '0', '2414', 'S/D', '0', '9', '0', '9'),
(36, 43, '1', '112', '0', '0', 'S/D', '0', '2', '0', '2'),
(37, 207, '0', '40', '0', '794', 'S/D', '0', '8', '0', '8'),
(38, 75, '0', '14', '0', 'S/D', 'S/D', '0', '0', '0', '0'),
(39, 25, '0', '6', '0', '534', 'S/D', '0', '3', '0', '3'),
(40, 17, '0', '36', '0', 'S/D', 'S/D', '0', '0', '0', '0'),
(41, 54, '0', '27', '0', '141', '300', '1', '1', '1', '2'),
(42, 174, '0', '124', '0', '114', 'S/D', '1', '1', '0', '1'),
(43, 186, '0', '80', '0', '835', 'S/D', '1', '4', '0', '4'),
(44, 204, '0', '8', '0', 'S/D', 'S/D', '0', '0', '0', '0'),
(45, 39, '0', '3', '0', '78', 'S/D', '0', '1', '0', '1'),
(46, 83, '0', '11', '0', '2237', '204', '0', '20', '2', '22'),
(47, 172, '0', '14', '0', '160', '57', '0', '3', '1', '4'),
(48, 50, '0', '1', '0', 'S/D', 'S/D', '0', '0', '0', '0'),
(49, 177, '0', '56', '0', '2298', '498', '1', '16', '2', '18'),
(50, 120, '0', '10', '0', '314', 'S/D', '0', '2', '0', '2'),
(51, 129, '1', '7', '0', '568', '1272', '0', '4', '4', '8'),
(52, 124, '1', '6', '0', '499', '91', '0', '3', '1', '4'),
(53, 35, '0', '24', '0', '588', 'S/D', '0', '8', '0', '8'),
(54, 13, '0', '20', '0', '1223', '204', '0', '1', '1', '2'),
(55, 156, '0', '710', '0', '1367', 'S/D', '0', '14', '0', '14'),
(56, 214, '0', '15', '0', '212', '0', '0', '1', '1', '2'),
(57, 149, '0', '56', '0', '586', 'S/D', '0', '3', '0', '3'),
(58, 61, '0', '1', '0', '1149', 'S/D', '0', '2', '0', '2'),
(59, 217, '0', '11', '0', '264', 'S/D', '0', '1', '1', '2'),
(60, 195, '0', '5', '0', '602', '0', '0', '3', '1', '4'),
(61, 36, '0', '0', '0', '0', '0', '0', '1', '2', '3'),
(62, 145, '1', '2', '0', '97', 'S/D', '0', '1', '0', '1'),
(63, 10, '0', '58', '0', '1895', '0', '0', '10', '1', '11'),
(64, 159, '0', '0', '0', '176', '0', '0', '2', '1', '3'),
(65, 127, '0', '4', '0', '216', '181', '0', '2', '1', '3'),
(66, 196, '0', '7', '0', '57', 'S/D', '0', '1', '0', '1'),
(67, 52, '0', '0', '0', 'S/D', 'S/D', '0', '0', '0', '0'),
(68, 70, '0', '3', '0', '339', '1339', '0', '3', '4', '7'),
(69, 146, '0', '1', '0', 'S/D', 'S/D', '0', '0', '0', '0'),
(70, 5, '0', '1', '0', '421', 'S/D', '0', '3', '0', '3'),
(71, 19, '0', '176', '0', '3325', '1571', '0', '29', '1', '30'),
(72, 15, '0', '292', '0', '929', 'S/D', '1', '6', '0', '6'),
(73, 114, '1', '2696', '0', '3248', 'S/D', '49', '28', '0', '28'),
(74, 119, '0', '334', '0', '637', 'S/D', '1', '5', '0', '5'),
(75, 163, '0', '16', '0', '868', 'S/D', '0', '1', '0', '1'),
(76, 1, '0', '69', '0', '2803', 'S/D', '0', '9', '0', '9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lenguas`
--

CREATE TABLE `lenguas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `icono` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `lenguas`
--

INSERT INTO `lenguas` (`id`, `nombre`, `icono`) VALUES
(0, 'ninguna', '../public/img/Icon-Universal.png'),
(1, 'Totonaco', '../public/img/Icon-Totonaco-Point.png'),
(2, 'Mazateco', '../public/img/Icon-Mazateco-Point.png'),
(3, 'Mixteco', '../public/img/Icon-Mixteco-Point.png'),
(4, 'Popoloca/Nguiva', '../public/img/Icon-Nguiva-Point.png'),
(5, 'Otomi', '../public/img/Icon-Otomi-Point.png'),
(6, 'Tepehua', '../public/img/Icon-Tepehua-Point.png'),
(7, 'Nahuatl', '../public/img/Icon-Nahuatl-Point.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lenguas_por_municipio`
--

CREATE TABLE `lenguas_por_municipio` (
  `Id` int(11) NOT NULL,
  `Id_Mun` int(11) NOT NULL,
  `Lenguas` varchar(50) NOT NULL,
  `IPPIH` varchar(20) NOT NULL COMMENT 'Indicador de Proporción de Población indígena hablante',
  `PTICMAJ` varchar(150) NOT NULL COMMENT 'Personas traductoras e intérpretes certificadas que mejoren el acceso a la justicia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `lenguas_por_municipio`
--

INSERT INTO `lenguas_por_municipio` (`Id`, `Id_Mun`, `Lenguas`, `IPPIH`, `PTICMAJ`) VALUES
(1, 100, 'Totonaco-Náhuatl-Otomi', '98.96', 'No cuenta con.'),
(2, 213, 'Otomi-Náhuatl', '52.39', 'No cuenta con.'),
(3, 111, 'Totonaco-Otomi-Náhuatl-Tepehua', '57.9', 'No cuenta con.'),
(4, 178, 'Totonaco-Náhuatl-Otomi', '32.01', 'No cuenta con.'),
(5, 109, 'Otomi-Náhuatl', '57.73', 'No cuenta con.'),
(6, 197, 'Náhuatl-Totonaco-Otomi', '11.93', 'No cuenta con.'),
(7, 184, 'Náhuatl-Totonaco-Otomi', '62.94', 'No cuenta con.'),
(8, 49, 'Náhuatl', '84.53', 'No cuenta con.'),
(9, 183, 'Náhuatl', '86.2', 'No cuenta con.'),
(10, 89, 'Totonaco-Náhuatl-Otomi', '83.17', 'No cuenta con.'),
(11, 71, 'Náhuatl-Totonaco', '36.38', 'No cuenta con.'),
(12, 162, 'Totonaco', '96.02', 'No cuenta con.'),
(13, 68, 'Totonaco-Náhuatl-Otomi', '87.68', 'No cuenta con.'),
(14, 28, 'Totonaco', '99.85', 'No cuenta con.'),
(15, 14, 'Totonaco', '88.72', 'No cuenta con.'),
(16, 123, 'Totonaco-Náhuatl', '85.75', 'No cuenta con.'),
(17, 30, 'Náhuatl', '98.94', 'No cuenta con.'),
(18, 167, 'Náhuatl-Totonaco', '99.48', 'Una persona intérprete de la variante: Totonaco central del sur'),
(19, 6, 'Totonaco-Náhuatl', '95.4', 'No cuenta con.'),
(20, 208, 'Náhuatl-Totonaco', '21.12', 'Una persona intérprete de la variante: Náhuatl de la Sierra, Noreste de Puebla'),
(21, 84, 'Totonaco', '99.04', 'No cuenta con.'),
(22, 77, 'Totonaco', '96.2', 'No cuenta con.'),
(23, 80, 'Totonaco', '99.88', 'No cuenta con.'),
(24, 72, 'Totonaco-Náhuatl', '96.35', 'No cuenta con.'),
(25, 107, 'Totonaco', '97.99', 'No cuenta con.'),
(26, 29, 'Totonaco', '93.87', 'Una persona intérprete de la variante: Totonaco central del sur'),
(27, 215, 'Totonaco-Náhuatl', '98.78', 'No cuenta con.'),
(28, 210, 'Totonaco-Náhuatl', '87.51', 'Una persona intérprete de la variante: Totonaco central del sur'),
(29, 202, 'Náhuatl', '94.75', 'No cuenta con.'),
(30, 78, 'Náhuatl', '85.17', 'No cuenta con.'),
(31, 216, 'Náhuatl', '89.23', 'Una persona intérprete de la variante: Náhuatl de la Sierra, Noreste de Puebla'),
(32, 88, 'Náhuatl-Totonaco', '77.91', 'No cuenta con.'),
(33, 200, 'Náhuatl', '56.69', 'No cuenta con.'),
(34, 192, 'Náhuatl-Totonaco', '79.36', 'No cuenta con.'),
(35, 212, 'Náhuatl', '68.39', 'No cuenta con.'),
(36, 43, 'Náhuatl-Totonaco', '80.65', 'Siete personas intérpretes de la variante: Náhuatl de la sierra, Noreste de Puebla'),
(37, 207, 'Náhuatl-Totonaco', '66.27', 'Dos personas intérpretes de la variante: Náhuatl de la sierra, Noreste de Puebla'),
(38, 75, 'Náhuatl', '97.19', 'No cuenta con.'),
(39, 25, 'Náhuatl', '49.47', 'No cuenta con.'),
(40, 17, 'Náhuatl', '66.47', 'No cuenta con.'),
(41, 54, 'Náhuatl', '36.64', 'No cuenta con.'),
(42, 174, 'Náhuatl-Totonaco', '14.12', 'Dos personas intérpretes de la variante: Náhuatl de la sierra, Noreste de Puebla'),
(43, 186, 'Náhuatl', '32.99', 'No cuenta con.'),
(44, 204, 'Náhuatl', '86.06', 'No cuenta con.'),
(45, 39, 'Náhuatl', '93.69', 'No cuenta con.'),
(46, 83, 'Náhuatl', '19.64', 'No cuenta con.'),
(47, 172, 'Náhuatl', '31.56', 'No cuenta con.'),
(48, 50, 'Náhuatl', '4341', 'No cuenta con.'),
(49, 177, 'Náhuatl', '3786', 'Tres personas intérpretes de la variante: Popoloca del Centro'),
(50, 120, 'Náhuatl', '60.32', 'No cuenta con.'),
(51, 129, 'Náhuatl', '97.82', 'Dos personas intérpretes de la variante: Náhuatl de la Sierra Negra, Sur'),
(52, 124, 'Náhuatl-Popoloca', '84.72', 'Tres personas intérpretes de la variante: Popoloca de Oriente'),
(53, 35, 'Náhuatl', '46.93', 'No cuenta con.'),
(54, 13, 'Náhuatl', '89.11', 'Una persona intérprete de la variante: \n Nahuatl de la Sierra Negra, Sur.'),
(55, 156, 'Náhuatl-Mazateco-Mixteco', '22.38', 'No cuenta con.'),
(56, 214, 'Náhuatl', '86.09', 'No cuenta con.'),
(57, 149, 'Náhuatl', '18.47', 'No cuenta con.'),
(58, 61, 'Náhuatl', '99.21', 'Una persona intérprete de la variante: Náhuatl de la sierra negra, Norte'),
(59, 217, 'Náhuatl', '99.65', 'Dos personas intérpretes de la variante: Náhuatl de la sierra negra, Norte'),
(60, 195, 'Náhuatl', '46.9', 'No cuenta con.'),
(61, 36, 'Náhuatl', '99.72', 'No cuenta con.'),
(62, 145, 'Náhuatl', '99.01', 'No cuenta con.'),
(63, 10, 'Náhuatl', '63.11', 'No cuenta con.'),
(64, 159, 'Náhuatl', '80.09', 'No cuenta con.'),
(65, 127, 'Mixteco', '80.27', 'No cuenta con.'),
(66, 196, 'Mixteco-Náhuatl', '83.54', 'No cuenta con.'),
(67, 52, 'Mixteco', '96.22', 'No cuenta con.'),
(68, 70, 'Náhuatl', '88.7', 'No cuenta con.'),
(69, 146, 'Mixteco', '88.49', 'No cuenta con.'),
(70, 5, 'Náhuatl', '49.78', 'No cuenta con.'),
(71, 19, 'Náhuatl-Mixteco', '9.85', 'No cuenta con.'),
(72, 15, 'Náhuatl', '6.82', 'No cuenta con.'),
(73, 114, 'Náhuatl-Totonaco-Mazateco-Mixteco', '7.1', 'No cuenta con.'),
(74, 119, 'Náhuatl', '8.37', 'No cuenta con.'),
(75, 163, 'Náhuatl', '38.34', 'No cuenta con.'),
(76, 1, 'Náhuatl-Mixteco', '13.73', 'No cuenta con.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lengua_por_municipio`
--

CREATE TABLE `lengua_por_municipio` (
  `id` int(11) NOT NULL,
  `idmunicipio` int(11) NOT NULL,
  `idlengua` int(11) NOT NULL,
  `nhablantes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `lengua_por_municipio`
--

INSERT INTO `lengua_por_municipio` (`id`, `idmunicipio`, `idlengua`, `nhablantes`) VALUES
(1, 57, 7, 83),
(2, 64, 7, 1715),
(3, 86, 7, 917),
(4, 100, 7, 9859),
(5, 109, 7, 5784),
(6, 111, 7, 332),
(7, 178, 7, 537),
(8, 187, 7, 46),
(9, 194, 7, 1509),
(10, 197, 7, 6267),
(11, 213, 7, 2653),
(12, 8, 7, 184),
(13, 49, 7, 13987),
(14, 71, 7, 33370),
(15, 89, 7, 1166),
(16, 91, 7, 2291),
(17, 183, 7, 17206),
(18, 184, 7, 4021),
(19, 6, 7, 7315),
(20, 68, 7, 205),
(21, 123, 7, 143),
(22, 162, 7, 32),
(23, 167, 7, 10019),
(24, 208, 7, 13814),
(25, 29, 7, 22),
(26, 72, 7, 296),
(27, 77, 7, 77),
(28, 78, 7, 12794),
(29, 202, 7, 12055),
(30, 210, 7, 356),
(31, 215, 7, 78),
(32, 43, 7, 38414),
(33, 88, 7, 2625),
(34, 101, 7, 1256),
(35, 192, 7, 2757),
(36, 200, 7, 1890),
(37, 207, 7, 35518),
(38, 211, 7, 2372),
(39, 212, 7, 13012),
(40, 216, 7, 2160),
(41, 2, 7, 515),
(42, 17, 7, 18759),
(43, 25, 7, 4139),
(44, 54, 7, 12459),
(45, 75, 7, 12518),
(46, 76, 7, 2941),
(47, 158, 7, 1171),
(48, 173, 7, 2110),
(49, 174, 7, 13506),
(50, 186, 7, 17562),
(51, 199, 7, 1098),
(52, 204, 7, 6818),
(53, 16, 7, 944),
(54, 39, 7, 8722),
(55, 53, 7, 624),
(56, 83, 7, 4772),
(57, 172, 7, 8770),
(58, 44, 7, 322),
(59, 94, 7, 1778),
(60, 104, 7, 72),
(61, 105, 7, 432),
(62, 108, 7, 226),
(63, 117, 7, 95),
(64, 128, 7, 21),
(65, 142, 7, 60),
(66, 152, 7, 62),
(67, 170, 7, 43),
(68, 50, 7, 11242),
(69, 58, 7, 2975),
(70, 67, 7, 217),
(71, 93, 7, 110),
(72, 116, 7, 998),
(73, 179, 7, 149),
(74, 4, 7, 388),
(75, 38, 7, 52),
(76, 65, 7, 92),
(77, 115, 7, 136),
(78, 118, 7, 65),
(79, 144, 7, 25),
(80, 23, 7, 22),
(81, 45, 7, 228),
(82, 99, 7, 66),
(83, 110, 7, 35),
(84, 154, 7, 297),
(85, 177, 7, 4287),
(86, 189, 7, 226),
(87, 203, 7, 42),
(88, 205, 7, 474),
(89, 13, 7, 18689),
(90, 27, 7, 92),
(91, 35, 7, 9465),
(92, 46, 7, 335),
(93, 103, 7, 84),
(94, 120, 7, 3311),
(95, 124, 7, 11689),
(96, 129, 7, 12866),
(97, 149, 7, 2828),
(98, 156, 7, 52049),
(99, 161, 7, 455),
(100, 209, 7, 183),
(101, 214, 7, 14410),
(102, 10, 7, 41380),
(103, 36, 7, 13777),
(104, 61, 7, 12408),
(105, 145, 7, 10159),
(106, 195, 7, 11541),
(107, 217, 7, 18203),
(108, 7, 7, 296),
(109, 51, 7, 91),
(110, 62, 7, 97),
(111, 85, 7, 769),
(112, 133, 7, 96),
(113, 159, 7, 2969),
(114, 166, 7, 718),
(115, 168, 7, 80),
(116, 176, 7, 82),
(117, 185, 7, 74),
(118, 201, 7, 149),
(119, 11, 7, 72),
(120, 32, 7, 332),
(121, 47, 7, 96),
(122, 73, 7, 41),
(123, 81, 7, 160),
(124, 87, 7, 1751),
(125, 160, 7, 21),
(126, 198, 7, 39),
(127, 3, 7, 145),
(128, 155, 7, 91),
(129, 157, 7, 24),
(130, 191, 7, 193),
(131, 18, 7, 61),
(132, 31, 7, 20),
(133, 70, 7, 5578),
(134, 82, 7, 91),
(135, 92, 7, 114),
(136, 98, 7, 773),
(137, 147, 7, 116),
(138, 150, 7, 593),
(139, 169, 7, 581),
(140, 206, 7, 97),
(141, 5, 7, 1480),
(142, 19, 7, 12973),
(143, 22, 7, 401),
(144, 33, 7, 916),
(145, 69, 7, 280),
(146, 126, 7, 155),
(147, 148, 7, 385),
(148, 165, 7, 29),
(149, 175, 7, 2520),
(150, 188, 7, 4672),
(151, 26, 7, 4692),
(152, 48, 7, 632),
(153, 60, 7, 559),
(154, 74, 7, 2045),
(155, 102, 7, 3631),
(156, 122, 7, 229),
(157, 132, 7, 599),
(158, 134, 7, 126),
(159, 180, 7, 139),
(160, 143, 7, 76),
(161, 15, 7, 4756),
(162, 34, 7, 885),
(163, 41, 7, 1884),
(164, 90, 7, 457),
(165, 106, 7, 5141),
(166, 114, 7, 78702),
(167, 119, 7, 10159),
(168, 125, 7, 79),
(169, 136, 7, 104),
(170, 140, 7, 3039),
(171, 181, 7, 61),
(172, 1, 7, 8718),
(173, 20, 7, 2735),
(174, 40, 7, 414),
(175, 79, 7, 128),
(176, 97, 7, 377),
(177, 151, 7, 149),
(178, 153, 7, 151),
(179, 163, 7, 6674),
(180, 164, 7, 331),
(181, 171, 7, 27),
(182, 182, 7, 271),
(183, 64, 1, 975),
(184, 86, 1, 1443),
(185, 109, 1, 56),
(186, 111, 1, 7504),
(187, 178, 1, 4353),
(188, 194, 1, 1224),
(189, 197, 1, 2813),
(190, 213, 1, 4268),
(191, 71, 1, 4180),
(192, 89, 1, 9483),
(193, 91, 1, 65),
(194, 184, 1, 60),
(195, 6, 1, 7600),
(196, 14, 1, 4272),
(197, 14, 7, 2616),
(198, 68, 1, 6468),
(199, 123, 1, 3147),
(200, 162, 1, 3751),
(201, 167, 1, 1541),
(202, 208, 1, 3450),
(203, 29, 1, 3391),
(204, 72, 1, 17821),
(205, 77, 1, 4912),
(206, 78, 1, 51),
(207, 80, 1, 2558),
(208, 84, 1, 6891),
(209, 107, 1, 11268),
(210, 210, 1, 4430),
(211, 215, 1, 4763),
(212, 43, 1, 279),
(213, 88, 1, 879),
(214, 101, 1, 43),
(215, 192, 1, 2254),
(216, 207, 1, 1030),
(217, 211, 1, 113),
(218, 2, 1, 44),
(219, 25, 1, 87),
(220, 54, 1, 30),
(221, 76, 1, 603),
(222, 158, 1, 844),
(223, 174, 1, 236),
(224, 186, 1, 32),
(225, 199, 1, 30),
(226, 39, 1, 22),
(227, 53, 1, 204),
(228, 83, 1, 21),
(229, 172, 1, 36),
(230, 94, 1, 27),
(231, 108, 1, 27),
(232, 142, 1, 29),
(233, 116, 1, 20),
(234, 179, 1, 21),
(235, 38, 1, 21),
(236, 118, 1, 29),
(237, 154, 1, 70),
(238, 156, 1, 145),
(239, 85, 1, 65),
(240, 166, 1, 33),
(241, 3, 1, 24),
(242, 155, 1, 31),
(243, 169, 1, 24),
(244, 19, 1, 22),
(245, 69, 1, 26),
(246, 48, 1, 118),
(247, 74, 1, 319),
(248, 102, 1, 26),
(249, 122, 1, 28),
(250, 132, 1, 356),
(251, 134, 1, 24),
(252, 180, 1, 51),
(253, 143, 1, 73),
(254, 15, 1, 1216),
(255, 34, 1, 108),
(256, 41, 1, 945),
(257, 90, 1, 54),
(258, 106, 1, 51),
(259, 114, 1, 13609),
(260, 119, 1, 798),
(261, 125, 1, 37),
(262, 140, 1, 567),
(263, 181, 1, 27),
(264, 1, 1, 32),
(265, 40, 1, 113),
(266, 64, 2, 20),
(267, 197, 2, 48),
(268, 207, 2, 32),
(269, 54, 2, 20),
(270, 76, 2, 30),
(271, 53, 2, 40),
(272, 172, 2, 62),
(273, 94, 2, 33),
(274, 108, 2, 20),
(275, 38, 2, 38),
(276, 118, 2, 36),
(277, 45, 2, 24),
(278, 154, 2, 85),
(279, 177, 2, 81),
(280, 205, 2, 25),
(281, 13, 2, 78),
(282, 35, 2, 112),
(283, 46, 2, 43),
(284, 103, 2, 29),
(285, 120, 2, 53),
(286, 124, 2, 56),
(287, 149, 2, 1373),
(288, 156, 2, 13910),
(289, 161, 2, 246),
(290, 209, 2, 71),
(291, 214, 2, 50),
(292, 10, 2, 119),
(293, 36, 2, 123),
(294, 145, 2, 3790),
(295, 195, 2, 20),
(296, 85, 2, 82),
(297, 19, 2, 80),
(298, 132, 2, 80),
(299, 138, 2, 0),
(300, 180, 2, 29),
(301, 15, 2, 1336),
(302, 34, 2, 52),
(303, 41, 2, 1120),
(304, 106, 2, 48),
(305, 114, 2, 15262),
(306, 119, 2, 154),
(307, 136, 2, 47),
(308, 140, 2, 223),
(309, 1, 2, 55),
(310, 40, 2, 24),
(311, 164, 2, 160),
(312, 67, 4, 4),
(313, 4, 4, 16),
(314, 154, 4, 44),
(315, 177, 4, 15438),
(316, 205, 4, 79),
(317, 13, 4, 10),
(318, 27, 4, 14),
(319, 124, 4, 1598),
(320, 149, 4, 141),
(321, 156, 4, 867),
(322, 161, 4, 2750),
(323, 209, 4, 523),
(324, 10, 4, 54),
(325, 185, 4, 10),
(326, 37, 4, 267),
(327, 82, 4, 34),
(328, 92, 4, 11),
(329, 147, 4, 885),
(330, 150, 4, 21),
(331, 169, 4, 1615),
(332, 26, 4, 12),
(333, 15, 4, 359),
(334, 34, 4, 34),
(335, 114, 4, 485),
(336, 119, 4, 72),
(337, 136, 4, 6),
(338, 140, 4, 80),
(339, 153, 4, 10),
(340, 163, 4, 20),
(341, 64, 3, 21),
(342, 109, 3, 18),
(343, 111, 3, 30),
(344, 178, 3, 15),
(345, 197, 3, 14),
(346, 49, 3, 10),
(347, 208, 3, 28),
(348, 78, 3, 12),
(349, 207, 3, 43),
(350, 211, 3, 10),
(351, 2, 3, 19),
(352, 17, 3, 9),
(353, 54, 3, 18),
(354, 76, 3, 12),
(355, 174, 3, 18),
(356, 186, 3, 23),
(357, 53, 3, 40),
(358, 172, 3, 13),
(359, 44, 3, 14),
(360, 94, 3, 12),
(361, 108, 3, 10),
(362, 117, 3, 20),
(363, 116, 3, 10),
(364, 179, 3, 10),
(365, 4, 3, 16),
(366, 65, 3, 14),
(367, 118, 3, 10),
(368, 45, 3, 51),
(369, 99, 3, 10),
(370, 110, 3, 21),
(371, 154, 3, 15),
(372, 177, 3, 58),
(373, 189, 3, 15),
(374, 13, 3, 25),
(375, 27, 3, 25),
(376, 35, 3, 22),
(377, 46, 3, 39),
(378, 149, 3, 307),
(379, 156, 3, 4511),
(380, 161, 3, 34),
(381, 209, 3, 1080),
(382, 10, 3, 10),
(383, 51, 3, 102),
(384, 62, 3, 22),
(385, 85, 3, 168),
(386, 176, 3, 35),
(387, 81, 3, 11),
(388, 3, 3, 887),
(389, 24, 3, 13),
(390, 55, 3, 23),
(391, 66, 3, 33),
(392, 112, 3, 452),
(393, 113, 3, 16),
(394, 127, 3, 2751),
(395, 139, 3, 12),
(396, 141, 3, 16),
(397, 155, 3, 250),
(398, 157, 3, 64),
(399, 190, 3, 51),
(400, 191, 3, 114),
(401, 196, 3, 1253),
(402, 18, 3, 33),
(403, 42, 3, 14),
(404, 52, 3, 1088),
(405, 70, 3, 19),
(406, 82, 3, 23),
(407, 98, 3, 18),
(408, 146, 3, 669),
(409, 147, 3, 38),
(410, 169, 3, 34),
(411, 206, 3, 23),
(412, 19, 3, 153),
(413, 22, 3, 19),
(414, 69, 3, 24),
(415, 148, 3, 36),
(416, 175, 3, 12),
(417, 26, 3, 14),
(418, 48, 3, 12),
(419, 74, 3, 15),
(420, 132, 3, 156),
(421, 134, 3, 13),
(422, 180, 3, 80),
(423, 143, 3, 42),
(424, 15, 3, 259),
(425, 41, 3, 121),
(426, 90, 3, 15),
(427, 114, 3, 3327),
(428, 119, 3, 314),
(429, 1, 3, 125),
(430, 40, 3, 34),
(431, 164, 3, 63),
(432, 57, 5, 590),
(433, 64, 5, 427),
(434, 86, 5, 502),
(435, 109, 5, 6835),
(436, 111, 5, 2388),
(437, 178, 5, 365),
(438, 187, 5, 545),
(439, 194, 5, 680),
(440, 197, 5, 485),
(441, 213, 5, 46),
(442, 64, 6, 89),
(443, 111, 6, 215),
(444, 187, 6, 28),
(445, 194, 6, 82),
(446, 197, 6, 90),
(447, 213, 6, 5),
(448, 71, 6, 48),
(449, 149, 6, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `token` text NOT NULL,
  `token_exp` text NOT NULL,
  `date_created` date NOT NULL,
  `time_created` time DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medio_ambiente_por_municipio`
--

CREATE TABLE `medio_ambiente_por_municipio` (
  `Id` int(11) NOT NULL,
  `Id_Mun` int(11) NOT NULL,
  `ICM` varchar(100) NOT NULL COMMENT 'Indicador del clima por municipio',
  `TMA` varchar(8) NOT NULL COMMENT 'Temperatura media anual (grados Celcius)',
  `IPA` varchar(12) NOT NULL COMMENT 'Indicador de precipitación anual',
  `TS` varchar(100) NOT NULL COMMENT 'Tipo de suelo',
  `US` varchar(50) NOT NULL COMMENT 'Uso de suelo',
  `ITR` varchar(25) NOT NULL COMMENT 'Indicador de tipos de relieve',
  `ITV` varchar(75) NOT NULL COMMENT 'Indicador de tipos de vegetación',
  `RH` varchar(35) NOT NULL COMMENT 'Región Hidrológica',
  `Cuenca` varchar(50) NOT NULL,
  `Subcuenca` varchar(100) NOT NULL,
  `CA` varchar(200) NOT NULL COMMENT 'Corrientes de agua',
  `C_A` varchar(100) NOT NULL COMMENT 'Cuerpos de agua',
  `I_F` varchar(5) NOT NULL COMMENT 'Incendios forestales',
  `TH` varchar(5) NOT NULL COMMENT 'Total de Hectáreas',
  `Herbaceo` varchar(5) NOT NULL,
  `Harboreo` varchar(5) NOT NULL,
  `Arbustivo` varchar(5) NOT NULL,
  `ITC` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `medio_ambiente_por_municipio`
--

INSERT INTO `medio_ambiente_por_municipio` (`Id`, `Id_Mun`, `ICM`, `TMA`, `IPA`, `TS`, `US`, `ITR`, `ITV`, `RH`, `Cuenca`, `Subcuenca`, `CA`, `C_A`, `I_F`, `TH`, `Herbaceo`, `Harboreo`, `Arbustivo`, `ITC`) VALUES
(1, 100, 'ACf / C(f)', '14-20', '1900-2100', 'Cambisol/ Regosol/Andosol', 'Agricultura y zona urbana', 'Sierra', 'Bosque/ Selva/ Pastizal', 'Tuxpan - Nautla', 'R. Cazones  y R. Tecolutla', 'R. San Marcos y R. Necaxa', 'Perennes: naupan, Mamiqueta y San Marcos Intermitente', 'No disponible', '2', '27', '5', '0', '22', 'S/D'),
(2, 213, 'ACf/ Af/ Am', '18-26', '2400-2600', 'Phaeozem/ Acrisol/ Leptosol/ Kastañozem/ Fluvisol', 'Agricultura y zona urbana', 'Sierra', 'Pastizal/ Selva/ Bosque', 'Tuxpan - Nautla', 'R. Cazones y R. Tecolutla', 'R. San Marcos, R. Necaxa y R. Tecolutla', 'Perennes: Amixtlán, Buena Vista y Necaxa Intermitente: Vinazco', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(3, 111, 'Am / Af', '23-25', '1900-2000', 'Umbrisol/ Vertisol/ Phaeozem/ Regozol/ Nitosol', 'Agricultura y zona urbana', 'Valle', 'Pastizal/ Selva', 'Tuxpan - Nautla', 'R. Tuxpan', 'R. Pantepec', 'Perennes: Pantepec y Grande Intermitentes: El Caliche, El Pahual, Las Lajas y Seco', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(4, 178, 'Acf/Af/C(f)', '16-24', '2400-2600', 'Luvisol/ Umbrisol/ Phaeozem/ Nitisol/ Cambisol/ Vertisol', 'Agricultura y zona urbana', 'Sierra', 'Pastizal/ Boaque/ Selva', 'Tuxpan - Nautla', 'R. Tuxpan y R. cazones', 'R. Pantepec y R. San Marcos', 'Perennes: Acalman, El Álamo y San Marcos Intermitente', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(5, 109, 'Cf /  ACf / C(m)', '12-20', '1900-2100', 'Cambisol/Luvisol', 'Agricultura y zona urbana', 'Sierra', 'Bosque/ Pastizal/ Selva', 'Tuxpan - Nautla', 'R. Cazones y R. Tuxpan', 'R. San Marcos y R. Pantepec', 'Perennes: San Marcos, Cuarco y Acalman Intermitentes', 'No disponible', '1', '4', '0', '0', '4', 'S/D'),
(6, 197, 'Acf/Af/Am', '16-26', '1900-2600', 'Cambisol/ Phaeozem/ Acrisol/ Regosol/ Vertisol/ Leptosol', 'Agricultura y zona urbana', 'Sierra', 'Pastizal/ Bosque/ Selva', 'Tuxpan - Nautla', 'R. Cazones y R. Tecolutla', 'R. San Marcos y R. Necaxa', 'Perennes: Alseseca, Cilima, El Higuero, San Marcos y Xolintla Intermitente: Santa Luz', 'No disponible', '1', '1', '1', '0', '0', 'S/D'),
(7, 184, 'ACf', '18-22', '2400-2600', 'Leptosol/ Luvisol/ Regosol/ Acrisol', 'Agricultura y zona urbana', 'Sierra', 'Bosque/ Pastizal', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Necaxa y R. Laxaxalpan', 'Perennes: Acala (Tlapayocan), Tlamaya y Ajajalpan', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(8, 49, 'C(f)/ ACf', '12-22', '1400-2100', 'Phaeozem/ Andosol/ Acrisol', 'Agricultura y zona urbana', 'Sierra', 'Bosque/ Pastizal', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Necaxa y R. Laxaxalpan', 'Perennes: Zempoala y Tlaxco Intermitente: Ixcatla', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(9, 183, 'ACf/ C(f)', '16-20', '2400-2600', 'Leptosol/ Acrisol/ Luvisol/ Phaeosem/ Andosol/ Fluvisol/ Regosol', 'Agricultura y zona urbana', 'Sierra', 'Bosque/ Pastizal', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Necaxa y R. Laxaxalpan', 'Perennes: Acala (Tlapayocan), Acatlán, Nexapa, El Salto, Salto de Cuamila, Tecpatlan y Zempoala;  Intermitentes: Ixtacatla y Hondo (Temazcal)', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(10, 89, 'ACf/ Af', '18-26', '2900-3100', 'Leptosol/ Acrisol/ Phaeozem/ Regosol/ Fluvisol/ vertisol', 'Agricultura y zona urbana', 'Sierra', 'Pastizal/ Bosque/ Selva', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Necaxa y R. Laxaxalpan', 'Perennes: Ajalpan, Acala (Tlapacoyan), Necaxa, Tecpatlan y Tlamaya Intermitentes: Hondo (Temazcal), Tampisne y Verde', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(11, 71, 'C(f)/Acf', '12-20', '1400-2100', 'Andosol/ Regosol/ Phaeozem/ Luvisol/ Cambisol', 'Agricultura y zona urbana', 'Sierra', 'Bosque/ Pastizal/ Selva', 'Tuxpan - Nautla', 'R. Tecolutla y R. Cazones', 'R. Necaxa, R. San Marcos y R. Laxaxalpan', 'Perennes: Acatlán, Alseseca, Hueyatlagco, Matzintla, Necaxa, naupan, Totolapa y Zempoala Intermitente: Santa Félix', 'Perenne: Tenango', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(12, 162, 'ACf', '18-22', '1900-2100', 'Luvisol/ Leptosol', 'Agricultura y zona urbana', 'Sierra', 'Bosque/ Pastizal', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Laxaxalpan y R. Tecuantepec', 'Perennes: Agua Azul y San Pedro Intermitente: Nepopualco', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(13, 68, 'ACf', '18-24', '2400-3100', 'Leptosol', 'Agricultura y zona urbana', 'Sierra', 'Bosque/ Pastizal', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Lazaxalpan', 'Perenne: Ajajalpan Intermitente: Ixcanaxquihui (La Sala)', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(14, 28, 'ACf', '18-22', '2000-2500', 'Leptosol/ Luvisol', 'Agricultura y zona urbana', 'Sierra', 'Bosque/ Pastizal', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Lazaxalpan', 'Perennes: San Pedro y Tapayula', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(15, 14, 'ACf', '18-24', '1900-2100', 'Leptosol/ Luvisol', 'Agricultura y zona urbana', 'Sierra', 'Pastizal/ Bosque', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Lazaxalpan', 'Intermitente: Ixcanaxquihui (La Sala)', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(16, 123, 'ACf', '18-24', '2500-3000', 'Leptosol/Luvisol', 'Pastoreo', 'Sierra', 'Bosques/ Pastizal', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Laxaxalpan', 'Perennes: Ajalpan y Tlamaya Intermitentes', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(17, 30, 'ACf', '18-24', '2400-2600', 'Leptosol', 'Agricultura y zona urbana', 'Sierra', 'Pastizal/ Bosque', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Lazaxalpan', 'Perenne: San Pedro', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(18, 167, 'ACf/ C(m)/ C(f)', '14-20', '1100-1600', 'Luvisol', 'Agricultura y zona urbana', 'Sierra', 'Bosque', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Tecuantepec y R. Laxaxalpan', 'Perennes: Ayoco y Cuamecatla Intermitente', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(19, 6, 'ACf/ C(f)/ C(m)', '14-22', '1400-2100', 'Luvisol/ Andosol', 'Agricultura y zona urbana', 'Sierra', 'Bosque', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Laxaxalpan y R. Tecuantepec', 'Perenne: Ajalpan Intermitentes', 'No disponible', '1', '65', '25', '0', '40', 'S/D'),
(20, 208, 'C(m)/C(w)', '12-20', '700-2100', 'Andosol/ Luvisol/ Durisol/ Phaozem/ Vertisol/ Cambisol', 'Agricultura y zona urbana', 'Sierra', 'Bosque/ Pastizal', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Laxaxalpan, R.Nexapa y R. Tecuantepec', 'Perennes: Agrio, Ajalpan, Atenco, Hueyatlagco, San Lorenzo, Texanapa, Tlachimalco, Tlaxco y Toloapa Intermitentes: Atlixcaya, La Ferrera, Maquixtla y Piedras Largas', 'No disponible', '9', '42', '13', '0', '29', 'S/D'),
(21, 84, 'ACf', '18-24', '2400-3100', 'Leptosol/ Livisol', 'Agricultura y zona urbana', 'Sierra', 'Ha perdido por completo su vegetación', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Tecuantepec', 'Perenne: Tehuancate', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(22, 77, 'ACf', '18-24', '2400-3100', 'Leptosol', 'Agricultura y zona urbana', 'Sierra', 'Pastizal/ Bosques', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Tecuantepec y R. Laxaxalpan', 'Perennes: Tapayula y Tehuancate Intermitente: Munal', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(23, 80, 'ACf', '18-22', '2400-2600', 'Leptosol/ Livisol', 'Agricultura y zona urbana', 'Sierra', 'Pastizal', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Tecuantepec', 'Perenne: Zempoala', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(24, 72, 'ACf', '22-26', '1500-3000', 'Litosol/ Regosol/ Pheozems', 'Agricultura y zona urbana', 'Sierra', 'Pastizal', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Laxaxalpan, R. Tecuantepec y R. Tecolutla', 'S/D', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(25, 107, 'ACf', '18-24', '2400-3600', 'Leptosol', 'Agricultura y zona urbana', 'Sierra', 'Selva/ Bosque/ Pastizal', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Laxaxalpan y R. Tecuantepec', 'Perenne: Ajajalpan, Tapayula y San Pedro Intermitente: Munal', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(26, 29, 'ACf', '20-24', '2900-3600', 'Leptosol', 'Agricultura y zona urbana', 'Sierra', 'Pastizal', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Tecuantepec', 'Perenne: Tehuancate', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(27, 215, 'ACf/ C(f)', '16-22', '1900-2100', 'Luvisol/ Andoslo/ Phaeozem', 'Agricultura y zona urbana', 'Sierra', 'Bosque/ Pastizal', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Tecuantepec y R. Laxaxalpan', 'Perennes: Ayoco y Zempoala Intermitentes', 'No disponible', '1', '8', '0', '0', '8', 'S/D'),
(28, 210, 'ACf', '20-22', '2500-3000', 'Luvisol/ Pheozem', 'Agricultura y zona urbana', 'Sierra', 'Bosque', 'Tuxpan - Nautla', 'R. Tecolutla', 'S/D', 'S/D', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(29, 202, 'ACf/ C(f)/ C(m)', '14-22', '1400-2100', 'Andosol/ Luvisol/ Leptosol', 'Agricultura y zona urbana', 'Sierra', 'Bosques/ Pastizal', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Tecuantepec y R. Apulco', 'Perennes: Atenco,Atejalac, Cuxateno y Zempoala Intermitentes: Tajuilol', 'No disponible', '1', '65', '24', '1', '40', 'S/D'),
(30, 78, 'ACf/ C(f)', '16-22', '1400-2000', 'Luvisol/ Andoslo/ Phaeozem', 'Agricultura y zona urbana', 'Sierra', 'Bosque/ Pastizal', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Tecuantepec', 'Perennes: Cuxateno y Zempoala Intermitente: Tajcuilol', 'No disponible', '1', '75', '40', '0', '35', 'S/D'),
(31, 216, 'ACf', '20', '3000-3500', 'Andosol/ Luvisol/ Litosol', 'Agricultura y zona urbana', 'Sierra', 'Áreas muy reducidas de Bosques', 'Tuxpan - Nautla', 'R. Tecolutla', 'S/D', 'S/D', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(32, 88, 'ACf/Af', '20-26', '2400-4100', 'Leptosol/ Regosol/ Phaeozem/ Andosol', 'Agricultura y zona urbana', 'Sierra', 'Pastizal/ Bosque/ Selva', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Tecuantepec y R. Apulco', 'Perennes: Apulco y Zempoala Intermitentes: Mixiate y Tozan', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(33, 200, 'C(m)/ C(f) / ACf', '14-20', '900-1600', 'Andosol/ Arenosol/ Leptosol', 'Agricultura y zona urbana', 'Sierra', 'Bosque', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Apulco', 'Perennes: Apulco, Chilapa y Chichicalco Intermitentes', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(34, 192, 'ACf/ Af', '20-26', '2400-3600', 'Leptosol/ Regosol/ Phaeozem/ Cambisol', 'Agricultura y zona urbana', 'Sierra', 'Pastizal/ Boaque/ Selva', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Tecuantepec y R. Apulco', 'Perennes: Apulco y Zempoala Intermitentes: Mixiate y Tozán', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(35, 212, 'C(w)/ C(m)', '12-18', '600-1100', 'Andosol/ Arenosol/ Leptosol/ Phaeozem/ Luvisol', 'Agricultura y zona urbana', 'Sierra', 'Bosque/ Pastizal/ Matorral', 'Tuxpan - Nautla S/D Balsas', 'R. Tecolutla y R. Atoyac', 'R. Apulco y L. Totolzingo', 'Perennes: Apulco y Chilapa, Intermitentes: Amajac, Cruz de Madroño, Ixtactenango, La Alcantarilla y Tazajapan', 'No disponible', '1', '15', '10', '0', '5', 'S/D'),
(36, 43, 'ACf', '24', '3700', 'Litosol/ Regosol/ Luvisol/ Andosol', 'Agricultura y zona urbana', 'Sierra', 'Ha perdido la mayor parte de las áreas boscosas', 'Tuxpan - Nautla', 'R. Tecolutla', 'S/D', 'S/D', 'No disponible', '1', '2', '1', '0', '1', 'S/D'),
(37, 207, 'C(m)/ C(f)/ C(w)/ ACf/', '12-20', '700-2100', 'Andosol/ Leptosol', 'Agricultura y zona urbana', 'Sierra', 'Bosque', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Apulco', 'Perennes: Apulco, Ahuacatla, Huichautla, Hueyateno y Ochiatenco Intermitentes: Ayohualateno y Xalteno', 'No disponible', '1', '7', '3', '0', '4', 'S/D'),
(38, 75, 'Cf/Acf', '14-24', '1400-3600', 'Andosol/ Regosol/ Acrisol', 'Agricultura y zona urbana', 'Sierra', 'Bosque/ Pastizal', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Apulco, R. Tecolutla y R. Joloapan', 'Perennes: Atecacalax, Atexaco y Teziutanapan Intermitente: Viga Ancha', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(39, 25, 'Af/ Am', '20-22', '3000-3500', 'Regozol/ Pheozem/ Nitosol/ Andosol', 'Agricultura y zona urbana', 'Sierra/ Lomerio', 'Pastizales', '', 'R. Tecolutla', 'R. Apulco', 'S/D', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(40, 17, 'C(m)/ C(f)/ C(w)', '12-16', '900-1500', 'Andosol/ Regosol', 'Agricultura y zona urbana', 'Sierra/ Lomerio', 'Bosque/ Pastizal', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Apulco', 'Perenne: Teziutanapan Intermitente', 'No disponible', '3', '6', '3', '0', '4', 'S/D'),
(41, 54, 'C(w)/C(m)', '12-16', '700-1100', 'Andosol/ Leptosol', 'Agricultura y zona urbana', 'Llanura', 'Bosque', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Apulco', 'Intermitentes: Acongo y Acuaco', 'No disponible', '13', '102', '62', '8', '33', 'S/D'),
(42, 174, 'C(f)/Acf/C(m) ', '12-22', '1100-3600', 'Andosol', 'Agricultura y zona urbana', 'Lomerio', 'Bosque/ Pastizal', 'Tuxpan - Nautla', 'R. Tecolutla y R. Nautla', 'R. Joloapan, R. María de la Torre, R. Apulco, R. Tecolutla y R. Bobos', 'Perennes: El Mesonate, Ixticpan, María de la Torre, Xoloatl y Xaltahuatl Intermitente: Ateta', 'No disponible', '3', '12', '4', '0', '8', 'S/D'),
(43, 186, 'Acf/Af/C(f)', '16-24', '2400-2600', 'Luvisol/ Umbrisol/ Phaeozem/ Nitisol/ Cambisol/ Vertisol', 'Agricultura y zona urbana', 'Sierra', 'Pastizal/ Boaque/ Selva', 'Tuxpan - Nautla', 'R. Tuxpan y R. cazones', 'R. Pantepec y R. San Marcos', 'Perennes: Acalman, El Álamo y San Marcos Intermitente', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(44, 204, 'ACf/ C(f)', '14-22', '1400-3600', 'Andoslo/ Acrisol', 'Agricultura y zona urbana', 'Sierra', 'Bosque', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Apulco', 'Perennes: Xucayucan, Santiago, Xochihuatzaloyan y Apulco Intermitentes', 'No disponible', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(45, 39, 'C(f)/C(m)/ACf', '12-20', '1100-2100', 'Luvisol/ Andosol', 'Agricultura y zona urbana', 'Sierra', 'Bosque', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Tecuantepec', 'Perennes: Citlalpepetl y Zempoala Intermitentes', 'No disponible', '3', '46', '5', '0', '41', 'S/D'),
(46, 83, 'BS1kw/C(w1)/C(w2)/C(wo)/Cb\'(w2)', '10-14', '800-1000', 'Litosol/Feozem/Regosol/Luvisol/Andosol', 'Agricultura y zona urbana', 'Sierra', 'bosque', 'Tuxpan - Nautla y Balsas', 'R. Tecolutla', 'R. Apulco', 'S/D', 'no disponible', '8', '257', '149', '20', '88', 'S/D'),
(47, 172, 'C(m)/C(f)/Acf', '12-20', '600-1600', 'Luvisol/ Andosol/  Phaeozem/ Cambisol/ Arenoso', 'Agricultura y zona urbana', 'Llanura/ Lomerio', 'Bosque / PastizaL', 'Tuxpan - Nautla', 'R. Tecolutla', 'R. Tecuantepec y R. Apulco', 'Perennes: Cuautolanico, Cuxateno, Raxicoya, Xaltatempa y Zitlacuautla Intermitente: Papaloteno', 'No disponible', '6', '447', '188', '0', '260', 'S/D'),
(48, 50, 'ACf/C(m)', '17-19', '1900-2000', 'Andosol/ Leptosol', 'Agricultura y zona urbana', 'Sierra/ Lomerio', 'Bosque', 'Papaloapan', 'R. Jamapa', 'R. Decozalapa  y R. Jamapa', 'Perenne: Tilapa Intermitentes: Axala, Coxolijapa, Ixteapa, Otlapa y Seco', 'No disponible', 'S/D', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(49, 177, 'BS1k/C(w)', '12-18', '400-800', 'Vertisol/ Leptosol/ Calcisol', 'Agricultura y zona urbana', 'Valle/Sierra', 'Matorral/ Bosque/ Pastizal', 'Papaloapan y Balsas', 'R. Papaloapan y R. Atoyac', 'R. Salado y R. Atoyac - DBalcón del Diablo', 'Intermitente', 'No disponible', '1', '2', '1', '0', '1', 'S/D'),
(50, 120, 'C(w)/ BS1k/ BS1h/ BSh', '12-22', '400-700', 'Leptosol/ Regosol', 'Agricultura y zona urbana', 'Sierra', 'Selva/  Bosque/ Pastizal/ Matorral', 'Papaloapan', 'R. Papaloapan', 'R. Salado', 'Perenne: Xoxocotla Intermitente: Atoyac', 'No disponible', 'N/A\n', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(51, 129, 'BSO(h´)/ BS1k/ BS1h', '14-24', '300-600', 'Leptosol/ Solonchak/ Regosol/ Cambisol/ Phaeozem/ Vertisol', 'Agricultura y zona urbana', 'Sierra/ Valle', 'Matorral/ Selva/  Pastizal/ Bosque', 'Papaloapan', 'R. Papaloapan', 'R. Salado', 'Perennes Intermitente: Zapotitlán', 'No disponible', 'N/A\n', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(52, 124, 'BSh/ BS1k/ BSO(h´)', '14-24', '300-600', 'Leptosol/ Regosol/ Vertisol/ Solonchak', 'Agricultura y zona urbana', 'Sierra/ Valle', 'Matorral/ Pastizal/ Selva/ Bosque/ Mezquital', 'Papaloapan', 'R. Papaloapan', 'R. Salado', 'Intermitentes: Zapotitlán y Agua El Gavilán', 'No disponible', 'N/A\n', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(53, 35, 'BS1(h´) /Aw', '14-26', '300-1100', 'Regozol/ Leptosol/ Cambisol/ Luvisol', 'Agricultura y zona urbana', 'Sierra/ Valle', 'Selva/ Matorral/ Bosque/ Pastizal', 'Papaloapan', 'R. Papaloapan', 'R. Salado', 'Perennes: Azompa, Barranca Muchil, Salado y Tepazalco Intermitente: Tilapa', 'No disponible', 'N/A\n', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(54, 13, 'ACw/ BSO(h´)', '20-24', '300-500', 'Vertisol/ Regosol/  Fluvisol', 'Agricultura y zona urbana', 'Valle', 'Matorral/Selva/Pastizal', 'Papaloapan', 'R. Papaloapan', 'R. Salado', 'No disponible', 'No disponible', 'N/A\n', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(55, 156, 'BS1h/C(w)/BSh/BS1k/BSO(h´)', '12-24', '400-800', 'Leptosol/ Regosol/ Vertisol/ Luvisol/ Phaeozem', 'Agricultura y zona urbana', 'Sierra/ Valle', 'Matorral/ Pastizal/ Bosque/ Mezquital/ Selva', 'Papaloapan', 'R. Papaloapan', 'R. Salado y R. Blanco', 'Perennes: Tehuacán, La Huertilla y Zapotitlán', 'No disponible', '2', '19', '7', '0', '12', 'S/D'),
(56, 214, 'BS1(h´)', '18-22', '300-500', 'Litosol/ Regosol/ Xerosol/ Pluvisol', 'Agricultura y zona urbana', 'Valle', 'Matorral/ Selva/ Pastizal', 'Papaloapan', 'R. Papaloapan', 'S/D', 'S/D', 'No disponible', 'N/A\n', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(57, 149, 'BS1(h)w(w)/BS1Kw(w)', '10-23', '400-800', 'Litosol,Vertisol pelico,Feozem calcarico y Rendzina', 'Agricultura y zona urbana (industria)', 'Sierra/Valle', 'matorral/', 'Papaloapan', 'R. Papaloapan ', 'Río Zapotitlán, Río Hondo, Río Tehuacán,', 'perennes: Tehuacán ', 'No disponible', 'N/A\n', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(58, 61, 'C(m)/ Acf/ Af', '12-18', '1200-1500', 'Luvisol/ Acrisol/ Vertisol', 'Agricultura y zona urbana', 'Sierra', 'Bosque/ Selva', 'Papaloapan', 'R. Papaloapan', 'S/D', 'S/D', 'No disponible', 'N/A\n', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(59, 217, 'Acf/ C(m)/ Af/ C(w)/ BS1h', '14-26', '500-3100', 'Luvisol/ Phaeozem/ Cambisol/ Leptosol/ Vertisol', 'Agricultura y zona urbana', 'Sierra', 'Bosque/ Selva/ Pastizal', 'Papaloapan', 'R. Papaloapan', 'R. Petlapa y R. Salado', 'Perenne: Coyolapa Intermitentes', 'No disponible', 'N/A\n', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(60, 195, 'C(w)/ BS1h/ BS1k/ BS1(h´)', '12-22', '500-1100', 'Cambisol/ Luvisol/ Leptosol/ Phaeozem/ Andosol', 'Agricultura y zona urbana', 'Sierra', 'Bosque/ Pastizal', 'Papaloapan', 'R. Papaloapan', 'R. Salado, R. Petlapa y R. Blanco', 'Perennes: Atoyac, Apatlahuaya, Ticaxtla y Xoxocotla Intermitentes: Moyotepec y Seco', 'Perennes: Laguna Chica y Laguna Grande', '1', '36', '20', '0', '16', 'S/D'),
(61, 36, 'ACw/ C(m)/ C(w)/ Acf', '12-26', '500-4100', 'Luvisol/ Regosol/ Cambisol/ Phaeozem', 'Agricultura y zona urbana', 'Sierra/Valle', 'Bosque/ Selva/  Pastizal', 'Papaloapan', 'R. Papaloapan', 'R. Petlapa y R. Salado', 'Perennes Intermitente: Tilapa', 'No disponible', 'N/A\n', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(62, 145, 'Af/ Acf/ C(m)', '12-26', '2900-4100', 'Luvisol/ Leptosol/ Vertisol', 'Agricultura y zona urbana', 'Sierra', 'Bosque/ Selva/ Pastizal', 'Papaloapan', 'R. Papaloapan', 'R. Petlapa', 'Perennes Intermitentes', 'No disponible', '1', '30', '15', '0', '15', 'S/D'),
(63, 10, 'ACf/ BSO(h´)/ BSh/ ACw/ C(w)/ C(E)(w)', '10-24', '400-3500', 'Luvisol/Pheozem/  Leptosol/Regosol', 'Agricultura y zona urbana', 'Sierra/Valle', 'Selva/Bosque', 'Papaloapan', 'R. Papaloapan', 'R. Salado y R. Petlapa', 'Perennes: Atoyac, Comulco, Tehuacán y Ticaxtla Intermitente: Moyotepec', 'No disponible', 'N/A\n', 'N/A\n', 'N/A\n', 'N/A\n', 'N/A\n', 'La tala inmoderada ha causado la erosión del suelo y deslizamientos de tierra en las laderas de los cerros.'),
(64, 159, 'A(w)/ Acw/ C(w)', '18-20', '800-1000', 'Regosol/ Litosol/ Cambisol/ Phaeozem', 'Agricultura y zona urbana', 'Sierra/ Valle', 'Bosque/ Pastizal', 'Balsas', 'R. Atoyac', 'R. Nexapa', 'S/D', 'No disponible', '1', '46', '16', '0', '30', 'S/D'),
(65, 127, 'A(w)/ Acw', '20-24', '900-1000', 'Regosol/ Leptosol', 'Agricultura y zona urbana', 'Sierra', 'Pastizal/ Selva/ Área sin vegetación', 'Balsas', 'R. Atoyac', 'R. Acatlán', 'Intermitentes: La Trompeta, Tizácc y Valiente', 'No disponible', 'N/A\n', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(66, 196, 'Acw/ A(w)', '18-24', '700-900', 'Regosol/ Phaeozem/ Leptosol', 'Agricultura y zona urbana', 'Sierra', 'Selva/ Pastizal', 'Balsas', 'R. Atoyac', 'R. Acatlán', 'Perenne Intermitente: Tizáac', 'No disponible', 'N/A\n', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(67, 52, 'ACw', '10-30', '200-400', 'Rendzina', 'Agricultura y zona urbana', 'llanura', 'Bosque/ Pastizal', 'Balsas', 'R. Atoyac', 'R. Atoyac - Balcón del Diablo', 'Perenne', 'No disponible', 'N/A\n', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(68, 70, 'Acw/ A(w)', '16-24', '600-900', 'Leptosol/ Vertisol/ Kastañozem/ Regosol/ Cambisol', 'Agricultura y zona urbana', 'Meseta', 'Selva/ Pastizal/ Matorral', 'Balsas', 'R. Atoyac', 'R. Atoyac - Balcón del Diablo', 'Perennes: Atoyac y Huehuetlán Intermitentes', 'No disponible', 'N/A\n', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(69, 146, 'A(w)/ Acw', '20-24', '700-900', 'Leptosol/ Regosol/ Kastañozem', 'Agricultura y zona urbana', 'Llanura', 'Selva/ Pastizal', 'Balsas', 'R. Atoyac', 'R. Atoyac - Balcón del Diablo', 'Perennes  Intermitente', 'No disponible', 'N/A\n', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(70, 5, 'ACw', '16-24', '800-1000', 'Regosol/ Durisol/ Leptosol/ Phaeozem/ Vertisol', 'Agricultura y zona urbana', 'Valle', 'Selva/Pastizal', 'Balsas', 'R. Atoyac', 'R. Nexapa', 'Perenne: Grnde Intermitentes', 'No disponible', 'N/A\n', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(71, 19, 'C(w)/Acw', '10-20', '900-1300', 'Fluvisol/ Phaeozem/ Leptosol', 'Agricultura y zona urbana', 'Sierra/ Llanura', 'Bosque/ Pastizal', 'Balsas', 'R. Atoyac', 'R. Nexapa', 'Perenne: La Leona, Nexapa y el Cuescomate Intermitente: Aguisoc', 'No disponible', '3', '26', '17', '0', '9', 'S/D'),
(72, 15, 'C(w)', '12-18', '900-1100', 'Leptosol/ Luvisol/ Arenosol', 'Agricultura y zona urbana', 'Sierra', 'Pastizal/ Bosque', 'Balsas', 'R. Atoyac', 'R. Atoyac - Balcón del Diablo y R. Alseseca', 'Intermitentes', 'No disponible', '9', '158', '130', '1', '28', 'S/D'),
(73, 114, 'C(w)/C(E)(w)', '10-16', '400-900', 'Regozol/ Cambisol/ Rendzina/ Litosol', 'Zona urbana/ Agricultura/ Cuerpos de agua', 'Sierra/ Llanura', 'Pastizal/ Bosque', 'Balsas', 'R. Atoyac', 'R. Alseseca, R. Atoyac - San Martín Texmelucan, P. Manuel Ávila Camacho, R. Atoyac - Balcón del Diab', 'Perenne: Atoyac Intermitentes', 'Perenne: Presa Manuel Ávila Camacho (Valsequillo9', '9', '58', '51', '1', '7', 'S/D'),
(74, 119, 'C(w)', '14-18', '800-1000', 'Vertisol/ Regosol', 'Agricultura y zona urbana', 'Valle/ Llanura', 'No disponible', 'Balsas', 'R. Atoyac', 'R. Atoyac - San Martín Texmelucan', 'Perenne: Atoyac Intermitentes: El Zapatero', 'No disponible', 'N/A\n', 'N/A', 'N/A', 'N/A', 'N/A', 'S/D'),
(75, 163, 'C(E)(w/C(w)', '04-16', '900-1100', 'Arenosol/ Regosol', 'Agricultura y zona urbana', 'Sierra', 'Bosque/ Pastizal/ Área sin vegetación', 'Balsas', 'R. Atoyac', 'R. Atoyac - Balcón del Diablo', 'Perenne', 'No disponible', '7', '16', '11', '1', '4', 'S/D'),
(76, 1, 'C(w)/C(E)(w)', '06-16', '700-1100', 'Arenosol/ Leptosol/ Fluvisol', 'Agricultura y zona urbana', 'Sierra', 'Bosque/ Pastizal/ Matorral', 'Balsas', 'R. Atoyac', 'R. Atoyac - Balcón del Diablo y L. Totolzingo', 'Perenne Intermitentes', 'No disponible', 'N/A\n', 'N/A\n', 'N/A\n', 'N/A\n', 'N/A\n', 'S/D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migracion_por_municipio`
--

CREATE TABLE `migracion_por_municipio` (
  `Id` int(11) NOT NULL,
  `Id_Mun` int(11) NOT NULL,
  `IGIM` varchar(15) NOT NULL COMMENT 'Indicador de grado de intensidad migratoria ',
  `IGIM_2010` varchar(10) NOT NULL COMMENT 'Indicador de grado de intensidad migratoria (lugar que ocupa de intensidad por municipio en el estado, año 2010)',
  `IGIM_2020` varchar(10) NOT NULL COMMENT 'Indicador de grado de intensidad migratoria (lugar que ocupa el municipio a escala nacional, año 2020)',
  `PFNOE` varchar(10) NOT NULL COMMENT 'Población femenina nacida en otra entidad',
  `PMNOE` varchar(10) NOT NULL COMMENT 'Población masculina nacida en otra entidad',
  `VT` varchar(10) NOT NULL COMMENT 'Viviendas Totales',
  `VRR` varchar(15) NOT NULL COMMENT 'Viviendas que reciben remesas',
  `ICR_2022` varchar(15) NOT NULL COMMENT 'Indicador de cantidad de remesas 2022 (millones de dolares)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `migracion_por_municipio`
--

INSERT INTO `migracion_por_municipio` (`Id`, `Id_Mun`, `IGIM`, `IGIM_2010`, `IGIM_2020`, `PFNOE`, `PMNOE`, `VT`, `VRR`, `ICR_2022`) VALUES
(1, 100, 'Muy bajo', '194', '1992', '248', '179', '2495', '1.683366733', '0'),
(2, 213, 'Muy bajo', '72', '1735', '422', '356', '3092', '3.787633538', '0'),
(3, 111, 'Bajo', '168', '1517', '1052', '1004', '5360', '2.985074627', '0.427023'),
(4, 178, 'Muy bajo', '130', '1633', '616', '598', '4704', '4.445862582', '0.010223'),
(5, 109, 'Bajo', '42', '1331', '1391', '1301', '5359', '6.232506065', '2.170363'),
(6, 197, 'Muy bajo', '156', '2014', '3776', '3317', '21612', '2.70220248', '7.735668'),
(7, 184, 'Medio', '96', '764', '125', '80', '1670', '7.604790419', '0.137202'),
(8, 49, 'Muy bajo', '145', '1794', '219', '165', '4176', '1.843869732', '0'),
(9, 183, 'Muy bajo', '146', '1781', '303', '241', '5105', '2.313271907', '0'),
(10, 89, 'Bajo', '69', '1268', '286', '262', '3236', '7.076637824', '0'),
(11, 71, 'Muy bajo', '144', '1715', '4929', '4184', '27821', '2.465763272', '10.570479'),
(12, 162, 'Muy bajo', '188', '2260', '50', '41', '1047', '1.146131805', '0'),
(13, 68, 'Muy bajo', '161', '1668', '35', '34', '2016', '5.362462761', '0'),
(14, 28, 'Muy bajo', '214', '2309', '12', '7', '727', '1.100412655', '0'),
(15, 14, 'Bajo', '115', '1526', '62', '40', '1352', '3.920118343', '0.000592'),
(16, 123, 'Muy bajo', '177', '1952', '19', '17', '1071', '2.33426704', '0'),
(17, 30, 'Alto', '23', '303', '6', '5', '223', '23.76681614', '0'),
(18, 167, 'Muy bajo', '169', '2007', '74', '60', '2573', '2.643856921', '0'),
(19, 6, 'Muy bajo', '197', '1772', '114', '76', '3758', '3.225806452', '0.017367'),
(20, 208, 'Muy bajo', '105', '1830', '4177', '3167', '21961', '1.698465461', '9.156427'),
(21, 84, 'Muy bajo', '215', '2385', '54', '46', '1739', '0.575043128', '0.09227'),
(22, 77, 'Muy bajo', '208', '2365', '30', '26', '1438', '0.486787204', '0'),
(23, 80, 'Muy bajo', '212', '1947', '38', '37', '680', '4.558823529', '0'),
(24, 72, 'Muy bajo', '216', '2285', '284', '155', '3932', '2.011713776', '0.136821'),
(25, 107, 'Muy bajo', '217', '2359', '133', '98', '2781', '1.11470694', '0'),
(26, 29, 'Muy bajo', '206', '2358', '94', '58', '959', '1.147028154', '0'),
(27, 215, 'Muy bajo', '163', '2290', '15', '15', '1160', '0.775862069', '0.014348'),
(28, 210, 'Muy bajo', '210', '2391', '153', '113', '1437', '0.417536534', '0.023371'),
(29, 202, 'Muy bajo', '178', '1908', '144', '114', '3414', '1.494724502', '0'),
(30, 78, 'Muy bajo', '211', '2319', '61', '36', '3811', '1.087244763', '0'),
(31, 216, 'Muy bajo', '209', '2082', '103', '61', '743', '1.749663526', '0'),
(32, 88, 'Muy bajo', '180', '1873', '122', '62', '1294', '2.086553323', '0'),
(33, 200, 'Muy bajo', '192', '1709', '97', '81', '1021', '4.211557297', '0'),
(34, 192, 'Muy bajo', '190', '2093', '197', '147', '1627', '1.414514145', '0.040473'),
(35, 212, 'Muy bajo', '137', '1737', '609', '413', '5156', '3.432893716', '0.702396'),
(36, 43, 'Muy bajo', '200', '2286', '653', '520', '12621', '1.164725458', '2.669994'),
(37, 207, 'Bajo', '148', '1376', '1508', '1127', '14879', '4.03924995', '11.410516'),
(38, 75, 'Muy bajo', '196', '2160', '248', '185', '3347', '1.135345085', '0'),
(39, 25, 'Medio', '111', '865', '249', '211', '2276', '6.151142355', '0.487032'),
(40, 17, 'Muy bajo', '198', '1649', '698', '426', '6702', '2.476872575', '2.764589'),
(41, 54, 'Muy bajo', '175', '2101', '1057', '704', '8126', '2.079744032', '0.002493'),
(42, 174, 'Bajo', '153', '1574', '6159', '4526', '27666', '1.862029069', '18.413259'),
(43, 186, 'Bajo', '65', '1297', '1725', '1247', '14692', '3.695888919', '7.919722'),
(44, 204, 'Muy bajo', '162', '1979', '150', '107', '1997', '2.153229845', '0.008558'),
(45, 39, 'Muy bajo', '152', '2026', '255', '241', '2813', '2.097404906', '0'),
(46, 83, 'Bajo', '85', '1026', '1866', '1508', '6456', '6.706939281', '0.013277'),
(47, 172, 'Muy bajo', '138', '1769', '1083', '943', '7750', '3.006451613', '0.540524'),
(48, 50, 'Bajo', '182', '1109', '1891', '1801', '5382', '6.484578224', '0'),
(49, 177, 'Medio', '62', '660', '1187', '855', '13614', '7.448215073', '16.983092'),
(50, 120, 'Bajo', '94', '1578', '67', '54', '1382', '4.124457308', '0'),
(51, 129, 'Bajo', '21', '1123', '180', '156', '3460', '5.173410405', '0.600525'),
(52, 124, 'Bajo', '61', '1467', '555', '444', '3920', '5.331632653', '5.540723'),
(53, 35, 'Muy bajo', '121', '1854', '658', '439', '4940', '3.765182186', '0.120779'),
(54, 13, 'Muy bajo', '78', '1912', '376', '277', '4706', '2.124946876', '0.014463'),
(55, 156, 'Bajo', '119', '1529', '28724', '23047', '84771', '4.223951117', '61.113081'),
(56, 214, 'Muy bajo', '92', '1599', '439', '379', '4453', '3.550561798', '0.241974'),
(57, 149, 'Muy bajo', '103', '1807', '1825', '1577', '7250', '2.634482759', '0.027552'),
(58, 61, 'Muy bajo', '187', '2176', '261', '134', '3373', '1.571767497', '0'),
(59, 217, 'Muy bajo', '183', '2314', '232', '158', '4731', '1.056859015', '0.606673'),
(60, 195, 'Alto', '41', '426', '573', '349', '5968', '13.03837774', '0.039558'),
(61, 36, 'Muy bajo', '185', '2161', '85', '38', '3498', '1.603206413', '0.174835'),
(62, 145, 'Muy bajo', '207', '2266', '558', '476', '3281', '1.554878049', '0'),
(63, 10, 'Muy bajo', '87', '2063', '1136', '759', '16324', '1.534290468', '14.220362'),
(64, 159, 'Alto', '16', '378', '35', '29', '1160', '28.30025884', '0'),
(65, 127, 'Medio', '56', '739', '116', '109', '1160', '13.56957649', '0'),
(66, 196, 'Medio', '33', '798', '47', '31', '481', '14.76091476', '0'),
(67, 52, 'Muy bajo', '213', '2370', '72', '54', '383', '1.305483029', '0'),
(68, 70, 'Bajo', '159', '1547', '230', '157', '1791', '4.918949134', '0'),
(69, 146, 'Muy bajo', '189', '2189', '23', '30', '256', '1.953125', '0'),
(70, 5, 'Bajo', '53', '1282', '164', '168', '850', '7.647058824', '0'),
(71, 19, 'Medio', '45', '611', '5327', '4525', '35345', '13.89997453', '54.226348'),
(72, 15, 'Muy bajo', '166', '1996', '5907', '5035', '30790', '1.793488856', '4.41567'),
(73, 114, 'Muy bajo', '170', '1879', '126797', '104225', '471027', '2.479453045', '130.596359'),
(74, 119, 'Muy bajo', '160', '1756', '17456', '15124', '42677', '2.404997886', '9.488077'),
(75, 163, 'Bajo', '110', '1583', '341', '238', '3896', '5.364476386', '0.726893'),
(76, 1, 'Bajo', '76', '1068', '2303', '1546', '14945', '9.334225493', '2.797209');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `component` text DEFAULT NULL,
  `uri` text DEFAULT NULL,
  `icon` text DEFAULT NULL,
  `color` text DEFAULT NULL,
  `team` text DEFAULT NULL,
  `place` text DEFAULT NULL,
  `map` int(2) DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `modules`
--

INSERT INTO `modules` (`id`, `description`, `component`, `uri`, `icon`, `color`, `team`, `place`, `map`, `status`) VALUES
(1, 'Inicio', 'init_comp', NULL, 'multimedia/img/icons/home.png', NULL, '0', '001', 0, 1),
(2, 'Factor Humano', NULL, NULL, 'multimedia/img/icons/rh.png', NULL, '1', '002', 0, 1),
(3, 'Afromexicana', 'afromexicana_comp', 'afromexicana', 'multimedia/img/icons/icon-afromexicana.png', '#0099ff', '0', '003', 1, 1),
(4, 'Cultura', NULL, 'culture', 'multimedia/img/icons/icon-cultura.png', '#ff66cc', '0', '004', 1, 1),
(5, 'Economía', NULL, 'economy', 'multimedia/img/icons/economia.png', '#009999', '0', '005', 1, 1),
(6, 'Educación', NULL, 'education', 'multimedia/img/icons/educacion.png', '#009900', '0', '006', 1, 1),
(7, 'Gobernabilidad y Gobernanza', NULL, 'governance', 'multimedia/img/icons/gobernanza.png', '#990000', '0', '007', 1, 1),
(8, 'Infraestructura', NULL, 'infrastructure', 'multimedia/img/icons/icon-infra.png', '#ffffff', '0', '008', 1, 1),
(9, 'Justicia y Seguridad', NULL, 'justice', 'multimedia/img/icons/justicia.png', '#990099', '0', '009', 1, 1),
(10, 'Lenguas', NULL, 'lenguages', 'multimedia/img/icons/idiomas.png', '#cccccc', '1', '010', 1, 1),
(11, 'Medio Ambiente', NULL, 'environment', 'multimedia/img/icons/medio-ambiente.png', '#00ff00', '0', '011', 1, 1),
(12, 'Migración', NULL, 'migration', 'multimedia/img/icons/migracion.png', '#999900', '0', '012', 1, 1),
(13, 'Salud', NULL, 'health', 'multimedia/img/icons/salud.png', '#896a6a', '0', '013', 1, 1),
(14, 'Tecnología', NULL, 'technology', 'multimedia/img/icons/icon-technology.png', '#a25454', '0', '014', 1, 1),
(15, 'Administración', NULL, NULL, 'multimedia/img/icons/data-base.png', NULL, '1', '002', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `id` int(11) NOT NULL,
  `region` int(11) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `latitud` varchar(25) DEFAULT NULL,
  `longitud` varchar(25) DEFAULT NULL,
  `icono` varchar(90) DEFAULT NULL,
  `TipoMunicipio` int(11) NOT NULL,
  `estatus` int(11) DEFAULT NULL,
  `detalles` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`id`, `region`, `nombre`, `latitud`, `longitud`, `icono`, `TipoMunicipio`, `estatus`, `detalles`) VALUES
(1, 21, 'Acajete', '19.1049703029994', '-97.9527128660101', 'iconuevo/ippib.png', 2, 1, 'Acajete es una localidad del estado mexicano de Puebla, es la cabecera del municipio homónimo. Forma parte del valle de Tepeaca, sus coordenadas geográficas son: los paralelos 19º 00’ 30” y 19º 11’ 06” de latitud norte y los meridianos 97º 53’ 54” y 98º 00’ 00” de longitud occidental.'),
(2, 6, 'Acateno', '20.1299232218706', '-97.210479022352', 'iconuevo/ippib.png', 3, 1, 'El municipio de Acateno se encuentra localizado en el noreste del estado de Puebla. Su nombre oficial es el de Acateno y el nombre de su cabecera municipal es San José Acateno.'),
(3, 17, 'Acatlán', '18.2014773174291', '-98.0488375314146', 'iconuevo/ippib.png', 3, 1, 'Acatlán es una localidad del estado de Veracruz de Ignacio de la Llave, se ubica en la región centro área montañosa del estado, siendo cabecera del municipio del mismo nombre.'),
(4, 10, 'Acatzingo', '18.9807484766634', '-97.7842588785815', 'iconuevo/ippib.png', 3, 1, 'Acatzingo es uno de los 217 municipios del estado de Puebla. Se localiza en el centro del estado, dentro del valle de Tepeaca, que es una prolongación del valle de Puebla-Tlaxcala'),
(5, 19, 'Acteopan', '18.7647348996979', '-98.7151761840565', 'iconuevo/ippib.png', 1, 1, 'El municipio de Acteopan es un municipio de Puebla en el sureste de México.'),
(6, 3, 'Ahuacatlán', '20.0057435939013', '-97.860585608978', 'iconuevo/ippib.png', 1, 1, 'Ahuacatlán es una población mexicana del estado de Puebla, y cabecera del municipio homónimo'),
(7, 15, 'Ahuatlán', '18.57402378013', '-98.255540363618', 'iconuevo/ippib.png', 3, 1, 'Ahuatlán es uno de los 217 municipios que conforman al estado mexicano de Puebla, localizado en la región suroeste del mismo. Su cabecera municipal es Ahuatlán, y dista a unos 100 km de la capital del estado. Perteneció al distrito de Matamoros hasta 1895, cuando fue erigido como municipio libre.'),
(8, 2, 'Ahuazotepec', '20.046194966016', '-98.1624565649217', 'iconuevo/ippib.png', 3, 1, 'Ahuazotepec es un municipio localizado en la zona noroeste del estado de Puebla. Formó parte del distrito de Huauchinango hasta 1895, año en el cual fue erigido como municipio libre. Su cabecera municipal es el pueblo de Ahuazotepec.'),
(9, 17, 'Ahuehuetitla', '18.2112067368111', '-98.2213461581453', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(10, 14, 'Ajalpan', '18.3775358210868', '-97.2576656991768', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(11, 16, 'Albino Zertuche', '18.0173458361353', '-98.540198446725', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(12, 11, 'Aljojuca', '19.0995722570935', '-97.531673887803', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(13, 13, 'Altepexi', '18.3663618725887', '-97.2990244415036', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(14, 3, 'Amixtlán', '20.0495253990962', '-97.7989080814345', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(15, 33, 'Amozoc', '19.0445950893106', '-98.0448007608242', 'iconuevo/ippib.png', 2, 1, 'EN DESARROLLO'),
(16, 7, 'Aquixtla', '19.7965972152701', '-97.9367535681225', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(17, 6, 'Atempan', '19.8399431459792', '-97.4594155237423', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(18, 18, 'Atexcal', '18.3984638946574', '-97.7367810570527', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(19, 19, 'Atlixco', '18.9097339583488', '-98.4345052008707', 'iconuevo/ippib.png', 2, 1, 'EN DESARROLLO'),
(20, 21, 'Atoyatempan', '18.8232997098236', '-97.9133729697035', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(21, 15, 'Atzala', '18.5448629305163', '-98.5541870693006', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(22, 19, 'Atzitzihuacán', '18.5915725474008', '-98.5563272035602', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(23, 11, 'Atzitzintla', '18.8974246233584', '-97.3274899227436', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(24, 17, 'Axutla', '18.1884211196671', '-98.3892400063382', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(25, 6, 'Ayotoxco de Guerrero', '20.0976071404916', '-97.4111377441807', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(26, 20, 'Calpan', '19.1079502477076', '-98.4593496326983', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(27, 13, 'Caltepec', '19.0266493491121', '-98.1794169489752', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(28, 3, 'Camocuautla', '20.0385687838264', '-97.7577322522769', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(29, 4, 'Caxhuacan', '20.0644049851122', '-97.606483538556', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(30, 3, 'Coatepec', '20.0620792514928', '-97.7324441042102', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(31, 18, 'Coatzingo', '18.9804496148205', '-97.7833265711655', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(32, 16, 'Cohetzala', '18.206757767186', '-98.8056211892441', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(33, 19, 'Cohuecan', '18.7647153483464', '-98.7151802491819', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(34, 33, 'Coronango', '19.1210319011703', '-98.3024194607341', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(35, 13, 'Coxcatlán', '18.2666018186406', '-97.1471436709911', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(36, 14, 'Coyomeapan', '18.2837063122441', '-96.9924544035195', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(37, 18, 'Coyotepec', '18.4257165926084', '-97.8629143939357', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(38, 10, 'Cuapiaxtla de Madero', '18.9163289556269', '-97.8255303243332', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(39, 7, 'Cuautempan', '19.915201889564', '-97.7949710982361', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(40, 21, 'Cuautinchán', '18.9557987531645', '-98.0160678848427', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(41, 33, 'Cuautlancingo', '19.089453584017', '-98.2732426597035', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(42, 18, 'Cuayuca de Andrade', '18.4871956315519', '-98.1834488504675', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(43, 5, 'Cuetzalan del Progreso', '20.0185481547279', '-97.5207673180611', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(44, 8, 'Cuyoaco', '19.6054551702538', '-97.621509868649', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(45, 11, 'Chalchicomula de Sesma', '18.9881457466247', '-97.4484273203125', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(46, 13, 'Chapulco', '18.6202703418474', '-97.4107313184073', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(47, 16, 'Chiautla', '18.278374689433296', '-98.59027057827242', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(48, 20, 'Chiautzingo', '19.2028565862047', '-98.4682750285764', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(49, 2, 'Chiconcuautla', '20.0947251815988', '-97.9396768291799', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(50, 9, 'Chichiquila', '19.2000657343449', '-97.0675314230985', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(51, 15, 'Chietla', '18.5197908120035', '-98.5786117079813', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(52, 18, 'Chigmecatitlán', '18.6458708476736', '-98.0759460264137', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(53, 7, 'Chignahuapan', '19.8381925076013', '-98.0310637985467', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(54, 6, 'Chignautla', '19.8137804766221', '-97.3890560669249', 'iconuevo/ippib.png', 2, 1, 'EN DESARROLLO'),
(55, 17, 'Chila', '17.9700980767455', '-97.8619285766119', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(56, 16, 'Chila de la Sal', '18.1090298899223', '-98.4843005002193', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(57, 1, 'Honey', '20.2391977289794', '-98.2120816200295', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(58, 9, 'Chilchotla', '19.2550981438669', '-97.1839072888816', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(59, 17, 'Chinantla', '18.201081355856', '-98.2631282663109', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(60, 20, 'Domingo Arenas', '19.1419833575229', '-98.4575006177651', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(61, 14, 'Eloxochitlán', '18.4989366255073', '-96.9547122694591', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(62, 15, 'Epatlán', '18.6419171578671', '-98.3703816900513', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(63, 11, 'Esperanza', '18.8586926663208', '-97.3758203595404', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(64, 1, 'Francisco Z. Mena', '20.733782017343', '-97.8521421353926', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(65, 10, 'General Felipe Ángeles', '18.993605951945', '-97.7092527481537', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(66, 17, 'Guadalupe', '18.0894890134387', '-98.1212171691242', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(67, 9, 'Guadalupe Victoria', '19.2902502381985', '-97.3428320686241', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(68, 3, 'Hermenegildo Galeana', '20.1216925687395', '-97.7440715999383', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(69, 19, 'Huaquechula', '18.7702828623437', '-98.541922126079', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(70, 18, 'Huatlatlauca', '18.6778591830762', '-98.0513598676365', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(71, 2, 'Huauchinango', '20.174714906951', '-98.0518508990908', 'iconuevo/ippib.png', 2, 1, 'EN DESARROLLO'),
(72, 4, 'Huehuetla', '20.10446198538391', '-97.62479857356492', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(73, 16, 'Huehuetlán el Chico', '18.3729715773256', '-98.6878818249942', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(74, 20, 'Huejotzingo', '19.1590474974095', '-98.4080717335939', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(75, 6, 'Hueyapan', '19.8825549999552', '-97.4454630930775', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(76, 6, 'Hueytamalco', '19.939508789672', '-97.2890647063533', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(77, 4, 'Hueytlalpan', '20.0260855995797', '-97.6985495279172', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(78, 4, 'Huitzilan de Serdán', '19.9674664870137', '-97.6937140929178', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(79, 21, 'Huitziltepec', '18.7701740643986', '-97.8809636216047', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(80, 4, 'Atlequizayan', '20.013670765408', '-97.6239808622938', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(81, 16, 'Ixcamilpa de Guerrero', '18.0271374456964', '-98.6965189676203', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(82, 18, 'Ixcaquixtla', '18.460116227204', '-97.8322660839367', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(83, 7, 'Ixtacamaxtitlán', '19.6236318745039', '-97.8165717020195', 'iconuevo/ippib.png', 2, 1, 'EN DESARROLLO'),
(84, 4, 'Ixtepec', '20.0248922091909', '-97.6469457498042', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(85, 15, 'Izúcar de Matamoros', '18.6022523464543', '-98.464884689226', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(86, 1, 'Jalpan', '20.4805681987738', '-97.9429377122324', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(87, 16, 'Jolalpan', '18.3205414565504', '-98.8442838334451', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(88, 5, 'Jonotla', '20.0304329423225', '-97.5746499645354', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(89, 2, 'Jopala', '20.1630017628315', '-97.6927461469974', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(90, 33, 'Juan C. Bonilla', '19.1096128537828', '-98.329785026934', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(91, 2, 'Juan Galindo', '20.2120885116588', '-98.0022869444249', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(92, 18, 'Juan N. Méndez', '18.5424260649253', '-97.7721133058524', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(93, 9, 'Lafragua', '19.296508760367', '-97.298923642307', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(94, 8, 'Libres', '19.4646895564654', '-97.6876890855166', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(95, 18, 'La Magdalena Tlatlauquitepec', '18.7590754933901', '-98.1023837777136', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(96, 8, 'Mazapiltepec de Juárez', '19.1195156203911', '-97.7032757272397', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(97, 21, 'Mixtla', '18.9029979655478', '-97.8953456555771', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(98, 18, 'Molcaxac', '18.7382002729462', '-97.9118126125071', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(99, 11, 'Cañada Morelos', '18.737041220463', '-97.4221443961112', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(100, 1, 'Naupan', '20.2285434673771', '-98.109576375067', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(101, 5, 'Nauzontla', '19.958940667036', '-97.6032533463359', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(102, 20, 'Nealtican', '19.0509947352616', '-98.4277956564837', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(103, 13, 'Nicolás Bravo', '18.61296174009', '-97.305985944751', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(104, 8, 'Nopalucan', '19.2159685565525', '-97.8235658115528', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(105, 8, 'Ocotepec', '19.5557152482859', '-97.6488651314702', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(106, 33, 'Ocoyucan', '18.9715148562498', '-98.3376488209997', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(107, 4, 'Olintla', '20.1017111168389', '-97.6847279241535', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(108, 8, 'Oriental', '19.3758017760595', '-97.6193329675806', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(109, 1, 'Pahuatlán', '20.2756858135548', '-98.1499732517834', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(110, 11, 'Palmar de Bravo', '18.8357111515344', '-97.5469712799666', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(111, 1, 'Pantepec', '20.5214749859047', '-97.9388397599365', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(112, 17, 'Petlalcingo', '18.0819119715918', '-97.9170282369389', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(113, 17, 'Piaxtla', '18.1986050802336', '-98.26036315894', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(114, 33, 'Puebla', '19.0441195705223', '-98.1977931325269', 'iconuevo/ippib.png', 2, 1, 'EN DESARROLLO'),
(115, 10, 'Quecholac', '18.9554992067981', '-97.660743306154', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(116, 9, 'Quimixtlán', '19.2535501375231', '-97.1358864028294', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(117, 8, 'Rafael Lara Grajales', '19.2257246659654', '-97.8059042812458', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(118, 10, 'Los Reyes de Juárez', '18.9467830998795', '-97.8131440263386', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(119, 33, 'San Andrés Cholula', '19.0506173094928', '-98.3005545166382', 'iconuevo/ippib.png', 2, 1, 'EN DESARROLLO'),
(120, 13, 'San Antonio Cañada', '18.4972840797009', '-97.290191766694', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(121, 15, 'San Diego la Mesa Tochimiltzingo', '18.8099817358948', '-98.3312270292363', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(122, 20, 'San Felipe Teotlalcingo', '19.2354742772102', '-98.4956693631037', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(123, 3, 'San Felipe Tepatlán', '20.0908771685699', '-97.7964673571632', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(124, 13, 'San Gabriel Chilac', '18.3261836520927', '-97.3478238454217', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(125, 33, 'San Gregorio Atzompa', '19.0266966921647', '-98.345693495243', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(126, 19, 'San Jerónimo Tecuanipan', '19.014579611761', '-98.4008376668035', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(127, 17, 'San Jerónimo Xayacatlán', '18.2214600271603', '-97.9143704761809', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(128, 8, 'San José Chiapa', '19.2420443453351', '-97.7690157021349', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(129, 13, 'San José Miahuatlán', '18.5530126563722', '-97.4442363514587', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(130, 11, 'San Juan Atenco', '19.0899766871009', '-97.5414328876633', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(131, 18, 'San Juan Atzompa', '18.7457806056789', '-98.0237894602237', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(132, 20, 'San Martín Texmelucan', '19.2881854069324', '-98.4239051982996', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(133, 15, 'San Martín Totoltepec', '18.6498974798775', '-98.343654908597', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(134, 20, 'San Matías Tlalancaleca', '19.3244694985808', '-98.4978038931514', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(135, 17, 'San Miguel Ixitlán', '18.0017418993578', '-97.7748229954809', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(136, 33, 'San Miguel Xoxtla', '19.1681740210079', '-98.3097236625894', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(137, 9, 'San Nicolás Buenos Aires', '19.1634229760688', '-97.5529667560341', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(138, 20, 'San Nicolás de los Ranchos', '19.0729002187977', '-98.48586410314', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(139, 17, 'San Pablo Anicano', '18.1243823882399', '-98.0838317796258', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(140, 33, 'San Pedro Cholula', '19.0625144098341', '-98.307554303297', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(141, 17, 'San Pedro Yeloixtlahuaca', '18.1168254452945', '-98.0781184739157', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(142, 8, 'San Salvador el Seco', '19.1348770343925', '-97.6426384652727', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(143, 20, 'San Salvador el Verde', '19.2695332097168', '-98.517204750643', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(144, 10, 'San Salvador Huixcolotla', '18.9204266642079', '-97.7715473388362', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(145, 14, 'San Sebastián Tlacotepec', '18.4050671231845', '-96.8505296150747', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(146, 18, 'Santa Catarina Tlaltempan', '18.6139472007864', '-98.0799154181524', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(147, 18, 'Santa Inés Ahuatempan', '18.4125876675232', '-98.0177085611181', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(148, 19, 'Santa Isabel Cholula', '18.9950728178762', '-98.3801643022954', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(149, 13, 'Santiago Miahuatlán', '18.5529131853999', '-97.4442516306656', 'iconuevo/ippib.png', 2, 1, 'EN DESARROLLO'),
(150, 18, 'Huehuetlán el Grande', '18.7377367214644', '-98.1683861605275', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(151, 21, 'Santo Tomás Hueyotlipan', '18.8910843892284', '-97.8672617589841', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(152, 8, 'Soltepec', '19.1192594794717', '-97.7084834620264', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(153, 21, 'Tecali de Herrera', '18.9012130088016', '-97.969102041386', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(154, 12, 'Tecamachalco', '18.8846348315704', '-97.7283419332457', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(155, 17, 'Tecomatlán', '18.1109374476729', '-98.3143839465904', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(156, 13, 'Tehuacán', '18.4624509259465', '-97.3926604111211', 'iconuevo/ippib.png', 2, 1, 'EN DESARROLLO'),
(157, 17, 'Tehuitzingo', '18.3316069489084', '-98.2758464063852', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(158, 6, 'Tenampulco', '20.1714628980134', '-97.4056064259704', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(159, 15, 'Teopantlán', '18.7148175215759', '-98.2645095020712', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(160, 16, 'Teotlalco', '18.4696064712286', '-98.7782584272737', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(161, 13, 'Tepanco de López', '18.5550500282542', '-97.5613887403991', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(162, 3, 'Tepango de Rodríguez', '20.002764618436', '-97.7962807950548', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(163, 21, 'Tepatlaxco de Hidalgo', '19.0772802321147', '-97.9666211294987', 'iconuevo/ippib.png', 2, 1, 'EN DESARROLLO'),
(164, 21, 'Tepeaca', '18.9657970554413', '-97.9055896273574', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(165, 19, 'Tepemaxalco', '18.7372256878036', '-98.6282275067433', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(166, 15, 'Tepeojuma', '18.7215877226663', '-98.4500644024348', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(167, 3, 'Tepetzintla', '19.9671829797119', '-97.8410282358066', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(168, 15, 'Tepexco', '18.6419751914635', '-98.6895802746622', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(169, 18, 'Tepexi de Rodríguez', '18.5809636366767', '-97.9261721245923', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(170, 8, 'Tepeyahualco', '19.4926024793912', '-97.4923448624252', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(171, 21, 'Tepeyahualco de Cuauhtémoc', '18.8136978891736', '-97.8783584314432', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(172, 7, 'Tetela de Ocampo', '19.8169424895745', '-97.8060562696098', 'iconuevo/ippib.png', 2, 1, 'EN DESARROLLO'),
(173, 6, 'Teteles de Avila Castillo', '19.8586201005293', '-97.4571628496402', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(174, 6, 'Teziutlán', '19.817556807038', '-97.3610255897622', 'iconuevo/ippib.png', 2, 1, 'EN DESARROLLO'),
(175, 19, 'Tianguismanalco', '18.9776181171397', '-98.4481827986611', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(176, 15, 'Tilapa', '18.5915591168326', '-98.5563287180169', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(177, 12, 'Tlacotepec de Benito Juárez', '18.6818660219528', '-97.6537498435815', 'iconuevo/ippib.png', 2, 1, 'EN DESARROLLO'),
(178, 1, 'Tlacuilotepec', '20.3262923436759', '-98.0688414773793', 'iconuevo/ippib.png', 2, 1, 'EN DESARROLLO'),
(179, 9, 'Tlachichuca', '19.1153369383281', '-97.4188912929085', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(180, 20, 'Tlahuapan', '19.3304690848534', '-98.5823283397176', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(181, 33, 'Tlaltenango', '19.1699716287178', '-98.3444124971604', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(182, 21, 'Tlanepantla', '18.8650510218794', '-97.887545405576', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(183, 2, 'Tlaola', '20.1371399915992', '-97.9242929744669', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(184, 2, 'Tlapacoya', '20.1230248208991', '-97.8513045249474', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(185, 15, 'Tlapanalá', '18.6962030300375', '-98.5374762744959', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(186, 6, 'Tlatlauquitepec', '19.8514008902009', '-97.496718338726', 'iconuevo/ippib.png', 2, 1, 'EN DESARROLLO'),
(187, 1, 'Tlaxco', '20.4235888629349', '-98.0287534100482', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(188, 19, 'Tochimilco', '18.8929831310902', '-98.5721286356331', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(189, 12, 'Tochtepec', '18.8401001183885', '-97.8257555639777', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(190, 17, 'Totoltepec de Guerrero', '18.2222771049669', '-97.85537414415', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(191, 17, 'Tulcingo', '18.0451523163053', '-98.4412773375118', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(192, 5, 'Tuzamapan de Galeana', '20.0654091720984', '-97.5753464410151', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(193, 21, 'Tzicatlacoyan', '18.8411802358668', '-98.0481083190151', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(194, 1, 'Venustiano Carranza', '20.5050568504191', '-97.6690649785973', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(195, 14, 'Vicente Guerrero', '18.5379398759496', '-97.2023936550772', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(196, 17, 'Xayacatlán de Bravo', '18.2352520846502', '-97.9754922836422', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(197, 1, 'Xicotepec', '20.2761376458444', '-97.9581816444088', 'iconuevo/ippib.png', 2, 1, 'EN DESARROLLO'),
(198, 16, 'Xicotlán', '18.0596065225184', '-98.525030146222', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(199, 6, 'Xiutetelco', '19.796202825942', '-97.326548717406', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(200, 5, 'Xochiapulco', '19.8205627879706', '-97.658672449', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(201, 15, 'Xochiltepec', '18.6498902603626', '-98.3436505787577', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(202, 4, 'Xochitlán de Vicente Suárez', '19.9687664762234', '-97.6290764916793', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(203, 12, 'Xochitlán Todos Santos', '18.7048415627844', '-97.7753202475975', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(204, 6, 'Yaonáhuac', '19.8709065765292', '-97.4663581119285', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(205, 12, 'Yehualtepec', '18.793627241258', '-97.6627142777504', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(206, 18, 'Zacapala', '18.5907526335782', '-98.0650558666325', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(207, 5, 'Zacapoaxtla', '19.8731072922424', '-97.5890138100434', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(208, 3, 'Zacatlán', '19.9322357776159', '-97.9602735101467', 'iconuevo/ippib.png', 2, 1, 'EN DESARROLLO'),
(209, 13, 'Zapotitlán', '18.3297676759517', '-97.4754212053175', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(210, 4, 'Zapotitlán de Méndez', '20.0020997752424', '-97.7150602033315', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(211, 5, 'Zaragoza', '19.7713977938053', '-97.5555348665413', 'iconuevo/ippib.png', 3, 1, 'EN DESARROLLO'),
(212, 5, 'Zautla', '19.7152310372233', '-97.6723046544014', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(213, 1, 'Zihuateutla', '20.250054054028', '-97.8868629680157', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(214, 13, 'Zinacatepec', '18.3333137733321', '-97.2453809693889', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(215, 4, 'Zongozotla', '19.9785711225645', '-97.7267581907124', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(216, 5, 'Zoquiapan', '20.0098470204802', '-97.5957114666549', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO'),
(217, 14, 'Zoquitlán', '18.3356131407037', '-97.0173232641961', 'iconuevo/ippib.png', 1, 1, 'EN DESARROLLO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`id`, `name`) VALUES
(1, 'main'),
(2, 'map'),
(3, '¿Qué es el SIEPI?'),
(4, 'Postales'),
(5, 'Material Didácticos'),
(6, 'Consejos regionales'),
(7, 'Documentales'),
(8, 'Libros'),
(9, 'Consejo Estatal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pruebas`
--

CREATE TABLE `pruebas` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `desc_` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

CREATE TABLE `regiones` (
  `id` int(11) NOT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `sede` varchar(100) DEFAULT NULL,
  `latitud` varchar(50) DEFAULT NULL,
  `longitud` varchar(50) DEFAULT NULL,
  `icono` varchar(90) DEFAULT NULL,
  `estatus` int(1) DEFAULT NULL,
  `enlace` text DEFAULT NULL,
  `detalles` varchar(500) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `video` varchar(150) DEFAULT NULL,
  `audio` varchar(100) DEFAULT NULL,
  `tradiciones` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `regiones`
--

INSERT INTO `regiones` (`id`, `numero`, `nombre`, `sede`, `latitud`, `longitud`, `icono`, `estatus`, `enlace`, `detalles`, `img`, `video`, `audio`, `tradiciones`) VALUES
(1, '1', 'Xicotepec', '', '20.2761376458', '-97.9581816444088', 'iconuevo/ippi.png', 1, 'https://goo.gl/maps/sJM2dtw9T6puSVLC9', 'Xicotepec es uno de los 217 municipios que conforman al estado mexicano de Puebla. Se ubica dentro de la Sierra norte de Puebla y pertenece a la primera región del estado. Su cabecera es la ciudad de Xicotepec de Juárez, la cual es reconocida por la Secretaría de Turismo de México como pueblo mágico', '../img/Xicotepec.jpg', 'https://www.youtube.com/embed/6anYZLjx15M', '../public/audio/Huapango-de-Xicotep.mp3', 'https://www.youtube.com/embed/FrX8VmsUJjE?si=Ka1n1O_27fPYjM5M'),
(2, '2', 'Huauchinango', '', '-20.17351026', '-98.0588', 'iconuevo/ippi.png', 1, 'https://goo.gl/maps/eJ9SbxfjVMveegva7', 'Huauchinango es una ciudad perteneciente al estado de Puebla, México. Es la cabecera del municipio de Huauchinango. Desde el 25 de septiembre de 2015 ha sido reconocida por la Secretaría de turismo como pueblo mágico', '../img/Huauchinango.jpg', 'https://www.youtube.com/embed/6anYZLjx15M', '../public/audio/Audio-1.mpeg', ''),
(3, '3', 'Zacatlán', '', '19.917', '-97.967', 'iconuevo/ippi.png', 1, 'https://goo.gl/maps/4ZdxWkeiQWUPPyPKA', 'La ciudad de Zacatlán es la cabecera y ciudad más habitada del municipio de Zacatlán', '../img/zacatlan.jpeg', 'https://www.youtube.com/embed/6anYZLjx15M', '../public/audio/Audio-1.mpeg', ''),
(4, '4', 'Huehuetla', '', '20.1047', '-97.6252', 'iconuevo/ippi.png', 1, 'https://goo.gl/maps/bPt1tD2AauhuwZgs9', 'Huehuetla es una localidad mexicana, cabecera del municipio de Huehuetla en el estado de Hidalgo', '../img/huehuetla.jpg', 'https://www.youtube.com/embed/L_NFeeLihnM', '../public/audio/Audio-1.mpeg', ''),
(5, '5', 'Zacapoaxtla', NULL, '19.8763', '-97.5876', 'iconuevo/ippi.png', 1, 'https://goo.gl/maps/xtFGuMme7NU6vsdj7', 'Zacapoaxtla es una población del estado mexicano de Puebla, cabecera de uno de los 217 municipios que conforman al estado. Se localiza en la parte norte del estado, cuyas coordenadas geográficas son los paralelos 19º44\'18” y 19º59\'18” de latitud Norte, y los meridianos 97º31\'42” y 97º37\'54” de longitud Oeste', '../img/Zapotitlan.jpeg', 'https://www.youtube.com/embed/L_NFeeLihnM', '../public/audio/Audio-1.mpeg', ''),
(6, '6', 'Teziutlán', '', '19.6769', '-97.3591', 'iconuevo/ippi.png', 1, 'https://goo.gl/maps/QaQqRuQbR2gCq8Bt7', 'Teziutlán es uno de los 217 municipios que conforman al estado mexicano de Puebla, se localiza en el noreste de la entidad, cerca de la zona limítrofe con el estado de Veracruz.', '../img/teziutlan.jpeg', 'https://www.youtube.com/embed/L_NFeeLihnM', '../public/audio/Audio-2.mpeg', ''),
(7, '15', 'Chignahuapan', NULL, '19.6986', '-98.0314', 'iconuevo/ippi.png', 1, 'https://goo.gl/maps/A3qfFYwtsRcW61nY8', 'Chignahuapan es una ciudad del estado de Puebla, en el sureste de México. Es conocida por la Basílica de la Inmaculada Concepción y su enorme figura de la Virgen María, tallada en cedro. La Plaza de Armas central tiene un colorido quiosco de madera y la Parroquia de Santiago Apóstol, con su fachada de color brillante.', '../img/chignahuapan.png', 'https://www.youtube.com/embed/uMJ6cozI7ns', '../public/audio/Audio-2.mpeg', ''),
(8, '8', 'Libres', NULL, '-19.4646895564654', '-97.6876890855166', 'iconuevo/ippi.png', 1, 'https://goo.gl/maps/ULiArWBWNF9m9usn9', 'El municipio de Libres es uno de los 217 municipios en el estado mexicano de Puebla, ubicado en la zona centro norte del estado. La Ciudad de Libres, cabecera de este municipio, se localiza a unos 65 kilómetros de distancia de la capital del estado.', '../img/libres.jfif', 'https://www.youtube.com/embed/uMJ6cozI7ns', '../public/audio/Audio-2.mpeg', ''),
(9, '*', 'Qumixtlán', NULL, '19.2538', '-97.1369', 'iconuevo/ippi.png', 1, 'https://goo.gl/maps/kK1ukjoZ42uaWmrt5', 'Suscríbase a nuestro boletín de noticias para más información. H. Ayuntamiento de Quimixtlán 2021-2024. Mapa del Sitio; Contacto; Acerca del Municipio', '../img/Quimixtlan.jfif', 'https://www.youtube.com/embed/uMJ6cozI7ns', '../public/audio/Audio-2.mpeg', ''),
(10, '10', 'Acatzingo', NULL, '18.9807', '-97.7842', 'iconuevo/ippi.png', 1, 'https://goo.gl/maps/yhwtZ2RjcrACNEr1A', 'Acatzingo es uno de los 217 municipios del estado de Puebla. Se localiza en el centro del estado, dentro del valle de Tepeaca, que es una prolongación del valle de Puebla-Tlaxcala.', '../img/Acatzingo.jfif', 'https://www.youtube.com/embed/uMJ6cozI7ns', '../public/audio/Audio-2.mpeg', ''),
(11, '11', 'Ciudad Serdán', NULL, '18.9894000', '-97.4470200', 'iconuevo/ippi.png', 1, 'https://goo.gl/maps/PM8d6RFq5fNbdVkJ7', 'EN DESARROLLO', '../public/img/baston.jpg', 'https://www.youtube.com/embed/uMJ6cozI7ns', '../public/audio/Audio-3.mpeg', ''),
(12, '12', 'Tecamachalco', NULL, '18.8812', '-97.7329', 'iconuevo/ippi.png', 1, 'https://goo.gl/maps/fhScCYtdjZD9rCh47', 'EN DESARROLLO', '../public/img/baston.jpg', 'https://www.youtube.com/embed/uMJ6cozI7ns', '../public/audio/Audio-3.mpeg', ''),
(13, '13', 'Tehuacán', NULL, '18.4625', '-97.3928', 'iconuevo/ippi.png', 1, 'https://goo.gl/maps/so5gzdTopcyDfet69', 'EN DESARROLLO', '../public/img/baston.jpg', 'https://www.youtube.com/embed/uMJ6cozI7ns', '../public/audio/Audio-3.mpeg', ''),
(14, '14', 'Sierra Negra', NULL, '18.416667', '-97.198', 'iconuevo/ippi.png', 1, 'https://goo.gl/maps/vDwjDzyjbfF9oEt98', 'EN DESARROLLO', '../public/img/baston.jpg', 'https://www.youtube.com/embed/DGQ1QCVd4kA', '../public/audio/Audio-3.mpeg', ''),
(15, '15', 'Izúcar de Matamoros', NULL, '18.690', '-98.166', 'iconuevo/ippi.png', 1, 'https://goo.gl/maps/eqdCc49bw9XdCG5u9', 'EN DESARROLLO', '../public/img/baston.jpg', 'https://www.youtube.com/embed/DGQ1QCVd4kA', '../public/audio/Audio-3.mpeg', ''),
(16, '16', 'Chiautla', NULL, '18.2556', '-98.6069', 'iconuevo/ippi.png', 1, 'https://goo.gl/maps/8vjoP2TTYX2PBQex7', 'EN DESARROLLO', '../public/img/baston.jpg', 'https://www.youtube.com/embed/DGQ1QCVd4kA', '../public/audio/Audio-4.mpeg', ''),
(17, '17', 'Acatlán', NULL, '18.093333', '-97.921667', 'iconuevo/ippi.png', 1, 'https://goo.gl/maps/2s7u3BKMijRGTEVn8', 'EN DESARROLLO', '../public/img/baston.jpg', 'https://www.youtube.com/embed/PFq-iXv_JOQ', '../public/audio/Audio-4.mpeg', ''),
(18, '18', 'Tepexi de Rodríguez', 'chigmecatitlan', '18.5843', '-97.9297', 'iconuevo/ippi.png', 1, 'https://goo.gl/maps/WftatENwQH7EKwpm6', 'EN DESARROLLO', '../public/img/baston.jpg', 'https://www.youtube.com/embed/PFq-iXv_JOQ', '../public/audio/Audio-4.mpeg', ''),
(19, '19', 'Atlixco', NULL, '18.9023', '-98.4392', 'iconuevo/ippi.png', 1, 'https://goo.gl/maps/iHMpYWi5727CaxgB6', 'EN DESARROLLO', '../public/img/baston.jpg', 'https://www.youtube.com/embed/PFq-iXv_JOQ', '../public/audio/Audio-4.mpeg', ''),
(20, '20', 'San Martín Texmelucan', NULL, '19.2843100', '-98.4388500', 'iconuevo/ippi.png', 1, 'https://goo.gl/maps/ZN9d6wReMj8Szrw36', 'EN DESARROLLO', '../public/img/baston.jpg', 'https://www.youtube.com/embed/PFq-iXv_JOQ', '../public/audio/Audio-4.mpeg', ''),
(21, '32', 'Tepeaca', NULL, '18.9647', '-97.9031', 'iconuevo/ippi.png', 1, 'https://goo.gl/maps/Cp3xRrAqzuU2mr1w5', 'EN DESARROLLO', '../public/img/baston.jpg', 'https://www.youtube.com/embed/nN6QiNwg-4E', '../public/audio/Audio-5.mpeg', ''),
(22, '*', 'San Miguel Xoxtla', NULL, '19.1683843', '-98.3191093', 'iconuevo/ippi.png', 0, 'https://goo.gl/maps/cLfoa2N3BVrwbTMs9', 'EN DESARROLLO', '../public/img/baston.jpg', 'https://www.youtube.com/embed/nN6QiNwg-4E', '../public/audio/Audio-5.mpeg', ''),
(23, '*', 'Tlaltenango', NULL, '19.1752873', '-98.3526549', 'iconuevo/ippi.png', 0, 'https://goo.gl/maps/CN4852YS5CxDwwNeA', 'EN DESARROLLO', '../public/img/baston.jpg', 'https://www.youtube.com/embed/nN6QiNwg-4E', '../public/audio/Audio-5.mpeg', ''),
(24, '*', 'Juan C. Bonilla', NULL, '19.1147357', '-98.3369687', 'iconuevo/ippi.png', 0, 'https://goo.gl/maps/e989EtFU7RbenWMu5', 'EN DESARROLLO', '../public/img/baston.jpg', 'https://www.youtube.com/embed/nN6QiNwg-4E', '../public/audio/Audio-5.mpeg', ''),
(25, '29', 'San Pedro Cholula', 'Zoquitlan', '19.0724301', '-98.3677162', 'iconuevo/ippi.png', 0, 'https://goo.gl/maps/ZzaWfCLDTfG7dxeA7', 'EN DESARROLLO', '../public/img/baston.jpg', 'https://www.youtube.com/embed/u2_afE26ay4', '../public/audio/Audio-5.mpeg', ''),
(26, '*', 'San Gregorio Atzompa', 'Zinacatepec', NULL, NULL, 'iconuevo/ippi.png', 0, 'https://goo.gl/maps/B1hJ7iD972M61VoNA', 'EN DESARROLLO', '../public/img/baston.jpg', 'https://www.youtube.com/embed/u2_afE26ay4', '../public/audio/Audio-6.mpeg', ''),
(28, '*', 'Ocoyucan', NULL, NULL, NULL, 'iconuevo/ippi.png', 0, 'https://goo.gl/maps/mTxJA1MfbKLFcofJ6', 'EN DESARROLLO', '../public/img/baston.jpg', 'https://www.youtube.com/embed/u2_afE26ay4', '../public/audio/Audio-6.mpeg', ''),
(29, '30', 'Cuautlancingo', NULL, NULL, NULL, 'iconuevo/ippi.png', 0, 'https://goo.gl/maps/Sa4K5a4FsVfgtUsp8', 'EN DESARROLLO', '../public/img/baston.jpg', 'https://www.youtube.com/embed/u2_afE26ay4', '../public/audio/Audio-6.mpeg', ''),
(30, '*', 'Puebla', NULL, NULL, NULL, 'iconuevo/ippi.png', 0, 'https://goo.gl/maps/UGCWqNXwxJ1FgpSd9', 'EN DESARROLLO', '../public/img/baston.jpg', 'https://www.youtube.com/embed/u2_afE26ay4', '../public/audio/Audio-6.mpeg', ''),
(31, '*', 'Coronango', NULL, NULL, NULL, 'iconuevo/ippi.png', 0, 'https://goo.gl/maps/m87idtsAxDGYiKYZ7', 'EN DESARROLLO', '../public/img/baston.jpg', 'https://www.youtube.com/embed/u2_afE26ay4', '../public/audio/Audio-7.mpeg', ''),
(32, '31', 'Amozoc', NULL, NULL, NULL, 'iconuevo/ippi.png', 0, 'https://goo.gl/maps/NAxDRmvtH2wfPMhL9', 'EN DESARROLLO', '../public/img/baston.jpg', 'https://www.youtube.com/embed/u2_afE26ay4', '../public/audio/Audio-7.mpeg', ''),
(33, '21-31', 'Puebla Capital', NULL, '19.043581', '-98.198218', 'iconuevo/ippi.png', 1, 'https://goo.gl/maps/UGCWqNXwxJ1FgpSd9', 'EN DESARROLLO', '../public/img/baston.jpg', 'https://www.youtube.com/embed/u2_afE26ay4', '../public/audio/Audio-7.mpeg', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salud_por_municipio`
--

CREATE TABLE `salud_por_municipio` (
  `Id` int(11) NOT NULL,
  `Id_Mun` int(11) NOT NULL,
  `Poblacion` varchar(10) NOT NULL,
  `NH` varchar(10) NOT NULL COMMENT 'Natalidad Hombres',
  `NM` varchar(10) NOT NULL COMMENT 'Natalidad Mujeres',
  `MH` varchar(10) NOT NULL COMMENT 'Mortalidad Hombres',
  `MM` varchar(10) NOT NULL COMMENT 'Mortalidad Mujeres',
  `NE` varchar(10) NOT NULL COMMENT 'No especificado ',
  `CE` varchar(10) NOT NULL COMMENT 'De consulta externa',
  `HG` varchar(10) NOT NULL COMMENT 'De hospitalización general',
  `HE` varchar(10) NOT NULL COMMENT 'De hospitalización especializada',
  `CSS` varchar(10) NOT NULL COMMENT 'Con seguridad social',
  `SSS` varchar(10) NOT NULL COMMENT 'Sin seguridad social ',
  `Otros` varchar(10) NOT NULL,
  `PMISPS` varchar(10) NOT NULL COMMENT 'Personal médico de las instituciones del sector público de salud b/',
  `CTSC` varchar(10) NOT NULL COMMENT 'Casas y técnicas en salud coordinadas por la SSA a/',
  `PCASS` varchar(10) NOT NULL COMMENT 'Porcentaje carencia por acceso a los servicios de salud c/'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `salud_por_municipio`
--

INSERT INTO `salud_por_municipio` (`Id`, `Id_Mun`, `Poblacion`, `NH`, `NM`, `MH`, `MM`, `NE`, `CE`, `HG`, `HE`, `CSS`, `SSS`, `Otros`, `PMISPS`, `CTSC`, `PCASS`) VALUES
(1, 100, '9310', '67', '71', '39', '37', '0', '6', '0', '0', '0', '6', '0', '12', '3', '10.7%'),
(2, 213, '11967', '104', '88', '38', '38', '0', '7', '0', '0', '0', '7', '0', '8', '11', '17.5%'),
(3, 111, '18528', '107', '98', '78', '75', '0', '8', '1', '0', '1', '7', '1', '16', '22', '20.7%'),
(4, 178, '15977', '72', '93', '84', '60', '1', '7', '0', '0', '0', '7', '0', '6', '14', '21.0%'),
(5, 109, '20274', '117', '109', '86', '81', '0', '8', '1', '0', '2', '6', '1', '27', '11', '21.3%'),
(6, 197, '80591', '377', '372', '327', '276', '0', '14', '2', '0', '4', '11', '1', '142', '23', '36.3%'),
(7, 184, '6422', '46', '40', '19', '22', '1', '3', '0', '0', '0', '3', '0', '3', '6', '5.7%'),
(8, 49, '17382', '140', '132', '63', '52', '0', '7', '0', '0', '0', '7', '0', '9', '12', '14.4%'),
(9, 183, '20433', '180', '164', '78', '75', '0', '10', '1', '0', '0', '11', '0', '23', '6', '15.5%'),
(10, 89, '12131', '75', '73', '48', '52', '0', '4', '0', '0', '0', '4', '0', '9', '5', '20.3%'),
(11, 71, '103946', '461', '479', '345', '343', '0', '20', '3', '0', '5', '17', '1', '183', '33', '32.8'),
(12, 162, '4155', '17', '30', '26', '19', '0', '1', '0', '0', '0', '1', '0', '3', '1', '29.3%'),
(13, 68, '1013', '37', '37', '37', '22', '0', '6', '0', '0', '0', '6', '0', '5', '3', '8.2%'),
(14, 28, '2758', '27', '22', '8', '6', '0', '1', '0', '0', '0', '1', '0', '1', '0', '3.1%'),
(15, 14, '4812', '32', '35', '19', '20', '0', '2', '0', '0', '0', '2', '0', '4', '0', '10.9%'),
(16, 123, '3793', '24', '17', '15', '19', '0', '3', '0', '0', '0', '3', '0', '2', '0', '14.9%'),
(17, 30, '772', '8', '7', '6', '9', '0', '1', '0', '0', '0', '1', '0', '3', '0', '10.3%'),
(18, 167, '10373', '82', '80', '37', '37', '0', '8', '0', '0', '0', '8', '0', '12', '5', '6.6%'),
(19, 6, '14542', '98', '89', '59', '51', '0', '8', '1', '0', '0', '8', '1', '28', '4', '8.0%'),
(20, 208, '87361', '495', '517', '312', '251', '0', '27', '2', '0', '3', '25', '1', '187', '28', '25.9%'),
(21, 84, '6950', '47', '47', '28', '30', '0', '0', '1', '0', '0', '1', '0', '50', '0', '16.5%'),
(22, 77, '5951', '50', '47', '17', '22', '0', '2', '0', '0', '0', '2', '0', '2', '9', '10.9%'),
(23, 80, '2633', '12', '11', '12', '10', '0', '1', '0', '0', '0', '1', '0', '1', '0', '19.3%'),
(24, 72, '17082', '115', '98', '95', '67', '0', '12', '1', '0', '1', '11', '1', '27', '4', '8.2%'),
(25, 107, '11993', '84', '96', '51', '60', '0', '6', '0', '0', '1', '5', '0', '7', '4', '9.4%'),
(26, 29, '3811', '18', '14', '15', '18', '0', '1', '0', '0', '0', '1', '0', '1', '0', '23.3%'),
(27, 215, '4539', '23', '20', '15', '16', '0', '3', '0', '0', '0', '2', '1', '4', '0', '7.3%'),
(28, 210, '5675', '39', '27', '12', '17', '0', '4', '1', '0', '1', '3', '1', '11', '1', '28.9%'),
(29, 202, '13025', '98', '95', '65', '48', '0', '6', '0', '0', '0', '5', '1', '12', '10', '17.7 %'),
(30, 78, '15928', '120', '108', '45', '44', '0', '5', '0', '0', '0', '4', '1', '12', '7', '14.0%'),
(31, 216, '2452', '16', '14', '14', '13', '0', '2', '0', '0', '0', '1', '1', '3', '8', '15.9%'),
(32, 88, '4457', '28', '29', '21', '25', '0', '3', '0', '0', '0', '3', '0', '4', '2', '20.5%'),
(33, 200, '3443', '19', '25', '19', '21', '0', '3', '0', '0', '0', '3', '0', '4', '9', '14.0%'),
(34, 192, '5924', '33', '32', '41', '23', '0', '3', '0', '0', '0', '2', '1', '3', '6', '9.7%'),
(35, 212, '20717', '164', '136', '73', '77', '0', '10', '0', '0', '0', '9', '1', '16', '17', '24.1%'),
(36, 43, '49864', '322', '331', '236', '190', '0', '20', '1', '0', '2', '18', '1', '100', '59', '19.5%'),
(37, 207, '57887', '384', '325', '248', '205', '0', '18', '2', '0', '2', '17', '1', '132', '25', '24.7%'),
(38, 75, '13080', '107', '100', '58', '57', '0', '4', '0', '0', '0', '3', '1', '7', '5', '33.4%'),
(39, 25, '8208', '51', '54', '38', '27', '0', '5', '1', '0', '1', '4', '1', '15', '12', '15.5%'),
(40, 17, '29742', '244', '224', '83', '77', '0', '8', '0', '0', '1', '6', '1', '17', '11', '37.9%'),
(41, 54, '35223', '235', '228', '90', '84', '0', '8', '0', '0', '0', '7', '1', '15', '7', '40.4%'),
(42, 174, '103583', '510', '453', '307', '357', '0', '12', '3', '0', '6', '8', '1', '309', '18', '35.1%'),
(43, 186, '55576', '289', '292', '202', '190', '0', '20', '1', '0', '4', '16', '1', '110', '43', '21.8%'),
(44, 204, '7926', '52', '48', '41', '28', '0', '4', '0', '0', '0', '4', '0', '4', '0', '25.7%'),
(45, 39, '9837', '65', '53', '51', '31', '0', '6', '0', '0', '0', '5', '1', '10', '7', '8.2%'),
(46, 83, '25319', '148', '136', '110', '102', '0', '21', '1', '0', '0', '21', '1', '50', '17', '29.3%'),
(47, 172, '27216', '155', '123', '117', '97', '0', '13', '1', '0', '2', '11', '1', '38', '24', '29.9%'),
(48, 50, '26928', '231', '237', '82', '79', '0', '8', '0', '0', '0', '8', '0', '10', '18', '28.8%'),
(49, 177, '54757', '417', '358', '187', '148', '1', '7', '1', '0', '1', '6', '1', '35', '12', '36.9%'),
(50, 120, '5938', '53', '40', '19', '13', '0', '1', '0', '0', '0', '1', '0', '4', '2', '24.3%'),
(51, 129, '14018', '99', '79', '51', '47', '0', '5', '0', '0', '0', '4', '1', '7', '2', '30.2%'),
(52, 124, '15954', '116', '96', '81', '62', '0', '4', '0', '0', '0', '3', '1', '8', '0', '36.2%'),
(53, 35, '20653', '126', '126', '83', '78', '0', '9', '1', '0', '2', '7', '1', '43', '9', '14.4%'),
(54, 13, '22629', '167', '184', '74', '71', '0', '3', '0', '0', '0', '2', '1', '7', '0', '40.9%'),
(55, 156, '327312', '1447', '1456', '955', '834', '1', '19', '3', '1', '6', '16', '1', '641', '11', '36.9%'),
(56, 214, '18359', '117', '93', '73', '83', '0', '2', '0', '0', '0', '1', '1', '7', '0', '36.3%'),
(57, 149, '30309', '212', '220', '91', '71', '0', '2', '0', '0', '0', '1', '1', '17', '4', '31.8%'),
(58, 61, '14461', '106', '97', '55', '46', '0', '7', '0', '0', '0', '7', '0', '8', '11', '16.2%'),
(59, 217, '20335', '193', '168', '88', '82', '0', '8', '1', '0', '0', '9', '0', '16', '33', '11.2%'),
(60, 195, '26559', '169', '146', '88', '85', '0', '10', '1', '0', '0', '10', '1', '32', '8', '10.5%'),
(61, 36, '14806', '89', '85', '30', '26', '1', '6', '0', '0', '0', '6', '0', '8', '23', '13.8%'),
(62, 145, '13189', '105', '98', '58', '60', '0', '13', '1', '0', '0', '13', '1', '19', '17', '11.0%'),
(63, 10, '74768', '575', '573', '226', '186', '0', '19', '1', '1', '2', '17', '1', '66', '20', '33.7%'),
(64, 159, '3836', '21', '20', '27', '22', '0', '1', '0', '0', '0', '1', '0', '1', '1', '24.5%'),
(65, 127, '3606', '23', '21', '31', '19', '0', '2', '0', '0', '0', '2', '0', '2', '1', '19.9%'),
(66, 196, '1570', '5', '9', '17', '6', '0', '1', '0', '0', '0', '1', '0', '3', '5', '14.8%'),
(67, 52, '1215', '7', '6', '11', '11', '0', '1', '0', '0', '0', '1', '0', '1', '0', '20.1%'),
(68, 70, '6111', '27', '21', '41', '39', '0', '4', '0', '0', '0', '4', '0', '6', '6', '26.4%'),
(69, 146, '749', '5', '6', '9', '15', '0', '1', '0', '0', '0', '1', '0', '1', '0', '23.4%'),
(70, 5, '3070', '24', '19', '14', '16', '0', '1', '0', '0', '0', '1', '0', '5', '1', '7.9%'),
(71, 19, '141793', '785', '696', '640', '514', '0', '20', '2', '0', '4', '17', '1', '277', '25', '37.7%'),
(72, 15, '125876', '607', '663', '274', '200', '0', '7', '0', '0', '0', '6', '1', '43', '4', '35.5%'),
(73, 114, '1692181', '7317', '6991', '5773', '5292', '4', '108', '5', '8', '53', '61', '7', '5261', '89', '32.0%'),
(74, 119, '154448', '926', '930', '383', '326', '0', '7', '1', '1', '0', '8', '1', '472', '1', '38.8%'),
(75, 163, '18854', '95', '96', '73', '61', '0', '3', '0', '0', '0', '2', '1', '14', '0', '28.5%'),
(76, 1, '72894', '479', '455', '200', '188', '0', '12', '1', '0', '0', '12', '1', '65', '0', '30.2%');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sub_modules`
--

CREATE TABLE `sub_modules` (
  `id` int(11) NOT NULL,
  `id_mod` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `component` text DEFAULT NULL,
  `icon` text DEFAULT NULL,
  `color` text DEFAULT NULL,
  `search` text DEFAULT NULL,
  `id_search` int(3) DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `sub_modules`
--

INSERT INTO `sub_modules` (`id`, `id_mod`, `description`, `component`, `icon`, `color`, `search`, `id_search`, `status`) VALUES
(1, 2, 'Usuarios', 'users_comp', NULL, NULL, NULL, NULL, 1),
(2, 2, 'Permisos de Usuario', 'user_permissions_comp', NULL, NULL, NULL, NULL, 1),
(3, 15, 'Regiones', 'regions_comp', NULL, NULL, NULL, NULL, 1),
(4, 15, 'Municipios', NULL, NULL, NULL, NULL, NULL, 1),
(5, 15, 'Reporte de visitas', 'report_visits_comp', NULL, NULL, NULL, NULL, 1),
(6, 10, 'En las regiones', NULL, './multimedia/img/icons/map_pu_rojo.png', '#9B162E', 'Reg', 0, 1),
(7, 10, 'En los municipios', NULL, './multimedia/img/icons/Icon-Municipio-Point.png', '#9B162E', 'Mun', 0, 1),
(8, 10, 'Náhuatl', NULL, './multimedia/img/icons/Icon-Nahuatl.png', '#B82A81', 'MunLengua', 7, 1),
(9, 10, 'Totonaco', NULL, './multimedia/img/icons/Icon-Totonaco.png', '#ABCB35', 'MunLengua', 1, 1),
(10, 10, 'Tepehua', NULL, './multimedia/img/icons/Icon-Tepehua.png', '#C9A0C9', 'MunLengua', 6, 1),
(11, 10, 'Otomi', NULL, './multimedia/img/icons/Icon-Otomi.png', '#E18587', 'MunLengua', 5, 1),
(12, 10, 'Popoloca', NULL, './multimedia/img/icons/Icon-Nguiva.png', '#1C9690', 'MunLengua', 4, 1),
(13, 10, 'Mixteco', NULL, './multimedia/img/icons/Icon-Mixteco.png', '#F8C781', 'MunLengua', 3, 1),
(14, 10, 'Mazateco', NULL, './multimedia/img/icons/Icon-Mazateco.png', '#E0C65F', 'MunLengua', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tecnologia_por_municipio`
--

CREATE TABLE `tecnologia_por_municipio` (
  `Id` int(11) NOT NULL,
  `Id_Mun` int(11) NOT NULL,
  `ICHIGP` varchar(10) NOT NULL COMMENT 'Indicador cuantitativo de hogares con internet gratuito y de paga',
  `PWGCT` varchar(10) NOT NULL COMMENT 'Puntos de Wifi gratuito de CFE Telecomunicaciones',
  `DOR` varchar(10) NOT NULL COMMENT 'Dispositivo para oír radio',
  `Televisor` varchar(10) NOT NULL,
  `CLT` varchar(10) NOT NULL COMMENT 'Computadora, laptop o tablet',
  `LTF` varchar(10) NOT NULL COMMENT 'Línea telefónica fija',
  `TC` varchar(10) NOT NULL COMMENT 'Teléfono celular',
  `STP` varchar(10) NOT NULL COMMENT 'Servicio de televisión de paga (Cable o satelital)',
  `SPMV` varchar(10) NOT NULL COMMENT 'Servicio de películas, música o videos de paga por Internet',
  `CV` varchar(10) NOT NULL COMMENT 'Consola de videojuegos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tecnologia_por_municipio`
--

INSERT INTO `tecnologia_por_municipio` (`Id`, `Id_Mun`, `ICHIGP`, `PWGCT`, `DOR`, `Televisor`, `CLT`, `LTF`, `TC`, `STP`, `SPMV`, `CV`) VALUES
(1, 100, '171', '3', '1310', '1405', '42', '313', '1233', '502', '4', '6'),
(2, 213, '132', '5', '1530', '2279', '153', '275', '1871', '646', '13', '9'),
(3, 111, '700', '9', '2467', '3944', '370', '1027', '2150', '869', '38', '15'),
(4, 178, '812', '4', '2184', '2847', '146', '373', '2607', '472', '15', '4'),
(5, 109, '518', '0', '2264', '3487', '327', '464', '3852', '1872', '36', '24'),
(6, 197, '5395', '14', '12476', '17390', '3994', '3994', '17536', '7260', '1067', '531'),
(7, 184, '330', '11', '1180', '1073', '125', '126', '1194', '298', '12', '3'),
(8, 49, '69', '21', '2448', '2893', '99', '327', '2356', '889', '6', '6'),
(9, 183, '198', '9', '2747', '3212', '181', '600', '2768', '957', '11', '8'),
(10, 89, '172', '3', '1492', '2379', '170', '208', '2212', '836', '11', '7'),
(11, 71, '8989', '21', '18079', '23013', '6917', '6580', '23144', '11839', '2234', '1402'),
(12, 162, '36', '0', '613', '738', '47', '46', '747', '107', '1', '3'),
(13, 68, '264', '5', '990', '1253', '80', '169', '1145', '284', '38', '3'),
(14, 28, '24', '3', '256', '262', '19', '33', '430', '47', '2', '0'),
(15, 14, '107', '1', '650', '887', '76', '64', '983', '215', '4', '2'),
(16, 123, '103', '1', '580', '593', '35', '89', '643', '131', '4', '4'),
(17, 30, '65', '2', '144', '157', '19', '44', '156', '55', '2', '0'),
(18, 167, '294', '9', '1120', '1679', '80', '199', '1360', '195', '15', '9'),
(19, 6, '332', '4', '2263', '2745', '224', '200', '2488', '453', '31', '17'),
(20, 208, '6184', '46', '15259', '20640', '5219', '5175', '19638', '5617', '1410', '870'),
(21, 84, '203', '18', '856', '892', '107', '16', '1305', '178', '17', '2'),
(22, 77, '373', '1', '714', '659', '55', '183', '790', '82', '10', '2'),
(23, 80, '22', '2', '381', '486', '45', '59', '477', '105', '0', '1'),
(24, 72, '217', '6', '2356', '2548', '298', '181', '2620', '527', '28', '13'),
(25, 107, '128', '7', '1433', '1147', '144', '47', '1990', '248', '9', '5'),
(26, 29, '151', '1', '699', '727', '163', '103', '645', '291', '16', '5'),
(27, 215, '73', '0', '690', '541', '127', '18', '858', '127', '9', '3'),
(28, 210, '210', '0', '737', '1087', '173', '27', '1139', '442', '19', '10'),
(29, 202, '423', '2', '2114', '2243', '161', '142', '2617', '570', '13', '7'),
(30, 78, '742', '7', '2056', '2275', '107', '79', '2519', '799', '5', '5'),
(31, 216, '38', '7', '492', '517', '71', '38', '567', '78', '5', '5'),
(32, 88, '132', '3', '678', '949', '100', '159', '888', '209', '10', '6'),
(33, 200, '90', '5', '640', '760', '96', '174', '645', '327', '17', '10'),
(34, 192, '391', '3', '1092', '1193', '208', '145', '1201', '386', '21', '4'),
(35, 212, '516', '11', '3346', '3826', '261', '319', '3733', '969', '7', '13'),
(36, 43, '1292', '33', '7927', '8732', '1400', '807', '10028', '2396', '286', '113'),
(37, 207, '2548', '18', '10056', '12193', '2534', '1793', '12589', '5079', '485', '336'),
(38, 75, '219', '12', '2321', '2521', '273', '157', '2566', '454', '18', '10'),
(39, 25, '212', '2', '1444', '1931', '279', '218', '1834', '504', '31', '20'),
(40, 17, '971', '8', '4915', '5979', '880', '554', '5686', '2158', '173', '104'),
(41, 54, '1231', '6', '6023', '7096', '1056', '619', '6579', '3219', '188', '198'),
(42, 174, '10763', '28', '21143', '26456', '8953', '8272', '25122', '15184', '2775', '2035'),
(43, 186, '2527', '6', '9806', '12518', '2404', '2092', '11712', '5243', '518', '344'),
(44, 204, '322', '1', '1479', '1657', '397', '203', '1634', '658', '30', '10'),
(45, 39, '182', '12', '1863', '2116', '206', '279', '1993', '856', '17', '16'),
(46, 83, '510', '33', '3702', '5169', '404', '773', '4399', '1567', '60', '30'),
(47, 172, '1264', '50', '4717', '6269', '949', '1076', '5179', '2733', '162', '117'),
(48, 50, '413', '13', '3213', '3940', '195', '486', '3312', '414', '23', '15'),
(49, 177, '2145', '13', '6799', '10365', '1260', '864', '10606', '1232', '155', '112'),
(50, 120, '93', '1', '915', '1144', '50', '35', '1022', '204', '4', '4'),
(51, 129, '770', '4', '2675', '3061', '429', '184', '2900', '825', '27', '25'),
(52, 124, '1141', '8', '3020', '3276', '613', '662', '3208', '1217', '93', '46'),
(53, 35, '1356', '13', '3646', '4451', '934', '700', '3820', '1399', '247', '128'),
(54, 13, '1627', '9', '3632', '4162', '884', '396', '3976', '1779', '181', '142'),
(55, 156, '44268', '252', '62848', '76645', '30582', '24322', '77718', '28637', '10516', '6074'),
(56, 214, '1246', '1', '3468', '3942', '742', '383', '3767', '1153', '116', '78'),
(57, 149, '1828', '12', '5444', '6463', '1265', '798', '6352', '1393', '184', '145'),
(58, 61, '198', '7', '1528', '1912', '74', '77', '1401', '239', '1', '0'),
(59, 217, '368', '11', '3233', '2880', '142', '290', '2903', '496', '12', '15'),
(60, 195, '374', '28', '3152', '4402', '175', '494', '4107', '1296', '13', '19'),
(61, 36, '189', '24', '1916', '2515', '91', '332', '1329', '294', '5', '7'),
(62, 145, '359', '13', '1843', '1763', '133', '250', '1139', '566', '20', '8'),
(63, 10, '2910', '47', '9813', '11991', '1682', '1360', '11623', '2417', '246', '183'),
(64, 159, '107', '0', '400', '663', '73', '216', '560', '142', '14', '18'),
(65, 127, '205', '5', '718', '837', '148', '381', '460', '250', '6', '8'),
(66, 196, '91', '3', '305', '341', '82', '146', '293', '204', '12', '7'),
(67, 52, '78', '0', '227', '301', '32', '39', '240', '5', '2', '1'),
(68, 70, '247', '2', '963', '1352', '99', '209', '1164', '72', '5', '4'),
(69, 146, '43', '0', '138', '201', '14', '33', '152', '10', '2', '1'),
(70, 5, '21', '0', '560', '674', '12', '147', '495', '16', '1', '2'),
(71, 19, '17386', '198', '26970', '33829', '12305', '15780', '32205', '14415', '4666', '2925'),
(72, 15, '13995', '68', '24789', '29269', '8700', '8090', '28381', '8452', '2858', '2035'),
(73, 114, '305028', '927', '379940', '452065', '235985', '221953', '440958', '187780', '116994', '69751'),
(74, 119, '32465', '113', '34898', '41792', '28012', '23837', '42005', '19378', '18515', '10690'),
(75, 163, '900', '12', '2670', '3704', '674', '707', '3498', '775', '150', '96'),
(76, 1, '3430', '47', '10481', '13610', '2149', '2338', '12885', '3017', '384', '277');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposmunicipios`
--

CREATE TABLE `tiposmunicipios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tiposmunicipios`
--

INSERT INTO `tiposmunicipios` (`id`, `nombre`) VALUES
(1, 'Indígena'),
(2, 'Presencia Indígena'),
(3, 'Indígena dispersa'),
(4, 'Por definir');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `img` text DEFAULT NULL,
  `update_pass` int(1) DEFAULT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `img`, `update_pass`, `status`) VALUES
(1, 'Unidad de Desarrollo de Tecnologías de la Información', 'udti.ippi@gmail.com', '$2a$07$sdFqwdAQDGSGFsdfw236rusnw7xm8NNBfO/pmgC6Y6IdD/0TfEIbC', 'multimedia/img/users/000001.jpg', 1, 1),
(2, 'Dirección de Patrimonio Cultural, Investigación y Educación para la Equidad', 'dpciee.ippi@gmail.com', '$2a$07$sdFqwdAQDGSGFsdfw236ru5yFifCilR7m4PP9X5TUGQqB57nwXb5q', 'multimedia/img/users/000002.jpg', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_permissions`
--

CREATE TABLE `user_permissions` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_mod` int(11) DEFAULT NULL,
  `type` text DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user_permissions`
--

INSERT INTO `user_permissions` (`id`, `id_user`, `id_mod`, `type`, `status`) VALUES
(1, 1, 1, 'module', 1),
(2, 1, 1, 'sub_module', 1),
(3, 1, 2, 'sub_module', 1),
(4, 1, 3, 'sub_module', 1),
(5, 1, 4, 'sub_module', 1),
(6, 1, 5, 'sub_module', 1),
(7, 1, 3, 'module', 1),
(8, 1, 4, 'module', 1),
(9, 1, 5, 'module', 1),
(10, 1, 6, 'module', 1),
(11, 1, 7, 'module', 1),
(12, 1, 8, 'module', 1),
(13, 1, 9, 'module', 1),
(14, 1, 6, 'sub_module', 1),
(15, 1, 7, 'sub_module', 1),
(16, 1, 8, 'sub_module', 1),
(17, 1, 9, 'sub_module', 1),
(18, 1, 10, 'sub_module', 1),
(19, 1, 11, 'sub_module', 1),
(20, 1, 12, 'sub_module', 1),
(21, 1, 13, 'sub_module', 1),
(22, 1, 14, 'sub_module', 1),
(23, 1, 11, 'module', 1),
(24, 1, 12, 'module', 1),
(25, 1, 13, 'module', 1),
(26, 1, 14, 'module', 1),
(27, 2, 1, 'module', 1),
(28, 2, 5, 'sub_module', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visits`
--

CREATE TABLE `visits` (
  `id` int(11) NOT NULL,
  `page` int(11) NOT NULL,
  `date_time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `visits`
--

INSERT INTO `visits` (`id`, `page`, `date_time`) VALUES
(1, 1, '1728336558790');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `afromexicana_por_municipio`
--
ALTER TABLE `afromexicana_por_municipio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Id_Mun` (`Id_Mun`);

--
-- Indices de la tabla `cultura_por_municipio`
--
ALTER TABLE `cultura_por_municipio`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `economia_por_municipio`
--
ALTER TABLE `economia_por_municipio`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_Mun` (`Id_Mun`);

--
-- Indices de la tabla `educacion_por_municipio`
--
ALTER TABLE `educacion_por_municipio`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `fuentes_informacion`
--
ALTER TABLE `fuentes_informacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_mod` (`id_mod`);

--
-- Indices de la tabla `gobernanza_por_municipio`
--
ALTER TABLE `gobernanza_por_municipio`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_Mun` (`Id_Mun`);

--
-- Indices de la tabla `infraestructura_por_municipio`
--
ALTER TABLE `infraestructura_por_municipio`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_Mun` (`Id_Mun`);

--
-- Indices de la tabla `justicia_seguridad_por_municipio`
--
ALTER TABLE `justicia_seguridad_por_municipio`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `lenguas`
--
ALTER TABLE `lenguas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lenguas_por_municipio`
--
ALTER TABLE `lenguas_por_municipio`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `lengua_por_municipio`
--
ALTER TABLE `lengua_por_municipio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `medio_ambiente_por_municipio`
--
ALTER TABLE `medio_ambiente_por_municipio`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_Mun` (`Id_Mun`);

--
-- Indices de la tabla `migracion_por_municipio`
--
ALTER TABLE `migracion_por_municipio`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_Mun` (`Id_Mun`);

--
-- Indices de la tabla `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `TipoMunicipio` (`TipoMunicipio`),
  ADD KEY `region` (`region`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pruebas`
--
ALTER TABLE `pruebas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `salud_por_municipio`
--
ALTER TABLE `salud_por_municipio`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `sub_modules`
--
ALTER TABLE `sub_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_mod` (`id_mod`);

--
-- Indices de la tabla `tecnologia_por_municipio`
--
ALTER TABLE `tecnologia_por_municipio`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_Mun` (`Id_Mun`);

--
-- Indices de la tabla `tiposmunicipios`
--
ALTER TABLE `tiposmunicipios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page` (`page`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `afromexicana_por_municipio`
--
ALTER TABLE `afromexicana_por_municipio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT de la tabla `cultura_por_municipio`
--
ALTER TABLE `cultura_por_municipio`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `economia_por_municipio`
--
ALTER TABLE `economia_por_municipio`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `educacion_por_municipio`
--
ALTER TABLE `educacion_por_municipio`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `fuentes_informacion`
--
ALTER TABLE `fuentes_informacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `gobernanza_por_municipio`
--
ALTER TABLE `gobernanza_por_municipio`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `infraestructura_por_municipio`
--
ALTER TABLE `infraestructura_por_municipio`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `justicia_seguridad_por_municipio`
--
ALTER TABLE `justicia_seguridad_por_municipio`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `lenguas_por_municipio`
--
ALTER TABLE `lenguas_por_municipio`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `lengua_por_municipio`
--
ALTER TABLE `lengua_por_municipio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=450;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `medio_ambiente_por_municipio`
--
ALTER TABLE `medio_ambiente_por_municipio`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `migracion_por_municipio`
--
ALTER TABLE `migracion_por_municipio`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `pruebas`
--
ALTER TABLE `pruebas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `regiones`
--
ALTER TABLE `regiones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `salud_por_municipio`
--
ALTER TABLE `salud_por_municipio`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `sub_modules`
--
ALTER TABLE `sub_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `tecnologia_por_municipio`
--
ALTER TABLE `tecnologia_por_municipio`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `tiposmunicipios`
--
ALTER TABLE `tiposmunicipios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `user_permissions`
--
ALTER TABLE `user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `visits`
--
ALTER TABLE `visits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `fuentes_informacion`
--
ALTER TABLE `fuentes_informacion`
  ADD CONSTRAINT `fuentes_informacion_ibfk_1` FOREIGN KEY (`id_mod`) REFERENCES `modules` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `gobernanza_por_municipio`
--
ALTER TABLE `gobernanza_por_municipio`
  ADD CONSTRAINT `gobernanza_por_municipio_ibfk_1` FOREIGN KEY (`Id_Mun`) REFERENCES `municipios` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `infraestructura_por_municipio`
--
ALTER TABLE `infraestructura_por_municipio`
  ADD CONSTRAINT `infraestructura_por_municipio_ibfk_1` FOREIGN KEY (`Id_Mun`) REFERENCES `municipios` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `medio_ambiente_por_municipio`
--
ALTER TABLE `medio_ambiente_por_municipio`
  ADD CONSTRAINT `medio_ambiente_por_municipio_ibfk_1` FOREIGN KEY (`Id_Mun`) REFERENCES `municipios` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `migracion_por_municipio`
--
ALTER TABLE `migracion_por_municipio`
  ADD CONSTRAINT `migracion_por_municipio_ibfk_1` FOREIGN KEY (`Id_Mun`) REFERENCES `municipios` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `municipios_ibfk_1` FOREIGN KEY (`TipoMunicipio`) REFERENCES `tiposmunicipios` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `municipios_ibfk_2` FOREIGN KEY (`region`) REFERENCES `regiones` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `sub_modules`
--
ALTER TABLE `sub_modules`
  ADD CONSTRAINT `sub_modules_ibfk_1` FOREIGN KEY (`id_mod`) REFERENCES `modules` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tecnologia_por_municipio`
--
ALTER TABLE `tecnologia_por_municipio`
  ADD CONSTRAINT `tecnologia_por_municipio_ibfk_1` FOREIGN KEY (`Id_Mun`) REFERENCES `municipios` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_ibfk_1` FOREIGN KEY (`page`) REFERENCES `pages` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
