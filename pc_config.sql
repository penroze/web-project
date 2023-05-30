-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 17 2023 г., 18:17
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `pc_config`
--

-- --------------------------------------------------------

--
-- Структура таблицы `app_case`
--

CREATE TABLE `app_case` (
  `id` bigint(20) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `img` varchar(100) NOT NULL,
  `led` varchar(255) NOT NULL,
  `motherboard_form_factor` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `fans` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `power_unit_location` varchar(255) NOT NULL,
  `hdd_slots` smallint(5) UNSIGNED NOT NULL CHECK (`hdd_slots` >= 0),
  `ssd_slots` smallint(5) UNSIGNED NOT NULL CHECK (`ssd_slots` >= 0),
  `additional` longtext NOT NULL,
  `price` int(10) UNSIGNED NOT NULL CHECK (`price` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `app_case`
--

INSERT INTO `app_case` (`id`, `brand`, `series`, `model`, `img`, `led`, `motherboard_form_factor`, `size`, `fans`, `color`, `power_unit_location`, `hdd_slots`, `ssd_slots`, `additional`, `price`) VALUES
(1, 'Winard', '', '3075 RGB', 'app/static/images/cases/8a21a7d7890da0b8f3932ee50f1d7a4d8c060db05402125fda92e2c0f1320d93.jpg', 'RGB', 'Micro-ATX/Standard-ATX', 'Mid-Tower', '2x200mm', 'Black', 'bottom', 3, 3, '', 3000),
(2, 'Thermaltake', 'DistroCase', '350P', 'app/static/images/cases/6501ceff91a7ed63e849b52c24a9f6c5896da1da14e5acfca30b129cdc33ef5c.jpg', 'RGB', 'Micro-ATX/Mini-ITX/Standard-ATX', 'Mid-Tower', 'No', 'Black', 'bottom', 5, 3, '', 10000),
(3, 'Cougar', 'Duoface RGB', '385ZD10.0011', 'app/static/images/cases/2e3374991224c0e1c8954406b37ea26d03ba39de16f3d7cfab055da2f233ca41.png', 'RGB', 'E-ATX/Micro-ATX/Mini-ITX/SSI-CEB/Standard-ATX', 'Mid-Tower', '1x 120 мм, 2x 140 мм', 'Black', 'bottom', 2, 2, '', 5399),
(4, 'Fractal Design', 'Torrent Nano RGB White TG', 'FD-C-TOR1N-05', 'app/static/images/cases/199d393825b83e413f765f0e829b49aa2f98f7769dd7ee9f74bf9dc0eb4d432a.jpg', 'ARGB', 'Mini-DTX/Mini-ITX', 'Mini-Tower', '1x 180 мм', 'White', 'top', 1, 3, '', 27499);

-- --------------------------------------------------------

--
-- Структура таблицы `app_graphicscard`
--

CREATE TABLE `app_graphicscard` (
  `id` bigint(20) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `img` varchar(100) NOT NULL,
  `videoprocessor_model` varchar(255) NOT NULL,
  `frequency` int(10) UNSIGNED NOT NULL CHECK (`frequency` >= 0),
  `memory_type` varchar(255) NOT NULL,
  `memory_size_mb` int(10) UNSIGNED NOT NULL CHECK (`memory_size_mb` >= 0),
  `cudas_amount` int(10) UNSIGNED NOT NULL CHECK (`cudas_amount` >= 0),
  `memory_frequency` int(10) UNSIGNED NOT NULL CHECK (`memory_frequency` >= 0),
  `memory_bus` smallint(5) UNSIGNED NOT NULL CHECK (`memory_bus` >= 0),
  `pci_version` varchar(255) NOT NULL,
  `power_connector_pins` varchar(255) NOT NULL,
  `tdp` smallint(5) UNSIGNED NOT NULL CHECK (`tdp` >= 0),
  `ports` varchar(255) NOT NULL,
  `additional` longtext NOT NULL,
  `price` int(10) UNSIGNED NOT NULL CHECK (`price` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `app_graphicscard`
--

INSERT INTO `app_graphicscard` (`id`, `brand`, `series`, `model`, `img`, `videoprocessor_model`, `frequency`, `memory_type`, `memory_size_mb`, `cudas_amount`, `memory_frequency`, `memory_bus`, `pci_version`, `power_connector_pins`, `tdp`, `ports`, `additional`, `price`) VALUES
(1, 'Palit', 'Silent LP', 'NEAT7300HD46-2080H', 'app/static/images/graphicscards/84733d19279e69720f0abfd2eeefef54810cfdd910f9fddc8fcafe08ca2cfd75.jpg', 'GeForce GT 730', 902, 'GDDR3', 2048, 384, 1600, 64, 'PCI-E2.0x8', 'No', 100, 'DVI-D/HDMI/VGA', '', 600),
(2, 'KFA2', 'SG 1-Click OC', '49NXM5MD6DSK', 'app/static/images/graphicscards/2acbeba2542830b89ca01aaeab864cc6e6c4ec99a6461d53344cdc6a7dffb6c0.jpg', 'GeForce RTX 4090', 2235, 'GDDR6X', 24576, 16384, 21000, 384, 'PCI-E4.0x16', '16-pin', 200, '3x DisplayPort/1x HDMI', '', 180000);

-- --------------------------------------------------------

--
-- Структура таблицы `app_hdd`
--

CREATE TABLE `app_hdd` (
  `id` bigint(20) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `img` varchar(100) NOT NULL,
  `size_is_25` tinyint(1) NOT NULL,
  `interface` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `rpm` smallint(5) UNSIGNED NOT NULL CHECK (`rpm` >= 0),
  `cache` smallint(5) UNSIGNED NOT NULL CHECK (`cache` >= 0),
  `price` int(10) UNSIGNED NOT NULL CHECK (`price` >= 0),
  `additional` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `app_hdd`
--

INSERT INTO `app_hdd` (`id`, `brand`, `series`, `model`, `img`, `size_is_25`, `interface`, `capacity`, `rpm`, `cache`, `price`, `additional`) VALUES
(1, 'Seagate', 'BarraCuda', 'ST1000DM010', 'app/static/images/hdds/2324875977201507e3ff6d1ea7ef69c5688b9ff2ef93f975c88c86fd03334929.jpg', 0, 'SATA III, 6 Гбит/с', '1TB', 7200, 64, 4000, ''),
(2, 'WD', 'Blue', 'WD10EZEX', 'app/static/images/hdds/552bcbcd920a2aeeb7cbd50355e4a86101749d666c28700415b97eb8bb8ffdab.jpg', 0, 'SATA III, 6 Гбит/с', '1TB', 7200, 64, 5000, '');

-- --------------------------------------------------------

--
-- Структура таблицы `app_motherboard`
--

CREATE TABLE `app_motherboard` (
  `id` bigint(20) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `img` varchar(100) NOT NULL,
  `chipset` varchar(255) NOT NULL,
  `socket` varchar(255) NOT NULL,
  `form_factor` varchar(255) NOT NULL,
  `ram_slots` int(10) UNSIGNED NOT NULL CHECK (`ram_slots` >= 0),
  `pci_types` varchar(255) NOT NULL,
  `sata_slots` smallint(5) UNSIGNED NOT NULL CHECK (`sata_slots` >= 0),
  `m2_slots` smallint(5) UNSIGNED NOT NULL CHECK (`m2_slots` >= 0),
  `additional` longtext NOT NULL,
  `price` int(10) UNSIGNED NOT NULL CHECK (`price` >= 0),
  `ram_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `app_motherboard`
--

INSERT INTO `app_motherboard` (`id`, `brand`, `series`, `model`, `img`, `chipset`, `socket`, `form_factor`, `ram_slots`, `pci_types`, `sata_slots`, `m2_slots`, `additional`, `price`, `ram_type`) VALUES
(3, 'MSI', 'MPG', 'B550 GAMING PLUS', 'app/static/images/motherboards/489e1dfb774c68ca8c80a1cd66477739765abc0c00722185d2c1178489ffdec3.png', 'AMD B550', 'AM4', 'Standard-ATX', 4, '2x PCI-E4.0x16/2x PCI-Ex1', 6, 1, '', 11999, 'DDR4-3200'),
(4, 'MSI', 'MPG', 'Z690 EDGE WIFI', 'app/static/images/motherboards/832b575554ffe4661f97c6506e230324b6ccc682d2f200254f59d0c82a0f99b3.jpg', 'Intel Z690', 'LGA 1700', 'Standard-ATX', 4, '3x PCI-E5.0x16/1x PCI-Ex1', 6, 4, '', 26489, 'DDR5'),
(5, 'GIGABYTE', '', 'H410M H V2', 'app/static/images/motherboards/8176c24335bb5dfaf247023a7419a7255d5b1382b2f6021401a95d6fa0fff861.jpg', 'Intel H470', 'LGA 1200', 'Micro-ATX', 2, '1x PCI-E3.0x16, 2xPCI-Ex1', 4, 1, '', 4999, 'DDR4-2933'),
(6, 'AFOX', '', 'A780S-MA3', 'app/static/images/motherboards/2f2c47a11f33db812defea0ae290c0a1fa78216b81fc9445796bb0648679603a.jpg', 'AMD 780G', 'AM3+', 'Micro-ATX', 2, '1x PCI-E3.0x16/1x PCI-Ex1', 4, 0, '', 4999, 'DDR3-1600'),
(7, 'GIGABYTE', 'AORUS ELITE', 'AX B650', 'app/static/images/motherboards/b65973384772791a4c9178495f613d44fe9123b466a1d890df87630c67eee2be.png', 'AMD B650', 'AM5', 'Standard-ATX', 4, '3x PCI-E4.0x16', 4, 3, '', 23499, 'DDR5-5200');

-- --------------------------------------------------------

--
-- Структура таблицы `app_powerunit`
--

CREATE TABLE `app_powerunit` (
  `id` bigint(20) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `img` varchar(100) NOT NULL,
  `power` smallint(5) UNSIGNED NOT NULL CHECK (`power` >= 0),
  `connectors` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `additional` longtext NOT NULL,
  `price` int(10) UNSIGNED NOT NULL CHECK (`price` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `app_powerunit`
--

INSERT INTO `app_powerunit` (`id`, `brand`, `series`, `model`, `img`, `power`, `connectors`, `color`, `additional`, `price`) VALUES
(1, 'GiNZZU', 'SA400', '17483', 'app/static/images/powerunits/8e41f80ec17a247e391d2e9f94df6237bde9e14548411c7785accde71503dd3b.jpg', 400, '20+4 pin/CPU 4-pin/2x 15-pin SATA/2x 4-pin Molex', 'black', '', 1000),
(2, 'Cougar', 'VTE600', 'CGR BS-600', 'app/static/images/powerunits/b4c7baae8fcc388ec39bcf249b95991ea3a473e6d7e27a05f39a4d5c438caaaa.jpg', 600, '1x 20+4pin, CPU 4+4pin,  PCI-E  2x 6+2pin, 6x SATA,2x Molex', 'Black', '', 4599);

-- --------------------------------------------------------

--
-- Структура таблицы `app_processor`
--

CREATE TABLE `app_processor` (
  `id` bigint(20) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `img` varchar(100) NOT NULL,
  `cores` int(10) UNSIGNED NOT NULL CHECK (`cores` >= 0),
  `socket` varchar(255) NOT NULL,
  `techprocess` int(10) UNSIGNED NOT NULL CHECK (`techprocess` >= 0),
  `frequency` double NOT NULL,
  `max_frequency` double NOT NULL,
  `tdp` smallint(5) UNSIGNED NOT NULL CHECK (`tdp` >= 0),
  `additional` longtext NOT NULL,
  `price` int(10) UNSIGNED NOT NULL CHECK (`price` >= 0),
  `l2_cache` double NOT NULL,
  `l3_cache` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `app_processor`
--

INSERT INTO `app_processor` (`id`, `brand`, `series`, `model`, `img`, `cores`, `socket`, `techprocess`, `frequency`, `max_frequency`, `tdp`, `additional`, `price`, `l2_cache`, `l3_cache`) VALUES
(6, 'Intel', 'Core i5', '12400F OEM', 'app/static/images/processors/200e4a08e74afcc3cf1d54d47b758cbbf14c71973a64009553347d2b234b5af4.jpg', 6, 'LGA 1700', 7, 2.5, 4.4, 117, '', 15500, 7.5, 18),
(7, 'AMD', 'Ryzen 5', '5600X OEM', 'app/static/images/processors/a60d568636c393c611792fb99f68dd97fb6fe3de90e8bd6f085c7c321e9e32b0.jpg', 6, 'AM4', 7, 3.7, 4.6, 65, '', 14500, 3, 32),
(8, 'Intel', 'Pentium Gold', 'G6500 OEM', 'app/static/images/processors/ffbcd95d58d731eaee3bf46ef5d292fe35b2fe922b13d2a1018bcbb1ab52bf83.jpg', 2, 'LGA 1200', 14, 4.1, 4.1, 58, '', 2500, 0.5, 4),
(9, 'AMD', 'FX', '4300 OEM', 'app/static/images/processors/2d175904f70a5b61f796370c7511d66e4c616264c143fb03b6331f882359cc8a.jpg', 4, 'AM3+', 32, 3.8, 4, 95, '', 2500, 4, 4),
(10, 'AMD', 'Ryzen 5', '7600X OEM', 'app/static/images/processors/78bcf2918fdf2d1d3e02dde1e9007e03ed747f82bd81c8a595845edcdbf2582d.jpg', 6, 'AM5', 5, 4.7, 5.3, 105, '', 22000, 6, 32);

-- --------------------------------------------------------

--
-- Структура таблицы `app_processorcooler`
--

CREATE TABLE `app_processorcooler` (
  `id` bigint(20) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `img` varchar(100) NOT NULL,
  `radiator_material` varchar(255) NOT NULL,
  `rotation_speed` smallint(5) UNSIGNED NOT NULL CHECK (`rotation_speed` >= 0),
  `noice_level` smallint(5) UNSIGNED NOT NULL CHECK (`noice_level` >= 0),
  `socket` varchar(255) NOT NULL,
  `diameter` smallint(5) UNSIGNED NOT NULL CHECK (`diameter` >= 0),
  `additional` longtext NOT NULL,
  `price` int(10) UNSIGNED NOT NULL CHECK (`price` >= 0),
  `tdp` smallint(5) UNSIGNED NOT NULL CHECK (`tdp` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `app_processorcooler`
--

INSERT INTO `app_processorcooler` (`id`, `brand`, `series`, `model`, `img`, `radiator_material`, `rotation_speed`, `noice_level`, `socket`, `diameter`, `additional`, `price`, `tdp`) VALUES
(1, 'DEEPCOOL', 'AK620', 'R-AK620-BKNNMT-G', 'app/static/images/powerunits/2af03faaa5eb582ef09ba817fb746b8d13470af715e70b86c331ffd1772927b8.jpg', 'медь', 1850, 28, 'LGA 1700', 120, '', 1000, 260),
(2, 'DEEPCOOL', 'Gamma Archer', 'DP-MCAL-GA', 'app/static/images/processorcoolers/52ec335361582c7c0d3defeb5d239150c85eec1bfed5ce6e57e15_1fsXobi.jpg', 'алюминий', 1600, 26, 'AM2/AM2+/AM3/AM3+/AM4/FM1/FM2/LGA 775/LGA 1150/LGA 1151/LGA 1151-v2/LGA 1155/LGA 1156/LGA 1200', 120, '', 750, 95),
(3, 'be quiet!', 'DARK ROCK PRO 4', 'BK022', 'app/static/images/processorcoolers/c39292f659c144c32a0ee2fea29b4c54a46c81fb0681c31049174_sjhBtMr.jpg', 'медь/аллюминий', 1500, 24, 'AM2/AM2+/AM3/AM3+/AM4/AM5/FM1/FM2/FM2+/LGA 1150/LGA 1151/LGA 1151-v2/LGA 1155/LGA 1156/LGA 1200/LGA 1366/LGA 1700/LGA 2011/LGA 2011-3/LGA 2066', 135, '', 10990, 250);

-- --------------------------------------------------------

--
-- Структура таблицы `app_ram`
--

CREATE TABLE `app_ram` (
  `id` bigint(20) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `img` varchar(100) NOT NULL,
  `size_type` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `ram_type` varchar(255) NOT NULL,
  `frequency` int(10) UNSIGNED NOT NULL CHECK (`frequency` >= 0),
  `timings` varchar(255) NOT NULL,
  `voltage` double NOT NULL,
  `color` varchar(255) NOT NULL,
  `cas` smallint(5) UNSIGNED NOT NULL CHECK (`cas` >= 0),
  `xmp` varchar(255) NOT NULL,
  `price` int(10) UNSIGNED NOT NULL CHECK (`price` >= 0),
  `additional` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `app_ram`
--

INSERT INTO `app_ram` (`id`, `brand`, `series`, `model`, `img`, `size_type`, `capacity`, `ram_type`, `frequency`, `timings`, `voltage`, `color`, `cas`, `xmp`, `price`, `additional`) VALUES
(1, 'AMD Radeon', 'R5 Entertainment Series', 'R532G1601U1S-U', 'app/static/images/rams/f93eea46dc5ca5c58810f355311eefafd5215ce9656e31933e0616b4d65bf651.jpg', 'DIMM', '2GB', 'DDR4', 1600, '11-11-28', 1.5, 'Black', 11, 'No', 1500, ''),
(2, 'AMD', 'Radeon R5 Entertainment Series', 'R5S316G1601U2K', 'app/static/images/rams/84564149dd748a8992e97e3e259dc02e8c30ac66d885b602c18cde265c04ce6e.jpg', 'DIMM', '8gb', 'DDR3', 1600, '11-11-28', 1.5, 'BLACK/RED', 11, 'No', 3399, ''),
(3, 'Kingston', 'FURY Beast Black', 'KF552C40BB-8', 'app/static/images/rams/b4e4f93acf8f8a5c13676059276171b882c5afa4b2e60c83c4fdd853896b63ae.jpg', 'DIMM', '8GB', 'DDR5', 5200, '39-39-76', 1.1, 'Black', 40, 'Yes', 2950, '');

-- --------------------------------------------------------

--
-- Структура таблицы `app_ssd`
--

CREATE TABLE `app_ssd` (
  `id` bigint(20) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `img` varchar(100) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `form_factor` varchar(255) NOT NULL,
  `interface` varchar(255) NOT NULL,
  `protocol` varchar(255) NOT NULL,
  `read_speed` int(10) UNSIGNED NOT NULL CHECK (`read_speed` >= 0),
  `write_speed` int(10) UNSIGNED NOT NULL CHECK (`write_speed` >= 0),
  `price` int(10) UNSIGNED NOT NULL CHECK (`price` >= 0),
  `additional` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `app_ssd`
--

INSERT INTO `app_ssd` (`id`, `brand`, `series`, `model`, `img`, `capacity`, `form_factor`, `interface`, `protocol`, `read_speed`, `write_speed`, `price`, `additional`) VALUES
(1, 'ExeGate', 'Next', 'A400TS60', 'app/static/images/ssds/b20e8664dd84037c056cadd167b8c515e3f38a8f9dfb273037bcba73afde4301.jpg', '60GB', '2,5', 'SATA', '', 432, 337, 800, ''),
(2, 'Samsung', '980', 'MZ-V8V1T0BW', 'app/static/images/ssds/8525ecb1e107b2579ebc0edb7bf2163b56c43791ffb9e3b04bb1b0e483732b0f.jpg', '1TB', '2280', 'm2', 'NVME', 3500, 3000, 4000, '');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add mother board', 7, 'add_motherboard'),
(26, 'Can change mother board', 7, 'change_motherboard'),
(27, 'Can delete mother board', 7, 'delete_motherboard'),
(28, 'Can view mother board', 7, 'view_motherboard'),
(29, 'Can add processor', 8, 'add_processor'),
(30, 'Can change processor', 8, 'change_processor'),
(31, 'Can delete processor', 8, 'delete_processor'),
(32, 'Can view processor', 8, 'view_processor'),
(33, 'Can add graphics card', 9, 'add_graphicscard'),
(34, 'Can change graphics card', 9, 'change_graphicscard'),
(35, 'Can delete graphics card', 9, 'delete_graphicscard'),
(36, 'Can view graphics card', 9, 'view_graphicscard'),
(37, 'Can add hdd', 10, 'add_hdd'),
(38, 'Can change hdd', 10, 'change_hdd'),
(39, 'Can delete hdd', 10, 'delete_hdd'),
(40, 'Can view hdd', 10, 'view_hdd'),
(41, 'Can add ssd', 11, 'add_ssd'),
(42, 'Can change ssd', 11, 'change_ssd'),
(43, 'Can delete ssd', 11, 'delete_ssd'),
(44, 'Can view ssd', 11, 'view_ssd'),
(45, 'Can add ram', 12, 'add_ram'),
(46, 'Can change ram', 12, 'change_ram'),
(47, 'Can delete ram', 12, 'delete_ram'),
(48, 'Can view ram', 12, 'view_ram'),
(49, 'Can add case', 13, 'add_case'),
(50, 'Can change case', 13, 'change_case'),
(51, 'Can delete case', 13, 'delete_case'),
(52, 'Can view case', 13, 'view_case'),
(53, 'Can add power unit', 14, 'add_powerunit'),
(54, 'Can change power unit', 14, 'change_powerunit'),
(55, 'Can delete power unit', 14, 'delete_powerunit'),
(56, 'Can view power unit', 14, 'view_powerunit'),
(57, 'Can add processor cooler', 15, 'add_processorcooler'),
(58, 'Can change processor cooler', 15, 'change_processorcooler'),
(59, 'Can delete processor cooler', 15, 'delete_processorcooler'),
(60, 'Can view processor cooler', 15, 'view_processorcooler');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$CZvMY8LIkiank339b7bguX$VSUjTrwhRBuo66EPJ+Y/W8KNhidAScIAuG7M6CKKSy0=', '2023-04-15 13:56:09.854664', 1, 'admin', '', '', 'admin@admin.com', 1, 1, '2023-04-12 08:54:05.434270');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-04-12 08:58:26.599916', '1', 'Intel Core i7 7700k', 1, '[{\"added\": {}}]', 8, 1),
(2, '2023-04-12 08:59:16.582155', '2', 'Intel Core i5 10400f', 1, '[{\"added\": {}}]', 8, 1),
(3, '2023-04-12 09:01:05.820928', '3', 'Amd Ryzen 5 5600h', 1, '[{\"added\": {}}]', 8, 1),
(4, '2023-04-12 09:01:54.531990', '4', 'Intel Core i5 8100', 1, '[{\"added\": {}}]', 8, 1),
(5, '2023-04-12 09:06:33.919800', '5', 'Intel Core i5 8100k', 1, '[{\"added\": {}}]', 8, 1),
(6, '2023-04-12 21:50:45.670392', '1', 'Winard  3075 RGB', 1, '[{\"added\": {}}]', 13, 1),
(7, '2023-04-12 21:53:26.280990', '2', 'Thermaltake DistroCase 350P', 1, '[{\"added\": {}}]', 13, 1),
(8, '2023-04-12 22:04:27.082810', '1', 'MSI MPG B550 GAMING PLUS', 1, '[{\"added\": {}}]', 7, 1),
(9, '2023-04-12 22:06:29.033844', '2', 'GIGABYTE  Z690 GAMING X', 1, '[{\"added\": {}}]', 7, 1),
(10, '2023-04-12 22:19:19.184935', '1', 'Winard  3075 RGB', 2, '[{\"changed\": {\"fields\": [\"Size\"]}}]', 13, 1),
(11, '2023-04-12 22:23:22.310114', '1', 'Seagate BarraCuda ST1000DM010', 1, '[{\"added\": {}}]', 10, 1),
(12, '2023-04-12 22:24:41.617885', '2', 'WD Blue WD10EZEX', 1, '[{\"added\": {}}]', 10, 1),
(13, '2023-04-12 22:31:50.075977', '1', 'Palit Silent LP NEAT7300HD46-2080H', 1, '[{\"added\": {}}]', 9, 1),
(14, '2023-04-12 22:35:25.245554', '2', 'KFA2 SG 1-Click OC 49NXM5MD6DSK', 1, '[{\"added\": {}}]', 9, 1),
(15, '2023-04-12 22:38:26.881388', '1', 'GiNZZU 17483', 1, '[{\"added\": {}}]', 14, 1),
(16, '2023-04-12 22:45:16.941392', '1', 'AMD Radeon R5 Entertainment Series R532G1601U1S-U]', 1, '[{\"added\": {}}]', 12, 1),
(17, '2023-04-12 23:02:56.396282', '1', 'AMD Radeon R5 Entertainment Series R532G1601U1S-U', 2, '[{\"changed\": {\"fields\": [\"Model\"]}}]', 12, 1),
(18, '2023-04-15 13:57:25.524522', '2', 'GIGABYTE  Z690 GAMING X', 2, '[{\"changed\": {\"fields\": [\"Socket\", \"Pci types\"]}}]', 7, 1),
(19, '2023-04-15 13:57:36.358771', '1', 'MSI MPG B550 GAMING PLUS', 2, '[{\"changed\": {\"fields\": [\"Pci types\"]}}]', 7, 1),
(20, '2023-04-15 14:27:17.688041', '2', 'Thermaltake DistroCase 350P', 2, '[{\"changed\": {\"fields\": [\"Motherboard size\"]}}]', 13, 1),
(21, '2023-04-15 14:27:33.041713', '2', 'Thermaltake DistroCase 350P', 2, '[{\"changed\": {\"fields\": [\"Motherboard size\"]}}]', 13, 1),
(22, '2023-04-15 14:28:05.586470', '1', 'Winard  3075 RGB', 2, '[{\"changed\": {\"fields\": [\"Motherboard size\"]}}]', 13, 1),
(23, '2023-04-16 12:13:53.840278', '1', 'ExeGate Next A400TS60', 1, '[{\"added\": {}}]', 11, 1),
(24, '2023-04-16 12:17:11.500083', '2', 'Samsung 980 MZ-V8V1T0BW', 1, '[{\"added\": {}}]', 11, 1),
(25, '2023-04-16 12:26:43.392101', '2', 'GIGABYTE  Z690 GAMING X', 2, '[{\"changed\": {\"fields\": [\"Form factor\"]}}]', 7, 1),
(26, '2023-04-16 12:35:26.079723', '2', 'GIGABYTE  Z690 GAMING X', 2, '[{\"changed\": {\"fields\": [\"Form factor\"]}}]', 7, 1),
(27, '2023-04-16 12:35:43.639934', '1', 'Winard  3075 RGB', 2, '[{\"changed\": {\"fields\": [\"Motherboard form factor\"]}}]', 13, 1),
(28, '2023-04-16 12:36:06.597449', '2', 'Thermaltake DistroCase 350P', 2, '[{\"changed\": {\"fields\": [\"Motherboard form factor\"]}}]', 13, 1),
(29, '2023-04-16 12:48:25.383069', '1', 'ExeGate Next A400TS60', 2, '[{\"changed\": {\"fields\": [\"Form factor\"]}}]', 11, 1),
(30, '2023-04-16 13:10:35.578757', '1', 'DEEPCOOL AK620 R-AK620-BKNNMT-G', 1, '[{\"added\": {}}]', 15, 1),
(31, '2023-04-16 13:17:45.200120', '1', 'DEEPCOOL AK620 R-AK620-BKNNMT-G', 2, '[{\"changed\": {\"fields\": [\"Tdp\"]}}]', 15, 1),
(32, '2023-04-16 13:22:17.273023', '1', 'DEEPCOOL AK620 R-AK620-BKNNMT-G', 2, '[{\"changed\": {\"fields\": [\"Tdp\"]}}]', 15, 1),
(33, '2023-04-16 13:41:15.046433', '1', 'DEEPCOOL AK620 R-AK620-BKNNMT-G', 2, '[{\"changed\": {\"fields\": [\"Tdp\"]}}]', 15, 1),
(34, '2023-04-16 13:54:22.270771', '1', 'ExeGate Next A400TS60', 2, '[{\"changed\": {\"fields\": [\"Capacity\"]}}]', 11, 1),
(35, '2023-04-16 16:32:29.940440', '1', 'GiNZZU SA400 17483', 2, '[{\"changed\": {\"fields\": [\"Connectors\"]}}]', 14, 1),
(36, '2023-04-16 16:34:27.023129', '2', 'KFA2 GeForce RTX 4090 SG 1-Click OC 49NXM5MD6DSK', 2, '[{\"changed\": {\"fields\": [\"Ports\"]}}]', 9, 1),
(37, '2023-04-16 16:34:48.728268', '1', 'Palit GeForce GT 730 Silent LP NEAT7300HD46-2080H', 2, '[{\"changed\": {\"fields\": [\"Ports\"]}}]', 9, 1),
(38, '2023-04-16 16:38:59.830768', '1', 'Intel Core i7 7700k', 2, '[{\"changed\": {\"fields\": [\"Frequency\"]}}]', 8, 1),
(39, '2023-04-16 16:39:06.721143', '3', 'Amd Ryzen 5 5600h', 2, '[{\"changed\": {\"fields\": [\"Frequency\"]}}]', 8, 1),
(40, '2023-04-16 16:39:13.232068', '2', 'Intel Core i5 10400f', 2, '[{\"changed\": {\"fields\": [\"Frequency\"]}}]', 8, 1),
(41, '2023-04-16 16:39:17.840418', '1', 'Intel Core i7 7700k', 2, '[]', 8, 1),
(42, '2023-04-16 17:14:17.124165', '2', 'GIGABYTE  Z690 GAMING X', 3, '', 7, 1),
(43, '2023-04-16 17:14:17.126048', '1', 'MSI MPG B550 GAMING PLUS', 3, '', 7, 1),
(44, '2023-04-16 17:33:36.139692', '6', 'Intel Core i5 12400F OEM', 1, '[{\"added\": {}}]', 8, 1),
(45, '2023-04-16 17:36:12.847210', '7', 'AMD Ryzen 5 5600X OEM', 1, '[{\"added\": {}}]', 8, 1),
(46, '2023-04-16 17:43:29.347060', '8', 'Intel Pentium Gold G6500 OEM', 1, '[{\"added\": {}}]', 8, 1),
(47, '2023-04-16 17:46:40.475697', '9', 'AMD FX 4300 OEM', 1, '[{\"added\": {}}]', 8, 1),
(48, '2023-04-16 17:49:06.365522', '10', 'AMD Ryzen 5 7600X OEM', 1, '[{\"added\": {}}]', 8, 1),
(49, '2023-04-16 17:54:17.398173', '3', 'Cougar Duoface RGB 385ZD10.0011', 1, '[{\"added\": {}}]', 13, 1),
(50, '2023-04-16 17:57:57.099445', '4', 'Fractal Design Torrent Nano RGB White TG FD-C-TOR1N-05', 1, '[{\"added\": {}}]', 13, 1),
(51, '2023-04-16 18:47:43.089349', '3', 'MSI MPG B550 GAMING PLUS', 1, '[{\"added\": {}}]', 7, 1),
(52, '2023-04-16 18:50:23.502663', '4', 'MSI MPG Z690 EDGE WIFI', 1, '[{\"added\": {}}]', 7, 1),
(53, '2023-04-16 18:52:54.538780', '5', 'GIGABYTE  H410M H V2', 1, '[{\"added\": {}}]', 7, 1),
(54, '2023-04-16 18:55:16.704860', '6', 'AFOX  A780S-MA3', 1, '[{\"added\": {}}]', 7, 1),
(55, '2023-04-16 18:59:07.558033', '7', 'GIGABYTE AORUS ELITE AX B650', 1, '[{\"added\": {}}]', 7, 1),
(56, '2023-04-16 19:03:20.954405', '2', 'AMD Radeon R5 Entertainment Series R5S316G1601U2K', 1, '[{\"added\": {}}]', 12, 1),
(57, '2023-04-16 19:07:36.130696', '3', 'Kingston FURY Beast Black KF552C40BB-8', 1, '[{\"added\": {}}]', 12, 1),
(58, '2023-04-16 19:40:08.329054', '2', 'DEEPCOOL Gamma Archer DP-MCAL-GA', 1, '[{\"added\": {}}]', 15, 1),
(59, '2023-04-16 19:52:31.410643', '3', 'be quiet! DARK ROCK PRO 4 BK022', 1, '[{\"added\": {}}]', 15, 1),
(60, '2023-04-16 20:19:26.116502', '2', 'Cougar VTE600 CGR BS-600', 1, '[{\"added\": {}}]', 14, 1),
(61, '2023-04-16 21:00:05.471321', '8', 'Intel Pentium Gold G6500 OEM', 2, '[{\"changed\": {\"fields\": [\"Socket\"]}}]', 8, 1),
(62, '2023-04-16 21:00:12.090867', '6', 'Intel Core i5 12400F OEM', 2, '[{\"changed\": {\"fields\": [\"Socket\"]}}]', 8, 1),
(63, '2023-04-16 21:05:55.821843', '3', 'be quiet! DARK ROCK PRO 4 BK022', 2, '[{\"changed\": {\"fields\": [\"Socket\"]}}]', 15, 1),
(64, '2023-04-16 21:06:33.927712', '2', 'DEEPCOOL Gamma Archer DP-MCAL-GA', 2, '[{\"changed\": {\"fields\": [\"Socket\"]}}]', 15, 1),
(65, '2023-04-16 21:06:41.743335', '1', 'DEEPCOOL AK620 R-AK620-BKNNMT-G', 2, '[{\"changed\": {\"fields\": [\"Socket\"]}}]', 15, 1),
(66, '2023-04-16 21:07:55.051205', '5', 'GIGABYTE  H410M H V2', 2, '[{\"changed\": {\"fields\": [\"Socket\"]}}]', 7, 1),
(67, '2023-04-16 21:07:59.917320', '4', 'MSI MPG Z690 EDGE WIFI', 2, '[{\"changed\": {\"fields\": [\"Socket\"]}}]', 7, 1),
(68, '2023-04-16 21:08:04.801416', '3', 'MSI MPG B550 GAMING PLUS', 2, '[]', 7, 1),
(69, '2023-04-16 21:36:39.270979', '7', 'GIGABYTE AORUS ELITE AX B650', 2, '[{\"changed\": {\"fields\": [\"Form factor\"]}}]', 7, 1),
(70, '2023-04-16 21:37:38.315735', '4', 'MSI MPG Z690 EDGE WIFI', 2, '[]', 7, 1),
(71, '2023-04-16 21:37:43.354725', '3', 'MSI MPG B550 GAMING PLUS', 2, '[{\"changed\": {\"fields\": [\"Form factor\"]}}]', 7, 1),
(72, '2023-04-16 21:37:46.817736', '3', 'MSI MPG B550 GAMING PLUS', 2, '[]', 7, 1),
(73, '2023-04-16 21:37:49.674352', '4', 'MSI MPG Z690 EDGE WIFI', 2, '[]', 7, 1),
(74, '2023-04-16 21:37:54.972853', '5', 'GIGABYTE  H410M H V2', 2, '[]', 7, 1),
(75, '2023-04-16 21:37:58.955604', '6', 'AFOX  A780S-MA3', 2, '[]', 7, 1),
(76, '2023-04-16 21:38:01.802055', '5', 'GIGABYTE  H410M H V2', 2, '[]', 7, 1),
(77, '2023-04-16 21:38:04.358136', '6', 'AFOX  A780S-MA3', 2, '[]', 7, 1),
(78, '2023-04-16 21:38:10.476580', '7', 'GIGABYTE AORUS ELITE AX B650', 2, '[{\"changed\": {\"fields\": [\"Form factor\"]}}]', 7, 1),
(79, '2023-04-16 21:38:31.904307', '2', 'Thermaltake DistroCase 350P', 2, '[{\"changed\": {\"fields\": [\"Motherboard form factor\"]}}]', 13, 1),
(80, '2023-04-16 21:38:38.551990', '1', 'Winard  3075 RGB', 2, '[{\"changed\": {\"fields\": [\"Motherboard form factor\"]}}]', 13, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(13, 'app', 'case'),
(9, 'app', 'graphicscard'),
(10, 'app', 'hdd'),
(7, 'app', 'motherboard'),
(14, 'app', 'powerunit'),
(8, 'app', 'processor'),
(15, 'app', 'processorcooler'),
(12, 'app', 'ram'),
(11, 'app', 'ssd'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Структура таблицы `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-04-12 08:30:43.400272'),
(2, 'auth', '0001_initial', '2023-04-12 08:30:48.212683'),
(3, 'admin', '0001_initial', '2023-04-12 08:30:49.354405'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-04-12 08:30:49.392733'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-04-12 08:30:49.420326'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-04-12 08:30:49.774224'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-04-12 08:30:50.406723'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-04-12 08:30:50.565718'),
(9, 'auth', '0004_alter_user_username_opts', '2023-04-12 08:30:50.592702'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-04-12 08:30:50.870085'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-04-12 08:30:50.894091'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-04-12 08:30:50.916555'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-04-12 08:30:51.010229'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-04-12 08:30:51.078096'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-04-12 08:30:51.142245'),
(16, 'auth', '0011_update_proxy_permissions', '2023-04-12 08:30:51.177931'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-04-12 08:30:51.265402'),
(18, 'sessions', '0001_initial', '2023-04-12 08:30:51.492972'),
(19, 'app', '0001_initial', '2023-04-12 08:33:23.163806'),
(20, 'app', '0002_remove_processor_ram_type', '2023-04-12 08:57:33.096658'),
(21, 'app', '0003_rename_size_motherboard_form_factor', '2023-04-12 09:16:39.776553'),
(22, 'app', '0004_alter_graphicscard_img', '2023-04-12 10:25:21.632130'),
(23, 'app', '0005_hdd_additional_ram_additional_ssd_additional', '2023-04-12 17:33:38.789459'),
(24, 'app', '0006_motherboard_ram_type_alter_ram_size_type', '2023-04-12 20:58:37.235363'),
(25, 'app', '0007_remove_graphicscard_video_freqency_and_more', '2023-04-12 22:29:35.631520'),
(26, 'app', '0008_alter_ram_voltage', '2023-04-12 22:44:56.716296'),
(27, 'app', '0009_rename_memory_type_ram_ram_type', '2023-04-15 13:22:19.920299'),
(28, 'app', '0010_alter_ssd_protocol', '2023-04-16 12:13:07.132350'),
(29, 'app', '0011_rename_motherboard_size_case_motherboard_form_factor', '2023-04-16 12:24:15.987276'),
(30, 'app', '0012_processorcooler', '2023-04-16 13:05:06.447770'),
(31, 'app', '0013_processorcooler_tdp', '2023-04-16 13:17:36.027713'),
(32, 'app', '0014_remove_graphicscard_size_and_more', '2023-04-16 16:30:59.637917'),
(33, 'app', '0015_processor_l2_cache_processor_l3_cache_and_more', '2023-04-16 17:10:41.675227'),
(34, 'app', '0016_alter_processor_max_frequency_and_more', '2023-04-16 17:33:27.016021');

-- --------------------------------------------------------

--
-- Структура таблицы `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('m09y68dmkur769cspd5p74adjaspql36', '.eJxVjDsOwjAQBe_iGlms18ZeSvqcwVr_cAA5UpxUiLuTSCmgnZn33sLzulS_9jz7MYmrAHH6ZYHjM7ddpAe3-yTj1JZ5DHJP5GG7HKaUX7ej_Tuo3Ou2VsWCsqSiMxeMAOy0U1C0MxuzxmUTSBMgE2o8O41AoXC0lLDYrEl8vqLdNnU:1pmjpr:GWbucHZMxliJ7ykTsB9g6rB51YAMGSbwhGRqnbH8Ih0', '2023-04-26 23:25:07.911881'),
('ygf789vrtm57uj8sr6yg6vrv5az34exx', '.eJxVjDsOwjAQBe_iGlms18ZeSvqcwVr_cAA5UpxUiLuTSCmgnZn33sLzulS_9jz7MYmrAHH6ZYHjM7ddpAe3-yTj1JZ5DHJP5GG7HKaUX7ej_Tuo3Ou2VsWCsqSiMxeMAOy0U1C0MxuzxmUTSBMgE2o8O41AoXC0lLDYrEl8vqLdNnU:1pngNt:HgrOth8OZkbG5JUnWQma67bMzjTEFviI_2qpMUiGP60', '2023-04-29 13:56:09.885667');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `app_case`
--
ALTER TABLE `app_case`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `app_graphicscard`
--
ALTER TABLE `app_graphicscard`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `app_hdd`
--
ALTER TABLE `app_hdd`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `app_motherboard`
--
ALTER TABLE `app_motherboard`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `app_powerunit`
--
ALTER TABLE `app_powerunit`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `app_processor`
--
ALTER TABLE `app_processor`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `app_processorcooler`
--
ALTER TABLE `app_processorcooler`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `app_ram`
--
ALTER TABLE `app_ram`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `app_ssd`
--
ALTER TABLE `app_ssd`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Индексы таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Индексы таблицы `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индексы таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Индексы таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Индексы таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Индексы таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Индексы таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `app_case`
--
ALTER TABLE `app_case`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `app_graphicscard`
--
ALTER TABLE `app_graphicscard`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `app_hdd`
--
ALTER TABLE `app_hdd`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `app_motherboard`
--
ALTER TABLE `app_motherboard`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `app_powerunit`
--
ALTER TABLE `app_powerunit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `app_processor`
--
ALTER TABLE `app_processor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `app_processorcooler`
--
ALTER TABLE `app_processorcooler`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `app_ram`
--
ALTER TABLE `app_ram`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `app_ssd`
--
ALTER TABLE `app_ssd`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT для таблицы `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT для таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
