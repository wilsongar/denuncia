-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-08-2023 a las 18:39:00
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `denuncia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `audits`
--

CREATE TABLE `audits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(255) NOT NULL,
  `auditable_type` varchar(255) NOT NULL,
  `auditable_id` bigint(20) UNSIGNED NOT NULL,
  `old_values` text DEFAULT NULL,
  `new_values` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` varchar(1023) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `audits`
--

INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'created', 'App\\Models\\Estado', 1, '[]', '{\"nombre\":\"Activo\",\"id\":1}', 'http://127.0.0.1:8000/estados', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', NULL, '2023-04-17 03:28:38', '2023-04-17 03:28:38'),
(2, 'App\\Models\\User', 1, 'created', 'App\\Models\\Estado', 2, '[]', '{\"nombre\":\"En tr\\u00e1mite\",\"id\":2}', 'http://127.0.0.1:8000/estados', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', NULL, '2023-04-17 03:29:25', '2023-04-17 03:29:25'),
(3, 'App\\Models\\User', 1, 'created', 'App\\Models\\Estado', 3, '[]', '{\"nombre\":\"Finalizado\",\"id\":3}', 'http://127.0.0.1:8000/estados', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', NULL, '2023-04-17 03:29:40', '2023-04-17 03:29:40'),
(4, 'App\\Models\\User', 1, 'created', 'App\\Models\\Categoria', 1, '[]', '{\"nombre\":\"Baches\",\"descripcion\":\"bache en las calles\",\"id\":1}', 'http://127.0.0.1:8000/categorias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', NULL, '2023-04-17 03:32:29', '2023-04-17 03:32:29'),
(5, 'App\\Models\\User', 1, 'created', 'App\\Models\\Categoria', 2, '[]', '{\"nombre\":\"Electricidad\",\"descripcion\":\"problemas electricidad\",\"id\":2}', 'http://127.0.0.1:8000/categorias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', NULL, '2023-04-17 03:33:27', '2023-04-17 03:33:27'),
(6, 'App\\Models\\User', 1, 'created', 'App\\Models\\Categoria', 3, '[]', '{\"nombre\":\"Sem\\u00e1foro\",\"descripcion\":\"Sem\\u00e1foro averiado\",\"id\":3}', 'http://127.0.0.1:8000/categorias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', NULL, '2023-04-17 03:34:22', '2023-04-17 03:34:22'),
(7, 'App\\Models\\User', 1, 'created', 'App\\Models\\Categoria', 4, '[]', '{\"nombre\":\"Bancos p\\u00fablicos\",\"descripcion\":\"bancos averiados\",\"id\":4}', 'http://127.0.0.1:8000/categorias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', NULL, '2023-04-17 03:36:00', '2023-04-17 03:36:00'),
(8, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Categoria', 4, '{\"nombre\":\"Bancos p\\u00fablicos\"}', '{\"nombre\":\"Bancos\"}', 'http://127.0.0.1:8000/categorias/4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', NULL, '2023-04-17 03:36:18', '2023-04-17 03:36:18'),
(9, 'App\\Models\\User', 1, 'created', 'App\\Models\\Categoria', 5, '[]', '{\"nombre\":\"P\\u00e9rdida de agua\",\"descripcion\":\"ca\\u00f1os rotos\",\"id\":5}', 'http://127.0.0.1:8000/categorias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', NULL, '2023-04-17 03:37:52', '2023-04-17 03:37:52'),
(10, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Categoria', 2, '{\"descripcion\":\"problemas electricidad\"}', '{\"descripcion\":\"focos quemados-tendido el\\u00e9ctrico caido-poca iluminaci\\u00f3n\"}', 'http://127.0.0.1:8000/categorias/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', NULL, '2023-04-17 03:40:07', '2023-04-17 03:40:07'),
(11, 'App\\Models\\User', 1, 'created', 'App\\Models\\Categoria', 6, '[]', '{\"nombre\":\"Basura\",\"descripcion\":\"Recolecci\\u00f3n de basura-basura en el desague fluvial-basura en los espcacios p\\u00fablicos\",\"id\":6}', 'http://127.0.0.1:8000/categorias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', NULL, '2023-04-17 03:45:59', '2023-04-17 03:45:59'),
(12, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Categoria', 5, '{\"descripcion\":\"ca\\u00f1os rotos\"}', '{\"descripcion\":\"ca\\u00f1os rotos-agua potable-agua servidas\"}', 'http://127.0.0.1:8000/categorias/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', NULL, '2023-04-17 03:46:47', '2023-04-17 03:46:47'),
(13, 'App\\Models\\User', 2, 'created', 'App\\Models\\Denuncia', 1, '[]', '{\"id_user\":\"2\",\"descripcion\":\"Bache sobre calle Constituci\\u00f3n c\\/ Gral Artigas\",\"latitud\":\"-27.328045777988073\",\"longitud\":\"-55.86988806724549\",\"id_categoria\":\"1\",\"fecha\":\"2023-04-16 00:00:00\",\"id_estado\":\"1\",\"imagen\":\"uploads\\/oWXKb3B0P5vA5PNEqg2ZyVW7SlhCZJkvuhnEQlcZ.jpg\",\"id\":1}', 'http://127.0.0.1:8000/denuncias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', NULL, '2023-04-17 04:13:02', '2023-04-17 04:13:02'),
(14, 'App\\Models\\User', 2, 'created', 'App\\Models\\Denuncia', 2, '[]', '{\"id_user\":\"2\",\"descripcion\":\"Poca iluminacion sector de la costanera Padre Bolik\",\"latitud\":\"-27.32404250983001\",\"longitud\":\"-55.86891174316407\",\"id_categoria\":\"2\",\"fecha\":\"2023-04-16 00:00:00\",\"id_estado\":\"1\",\"imagen\":\"uploads\\/dHZ4uqFhDj6009FE37TTdIqr5Uce4fZwjaZRZJJe.jpg\",\"id\":2}', 'http://127.0.0.1:8000/denuncias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', NULL, '2023-04-17 05:04:34', '2023-04-17 05:04:34'),
(15, 'App\\Models\\User', 2, 'created', 'App\\Models\\Denuncia', 3, '[]', '{\"id_user\":\"2\",\"descripcion\":\"Poca iluminacion sector de la costanera Padre Bolik\",\"latitud\":\"-27.32404250983001\",\"longitud\":\"-55.86891174316407\",\"id_categoria\":\"2\",\"fecha\":\"2023-04-16 00:00:00\",\"id_estado\":\"1\",\"imagen\":\"uploads\\/gjcL8lWbjzguKYpEU8wmQ8ti2hgZK7IjfPjk4Tsr.jpg\",\"id\":3}', 'http://127.0.0.1:8000/denuncias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', NULL, '2023-04-17 05:11:41', '2023-04-17 05:11:41'),
(16, 'App\\Models\\User', 1, 'created', 'App\\Models\\Categoria', 7, '[]', '{\"nombre\":\"Cesped\",\"descripcion\":\"el cesped de los espacios publicos estan muy alto.\",\"id\":7}', 'http://127.0.0.1:8000/categorias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-05 06:01:08', '2023-06-05 06:01:08'),
(17, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Categoria', 6, '{\"descripcion\":\"Recolecci\\u00f3n de basura-basura en el desague fluvial-basura en los espcacios p\\u00fablicos\"}', '{\"descripcion\":\"Recolecci\\u00f3n de basura-basura en el desague fluvial-basura en los espacios p\\u00fablicos\"}', 'http://127.0.0.1:8000/categorias/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-06 04:52:20', '2023-06-06 04:52:20'),
(18, 'App\\Models\\User', 1, 'created', 'App\\Models\\Categoria', 8, '[]', '{\"nombre\":\"eqeqw\",\"descripcion\":\"qeqeqe\",\"id\":8}', 'http://127.0.0.1:8000/categorias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-06 05:27:18', '2023-06-06 05:27:18'),
(19, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Categoria', 8, '{\"id\":8,\"nombre\":\"eqeqw\",\"descripcion\":\"qeqeqe\"}', '[]', 'http://127.0.0.1:8000/categorias/8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-06 05:27:26', '2023-06-06 05:27:26'),
(20, 'App\\Models\\User', 1, 'created', 'App\\Models\\Categoria', 9, '[]', '{\"nombre\":\"dadasd\",\"descripcion\":\"asdasd\",\"id\":9}', 'http://127.0.0.1:8000/categorias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-06 05:30:58', '2023-06-06 05:30:58'),
(21, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Categoria', 9, '{\"id\":9,\"nombre\":\"dadasd\",\"descripcion\":\"asdasd\"}', '[]', 'http://127.0.0.1:8000/categorias/9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-06 05:31:09', '2023-06-06 05:31:09'),
(22, 'App\\Models\\User', 1, 'created', 'App\\Models\\Categoria', 10, '[]', '{\"nombre\":\"dasdasd\",\"descripcion\":\"sdasdasd\",\"id\":10}', 'http://127.0.0.1:8000/categorias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-06 05:33:53', '2023-06-06 05:33:53'),
(23, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Categoria', 10, '{\"nombre\":\"dasdasd\"}', '{\"nombre\":\"564646456456\"}', 'http://127.0.0.1:8000/categorias/10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-06 05:34:13', '2023-06-06 05:34:13'),
(24, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Categoria', 10, '{\"id\":10,\"nombre\":\"564646456456\",\"descripcion\":\"sdasdasd\"}', '[]', 'http://127.0.0.1:8000/categorias/10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-06 05:34:24', '2023-06-06 05:34:24'),
(25, 'App\\Models\\User', 1, 'created', 'App\\Models\\Estado', 4, '[]', '{\"nombre\":\"NNN\",\"id\":4}', 'http://127.0.0.1:8000/estados', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-06 05:47:31', '2023-06-06 05:47:31'),
(26, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Estado', 4, '{\"id\":4,\"nombre\":\"NNN\"}', '[]', 'http://127.0.0.1:8000/estados/4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-06 05:47:43', '2023-06-06 05:47:43'),
(27, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Denuncia', 1, '{\"id_estado\":1,\"id_user\":2}', '{\"id_estado\":\"2\",\"id_user\":\"1\"}', 'http://127.0.0.1:8000/denuncias/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-06 06:28:50', '2023-06-06 06:28:50'),
(28, 'App\\Models\\User', 1, 'created', 'App\\Models\\Denuncia', 4, '[]', '{\"id_user\":\"1\",\"descripcion\":\"sdasdasd\",\"latitud\":\"-27.333802605470744\",\"longitud\":\"-55.86925494835136\",\"id_categoria\":\"1\",\"fecha\":\"2023-06-05 00:00:00\",\"id_estado\":\"1\",\"imagen\":\"uploads\\/pwHx3A36Kd1dCjtFTpxXF8Z4013xQh0bf1TREfUV.png\",\"id\":4}', 'http://127.0.0.1:8000/denuncias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-06 07:40:39', '2023-06-06 07:40:39'),
(29, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Denuncia', 4, '{\"id\":4,\"imagen\":\"uploads\\/pwHx3A36Kd1dCjtFTpxXF8Z4013xQh0bf1TREfUV.png\",\"descripcion\":\"sdasdasd\",\"latitud\":-27.333802605470744,\"longitud\":-55.86925494835136,\"fecha\":\"2023-06-05\",\"id_categoria\":1,\"id_estado\":1,\"id_user\":1}', '[]', 'http://127.0.0.1:8000/denuncias/4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-06 07:52:19', '2023-06-06 07:52:19'),
(30, 'App\\Models\\User', 1, 'created', 'App\\Models\\Denuncia', 5, '[]', '{\"id_user\":\"1\",\"descripcion\":\"pppp\",\"latitud\":\"-27.340969628484952\",\"longitud\":\"-55.86994171142579\",\"id_categoria\":\"1\",\"fecha\":\"2023-06-05 00:00:00\",\"id_estado\":\"1\",\"imagen\":\"uploads\\/fd9Fk0khJkQ1WMObB5U9J4YJb1k8kGbkEWmwhJIH.png\",\"id\":5}', 'http://127.0.0.1:8000/denuncias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-06 07:54:35', '2023-06-06 07:54:35'),
(31, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Denuncia', 5, '{\"id\":5,\"imagen\":\"uploads\\/fd9Fk0khJkQ1WMObB5U9J4YJb1k8kGbkEWmwhJIH.png\",\"descripcion\":\"pppp\",\"latitud\":-27.340969628484952,\"longitud\":-55.86994171142579,\"fecha\":\"2023-06-05\",\"id_categoria\":1,\"id_estado\":1,\"id_user\":1}', '[]', 'http://127.0.0.1:8000/denuncias/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-06 07:56:06', '2023-06-06 07:56:06'),
(32, 'App\\Models\\User', 1, 'created', 'App\\Models\\Denuncia', 6, '[]', '{\"id_user\":\"1\",\"descripcion\":\"sdasdasd\",\"latitud\":\"-27.33243014393919\",\"longitud\":\"-55.873031616210945\",\"id_categoria\":\"1\",\"fecha\":\"2023-06-05 00:00:00\",\"id_estado\":\"1\",\"imagen\":\"uploads\\/SMp8AVgHY8c64LbbE0YSsVHlolEzHzL37BsWRhvI.png\",\"id\":6}', 'http://127.0.0.1:8000/denuncias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-06 07:59:46', '2023-06-06 07:59:46'),
(33, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Denuncia', 6, '{\"id\":6,\"imagen\":\"uploads\\/SMp8AVgHY8c64LbbE0YSsVHlolEzHzL37BsWRhvI.png\",\"descripcion\":\"sdasdasd\",\"latitud\":-27.33243014393919,\"longitud\":-55.873031616210945,\"fecha\":\"2023-06-05\",\"id_categoria\":1,\"id_estado\":1,\"id_user\":1}', '[]', 'http://127.0.0.1:8000/denuncias/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-06 08:00:54', '2023-06-06 08:00:54'),
(34, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Estado', 2, '{\"nombre\":\"En tr\\u00e1mite\"}', '{\"nombre\":\"Inactivo\"}', 'http://127.0.0.1:8000/estados/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-09 04:28:36', '2023-06-09 04:28:36'),
(35, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Estado', 2, '{\"nombre\":\"Inactivo\"}', '{\"nombre\":\"Inactiv\"}', 'http://127.0.0.1:8000/estados/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-09 04:35:12', '2023-06-09 04:35:12'),
(36, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Estado', 2, '{\"nombre\":\"Inactiv\"}', '{\"nombre\":\"Inactivo\"}', 'http://127.0.0.1:8000/estados/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-09 04:35:26', '2023-06-09 04:35:26'),
(37, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Denuncia', 3, '{\"id_estado\":1,\"id_user\":2}', '{\"id_estado\":\"2\",\"id_user\":\"1\"}', 'http://127.0.0.1:8000/denuncias/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-09 04:39:15', '2023-06-09 04:39:15'),
(38, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Denuncia', 3, '{\"id_estado\":2}', '{\"id_estado\":\"3\"}', 'http://127.0.0.1:8000/denuncias/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-09 04:42:40', '2023-06-09 04:42:40'),
(39, 'App\\Models\\User', 2, 'created', 'App\\Models\\Denuncia', 7, '[]', '{\"id_user\":\"2\",\"descripcion\":\"Basura en la de calle 25 de Mayo y Gral. Artigas\",\"latitud\":\"-27.329475481588613\",\"longitud\":\"-55.869791507720954\",\"id_categoria\":\"6\",\"fecha\":\"2023-06-08 00:00:00\",\"id_estado\":\"1\",\"imagen\":\"uploads\\/CjI0qWvXxSCIjlHdY9JTEcA1QqCT6D3ZpBSJAC1O.jpg\",\"id\":7}', 'http://127.0.0.1:8000/denuncias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', NULL, '2023-06-09 04:54:47', '2023-06-09 04:54:47'),
(40, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Denuncia', 3, '{\"id\":3,\"imagen\":\"uploads\\/gjcL8lWbjzguKYpEU8wmQ8ti2hgZK7IjfPjk4Tsr.jpg\",\"descripcion\":\"Poca iluminacion sector de la costanera Padre Bolik\",\"latitud\":-27.32404250983001,\"longitud\":-55.86891174316407,\"fecha\":\"2023-04-16\",\"id_categoria\":2,\"id_estado\":3,\"id_user\":1}', '[]', 'http://127.0.0.1:8000/denuncias/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-09 05:00:33', '2023-06-09 05:00:33'),
(41, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Denuncia', 1, '{\"id\":1,\"imagen\":\"uploads\\/oWXKb3B0P5vA5PNEqg2ZyVW7SlhCZJkvuhnEQlcZ.jpg\",\"descripcion\":\"Bache sobre calle Constituci\\u00f3n c\\/ Gral Artigas\",\"latitud\":-27.328045777988073,\"longitud\":-55.86988806724549,\"fecha\":\"2023-04-16\",\"id_categoria\":1,\"id_estado\":2,\"id_user\":1}', '[]', 'http://127.0.0.1:8000/denuncias/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-09 05:00:43', '2023-06-09 05:00:43'),
(42, 'App\\Models\\User', 2, 'created', 'App\\Models\\Denuncia', 8, '[]', '{\"id_user\":\"2\",\"descripcion\":\"Sem\\u00e1foro averiado Avnda. Caballero \\/esq. Juan Le\\u00f3n Mallorquin\",\"latitud\":\"-27.32686387575879\",\"longitud\":\"-55.8686113357544\",\"id_categoria\":\"3\",\"fecha\":\"2023-06-08 00:00:00\",\"id_estado\":\"1\",\"imagen\":\"uploads\\/DZ8GfmJFtDyHy3IESjOMrldC0SlczV8ntVm1YgoU.jpg\",\"id\":8}', 'http://127.0.0.1:8000/denuncias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', NULL, '2023-06-09 05:06:15', '2023-06-09 05:06:15'),
(43, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Denuncia', 7, '{\"id_estado\":1,\"id_user\":2}', '{\"id_estado\":\"3\",\"id_user\":\"1\"}', 'http://127.0.0.1:8000/denuncias/7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-09 05:07:04', '2023-06-09 05:07:04'),
(44, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Denuncia', 8, '{\"id_estado\":1,\"id_user\":2}', '{\"id_estado\":\"3\",\"id_user\":\"1\"}', 'http://127.0.0.1:8000/denuncias/8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-09 05:08:54', '2023-06-09 05:08:54'),
(45, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Denuncia', 8, '{\"id_estado\":3}', '{\"id_estado\":\"2\"}', 'http://127.0.0.1:8000/denuncias/8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-09 05:09:58', '2023-06-09 05:09:58'),
(46, 'App\\Models\\User', 3, 'created', 'App\\Models\\Denuncia', 9, '[]', '{\"id_user\":\"3\",\"descripcion\":\"ca\\u00f1o roto sobre calle Constituci\\u00f3n Nacional \\/ Carlos Antonio l\\u00f3pez\",\"latitud\":\"-27.327550143103178\",\"longitud\":\"-55.86462020874024\",\"id_categoria\":\"5\",\"fecha\":\"2023-06-08 00:00:00\",\"id_estado\":\"1\",\"imagen\":\"uploads\\/ng5tfkfHfBxikHP1JwAUf1RmzHr3ihGZMnIIgiov.jpg\",\"id\":9}', 'http://127.0.0.1:8000/denuncias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', NULL, '2023-06-09 05:44:08', '2023-06-09 05:44:08'),
(47, 'App\\Models\\User', 3, 'created', 'App\\Models\\Denuncia', 10, '[]', '{\"id_user\":\"3\",\"descripcion\":\"Cesped alto Costanera playa San Jos\\u00e9\",\"latitud\":\"-27.33132453757019\",\"longitud\":\"-55.875048637390144\",\"id_categoria\":\"7\",\"fecha\":\"2023-06-08 00:00:00\",\"id_estado\":\"1\",\"imagen\":\"uploads\\/WZx6M4k2lT4PziTNlMxWugAOMlaQp97JRswjDkpR.jpg\",\"id\":10}', 'http://127.0.0.1:8000/denuncias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', NULL, '2023-06-09 06:00:06', '2023-06-09 06:00:06'),
(48, 'App\\Models\\User', 3, 'created', 'App\\Models\\Denuncia', 11, '[]', '{\"id_user\":\"3\",\"descripcion\":\"Banco  roto en la Costanera de la playa San Jos\\u00e9\",\"latitud\":\"-27.33046673192908\",\"longitud\":\"-55.87569236755371\",\"id_categoria\":\"4\",\"fecha\":\"2023-06-08 00:00:00\",\"id_estado\":\"1\",\"imagen\":\"uploads\\/nUklukHJvItmpWGh7hs4GIo3sisz2CQHSdhAyg4o.jpg\",\"id\":11}', 'http://127.0.0.1:8000/denuncias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', NULL, '2023-06-09 06:02:16', '2023-06-09 06:02:16'),
(49, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Denuncia', 7, '{\"imagen\":\"uploads\\/CjI0qWvXxSCIjlHdY9JTEcA1QqCT6D3ZpBSJAC1O.jpg\",\"latitud\":-27.329475481588613,\"longitud\":-55.869791507720954,\"id_estado\":3}', '{\"imagen\":\"basura.jpg\",\"latitud\":\"-27.329475481589\",\"longitud\":\"-55.869791507721\",\"id_estado\":\"2\"}', 'http://127.0.0.1:8000/denuncias/7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-09 06:35:07', '2023-06-09 06:35:07'),
(50, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Denuncia', 7, '{\"id\":7,\"imagen\":\"basura.jpg\",\"descripcion\":\"Basura en la de calle 25 de Mayo y Gral. Artigas\",\"latitud\":-27.329475481589,\"longitud\":-55.869791507721,\"fecha\":\"2023-06-08\",\"id_categoria\":6,\"id_estado\":2,\"id_user\":1}', '[]', 'http://127.0.0.1:8000/denuncias/7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-09 06:40:05', '2023-06-09 06:40:05'),
(51, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Denuncia', 8, '{\"id\":8,\"imagen\":\"uploads\\/DZ8GfmJFtDyHy3IESjOMrldC0SlczV8ntVm1YgoU.jpg\",\"descripcion\":\"Sem\\u00e1foro averiado Avnda. Caballero \\/esq. Juan Le\\u00f3n Mallorquin\",\"latitud\":-27.32686387575879,\"longitud\":-55.8686113357544,\"fecha\":\"2023-06-08\",\"id_categoria\":3,\"id_estado\":2,\"id_user\":1}', '[]', 'http://127.0.0.1:8000/denuncias/8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-09 06:40:11', '2023-06-09 06:40:11'),
(52, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Denuncia', 9, '{\"imagen\":\"uploads\\/ng5tfkfHfBxikHP1JwAUf1RmzHr3ihGZMnIIgiov.jpg\",\"latitud\":-27.327550143103178,\"longitud\":-55.86462020874024,\"id_estado\":1}', '{\"imagen\":\"ca\\u00f1o.jpg\",\"latitud\":\"-27.327550143103\",\"longitud\":\"-55.86462020874\",\"id_estado\":\"3\"}', 'http://127.0.0.1:8000/denuncias/9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-09 06:41:03', '2023-06-09 06:41:03'),
(53, 'App\\Models\\User', 3, 'deleted', 'App\\Models\\Denuncia', 9, '{\"id\":9,\"imagen\":\"ca\\u00f1o.jpg\",\"descripcion\":\"ca\\u00f1o roto sobre calle Constituci\\u00f3n Nacional \\/ Carlos Antonio l\\u00f3pez\",\"latitud\":-27.327550143103,\"longitud\":-55.86462020874,\"fecha\":\"2023-06-08\",\"id_categoria\":5,\"id_estado\":3,\"id_user\":3}', '[]', 'http://127.0.0.1:8000/denuncias/9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', NULL, '2023-06-09 06:48:27', '2023-06-09 06:48:27'),
(54, 'App\\Models\\User', 3, 'deleted', 'App\\Models\\Denuncia', 10, '{\"id\":10,\"imagen\":\"uploads\\/WZx6M4k2lT4PziTNlMxWugAOMlaQp97JRswjDkpR.jpg\",\"descripcion\":\"Cesped alto Costanera playa San Jos\\u00e9\",\"latitud\":-27.33132453757019,\"longitud\":-55.875048637390144,\"fecha\":\"2023-06-08\",\"id_categoria\":7,\"id_estado\":1,\"id_user\":3}', '[]', 'http://127.0.0.1:8000/denuncias/10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', NULL, '2023-06-09 06:48:32', '2023-06-09 06:48:32'),
(55, 'App\\Models\\User', 3, 'deleted', 'App\\Models\\Denuncia', 11, '{\"id\":11,\"imagen\":\"uploads\\/nUklukHJvItmpWGh7hs4GIo3sisz2CQHSdhAyg4o.jpg\",\"descripcion\":\"Banco  roto en la Costanera de la playa San Jos\\u00e9\",\"latitud\":-27.33046673192908,\"longitud\":-55.87569236755371,\"fecha\":\"2023-06-08\",\"id_categoria\":4,\"id_estado\":1,\"id_user\":3}', '[]', 'http://127.0.0.1:8000/denuncias/11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', NULL, '2023-06-09 06:48:36', '2023-06-09 06:48:36'),
(56, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Denuncia', 2, '{\"id\":2,\"imagen\":\"uploads\\/dHZ4uqFhDj6009FE37TTdIqr5Uce4fZwjaZRZJJe.jpg\",\"descripcion\":\"Poca iluminacion sector de la costanera Padre Bolik\",\"latitud\":-27.32404250983001,\"longitud\":-55.86891174316407,\"fecha\":\"2023-04-16\",\"id_categoria\":2,\"id_estado\":1,\"id_user\":2}', '[]', 'http://127.0.0.1:8000/denuncias/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-09 06:48:53', '2023-06-09 06:48:53'),
(57, 'App\\Models\\User', 2, 'created', 'App\\Models\\Denuncia', 12, '[]', '{\"id_user\":\"2\",\"descripcion\":\"Banco  roto en la Costanera de la playa San Jos\\u00e9\",\"latitud\":\"-27.337309929958924\",\"longitud\":\"-55.87285995483399\",\"id_categoria\":\"4\",\"fecha\":\"2023-06-09 00:00:00\",\"id_estado\":\"1\",\"imagen\":\"uploads\\/etonK0HAsYufFBUpUhZlSs2YRzSahPyg5NASYyi9.jpg\",\"id\":12}', 'http://127.0.0.1:8000/denuncias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', NULL, '2023-06-10 04:08:13', '2023-06-10 04:08:13'),
(58, 'App\\Models\\User', 2, 'created', 'App\\Models\\Denuncia', 13, '[]', '{\"id_user\":\"2\",\"descripcion\":\"Cesped alto Costanera playa San Jos\\u00e9\",\"latitud\":\"-27.334107594614554\",\"longitud\":\"-55.87457656860352\",\"id_categoria\":\"7\",\"fecha\":\"2023-06-09 00:00:00\",\"id_estado\":\"1\",\"imagen\":\"uploads\\/GwegvJ6VmtHubOvaTIGkKFPz0QqpMyM0gr8pcyYu.jpg\",\"id\":13}', 'http://127.0.0.1:8000/denuncias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', NULL, '2023-06-10 04:10:04', '2023-06-10 04:10:04'),
(59, 'App\\Models\\User', 2, 'created', 'App\\Models\\Denuncia', 14, '[]', '{\"id_user\":\"2\",\"descripcion\":\"ca\\u00f1o roto sobre calle Constituci\\u00f3n Nacional \\/ Carlos Antonio l\\u00f3pez\",\"latitud\":\"-27.327664520580957\",\"longitud\":\"-55.86487770080567\",\"id_categoria\":\"5\",\"fecha\":\"2023-06-09 00:00:00\",\"id_estado\":\"1\",\"imagen\":\"uploads\\/xBQYs0oOw0Nh0pPm5t3IKaF0zzygXqdgrH0xIM6G.jpg\",\"id\":14}', 'http://127.0.0.1:8000/denuncias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', NULL, '2023-06-10 04:11:15', '2023-06-10 04:11:15'),
(60, 'App\\Models\\User', 3, 'created', 'App\\Models\\Denuncia', 15, '[]', '{\"id_user\":\"3\",\"descripcion\":\"Sem\\u00e1foro averiado Avnda. Caballero \\/esq. Juan Le\\u00f3n Mallorquin\",\"latitud\":\"-27.32686387575879\",\"longitud\":\"-55.8686113357544\",\"id_categoria\":\"3\",\"fecha\":\"2023-06-10 00:00:00\",\"id_estado\":\"1\",\"imagen\":\"uploads\\/b20pD950pYSuvcy5bT8zfWFmJJz1StGhlwphxbAc.jpg\",\"id\":15}', 'http://127.0.0.1:8000/denuncias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', NULL, '2023-06-11 03:02:44', '2023-06-11 03:02:44'),
(61, 'App\\Models\\User', 3, 'created', 'App\\Models\\Denuncia', 16, '[]', '{\"id_user\":\"3\",\"descripcion\":\"Basura en la de calle 25 de Mayo y Gral. Artigas\",\"latitud\":\"-27.329532669349156\",\"longitud\":\"-55.869770050048835\",\"id_categoria\":\"6\",\"fecha\":\"2023-06-10 00:00:00\",\"id_estado\":\"1\",\"imagen\":\"uploads\\/N7Qc8cFTi99HGHUZFQjM01d69Hkpdp0a5X0VKNdS.jpg\",\"id\":16}', 'http://127.0.0.1:8000/denuncias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', NULL, '2023-06-11 03:04:10', '2023-06-11 03:04:10'),
(62, 'App\\Models\\User', 2, 'created', 'App\\Models\\Denuncia', 17, '[]', '{\"id_user\":\"2\",\"descripcion\":\"Basura en la de calle Constituci\\u00f3n Nacional y Gral. Artigas\",\"latitud\":\"-27.32812202931218\",\"longitud\":\"-55.870027542114265\",\"id_categoria\":\"6\",\"fecha\":\"2023-06-15 00:00:00\",\"id_estado\":\"1\",\"imagen\":\"uploads\\/z92wr9eIBcBpBpvkpHri7SPJ2myHhchzvSP3pxKE.jpg\",\"id\":17}', 'http://127.0.0.1:8000/denuncias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', NULL, '2023-06-16 05:39:14', '2023-06-16 05:39:14'),
(63, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Categoria', 1, '{\"nombre\":\"Baches\"}', '{\"nombre\":\"Bache\"}', 'http://127.0.0.1:8000/categorias/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-20 01:35:51', '2023-06-20 01:35:51'),
(64, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Estado', 3, '{\"nombre\":\"Finalizado\"}', '{\"nombre\":\"Finalizados\"}', 'http://127.0.0.1:8000/estados/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-20 01:39:09', '2023-06-20 01:39:09'),
(65, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Estado', 2, '{\"nombre\":\"Inactivo\"}', '{\"nombre\":\"En tramite\"}', 'http://127.0.0.1:8000/estados/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-20 01:41:58', '2023-06-20 01:41:58'),
(66, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Categoria', 2, '{\"nombre\":\"Electricidad\"}', '{\"nombre\":\"Alumbrado\"}', 'http://127.0.0.1:8000/categorias/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-20 01:48:19', '2023-06-20 01:48:19'),
(67, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Estado', 1, '{\"nombre\":\"Activo\"}', '{\"nombre\":\"Pendiente\"}', 'http://127.0.0.1:8000/estados/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-20 03:58:15', '2023-06-20 03:58:15'),
(68, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Estado', 3, '{\"nombre\":\"Finalizados\"}', '{\"nombre\":\"Finalizado\"}', 'http://127.0.0.1:8000/estados/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-20 04:45:04', '2023-06-20 04:45:04'),
(69, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Estado', 2, '{\"nombre\":\"En tramite\"}', '{\"nombre\":\"En tr\\u00e1mite\"}', 'http://127.0.0.1:8000/estados/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-20 05:13:08', '2023-06-20 05:13:08'),
(70, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Categoria', 7, '{\"nombre\":\"Cesped\"}', '{\"nombre\":\"C\\u00e9sped\"}', 'http://127.0.0.1:8000/categorias/7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-20 05:15:34', '2023-06-20 05:15:34'),
(71, 'App\\Models\\User', 2, 'created', 'App\\Models\\Denuncia', 18, '[]', '{\"id_user\":\"2\",\"descripcion\":\"Sem\\u00e1foro averiado Avnda. Caballero \\/Carlos Antonio L\\u00f3pez\",\"latitud\":\"-27.32671137132766\",\"longitud\":\"-55.865306854248054\",\"id_categoria\":\"3\",\"fecha\":\"2023-06-19 00:00:00\",\"id_estado\":\"1\",\"imagen\":\"uploads\\/shOUKsUtnozu1qkiWU52lT0Uqmk6ecMP4c8Q2Z7H.jpg\",\"id\":18}', 'http://127.0.0.1:8000/denuncias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', NULL, '2023-06-20 05:33:29', '2023-06-20 05:33:29'),
(72, 'App\\Models\\User', 2, 'created', 'App\\Models\\Denuncia', 19, '[]', '{\"id_user\":\"2\",\"descripcion\":\"Basura en la de calle 25 de Mayo y Gral. Artigas\",\"latitud\":\"-27.333802605470744\",\"longitud\":\"-55.869940641433736\",\"id_categoria\":\"6\",\"fecha\":\"2023-08-19 00:00:00\",\"id_estado\":\"1\",\"imagen\":\"uploads\\/6d5JRSsQP4XOuPzuJN7rb1hAgUeBW3DXuAy6D7Di.jpg\",\"id\":19}', 'http://127.0.0.1:8000/denuncias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', NULL, '2023-08-20 07:30:25', '2023-08-20 07:30:25'),
(73, 'App\\Models\\User', 2, 'created', 'App\\Models\\Denuncia', 20, '[]', '{\"id_user\":\"2\",\"descripcion\":\"Basura en la de calle Constituci\\u00f3n Nacional y Gral. Artigas\",\"latitud\":\"-27.329570794506473\",\"longitud\":\"-55.86994171142579\",\"id_categoria\":\"6\",\"fecha\":\"2023-08-20 00:00:00\",\"id_estado\":\"1\",\"imagen\":\"uploads\\/6o07YPXzVivbaznIfNApz7oKHb47TmtBgGPSG0Dm.jpg\",\"id\":20}', 'http://127.0.0.1:8000/denuncias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', NULL, '2023-08-21 01:32:32', '2023-08-21 01:32:32'),
(74, 'App\\Models\\User', 2, 'created', 'App\\Models\\Denuncia', 21, '[]', '{\"id_user\":\"2\",\"descripcion\":\"Basura en la de calle 25 de Mayo y Gral. Artigas\",\"latitud\":\"-27.330752667880265\",\"longitud\":\"-55.86968421936036\",\"id_categoria\":\"6\",\"fecha\":\"2023-08-20 00:00:00\",\"id_estado\":\"1\",\"imagen\":\"uploads\\/HsRZ9wE2kzNnIFbGosYr9DH2uFA6ZYusOjuGKDOx.jpg\",\"id\":21}', 'http://127.0.0.1:8000/denuncias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', NULL, '2023-08-21 03:55:34', '2023-08-21 03:55:34'),
(75, 'App\\Models\\User', 2, 'created', 'App\\Models\\Denuncia', 22, '[]', '{\"id_user\":\"2\",\"descripcion\":\"Banco  roto en la Costanera de la playa San Jos\\u00e9\",\"latitud\":\"-27.334336335921698\",\"longitud\":\"-55.87427616119385\",\"id_categoria\":\"4\",\"fecha\":\"2023-08-20 00:00:00\",\"id_estado\":\"1\",\"imagen\":\"uploads\\/o6j3et39GlcLwpewCzczYk7JcN3dvA5Za3hOVclZ.jpg\",\"id\":22}', 'http://127.0.0.1:8000/denuncias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', NULL, '2023-08-21 04:01:25', '2023-08-21 04:01:25'),
(76, 'App\\Models\\User', 2, 'created', 'App\\Models\\Denuncia', 23, '[]', '{\"id_user\":\"2\",\"descripcion\":\"Bache sobre calle Constituci\\u00f3n c\\/ Gral Artigas\",\"latitud\":\"-27.3312101638682\",\"longitud\":\"-55.86994171142579\",\"id_categoria\":\"1\",\"fecha\":\"2023-08-20 00:00:00\",\"id_estado\":\"1\",\"imagen\":\"uploads\\/LUyZhiOoqrKYsXUiaDIPwlQs8InJrYZNsnVyctto.jpg\",\"id\":23}', 'http://127.0.0.1:8000/denuncias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', NULL, '2023-08-21 05:23:56', '2023-08-21 05:23:56'),
(77, 'App\\Models\\User', 2, 'created', 'App\\Models\\Denuncia', 24, '[]', '{\"id_user\":\"2\",\"descripcion\":\"Sem\\u00e1foro averiado Avnda. Caballero \\/Carlos Antonio L\\u00f3pez\",\"latitud\":\"-27.333040128939956\",\"longitud\":\"-55.8709716796875\",\"id_categoria\":\"3\",\"fecha\":\"2023-08-20 00:00:00\",\"id_estado\":\"1\",\"imagen\":\"uploads\\/M0iG17ChwTXVMZbMFrAeZdX6amWicB22mCX9et4K.jpg\",\"id\":24}', 'http://127.0.0.1:8000/denuncias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', NULL, '2023-08-21 05:24:53', '2023-08-21 05:24:53'),
(78, 'App\\Models\\User', 2, 'created', 'App\\Models\\Denuncia', 25, '[]', '{\"id_user\":\"2\",\"descripcion\":\"Poca iluminacion sector de la costanera Padre Bolik\",\"latitud\":\"-27.32103043184637\",\"longitud\":\"-55.86848258972169\",\"id_categoria\":\"2\",\"fecha\":\"2023-08-20 00:00:00\",\"id_estado\":\"1\",\"imagen\":\"uploads\\/9SLpFlNPHAo1PhxIpaftPQqqUvdZKdmo7oBZZZty.jpg\",\"id\":25}', 'http://127.0.0.1:8000/denuncias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', NULL, '2023-08-21 06:07:40', '2023-08-21 06:07:40'),
(79, 'App\\Models\\User', 2, 'created', 'App\\Models\\Denuncia', 26, '[]', '{\"id_user\":\"2\",\"descripcion\":\"Sem\\u00e1foro averiado Avnda. Caballero \\/esq. Juan Le\\u00f3n Mallorquin\",\"latitud\":\"-27.329265792880907\",\"longitud\":\"-55.867023468017585\",\"id_categoria\":\"3\",\"fecha\":\"2023-08-20 00:00:00\",\"id_estado\":\"1\",\"imagen\":\"uploads\\/k6GQfXeURoUkvlPT24p7Bttyf1P1ud909ywDQCwe.jpg\",\"id\":26}', 'http://127.0.0.1:8000/denuncias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', NULL, '2023-08-21 06:17:44', '2023-08-21 06:17:44'),
(80, 'App\\Models\\User', 2, 'created', 'App\\Models\\Denuncia', 27, '[]', '{\"id_user\":\"2\",\"descripcion\":\"Bache sobre calle Constituci\\u00f3n c\\/ Gral Artigas\",\"latitud\":\"-27.330600168798078\",\"longitud\":\"-55.86809635162354\",\"id_categoria\":\"1\",\"fecha\":\"2023-08-21 00:00:00\",\"id_estado\":\"1\",\"imagen\":\"uploads\\/iTxCaRBPruviJyPUZlPwhSmtcjeOWkSfWWSj8h0e.jpg\",\"id\":27}', 'http://127.0.0.1:8000/denuncias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', NULL, '2023-08-21 08:46:56', '2023-08-21 08:46:56'),
(81, 'App\\Models\\User', 2, 'created', 'App\\Models\\Denuncia', 28, '[]', '{\"id_user\":\"2\",\"descripcion\":\"Basura en la de calle 25 de Mayo y Gral. Artigas\",\"latitud\":\"-27.329170479700842\",\"longitud\":\"-55.86685180664063\",\"id_categoria\":\"6\",\"fecha\":\"2023-08-21 00:00:00\",\"id_estado\":\"1\",\"imagen\":\"uploads\\/ac5sKp0VNjdcXZALGgKrGpX4XEcWI7wVZpO6cAUP.jpg\",\"id\":28}', 'http://127.0.0.1:8000/denuncias', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', NULL, '2023-08-21 09:01:25', '2023-08-21 09:01:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Bache', 'bache en las calles', '2023-04-17 03:32:29', '2023-06-20 01:35:50', NULL),
(2, 'Alumbrado', 'focos quemados-tendido eléctrico caido-poca iluminación', '2023-04-17 03:33:27', '2023-06-20 01:48:19', NULL),
(3, 'Semáforo', 'Semáforo averiado', '2023-04-17 03:34:22', '2023-04-17 03:34:22', NULL),
(4, 'Bancos', 'bancos averiados', '2023-04-17 03:36:00', '2023-04-17 03:36:18', NULL),
(5, 'Pérdida de agua', 'caños rotos-agua potable-agua servidas', '2023-04-17 03:37:52', '2023-04-17 03:46:47', NULL),
(6, 'Basura', 'Recolección de basura-basura en el desague fluvial-basura en los espacios públicos', '2023-04-17 03:45:59', '2023-06-06 04:52:20', NULL),
(7, 'Césped', 'el cesped de los espacios publicos estan muy alto.', '2023-06-05 06:01:08', '2023-06-20 05:15:34', NULL),
(8, 'eqeqw', 'qeqeqe', '2023-06-06 05:27:18', '2023-06-06 05:27:26', '2023-06-06 05:27:26'),
(9, 'dadasd', 'asdasd', '2023-06-06 05:30:58', '2023-06-06 05:31:09', '2023-06-06 05:31:09'),
(10, '564646456456', 'sdasdasd', '2023-06-06 05:33:53', '2023-06-06 05:34:24', '2023-06-06 05:34:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `denuncias`
--

CREATE TABLE `denuncias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imagen` text NOT NULL,
  `descripcion` text NOT NULL,
  `latitud` double NOT NULL,
  `longitud` double NOT NULL,
  `fecha` date NOT NULL,
  `id_categoria` bigint(20) UNSIGNED NOT NULL,
  `id_estado` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `denuncias`
--

INSERT INTO `denuncias` (`id`, `imagen`, `descripcion`, `latitud`, `longitud`, `fecha`, `id_categoria`, `id_estado`, `id_user`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'uploads/oWXKb3B0P5vA5PNEqg2ZyVW7SlhCZJkvuhnEQlcZ.jpg', 'Bache sobre calle Constitución c/ Gral Artigas', -27.328045777988073, -55.86988806724549, '2023-04-16', 1, 2, 1, '2023-04-17 04:13:02', '2023-06-09 05:00:43', '2023-06-09 05:00:43'),
(2, 'uploads/dHZ4uqFhDj6009FE37TTdIqr5Uce4fZwjaZRZJJe.jpg', 'Poca iluminacion sector de la costanera Padre Bolik', -27.32404250983001, -55.86891174316407, '2023-04-16', 2, 1, 2, '2023-04-17 05:04:34', '2023-06-09 06:48:53', '2023-06-09 06:48:53'),
(3, 'uploads/gjcL8lWbjzguKYpEU8wmQ8ti2hgZK7IjfPjk4Tsr.jpg', 'Poca iluminacion sector de la costanera Padre Bolik', -27.32404250983001, -55.86891174316407, '2023-04-16', 2, 3, 1, '2023-04-17 05:11:41', '2023-06-09 05:00:33', '2023-06-09 05:00:33'),
(4, 'uploads/pwHx3A36Kd1dCjtFTpxXF8Z4013xQh0bf1TREfUV.png', 'sdasdasd', -27.333802605470744, -55.86925494835136, '2023-06-05', 1, 1, 1, '2023-06-06 07:40:39', '2023-06-06 07:52:19', '2023-06-06 07:52:19'),
(5, 'uploads/fd9Fk0khJkQ1WMObB5U9J4YJb1k8kGbkEWmwhJIH.png', 'pppp', -27.340969628484952, -55.86994171142579, '2023-06-05', 1, 1, 1, '2023-06-06 07:54:35', '2023-06-06 07:56:06', '2023-06-06 07:56:06'),
(6, 'uploads/SMp8AVgHY8c64LbbE0YSsVHlolEzHzL37BsWRhvI.png', 'sdasdasd', -27.33243014393919, -55.873031616210945, '2023-06-05', 1, 1, 1, '2023-06-06 07:59:46', '2023-06-06 08:00:54', '2023-06-06 08:00:54'),
(7, 'basura.jpg', 'Basura en la de calle 25 de Mayo y Gral. Artigas', -27.329475481589, -55.869791507721, '2023-06-08', 6, 2, 1, '2023-06-09 04:54:47', '2023-06-09 06:40:05', '2023-06-09 06:40:05'),
(8, 'uploads/DZ8GfmJFtDyHy3IESjOMrldC0SlczV8ntVm1YgoU.jpg', 'Semáforo averiado Avnda. Caballero /esq. Juan León Mallorquin', -27.32686387575879, -55.8686113357544, '2023-06-08', 3, 2, 1, '2023-06-09 05:06:15', '2023-06-09 06:40:11', '2023-06-09 06:40:11'),
(9, 'caño.jpg', 'caño roto sobre calle Constitución Nacional / Carlos Antonio lópez', -27.327550143103, -55.86462020874, '2023-06-08', 5, 3, 3, '2023-06-09 05:44:08', '2023-06-09 06:48:27', '2023-06-09 06:48:27'),
(10, 'uploads/WZx6M4k2lT4PziTNlMxWugAOMlaQp97JRswjDkpR.jpg', 'Cesped alto Costanera playa San José', -27.33132453757019, -55.875048637390144, '2023-06-08', 7, 1, 3, '2023-06-09 06:00:05', '2023-06-09 06:48:32', '2023-06-09 06:48:32'),
(11, 'uploads/nUklukHJvItmpWGh7hs4GIo3sisz2CQHSdhAyg4o.jpg', 'Banco  roto en la Costanera de la playa San José', -27.33046673192908, -55.87569236755371, '2023-06-08', 4, 1, 3, '2023-06-09 06:02:16', '2023-06-09 06:48:36', '2023-06-09 06:48:36'),
(12, 'uploads/etonK0HAsYufFBUpUhZlSs2YRzSahPyg5NASYyi9.jpg', 'Banco  roto en la Costanera de la playa San José', -27.337309929959, -55.872859954834, '2023-06-09', 4, 3, 2, '2023-06-10 04:08:13', '2023-06-10 04:31:00', NULL),
(13, 'uploads/GwegvJ6VmtHubOvaTIGkKFPz0QqpMyM0gr8pcyYu.jpg', 'Cesped alto Costanera playa San José', -27.334107594615, -55.874576568604, '2023-06-09', 7, 1, 2, '2023-06-10 04:10:04', '2023-06-10 04:33:04', NULL),
(14, 'uploads/xBQYs0oOw0Nh0pPm5t3IKaF0zzygXqdgrH0xIM6G.jpg', 'caño roto sobre calle Constitución Nacional / Carlos Antonio lópez', -27.327664520580957, -55.86487770080567, '2023-06-09', 5, 1, 2, '2023-06-10 04:11:15', '2023-06-10 04:11:15', NULL),
(15, 'uploads/b20pD950pYSuvcy5bT8zfWFmJJz1StGhlwphxbAc.jpg', 'Semáforo averiado Avnda. Caballero /esq. Juan León Mallorquin', -27.326863875759, -55.868611335754, '2023-06-10', 3, 2, 3, '2023-06-11 03:02:44', '2023-08-21 09:17:32', NULL),
(16, 'uploads/N7Qc8cFTi99HGHUZFQjM01d69Hkpdp0a5X0VKNdS.jpg', 'Basura en la de calle 25 de Mayo y Gral. Artigas', -27.329532669349, -55.869770050049, '2023-06-10', 6, 1, 3, '2023-06-11 03:04:10', '2023-06-11 03:09:29', NULL),
(17, 'uploads/z92wr9eIBcBpBpvkpHri7SPJ2myHhchzvSP3pxKE.jpg', 'Basura en la de calle Constitución Nacional y Gral. Artigas', -27.328122029312, -55.870027542114, '2023-06-15', 6, 3, 2, '2023-06-16 05:39:14', '2023-08-21 09:18:14', NULL),
(18, 'uploads/shOUKsUtnozu1qkiWU52lT0Uqmk6ecMP4c8Q2Z7H.jpg', 'Semáforo averiado Avnda. Caballero /Carlos Antonio López', -27.32671137132766, -55.865306854248054, '2023-06-19', 3, 1, 2, '2023-06-20 05:33:29', '2023-06-20 05:33:29', NULL),
(19, 'uploads/6d5JRSsQP4XOuPzuJN7rb1hAgUeBW3DXuAy6D7Di.jpg', 'Basura en la de calle 25 de Mayo y Gral. Artigas', -27.333802605470744, -55.869940641433736, '2023-08-19', 6, 1, 2, '2023-08-20 07:30:25', '2023-08-20 07:30:25', NULL),
(20, 'uploads/6o07YPXzVivbaznIfNApz7oKHb47TmtBgGPSG0Dm.jpg', 'Basura en la de calle Constitución Nacional y Gral. Artigas', -27.329570794506473, -55.86994171142579, '2023-08-20', 6, 1, 2, '2023-08-21 01:32:32', '2023-08-21 01:32:32', NULL),
(21, 'uploads/HsRZ9wE2kzNnIFbGosYr9DH2uFA6ZYusOjuGKDOx.jpg', 'Basura en la de calle 25 de Mayo y Gral. Artigas', -27.330752667880265, -55.86968421936036, '2023-08-20', 6, 1, 2, '2023-08-21 03:55:34', '2023-08-21 03:55:34', NULL),
(22, 'uploads/o6j3et39GlcLwpewCzczYk7JcN3dvA5Za3hOVclZ.jpg', 'Banco  roto en la Costanera de la playa San José', -27.334336335921698, -55.87427616119385, '2023-08-20', 4, 1, 2, '2023-08-21 04:01:25', '2023-08-21 04:01:25', NULL),
(23, 'uploads/LUyZhiOoqrKYsXUiaDIPwlQs8InJrYZNsnVyctto.jpg', 'Bache sobre calle Constitución c/ Gral Artigas', -27.3312101638682, -55.86994171142579, '2023-08-20', 1, 1, 2, '2023-08-21 05:23:56', '2023-08-21 05:23:56', NULL),
(24, 'uploads/M0iG17ChwTXVMZbMFrAeZdX6amWicB22mCX9et4K.jpg', 'Semáforo averiado Avnda. Caballero /Carlos Antonio López', -27.333040128939956, -55.8709716796875, '2023-08-20', 3, 1, 2, '2023-08-21 05:24:53', '2023-08-21 05:24:53', NULL),
(25, 'uploads/9SLpFlNPHAo1PhxIpaftPQqqUvdZKdmo7oBZZZty.jpg', 'Poca iluminacion sector de la costanera Padre Bolik', -27.32103043184637, -55.86848258972169, '2023-08-20', 2, 1, 2, '2023-08-21 06:07:40', '2023-08-21 06:07:40', NULL),
(26, 'uploads/k6GQfXeURoUkvlPT24p7Bttyf1P1ud909ywDQCwe.jpg', 'Semáforo averiado Avnda. Caballero /esq. Juan León Mallorquin', -27.329265792880907, -55.867023468017585, '2023-08-20', 3, 1, 2, '2023-08-21 06:17:44', '2023-08-21 06:17:44', NULL),
(27, 'uploads/iTxCaRBPruviJyPUZlPwhSmtcjeOWkSfWWSj8h0e.jpg', 'Bache sobre calle Constitución c/ Gral Artigas', -27.330600168798078, -55.86809635162354, '2023-08-21', 1, 1, 2, '2023-08-21 08:46:56', '2023-08-21 08:46:56', NULL),
(28, 'uploads/ac5sKp0VNjdcXZALGgKrGpX4XEcWI7wVZpO6cAUP.jpg', 'Basura en la de calle 25 de Mayo y Gral. Artigas', -27.329170479700842, -55.86685180664063, '2023-08-21', 6, 1, 2, '2023-08-21 09:01:25', '2023-08-21 09:01:25', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id`, `nombre`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Pendiente', '2023-04-17 03:28:38', '2023-06-20 03:58:15', NULL),
(2, 'En trámite', '2023-04-17 03:29:25', '2023-06-20 05:13:08', NULL),
(3, 'Finalizado', '2023-04-17 03:29:40', '2023-06-20 04:45:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_20_190414_create_estados_table', 1),
(6, '2022_11_20_191106_create_categorias_table', 1),
(7, '2022_11_20_191728_create_denuncias_table', 1),
(8, '2022_12_19_161125_create_audits_table', 1),
(9, '2022_12_19_165501_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'crear-usuario', 'web', '2023-04-17 02:30:04', '2023-04-17 02:30:04'),
(2, 'editar-usuario', 'web', '2023-04-17 02:30:04', '2023-04-17 02:30:04'),
(3, 'borrar-usuario', 'web', '2023-04-17 02:30:04', '2023-04-17 02:30:04'),
(4, 'crear-denuncia', 'web', '2023-04-17 02:30:04', '2023-04-17 02:30:04'),
(5, 'editar-denuncia', 'web', '2023-04-17 02:30:04', '2023-04-17 02:30:04'),
(6, 'borrar-denuncia', 'web', '2023-04-17 02:30:04', '2023-04-17 02:30:04'),
(7, 'crear-categoria', 'web', '2023-04-17 02:30:04', '2023-04-17 02:30:04'),
(8, 'editar-categoria', 'web', '2023-04-17 02:30:04', '2023-04-17 02:30:04'),
(9, 'borrar-categoria', 'web', '2023-04-17 02:30:04', '2023-04-17 02:30:04'),
(10, 'crear-estado', 'web', '2023-04-17 02:30:04', '2023-04-17 02:30:04'),
(11, 'editar-estado', 'web', '2023-04-17 02:30:04', '2023-04-17 02:30:04'),
(12, 'borrar-estado', 'web', '2023-04-17 02:30:04', '2023-04-17 02:30:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-04-17 02:30:04', '2023-04-17 02:30:04'),
(2, 'Usuario', 'web', '2023-04-17 02:30:04', '2023-04-17 02:30:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$ZLiebVfL5JuDZz1eloTnxuOZn1eDXrIqZPK//BIFWYAe4N4HWJxXi', NULL, '2023-04-17 02:27:05', '2023-04-17 02:27:05'),
(2, 'wilson', 'wilson@gmail.com', NULL, '$2y$10$Yh2XQZzVG8qspi5KtrqWxOCzoNLjD7Zo3kO12wVwOPCqnlpvJaaqC', NULL, '2023-04-17 02:29:10', '2023-04-17 02:29:10'),
(3, 'Juan Perez', 'juan@gmail.com', NULL, '$2y$10$E7aCG4qOQVAxkbzVscPCxuLdg7s0Vpn4NXTRehAuruuHALcJ07QqK', NULL, '2023-04-17 04:15:39', '2023-04-17 04:15:39'),
(4, 'Luis Britez', 'luisbritez@gmail.com', NULL, '$2y$10$aOp7LwGhQEtn9jVCWXY8M.Dz7o/jIo7jRJqfzPRCGdHhstudezQyi', NULL, '2023-07-11 02:02:00', '2023-07-11 02:02:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `audits`
--
ALTER TABLE `audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audits_auditable_type_auditable_id_index` (`auditable_type`,`auditable_id`),
  ADD KEY `audits_user_id_user_type_index` (`user_id`,`user_type`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `denuncias`
--
ALTER TABLE `denuncias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `denuncias_id_user_foreign` (`id_user`),
  ADD KEY `denuncias_id_categoria_foreign` (`id_categoria`),
  ADD KEY `denuncias_id_estado_foreign` (`id_estado`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `audits`
--
ALTER TABLE `audits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `denuncias`
--
ALTER TABLE `denuncias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `denuncias`
--
ALTER TABLE `denuncias`
  ADD CONSTRAINT `denuncias_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `denuncias_id_estado_foreign` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id`),
  ADD CONSTRAINT `denuncias_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
