-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2022 a las 16:13:11
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
-- Base de datos: `restaurante-pedidos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `category_list`
--

INSERT INTO `category_list` (`id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Sopas', 'El éxito de una buena cena es disfrutar la experiencia de comer de principio a fin, sobre todo si es para un día especial. Porque queremos que deleites a tus invitados, hicimos una selección de entradas para abrir el apetito con un delicioso plato inicial en Navidad, Año Nuevo o cuando quieras. Revisa las recetas, elige las mejores ideas y ¡prepáralas siguiendo los pasos!', 1, 0, '2022-05-30 08:41:47', '2022-07-12 01:25:12'),
(2, 'Bebidas', 'Se denomina bebida a la sustancia que puede beberse. Esta acción (beber) alude a la ingesta de un líquido. El agua, la gaseosa, el vino, el café y la cerveza son algunas de las bebidas más populares.', 1, 0, '2022-05-30 08:42:12', '2022-07-12 01:16:41'),
(3, 'Desayunos', 'Una dieta sana y equilibrada es la que permite que el cuerpo funcione de manera óptima. Para lograrlo, es fundamental que se base en alimentos que potencien el buen funcionamiento del organismo y eviten las enfermedades relacionadas con la alimentación, como la obesidad o los problemas cardiovasculares. Por esta razón, los expertos recomiendan que la dieta forme parte de un estilo de vida saludable, sea rica en alimentos de origen vegetal y fibra y, por contra, sea baja en grasa de origen animal, en dulces y productos muy calóricos. El presente artículo reseña las principales características de una dieta saludable y presenta sugerencias concretas para el desayuno y la cena.', 1, 0, '2022-05-30 08:43:05', '2022-07-12 01:23:49'),
(4, 'Verduras', 'Cuando hablamos de comida, uno de los alimentos más difíciles de ser consumido tanto por chicos como por grandes siempre han sido y serán las recetas con verduras, debido a que su sabor no es tan grato como otros alimentos.', 1, 0, '2022-05-30 08:43:21', '2022-07-12 01:15:07'),
(5, 'Entradas', 'La entrada, como su nombre lo indica, es el plato que antecede al segundo plato o principal. Por lo general, son platos de elaboración simple y porciones pequeñas que preparan al comensal para consumir el plato principal.', 1, 0, '2022-05-30 08:43:34', '2022-07-12 01:17:48'),
(6, 'Aliño', 'Las hierbas y especias son condimentos esenciales en la cocina vegetariana, pues nos ayudan a potenciar el sabor de los alimentos frescos: Albahaca: con quesos y tomates.', 1, 0, '2022-05-30 08:43:53', '2022-07-12 01:11:19'),
(7, 'test', 'etst - updated', 0, 1, '2022-05-30 08:44:01', '2022-05-30 08:44:16'),
(8, 'Granos', '“Grano” se refiere a alimentos hechos con trigo, arroz, avena, cebada u otro grano de cereal. Algunos ejemplos son el pan, el cereal de desayuno, la harina de avena y las tortillas de maíz.', 1, 0, '2022-05-30 08:44:37', '2022-07-12 01:12:39'),
(9, 'Carnes', 'Carne de res: Para bistéc, asados, guisos, barbacóas. Carne de cerdo: Costillas, jamones, falda, espaldilla, paletilla. Carne de caballo: Bistéc, milanesas, guisos, estofados. Carne ovina: Cordero, borrego, oveja, capón y carnero.', 1, 0, '2022-05-30 08:44:56', '2022-07-12 01:21:47'),
(10, 'BEBIDA', 'TODO TIPO DE REFRESCO', 1, 0, '2022-12-14 12:14:06', '2022-12-14 12:14:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_list`
--

CREATE TABLE `menu_list` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` float(12,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `menu_list`
--

INSERT INTO `menu_list` (`id`, `category_id`, `code`, `name`, `description`, `price`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 1, 'Sop1', 'Chupe de camarones', 'Es la sopa perfecta, o como diría El Corregidor en 1959: “¡Es la Venus de Milo del sopeo peruano!”. Este plato arequipeño que por lo general se sirve los domingos lleva un caldo hecho con las carcasas del crustáceo; un aderezo con ají panca, ajo y cebolla; arroz, papa amarilla, habas, choclo y arverjas; y se termina con queso fresco, huevo ponchado o frito, chorrito de leche y huacatay. Celestial. Prueba nuestra versión, y no olvides respetar la veda de camarón.', 85.00, 1, 0, '2022-05-30 09:06:02', '2022-07-12 01:38:47'),
(2, 3, 'DES1', 'Compota de Manzana con Queso Fresco', 'En tan solo 25 minutos puedes preparar esta deliciosa compota para desayunar. La puedes dejar hecha el día antes y simplemente servirla cuando vayas a comerla. Y solo tiene 165 calorías por ración. ', 115.00, 1, 0, '2022-05-30 09:07:42', '2022-07-12 01:30:55'),
(3, 3, 'DES2', 'Tortilla', '¿A quién no le apetece un desayuno de película? Seguro que alguna vez has soñado con esas tortitas que aparecen en las películas americanas, pues ahora puedes darte ese capricho y hacerlo de la forma más saludable. ¡Sí, has leído bien! Sasha Fitness nos enseña en sus redes como preparar este delicioso desayuno sin tener que enfrentarse a la báscula. ', 145.00, 1, 0, '2022-05-30 09:08:34', '2022-07-12 01:29:01'),
(4, 9, 'Car1', 'Pampero Parrilla Argentina', 'La tira de asado es un clásico corte de asado argentino en el que la carne se corta en dirección perpendicular a las costillas. En lugar de separar cada costilla de forma longitudinal, como habitualmente acostumbramos a verlas, el corte se da de forma transversal, dejando tiras de unos cuatro centímetros aproximadamente y que contienen cuatro o cinco huesos de costilla.\r\n\r\nEste tipo de carne está llena de sabor para asar tanto en la parrilla como a las brasas, además de resultar divertida de comer, ya que la mejor carne es la que está pegada al hueso. En general se prefieren las primeras costillas, ya que tienen menos grasa y más sabor, si bien es cierto que son más finas que las siguientes. Se trata de uno de los cortes de carne argentinos de mayor popularidad y presencia en los asados del país.', 455.00, 1, 1, '2022-05-30 09:09:53', '2022-08-08 23:22:41'),
(5, 2, 'D1', 'Soda Gaseosa', 'Bebidas Gaseosas', 25.00, 1, 0, '2022-05-30 09:11:13', '2022-07-12 01:41:34'),
(6, 2, 'D2', 'Jugo de Arándanos', 'Esta bebida le aporta al organismo una serie de valiosas propiedades nutricionales. Si bien se ha popularizado en sus presentaciones comerciales, la mejor forma de aprovechar su perfil nutricional es a través del consumo de su versión 100% natural. ', 25.00, 1, 0, '2022-05-30 09:11:38', '2022-07-12 01:40:32'),
(7, 5, 'Ent1', 'Aguacate Relleno con Camárones', 'Aguacate relleno con camarones, cebolla, rábanos, pimiento rojo, apio, huevo duro y alioli o mayonesa de cilantro.', 75.00, 1, 0, '2022-05-30 09:12:07', '2022-07-12 01:32:43'),
(8, 5, 'Ent2', 'Carne en Palito', 'Carne en palito: La carne en palito son pinchos de carne de res cortada finamente, adobada con ajo, achiote, y comino, y asados a la parrilla.', 80.00, 1, 0, '2022-05-30 09:12:33', '2022-07-12 01:34:20'),
(9, 2, 'Beb23', 'Jugo de Mango', 'Jugo de Mango con Soda', 15.00, 1, 0, '2022-07-12 01:42:16', '2022-07-12 21:32:25'),
(11, 2, '', 'SIMBA', 'SIMBA DE 2 LITROS', 10.00, 1, 0, '2022-12-14 12:14:32', '2022-12-14 12:14:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_items`
--

CREATE TABLE `order_items` (
  `order_id` int(30) NOT NULL,
  `menu_id` int(30) NOT NULL,
  `price` float(12,2) NOT NULL DEFAULT 0.00,
  `quantity` int(30) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `order_items`
--

INSERT INTO `order_items` (`order_id`, `menu_id`, `price`, `quantity`) VALUES
(1, 7, 75.00, 2),
(1, 4, 455.00, 2),
(2, 3, 145.00, 2),
(2, 2, 115.00, 1),
(2, 5, 25.00, 2),
(2, 6, 25.00, 1),
(3, 3, 145.00, 2),
(3, 2, 115.00, 1),
(3, 5, 25.00, 2),
(3, 6, 25.00, 1),
(4, 2, 115.00, 1),
(5, 5, 25.00, 2),
(5, 4, 455.00, 1),
(6, 1, 85.00, 5),
(7, 2, 115.00, 2),
(8, 4, 455.00, 1),
(9, 5, 25.00, 2),
(9, 4, 455.00, 1),
(9, 1, 85.00, 2),
(10, 5, 25.00, 2),
(10, 1, 85.00, 2),
(11, 4, 455.00, 1),
(12, 6, 25.00, 1),
(12, 4, 455.00, 1),
(13, 6, 25.00, 1),
(13, 4, 455.00, 1),
(13, 7, 75.00, 1),
(14, 9, 15.00, 1),
(14, 4, 455.00, 1),
(15, 6, 25.00, 1),
(15, 8, 80.00, 1),
(16, 5, 25.00, 1),
(16, 4, 455.00, 1),
(17, 9, 15.00, 1),
(18, 9, 15.00, 1),
(19, 6, 25.00, 1),
(20, 1, 85.00, 4),
(21, 6, 25.00, 1),
(21, 4, 455.00, 1),
(21, 3, 145.00, 1),
(22, 9, 15.00, 1),
(22, 4, 455.00, 1),
(22, 8, 80.00, 1),
(23, 4, 455.00, 1),
(23, 9, 15.00, 2),
(23, 5, 25.00, 1),
(23, 1, 85.00, 1),
(24, 6, 25.00, 1),
(24, 5, 25.00, 1),
(24, 4, 455.00, 1),
(25, 6, 25.00, 1),
(25, 5, 25.00, 1),
(25, 4, 455.00, 1),
(26, 6, 25.00, 1),
(26, 5, 25.00, 1),
(26, 4, 455.00, 1),
(27, 6, 25.00, 1),
(27, 9, 15.00, 1),
(28, 4, 455.00, 1),
(29, 6, 25.00, 1),
(30, 6, 25.00, 1),
(30, 9, 15.00, 1),
(30, 5, 25.00, 1),
(30, 4, 455.00, 1),
(31, 6, 25.00, 9),
(31, 9, 15.00, 7),
(31, 5, 25.00, 7),
(31, 4, 455.00, 7),
(31, 3, 145.00, 11),
(31, 2, 115.00, 10),
(32, 6, 25.00, 1),
(33, 6, 25.00, 1),
(33, 5, 25.00, 1),
(34, 6, 25.00, 1),
(34, 4, 455.00, 1),
(34, 7, 75.00, 1),
(34, 8, 80.00, 1),
(34, 1, 85.00, 1),
(35, 6, 25.00, 4),
(36, 9, 15.00, 1),
(36, 6, 25.00, 1),
(36, 5, 25.00, 1),
(37, 9, 15.00, 1),
(37, 7, 75.00, 1),
(37, 8, 80.00, 1),
(37, 3, 145.00, 1),
(38, 6, 25.00, 1),
(38, 9, 15.00, 1),
(38, 5, 25.00, 1),
(39, 4, 455.00, 1),
(40, 6, 25.00, 1),
(40, 5, 25.00, 1),
(40, 9, 15.00, 1),
(41, 6, 25.00, 1),
(42, 4, 455.00, 2),
(43, 6, 25.00, 1),
(43, 5, 25.00, 2),
(44, 5, 25.00, 1),
(45, 2, 115.00, 1),
(46, 6, 25.00, 1),
(47, 5, 25.00, 1),
(48, 6, 25.00, 1),
(48, 4, 455.00, 1),
(49, 5, 25.00, 2),
(50, 6, 25.00, 1),
(50, 4, 455.00, 1),
(51, 6, 25.00, 2),
(51, 9, 15.00, 2),
(51, 4, 455.00, 2),
(52, 6, 25.00, 3),
(52, 9, 15.00, 3),
(52, 5, 25.00, 5),
(52, 4, 455.00, 4),
(52, 1, 85.00, 2),
(53, 4, 455.00, 1),
(53, 9, 15.00, 1),
(54, 2, 115.00, 7),
(54, 3, 145.00, 4),
(55, 6, 25.00, 1),
(56, 6, 25.00, 1),
(56, 5, 25.00, 1),
(57, 4, 455.00, 1),
(58, 1, 85.00, 1),
(58, 5, 25.00, 3),
(59, 6, 25.00, 1),
(60, 9, 15.00, 1),
(62, 6, 25.00, 1),
(62, 4, 455.00, 1),
(63, 4, 455.00, 1),
(64, 6, 25.00, 1),
(64, 4, 455.00, 1),
(64, 3, 145.00, 1),
(65, 6, 25.00, 3),
(65, 9, 15.00, 1),
(65, 5, 25.00, 1),
(65, 8, 80.00, 2),
(66, 6, 25.00, 2),
(66, 4, 455.00, 1),
(66, 3, 145.00, 4),
(67, 6, 25.00, 1),
(67, 9, 15.00, 1),
(67, 5, 25.00, 1),
(68, 6, 25.00, 5),
(69, 9, 15.00, 1),
(69, 5, 25.00, 1),
(69, 6, 25.00, 1),
(69, 3, 145.00, 1),
(69, 2, 115.00, 1),
(69, 1, 85.00, 1),
(69, 7, 75.00, 1),
(69, 8, 80.00, 1),
(70, 6, 25.00, 3),
(70, 9, 15.00, 3),
(70, 5, 25.00, 3),
(70, 1, 85.00, 1),
(71, 6, 25.00, 1),
(71, 9, 15.00, 1),
(71, 5, 25.00, 1),
(72, 6, 25.00, 1),
(72, 2, 115.00, 1),
(73, 9, 15.00, 1),
(74, 9, 15.00, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `queue` varchar(50) NOT NULL,
  `total_amount` float(12,2) NOT NULL DEFAULT 0.00,
  `tendered_amount` float(12,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = Queued,\r\n1 = Served',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `order_list`
--

INSERT INTO `order_list` (`id`, `user_id`, `code`, `queue`, `total_amount`, `tendered_amount`, `status`, `date_created`, `date_updated`) VALUES
(1, 1, '2022053000001', '00001', 1060.00, 1100.00, 1, '2022-05-30 13:18:45', '2022-05-30 15:43:14'),
(3, 1, '2022053000003', '00003', 480.00, 500.00, 1, '2022-05-30 14:13:12', '2022-07-14 17:11:48'),
(4, 1, '2022053000004', '00004', 115.00, 120.00, 1, '2022-05-30 14:14:10', '2022-07-15 03:34:42'),
(5, 1, '2022053000005', '00005', 505.00, 505.00, 1, '2022-05-30 14:14:38', '2022-05-30 15:29:23'),
(6, 1, '2022053000006', '00006', 425.00, 500.00, 1, '2022-05-30 14:17:37', '2022-05-30 15:28:42'),
(7, 1, '2022053000002', '00002', 230.00, 500.00, 1, '2022-05-30 15:37:52', '2022-05-30 15:43:20'),
(8, 1, '2022053000007', '00007', 455.00, 500.00, 1, '2022-05-30 15:38:24', '2022-05-30 15:38:34'),
(9, 1, '2022053000008', '00008', 675.00, 1000.00, 1, '2022-05-30 15:43:41', '2022-07-14 04:19:43'),
(10, 1, '2022053000009', '00009', 220.00, 250.00, 1, '2022-05-30 15:43:54', '2022-07-15 07:21:37'),
(11, 3, '2022053000010', '00010', 455.00, 500.00, 1, '2022-05-30 15:57:53', '2022-07-15 07:21:43'),
(12, 3, '2022071200001', '00001', 480.00, 500.00, 1, '2022-07-12 00:37:33', '2022-07-12 00:42:41'),
(13, 1, '2022071200002', '00002', 555.00, 600.00, 1, '2022-07-12 01:43:54', '2022-07-12 01:45:19'),
(14, 1, '2022071200003', '00003', 470.00, 500.00, 1, '2022-07-12 01:59:28', '2022-07-12 02:01:25'),
(15, 3, '2022071200004', '00004', 105.00, 105.00, 1, '2022-07-12 02:00:22', '2022-07-12 02:01:47'),
(16, 1, '2022071300001', '00001', 480.00, 480.00, 1, '2022-07-12 20:17:56', '2022-07-15 07:21:46'),
(17, 1, '2022071300002', '00002', 15.00, 15.00, 1, '2022-07-12 20:26:14', '2022-07-15 07:24:15'),
(18, 1, '2022071300003', '00003', 15.00, 15.00, 1, '2022-07-12 20:39:46', '2022-07-15 07:27:03'),
(19, 1, '2022071300004', '00004', 25.00, 25.00, 1, '2022-07-12 20:40:44', '2022-07-15 07:27:07'),
(20, 1, '2022071400001', '00001', 340.00, 600.00, 1, '2022-07-14 08:14:34', '2022-07-15 07:27:19'),
(21, 1, '2022071400002', '00002', 625.00, 800.00, 1, '2022-07-14 17:10:59', '2022-07-15 07:27:10'),
(22, 1, '2022071400003', '00003', 550.00, 550.00, 1, '2022-07-15 03:30:47', '2022-07-15 03:31:09'),
(23, 1, '2022071500001', '00001', 595.00, 595.00, 1, '2022-07-15 07:20:22', '2022-07-15 07:27:14'),
(24, 1, '2022071500002', '00002', 505.00, 550.00, 1, '2022-07-15 07:28:13', '2022-07-15 07:28:29'),
(25, 1, '2022071500003', '00003', 505.00, 550.00, 1, '2022-07-15 07:28:42', '2022-07-15 07:29:01'),
(26, 1, '2022071500004', '00004', 505.00, 550.00, 1, '2022-07-15 07:29:04', '2022-07-15 07:29:37'),
(27, 5, '2022071500005', '00005', 40.00, 40.00, 1, '2022-07-15 20:01:59', '2022-07-15 20:03:07'),
(28, 5, '2022071500006', '00006', 455.00, 500.00, 1, '2022-07-15 20:02:45', '2022-07-15 20:04:48'),
(29, 5, '2022071500007', '00007', 25.00, 25.00, 1, '2022-07-15 20:05:06', '2022-07-15 20:05:20'),
(30, 1, '2022071800001', '00001', 520.00, 600.00, 1, '2022-07-18 21:45:45', '2022-07-18 22:10:24'),
(31, 1, '2022071800002', '00002', 6435.00, 100000000.00, 1, '2022-07-18 22:29:28', '2022-07-20 20:16:04'),
(32, 1, '2022071800003', '00003', 25.00, 25.00, 1, '2022-07-18 22:30:17', '2022-07-20 20:16:06'),
(33, 1, '2022071900001', '00001', 50.00, 50.00, 1, '2022-07-20 04:40:03', '2022-07-20 04:42:16'),
(34, 1, '2022072000001', '00001', 720.00, 800.00, 1, '2022-07-20 16:47:08', '2022-07-20 16:48:02'),
(35, 1, '2022072000002', '00002', 100.00, 200.00, 1, '2022-07-20 20:15:33', '2022-07-20 20:16:08'),
(36, 1, '2022072600001', '00001', 65.00, 100.00, 1, '2022-07-26 14:08:38', '2022-07-26 14:09:05'),
(37, 3, '2022072700001', '00001', 315.00, 320.00, 1, '2022-07-27 05:07:53', '2022-07-27 05:08:56'),
(38, 3, '2022072700002', '00002', 65.00, 100.00, 1, '2022-07-27 05:10:04', '2022-07-27 05:11:26'),
(39, 1, '2022072700003', '00003', 455.00, 455.00, 1, '2022-07-27 14:21:27', '2022-07-27 14:21:44'),
(40, 1, '2022072800001', '00001', 65.00, 108.00, 1, '2022-07-28 14:32:45', '2022-07-28 18:15:40'),
(41, 1, '2022072800002', '00002', 25.00, 25.00, 1, '2022-07-28 22:31:25', '2022-07-28 22:32:09'),
(42, 3, '2022072800003', '00003', 910.00, 910.00, 1, '2022-07-28 22:38:01', '2022-07-28 23:25:19'),
(45, 3, '2022072800005', '00005', 115.00, 115.00, 1, '2022-07-28 23:35:10', '2022-07-28 23:36:28'),
(46, 1, '2022072800006', '00006', 25.00, 25.00, 1, '2022-07-28 23:44:28', '2022-07-28 23:57:50'),
(47, 1, '2022072800007', '00007', 25.00, 27.00, 1, '2022-07-28 23:46:43', '2022-07-28 23:57:55'),
(48, 1, '2022072800008', '00008', 480.00, 480.00, 1, '2022-07-29 02:14:06', '2022-07-29 02:15:25'),
(49, 1, '2022072800009', '00009', 50.00, 50.00, 1, '2022-07-29 02:18:59', '2022-07-29 02:26:50'),
(50, 1, '2022072800010', '00010', 480.00, 480.00, 1, '2022-07-29 02:19:43', '2022-07-29 02:26:58'),
(51, 1, '2022072800011', '00011', 990.00, 1000.00, 1, '2022-07-29 02:21:27', '2022-07-29 02:26:54'),
(52, 1, '2022072900001', '00001', 2235.00, 3000.00, 1, '2022-07-29 17:11:42', '2022-07-31 03:24:53'),
(53, 6, '2022073000001', '00001', 470.00, 47000.00, 1, '2022-07-30 23:33:58', '2022-07-31 03:24:55'),
(54, 1, '2022073100001', '00001', 1385.00, 6000000.00, 1, '2022-07-31 11:18:45', '2022-07-31 11:20:05'),
(55, 1, '2022080200001', '00001', 25.00, 30.00, 1, '2022-08-02 20:24:04', '2022-08-03 03:37:28'),
(56, 1, '2022080200002', '00002', 50.00, 10000.00, 1, '2022-08-03 04:18:12', '2022-08-03 04:18:57'),
(57, 1, '2022080200003', '00003', 455.00, 1000.00, 1, '2022-08-03 04:20:45', '2022-08-03 04:22:17'),
(58, 1, '2022080200004', '00004', 160.00, 1000.00, 1, '2022-08-03 04:21:28', '2022-08-03 04:22:09'),
(59, 1, '2022080300001', '00001', 25.00, 50.00, 1, '2022-08-03 14:13:39', '2022-08-03 20:38:54'),
(60, 1, '2022080300002', '00002', 15.00, 15.00, 1, '2022-08-03 20:41:36', '2022-08-04 03:51:43'),
(62, 1, '2022080400001', '00001', 480.00, 750.00, 1, '2022-08-04 13:46:34', '2022-08-08 22:02:06'),
(63, 1, '2022080500001', '00001', 455.00, 455.00, 1, '2022-08-05 10:07:12', '2022-08-10 03:31:16'),
(64, 1, '2022080800001', '00001', 625.00, 650.00, 1, '2022-08-08 20:21:27', '2022-08-08 20:22:19'),
(65, 1, '2022080800002', '00002', 275.00, 300.00, 1, '2022-08-08 22:01:32', '2022-08-11 03:02:40'),
(66, 1, '2022080800003', '00003', 1085.00, 1085.00, 1, '2022-08-08 22:34:49', '2022-08-11 03:02:58'),
(67, 1, '2022080900001', '00001', 65.00, 70.00, 1, '2022-08-10 03:30:39', '2022-08-11 03:03:11'),
(68, 1, '2022081100001', '00001', 125.00, 2000.00, 1, '2022-08-11 14:26:09', '2022-08-16 05:43:55'),
(69, 1, '2022081100002', '00002', 565.00, 600.00, 1, '2022-08-11 19:40:28', '2022-08-16 05:44:16'),
(70, 1, '2022081100003', '00003', 280.00, 280.00, 1, '2022-08-11 20:32:56', '2022-08-16 05:44:19'),
(71, 1, '2022081500001', '00001', 65.00, 70.00, 1, '2022-08-15 21:14:13', '2022-08-16 05:44:17'),
(72, 1, '2022081600001', '00001', 140.00, 200.00, 1, '2022-08-16 05:42:53', '2022-08-16 05:44:00'),
(73, 1, '2022121200001', '00001', 15.00, 15.00, 1, '2022-12-12 10:58:42', '2022-12-14 12:14:57'),
(74, 1, '2022121200002', '00002', 15.00, 150.00, 0, '2022-12-12 11:20:09', '2022-12-12 11:20:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Restaurante \"INSERTE NOMBREA QUI\"'),
(6, 'short_name', 'Restaurante'),
(11, 'logo', 'uploads/logo.png?v=1657605039'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover.png?v=1671032037'),
(17, 'phone', '456-987-1231'),
(18, 'mobile', '09123456987 / 094563212222 '),
(19, 'email', 'info@musicschool.com'),
(20, 'address', 'Here St, Down There City, Anywhere Here, 2306 -updated');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='2';

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'David', '', 'Salvatierra', 'dsalvatierra', '3db62360feb08b8c2bcd45ffc491c47d', 'uploads/avatars/1.png?v=1671032087', NULL, 1, '2021-01-20 14:02:37', '2022-12-14 11:34:47'),
(3, 'Juan', '', 'Usuario', 'jusuario', '9f95c68e7ceff25f65962a24e21b85c1', 'uploads/avatars/3.png?v=1657604018', NULL, 2, '2022-05-28 15:30:45', '2022-07-28 22:34:25'),
(4, 'Juan', '', 'Cocinero', 'jcocinero', '202cb962ac59075b964b07152d234b70', 'uploads/avatars/4.png?v=1657604502', NULL, 3, '2022-05-30 15:56:15', '2022-08-11 19:35:26'),
(5, 'demo', 'demo', 'demo', 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', NULL, NULL, 2, '2022-07-15 20:00:15', '2022-07-15 20:01:26'),
(6, 'juan', '', 'rojas', 'user', '827ccb0eea8a706c4c34a16891f84e7b', NULL, NULL, 2, '2022-07-30 23:32:59', '2022-08-11 19:36:08'),
(7, 'Antony', '', 'Vidaurre Quispe', 'avidaurre', 'ba5cbcff985b7785e961acf332532edb', NULL, NULL, 2, '2022-08-16 13:19:40', '2022-08-16 13:20:23');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu_list`
--
ALTER TABLE `menu_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indices de la tabla `order_items`
--
ALTER TABLE `order_items`
  ADD KEY `order_id` (`order_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indices de la tabla `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `menu_list`
--
ALTER TABLE `menu_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de la tabla `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `menu_list`
--
ALTER TABLE `menu_list`
  ADD CONSTRAINT `category_id_fk_ml` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `user_id_fk_ol` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
