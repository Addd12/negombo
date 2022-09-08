-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 08, 2021 at 12:32 PM
-- Server version: 5.7.32-0ubuntu0.18.04.1
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `negombo2020`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bigmapmappings`
--

CREATE TABLE `bigmapmappings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `map_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordsLS` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordsSS` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bigmapmappings`
--

INSERT INTO `bigmapmappings` (`id`, `map_name`, `coordsLS`, `coordsSS`, `created_at`, `updated_at`) VALUES
(1, 'Balze Alte', '364,127,369,110,371,99,382,91,389,80,396,65,396,44,392,26,387,17,373,15,360,12,337,12,317,14,290,12,269,15,250,18,235,22,218,28,199,34,190,40,188,52,179,65,167,76,156,88,142,103,124,120,115,132,108,147,105,160,105,174,108,183,110,193,105,208,105,216,112,223,117,232,120,243,126,249,139,256,156,255,171,248,195,233,211,223,229,211,244,197,261,182,283,164,309,142,327,139,341,136,352,134', '52,164,48,156,45,148,40,137,42,126,41,114,40,101,43,83,51,70,60,59,66,44,72,32,76,21,87,13,103,7,117,8,135,7,144,8,149,17,150,26,149,42,146,51,142,63,139,77,134,86,121,89,113,98,102,110,95,122,86,134,75,148,68,157,61,162', NULL, NULL),
(2, 'Spiaggia', '306,404,286,414,270,418,249,431,232,445,216,462,205,479,206,502,220,510,236,513,258,517,284,517,314,517,340,517,361,516,387,516,416,516,443,517,468,514,489,509,503,500,509,487,501,469,486,449,468,432,443,416,415,405,385,400,347,397', '120,257,129,254,138,255,146,256,159,261,166,266,172,273,181,283,187,294,192,306,192,317,186,324,177,328,164,329,148,329,134,330,115,328,101,328,90,327,82,323,77,315,78,304,81,292,87,281,93,272,103,263', NULL, NULL),
(3, 'Zona Termale', '633,486,646,482,658,476,667,467,678,455,688,445,706,438,724,433,740,433,755,434,775,434,795,433,808,422,807,401,801,387,792,372,779,363,767,352,755,341,748,325,734,318,720,314,709,308,709,299,715,289,707,284,702,277,709,271,710,260,701,253,692,247,678,243,662,247,649,248,631,253,616,260,600,266,591,275,583,284,581,300,589,318,604,328,616,334,625,343,621,355,614,371,605,382,595,395,585,406,577,419,577,437,580,453,589,466,600,476,614,484', '238,310,246,306,252,297,258,287,266,279,275,275,288,276,301,276,305,269,305,257,303,245,295,232,288,221,283,208,277,201,269,197,270,186,267,179,270,168,264,160,257,156,246,159,236,163,226,170,221,180,220,192,225,205,237,215,236,226,229,242,223,254,218,267,218,279,222,297,229,306', NULL, NULL),
(4, 'Zona Mare', '209,421,218,428,228,424,242,415,262,406,279,400,294,395,307,391,323,391,344,392,360,394,372,395,385,396,401,399,415,399,433,400,453,395,462,387,466,373,468,360,473,349,484,338,498,328,505,312,500,299,493,290,479,287,467,290,459,296,449,300,437,299,427,294,415,293,404,296,395,299,384,303,375,309,362,315,348,324,337,330,329,337,315,346,304,356,293,365,279,372,261,379,248,386,235,393,225,398,214,408\r\n', '79,269,80,261,87,252,96,244,106,238,114,231,121,220,129,208,136,198,148,192,157,186,162,189,167,191,173,187,180,183,187,185,190,194,189,206,182,215,178,221,176,232,175,244,170,253,157,254,144,252,130,248,117,249,108,254,96,260,88,268', NULL, NULL),
(5, 'Balze basse', '333,161,320,152,306,155,293,167,282,181,271,194,254,205,240,213,226,223,211,236,196,252,185,263,173,271,160,276,153,289,145,305,139,315,139,323,133,332,137,348,141,365,145,377,150,383,167,381,182,371,196,358,213,343,228,323,240,309,257,289,269,275,282,264,295,252,302,241,300,225,295,214,293,203,302,187,313,179,323,173', '57,243,54,235,52,228,51,220,51,211,54,205,55,197,57,189,59,180,67,171,74,161,79,151,89,138,98,130,104,120,109,110,116,98,125,98,121,110,114,123,110,133,114,145,112,161,104,172,97,183,92,198,81,215,75,229,68,238,64,244', NULL, NULL),
(6, 'Solarium', '400,254,413,248,424,241,431,230,440,223,450,216,454,207,450,196,442,185,435,172,425,163,414,153,404,145,395,141,382,146,367,153,352,163,341,170,326,182,312,196,301,205,306,219,317,232,331,243,345,251,363,251,374,248,385,254', '151,162,158,157,163,151,165,144,171,138,172,129,168,120,164,109,159,101,155,94,150,90,142,95,136,102,129,110,123,117,117,124,113,135,116,142,123,150,129,157,138,159', NULL, NULL),
(7, 'Arco', '168,417,162,409,164,396,173,385,185,377,203,365,219,352,232,338,251,318,266,301,282,285,293,272,308,260,320,256,334,252,352,252,369,252,387,256,402,257,410,261,413,271,400,282,387,290,373,301,348,315,331,329,313,338,287,355,272,367,251,380,228,394,213,407,202,411,193,417,181,422', '66,270,62,264,62,256,64,248,70,240,78,234,84,224,90,212,95,201,101,192,107,181,112,171,118,163,126,161,135,161,141,161,147,163,153,164,157,172,151,178,144,186,137,194,130,205,120,214,111,225,100,236,90,247,80,259', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `place_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_surname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_no_of_guest` int(11) NOT NULL,
  `user_no_of_babies` int(11) NOT NULL,
  `guest_surname1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_surname2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_surname3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baby_surname1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baby_surname2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baby_surname3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_checkin` date NOT NULL,
  `user_checkout` date NOT NULL,
  `is_approved` smallint(6) NOT NULL DEFAULT '1',
  `user_promo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_payment_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_booking_tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_ammount` double(8,2) DEFAULT NULL,
  `creator_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `place_id`, `user_fullname`, `user_surname`, `user_email`, `user_phone`, `user_no_of_guest`, `user_no_of_babies`, `guest_surname1`, `guest_surname2`, `guest_surname3`, `baby_surname1`, `baby_surname2`, `baby_surname3`, `user_checkin`, `user_checkout`, `is_approved`, `user_promo`, `user_payment_type`, `user_booking_tracking_id`, `paid_ammount`, `creator_name`, `created_at`, `updated_at`) VALUES
(4, 'B13', 'Marco Zullo', 'Marco Zullo', 'foxtrot1960@libero.it', '3358374415', 3, 0, 'Marco Zullo', 'Monica Miazzi', NULL, NULL, NULL, NULL, '2021-06-02', '2021-06-02', 1, NULL, 'Credit Card', 'negombo_60b33e54a878c0_52412963', 105.00, 'user', '2021-05-30 07:29:52', '2021-05-30 07:29:52'),
(5, '1424', 'Spanu Gianluca', 'Spanu Gianluca', 'info@hotelnettunoischia.it', '081997816', 2, 0, 'Spanu', NULL, NULL, NULL, NULL, NULL, '2021-05-31', '2021-05-31', 1, 'NETTUNONTT04973', 'Agreements', 'negombo_60b33f6fb303c8.48910073', 0.00, 'user', '2021-05-30 07:32:00', '2021-05-30 07:32:00'),
(6, 'B12', 'Marco Zullo', 'Marco Zullo', 'foxtrot1960@libero.it', '3358374415', 3, 0, 'Franco Del Giudice', 'Mattia Gentile', NULL, NULL, NULL, NULL, '2021-06-02', '2021-06-02', 1, NULL, 'Credit Card', 'negombo_60b33fa82424a8_90701878', 105.00, 'user', '2021-05-30 07:34:17', '2021-05-30 07:34:17'),
(7, '1007', 'Cristina Galluccio', 'Cristina Galluccio', 'cristina.galluccio@gmail.com', '3923722666', 2, 0, 'Laura Conti', NULL, NULL, NULL, NULL, NULL, '2021-05-31', '2021-05-31', 1, NULL, 'Credit Card', 'negombo_60b34afb7863b4_04632378', 80.00, 'user', '2021-05-30 08:24:07', '2021-05-30 08:24:07'),
(8, 'C12', 'Alessandro Loconsole', 'Alessandro Loconsole', 'alexlock82@gmail.com', '3208446183', 2, 0, 'Alessandro Loconsole', NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-06-01', 1, NULL, 'Credit Card', 'negombo_60b3661a967cc9_99757724', 80.00, 'user', '2021-05-30 10:18:35', '2021-05-30 10:18:35'),
(9, 'D13', 'Federica Paris', 'Federica Paris', 'paris.federica@gmail.com', '3466617386', 1, 1, NULL, NULL, NULL, 'Nina Mannironi', NULL, NULL, '2021-05-31', '2021-05-31', 1, NULL, 'Credit Card', 'negombo_60b36b685ce977_36701055', 65.00, 'user', '2021-05-30 10:40:59', '2021-05-30 10:40:59'),
(10, 'D14', 'COSTARELLI CRISTINA', 'COSTARELLI CRISTINA', 'info@centralparkhotel.it', '3282478463', 2, 0, 'Costarelli Cristina', NULL, NULL, NULL, NULL, NULL, '2021-05-31', '2021-05-31', 1, 'centralparkcpa09117', 'Agreements', 'negombo_60b36c05e0da65.49221633', 0.00, 'user', '2021-05-30 10:42:14', '2021-05-30 10:42:14'),
(11, 'D12', 'Federica Paris', 'Federica Paris', 'paris.federica@gmail.com', '3466617386', 4, 0, 'Salvatore Mannironi', 'Milvia Fiorani', 'Ginevra Mannironi', NULL, NULL, NULL, '2021-05-31', '2021-05-31', 1, NULL, 'Credit Card', 'negombo_60b36c9caa8a36_69227519', 128.00, 'user', '2021-05-30 10:46:39', '2021-05-30 10:46:39'),
(12, '1416', 'monica antonini', 'monica antonini', 'hoteldellabaia@negombo.it', '3402757765', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-31', '2021-06-02', 1, 'hoteldellabaiahdb52634', 'Agreements', 'negombo_60b378283dd093.89310529', 0.00, 'user', '2021-05-30 11:34:00', '2021-05-30 11:34:00'),
(13, 'E11', 'Carmelo Lentino', 'Carmelo Lentino', 'posta@carmelolentino.it', '3484500481', 2, 0, 'Carmelo Lentino', NULL, NULL, NULL, NULL, NULL, '2021-05-31', '2021-05-31', 1, NULL, 'Credit Card', 'negombo_60b37a90d2b4f8_40206291', 80.00, 'user', '2021-05-30 11:46:14', '2021-05-30 11:46:14'),
(14, '58', 'INNOCENZO VISCERA', 'INNOCENZO VISCERA', 'operativo@nitrodiviaggi.it', '0819036400', 2, 0, 'INNOCENZO VISCERA', NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-06-01', 1, 'nitrodintr77918', 'Agreements', 'negombo_60b3855685b224.16985254', 0.00, 'user', '2021-05-30 12:30:14', '2021-05-30 12:30:14'),
(15, 'D23', 'flavia tramontano', 'flavia tramontano', 'hoteldellabaia@negombo.it', '3389844468', 2, 1, 'marco proietti', NULL, NULL, 'federica proietti', NULL, NULL, '2021-05-31', '2021-06-02', 1, 'hoteldellabaiahdb52634', 'Agreements', 'negombo_60b39c2fb01da4.86284232', 0.00, 'user', '2021-05-30 14:07:44', '2021-05-30 14:07:44'),
(16, 'A21', 'Laura Galetto', 'Laura Galetto', 'peterpan73@gmail.com', '3387433859', 2, 0, 'Rosangela Sala', NULL, NULL, NULL, NULL, NULL, '2021-05-31', '2021-05-31', 1, NULL, 'Credit Card', 'negombo_60b39f8b313030_30145274', 80.00, 'user', '2021-05-30 14:23:25', '2021-05-30 14:23:25'),
(17, 'D11', 'Simone Alessandria', 'Simone Alessandria', 's.alessandria@inwind.it', '3294878700', 2, 0, 'Simone Alessandria', NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-06-01', 1, NULL, 'Credit Card', 'negombo_60b3e7411b12b2_87144502', 80.00, 'user', '2021-05-30 19:28:50', '2021-05-30 19:28:50'),
(18, 'D14', 'Amerigo Coroneo', 'Amerigo Coroneo', 'info@annabelle.it', '081 991890', 4, 0, 'Coroneo Amerigo', 'Palmeri Valeria', 'Donato Giovanna', NULL, NULL, NULL, '2021-06-01', '2021-06-01', 1, 'annabelleann37511', 'Agreements', 'negombo_60b48c799ad531.91380968', 0.00, 'user', '2021-05-31 07:12:57', '2021-05-31 07:12:57'),
(19, 'D21', 'daria borghese', 'daria borghese', 'hoteldellabaia@negombo.it', '3471468067', 2, 0, 'heather hyde', NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-06-02', 1, 'hoteldellabaiahdb52634', 'Agreements', 'negombo_60b4929eae7859.75282732', 0.00, 'user', '2021-05-31 07:39:11', '2021-05-31 07:39:11'),
(20, '715', 'Wilma Del Buono', 'Wilma Del Buono', 'wilmadelbuono@icloud.com', '3409280538', 2, 0, 'Wilma del buono', NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-06-01', 1, NULL, 'Credit Card', 'negombo_60b49d4980b1e7_46802434', 80.00, 'user', '2021-05-31 08:26:51', '2021-05-31 08:26:51'),
(21, '32', 'GENNARO VIOLANTE', 'GENNARO VIOLANTE', 'operativo@nitrodiviaggi.it', '335231617', 2, 0, 'GENNARO VIOLANTE', NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-06-01', 1, 'nitrodintr77918', 'Agreements', 'negombo_60b4b164674530.38578581', 0.00, 'user', '2021-05-31 09:50:28', '2021-05-31 09:50:28'),
(22, 'B13', 'MIROBA MELISSA', 'MIROBA MELISSA', 'info@hotelsanvalentino.it', '081 98 20 88', 3, 0, 'MIGLIORATI GIULIA', 'PAPI ALESSANDRA', NULL, NULL, NULL, NULL, '2021-06-01', '2021-06-01', 1, 'svalentinosva84281', 'Agreements', 'negombo_60b4b2eb6bae51.49152648', 0.00, 'user', '2021-05-31 09:56:59', '2021-05-31 09:56:59'),
(23, 'B14', 'FASCIANI ELISABETTA', 'FASCIANI ELISABETTA', 'info@hotelsanvalentino.it', '081 98 20 88', 3, 0, 'BEBER SABRINA', 'SANTIELLO TERESA', NULL, NULL, NULL, NULL, '2021-06-01', '2021-06-01', 1, 'svalentinosva84281', 'Agreements', 'negombo_60b4b3737e6032.83973250', 0.00, 'user', '2021-05-31 09:59:15', '2021-05-31 09:59:15'),
(24, '1403', 'Flavia Sorcetti', 'Flavia Sorcetti', 'flavia.sorcetti@gmail.com', '3478023887', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-02', '2021-06-02', 1, NULL, 'Credit Card', 'negombo_60b4d6f67b4776_90081522', 65.00, 'user', '2021-05-31 12:33:49', '2021-05-31 12:33:49'),
(25, '1407', 'Maria Francesca Magnotta', 'Maria Francesca Magnotta', 'leamagnotta@gmail.com', '3773075133', 4, 0, 'Antimo Magnotta', 'Antonella Gadola', 'Nuria Heller', NULL, NULL, NULL, '2021-06-03', '2021-06-03', 1, NULL, 'Credit Card', 'negombo_60b4e6316cbad5_85874232', 128.00, 'user', '2021-05-31 13:36:42', '2021-05-31 13:36:42'),
(26, '1408', 'Daniela Magnotta', 'Daniela Magnotta', 'leamagnotta@gmail.com', '3773075133', 2, 0, 'Stefania Magnotta', NULL, NULL, NULL, NULL, NULL, '2021-06-03', '2021-06-03', 1, NULL, 'Credit Card', 'negombo_60b4e6dc2f8d80_22015542', 80.00, 'user', '2021-05-31 13:39:17', '2021-05-31 13:39:17'),
(27, '1421', 'Calza Cinzia lorella', 'Calza Cinzia lorella', 'cinzia.calza@alice.it', '3248948007', 3, 0, 'Romagnolo Davide', 'Romagnolo Stefano', NULL, NULL, NULL, NULL, '2021-06-01', '2021-06-01', 1, NULL, 'Credit Card', 'negombo_60b4e7b0319669_23889697', 105.00, 'user', '2021-05-31 13:48:16', '2021-05-31 13:48:16'),
(28, 'A21', 'Laura Galetto', 'Laura Galetto', 'peterpan73@gmail.com', '3387433859', 2, 0, 'Rosangela Sala', NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-06-01', 1, NULL, 'Credit Card', 'negombo_60b4eb8e167ac8_57608155', 80.00, 'user', '2021-05-31 13:59:45', '2021-05-31 13:59:45'),
(29, 'A11', 'Assunta Merola', 'Assunta Merola', 'assunta.merola.ce@gmail.com', '3405646674', 2, 0, 'Anna Correra', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, NULL, 'Credit Card', 'negombo_60b501cee07571_80118396', 80.00, 'user', '2021-05-31 15:34:39', '2021-05-31 15:34:39'),
(30, '84', 'Michele Rondi', 'Michele Rondi', 'michele.rondi@gmail.com', '3280131385', 2, 0, 'Alessia Modolo', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, NULL, 'Credit Card', 'negombo_60b51557261547_38516101', 80.00, 'user', '2021-05-31 16:58:59', '2021-05-31 16:58:59'),
(31, '58', 'LUIGI ZAMBELLI', 'LUIGI ZAMBELLI', 'info@villasvizzera.it', '081994263', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, 'villasvizzeravsv29479', 'Agreements', 'negombo_60b51629af5df3.11484024', 0.00, 'user', '2021-05-31 17:00:26', '2021-05-31 17:00:26'),
(32, 'D13', 'Maurizio Petrucci', 'Maurizio Petrucci', 'studiomauriziopetrucci@gmail.com', '3297870566', 2, 2, 'Maurizio petrucci', NULL, NULL, 'Matteo petrucci', 'Rebecca Petrucci', NULL, '2021-06-02', '2021-06-02', 1, NULL, 'Credit Card', 'negombo_60b528f71a5836_78378984', 118.00, 'user', '2021-05-31 18:22:10', '2021-05-31 18:22:10'),
(33, '603', 'Valentina Sanesi', 'Valentina Sanesi', 'valentinasanesi@gmail.com', '3337726500', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, NULL, 'Credit Card', 'negombo_60b56381060617_94464408', 65.00, 'user', '2021-05-31 22:31:06', '2021-05-31 22:31:06'),
(34, '1429', 'Di lauro daniela', 'Di lauro daniela', 'dottdilaurodaniela@gmail.com', '3383591783', 2, 0, 'Marrapese gianluigi', NULL, NULL, NULL, NULL, NULL, '2021-06-02', '2021-06-02', 1, NULL, 'Credit Card', 'negombo_60b5d389b977a7_27828162', 80.00, 'user', '2021-06-01 06:30:31', '2021-06-01 06:30:31'),
(35, '1417', 'Ambrosio Salvatore', 'Ambrosio Salvatore', 'dottdilaurodaniela@gmail.com', '3383591783', 2, 0, 'Camilla ambrosio', NULL, NULL, NULL, NULL, NULL, '2021-06-02', '2021-06-02', 1, NULL, 'Credit Card', 'negombo_60b5d69b3c12c6_00087390', 80.00, 'user', '2021-06-01 06:42:51', '2021-06-01 06:42:51'),
(36, 'B11', 'Righi Massimo', 'Righi Massimo', 'massimo.righi@me.com', '3393000888', 4, 0, 'Righi', 'Scarano', 'Allasia', NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, NULL, 'Credit Card', 'negombo_60b5dc64ae1869_68836616', 128.00, 'user', '2021-06-01 07:09:17', '2021-06-01 07:09:17'),
(37, 'B11', 'DOMENICO RICCIO', 'DOMENICO RICCIO', 'd.riccio@sirti.it', '3391390823', 2, 0, 'FABIO DE MEO', NULL, NULL, NULL, NULL, NULL, '2021-06-03', '2021-06-03', 1, NULL, 'Credit Card', 'negombo_60b5f26d1b3ba1_27451516', 80.00, 'user', '2021-06-01 08:41:34', '2021-06-01 08:41:34'),
(38, '56', 'fabrizio camponeschi', 'fabrizio camponeschi', 'studiocamponeschi@tiscali.it', '3358116106', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, NULL, 'Credit Card', 'negombo_60b5f8cd5ea8d9_19416013', 95.00, 'user', '2021-06-01 09:08:27', '2021-06-01 09:08:27'),
(39, 'A11', 'Veronica Della Fonte', 'Veronica Della Fonte', 'vero@colortravels.it', '3494429487', 3, 0, 'Annamaria Lombardi', 'Luisa Villani', NULL, NULL, NULL, NULL, '2021-06-02', '2021-06-02', 1, NULL, 'Credit Card', 'negombo_60b61b2f7973c5_51251608', 105.00, 'user', '2021-06-01 11:34:58', '2021-06-01 11:34:58'),
(40, 'E11', 'ORNELLA TRIVELLATO', 'ORNELLA TRIVELLATO', 'info@irishotelischia.com', '3333266686', 2, 0, 'BRUNO BALBO', NULL, NULL, NULL, NULL, NULL, '2021-06-03', '2021-06-03', 1, 'irisiri68286', 'Agreements', 'negombo_60b6235c177657.63277650', 0.00, 'user', '2021-06-01 12:09:00', '2021-06-01 12:09:00'),
(41, 'A14', 'Barbara Berti', 'Barbara Berti', 'lababi.bb@gmail.com', '3290264084', 2, 0, 'Berti barbara', NULL, NULL, NULL, NULL, NULL, '2021-06-02', '2021-06-02', 1, NULL, 'Credit Card', 'negombo_60b629580d68d1_24792312', 80.00, 'user', '2021-06-01 12:37:42', '2021-06-01 12:37:42'),
(42, '71', 'Cristiano Costagliola', 'Cristiano Costagliola', 'c.costagliola@gesforsrl.it', '3394668832', 2, 0, 'de caro luigi', NULL, NULL, NULL, NULL, NULL, '2021-06-02', '2021-06-02', 1, NULL, 'Credit Card', 'negombo_60b62c6ba1e723_45179237', 80.00, 'user', '2021-06-01 12:48:30', '2021-06-01 12:48:30'),
(43, '502', 'Stefania Cipolletta', 'Stefania Cipolletta', 'stefania.cipolletta93@gmail.com', '3396001705', 2, 0, 'Stefania Cipolletta', NULL, NULL, NULL, NULL, NULL, '2021-06-02', '2021-06-02', 1, NULL, 'Credit Card', 'negombo_60b63c070ef004_34319683', 80.00, 'user', '2021-06-01 13:56:00', '2021-06-01 13:56:00'),
(44, '1429', 'Claudia Marotta', 'Claudia Marotta', 'claudia.marotta01@gmail.com', '3807557145', 2, 0, 'Luigi Cirillo', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, NULL, 'Credit Card', 'negombo_60b63c73ee0823_08445749', 80.00, 'user', '2021-06-01 13:56:50', '2021-06-01 13:56:50'),
(45, '34', 'Mariagiovanna Riccio', 'Mariagiovanna Riccio', 'mgr@tumadeinitaly.com', '3202714097', 2, 0, 'Mariagiovanna Riccio', NULL, NULL, NULL, NULL, NULL, '2021-06-02', '2021-06-02', 1, NULL, 'Credit Card', 'negombo_60b643429b8382_72001262', 80.00, 'user', '2021-06-01 14:25:49', '2021-06-01 14:25:49'),
(46, 'D14', 'Mario Veltroni', 'Mario Veltroni', 'mario.veltroni@hotmail.com', '339 5434544', 2, 0, 'Isabella Giovannini', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, NULL, 'Credit Card', 'negombo_60b6a21c0a1021_24987402', 80.00, 'user', '2021-06-01 21:11:26', '2021-06-01 21:11:26'),
(47, '761', 'Francesca Racioppi', 'Francesca Racioppi', 'francescaracioppi@gmail.com', '3381121013', 2, 0, 'Paola Lavagna', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, NULL, 'Credit Card', 'negombo_60b6b255784769_66817819', 80.00, 'user', '2021-06-01 22:20:44', '2021-06-01 22:20:44'),
(48, 'D22', 'Paola enrica colombo', 'Paola enrica colombo', 'paolacol07@gmail.com', '3397304039', 3, 0, 'Rosalinda ripamonti', 'Barbara robecchi', NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, NULL, 'Credit Card', 'negombo_60b72a8eae7c24_66920457', 105.00, 'user', '2021-06-02 06:53:41', '2021-06-02 06:53:41'),
(49, 'C11', 'Michael Bringmann', 'Michael Bringmann', 'fam.bringmann@mac.com', '+393477411530', 3, 0, 'Michael Bringmann', 'Paola Fundarò Bringmann', NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, NULL, 'Credit Card', 'negombo_60b72b513a5242_23044830', 105.00, 'user', '2021-06-02 06:57:34', '2021-06-02 06:57:34'),
(50, 'A11', 'Annamaria Tufillaro', 'Annamaria Tufillaro', 'tufi.anna@gmail.com', '3383437871', 3, 0, 'Annamaria Tufillaro', 'Ottaviano Antonio', NULL, NULL, NULL, NULL, '2021-06-03', '2021-06-03', 1, NULL, 'Credit Card', 'negombo_60b734dc20edc9_63302455', 105.00, 'user', '2021-06-02 07:42:13', '2021-06-02 07:42:13'),
(51, '1301', 'Davide Ponticelli', 'Davide Ponticelli', 'davide.ponticelli@gmail.com', '3355918492', 4, 0, 'Guido Ponticelli', 'Enrichetta Bilzi', 'Agata Ponticelli', NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, NULL, 'Credit Card', 'negombo_60b7361d375316_73360827', 128.00, 'user', '2021-06-02 07:43:16', '2021-06-02 07:43:16'),
(52, 'C11', 'Sonia Ranelli', 'Sonia Ranelli', 'alessandro.raco2007@libero.it', '3288297599', 3, 0, 'Maria Cristina Campoli', 'Rosaria Totaro', NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, NULL, 'Credit Card', 'negombo_60b747cfe0b6e0_33560606', 105.00, 'user', '2021-06-02 08:59:30', '2021-06-02 08:59:30'),
(53, '1008', 'silvia cimini', 'silvia cimini', 'sil.cimini@gmail.com', '3334885273', 2, 0, 'francesco stanzione', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, NULL, 'Credit Card', 'negombo_60b7512ae61e86_23707283', 80.00, 'user', '2021-06-02 09:38:11', '2021-06-02 09:38:11'),
(54, 'C12', 'ALICE CAZZANIGA', 'ALICE CAZZANIGA', 'hoteldellabaia@negombo.it', '3346237691', 2, 0, 'BUSATO ORNELLA', NULL, NULL, NULL, NULL, NULL, '2021-06-03', '2021-06-05', 1, 'hoteldellabaiahdb52634', 'Agreements', 'negombo_60b752769e38b3.09987997', 0.00, 'user', '2021-06-02 09:42:14', '2021-06-02 09:42:14'),
(55, 'C14', 'Simone Vecchio', 'Simone Vecchio', 'simonevecchio.jss@gmail.com', '3664232295', 2, 0, 'Claudia Favero', NULL, NULL, NULL, NULL, NULL, '2021-06-03', '2021-06-03', 1, NULL, 'Credit Card', 'negombo_60b75fd9c8bd55_04471069', 80.00, 'user', '2021-06-02 10:42:32', '2021-06-02 10:42:32'),
(56, 'B14', 'Nicola Homer', 'Nicola Homer', 'nlhomer17@gmail.com', '3486931876', 2, 1, 'Gareth Homer', NULL, NULL, 'Jude Homer', NULL, NULL, '2021-06-04', '2021-06-04', 1, NULL, 'Credit Card', 'negombo_60b78f62d754b9_57431784', 95.00, 'user', '2021-06-02 14:04:59', '2021-06-02 14:04:59'),
(57, 'B14', 'Mathilde Montestruc', 'Mathilde Montestruc', 'mathilde.montestruc@gmail.com', '0778259334', 3, 0, 'Jean Nouaille Degorce', 'Bertille Piekos', NULL, NULL, NULL, NULL, '2021-06-03', '2021-06-03', 1, NULL, 'Credit Card', 'negombo_60b792a1ee54a6_88886495', 105.00, 'user', '2021-06-02 14:17:55', '2021-06-02 14:17:55'),
(58, 'B11', 'Morgan Danner', 'Morgan Danner', 'mbdanner9@gmail.com', '3482810637', 4, 0, 'Heather Clevenger', 'Clifton Clevenger', 'Paolo Castelli', NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, NULL, 'Credit Card', 'negombo_60b7995d6080d8_59094888', 128.00, 'user', '2021-06-02 14:46:26', '2021-06-02 14:46:26'),
(59, '1414', 'PAOLO PEPE', 'PAOLO PEPE', 'paolopepe93@gmail.com', '3299764531', 3, 0, 'BIANCA DEL VILLANO', 'FEDERICA VOLPICELLI', NULL, NULL, NULL, NULL, '2021-06-03', '2021-06-03', 1, NULL, 'Credit Card', 'negombo_60b79ba14384e0_47059893', 105.00, 'user', '2021-06-02 14:55:50', '2021-06-02 14:55:50'),
(60, '114', 'POTITO MARUCCI', 'POTITO MARUCCI', 'potitom@libero.it', '3284185813', 2, 0, 'Maurizio Minelli', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, NULL, 'Credit Card', 'negombo_60b7a7456c8206_72414172', 80.00, 'user', '2021-06-02 15:45:46', '2021-06-02 15:45:46'),
(61, 'D23', 'Fernanda Insidioso', 'Fernanda Insidioso', 'f.insidioso44@gmail.com', '3471516946', 2, 0, 'Alessandro Ruopoli', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, NULL, 'Credit Card', 'negombo_60b7b82397a723_69398116', 80.00, 'user', '2021-06-02 16:57:33', '2021-06-02 16:57:33'),
(62, '36', 'Simone Moscarino', 'Simone Moscarino', 'simone.moscarino@virgilio.it', '3662436278', 2, 0, 'Chiara Errico', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, NULL, 'Credit Card', 'negombo_60b7cd9de40ed0_32329022', 80.00, 'user', '2021-06-02 18:29:10', '2021-06-02 18:29:10'),
(63, 'C14', 'Girolamo Speciale', 'Girolamo Speciale', 'minoski85@hotmail.com', '3922661035', 2, 0, 'Claudia Muollo', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, NULL, 'Credit Card', 'negombo_60b7dc0ccb2323_11628261', 80.00, 'user', '2021-06-02 19:30:45', '2021-06-02 19:30:45'),
(64, 'D14', 'Daniela Napoleoni', 'Daniela Napoleoni', 'daninapoleoni@gmail.com', '3492635243', 4, 0, 'Franco Iungo', 'Simonetta Tiribelli', 'Claudio Santori', NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, NULL, 'Credit Card', 'negombo_60b7dcb2a68a93_51288562', 128.00, 'user', '2021-06-02 19:34:58', '2021-06-02 19:34:58'),
(65, 'D13', 'Antonella Tiribelli', 'Antonella Tiribelli', 'daninapoleoni@gmail.com', '3492635243', 2, 0, 'Massimo Pescetelli', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, NULL, 'Credit Card', 'negombo_60b7de570d6b52_88366144', 80.00, 'user', '2021-06-02 19:40:57', '2021-06-02 19:40:57'),
(66, '621', 'Valentina Sanesi', 'Valentina Sanesi', 'valentinasanesi@gmail.com', '3337726500', 2, 0, 'Carmine Castella', NULL, NULL, NULL, NULL, NULL, '2021-06-06', '2021-06-06', 1, NULL, 'Credit Card', 'negombo_60b8051eecf8e0_12981848', 80.00, 'user', '2021-06-02 22:25:18', '2021-06-02 22:25:18'),
(67, '715', 'Mariangela Azzurro', 'Mariangela Azzurro', 'angelaazzurro@gmail.com', '3928935394', 3, 0, 'Mariangela Azzurro', 'Fabio Trovato', NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, NULL, 'Credit Card', 'negombo_60b859ce8dc661_23975584', 105.00, 'user', '2021-06-03 04:27:05', '2021-06-03 04:27:05'),
(68, '1406', 'donato donatello', 'donato donatello', 'Info@termesanlorenzo.it', '3397873411', 2, 0, 'donato donatella', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, 'slorenzoslo79269', 'Agreements', 'negombo_60b87dfe75f3a2.69117039', 0.00, 'user', '2021-06-03 07:00:14', '2021-06-03 07:00:14'),
(69, '751', 'Angela Grigatti', 'Angela Grigatti', 'angela.grigatti@gmail.com', '3335040257', 2, 0, 'Angela Grigatti', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, NULL, 'Credit Card', 'negombo_60b883f1e1eb52_48220859', 80.00, 'user', '2021-06-03 07:27:11', '2021-06-03 07:27:11'),
(70, 'E11', 'PASQUINELLI MICHELE', 'PASQUINELLI MICHELE', 'info@annabelle.it', '081991890', 2, 0, 'PASQUINELLI MICHELE', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, 'annabelleann37511', 'Agreements', 'negombo_60b88c934efbf8.88527541', 0.00, 'user', '2021-06-03 08:02:27', '2021-06-03 08:02:27'),
(71, '51', 'FABRIZIO LABIANCA', 'FABRIZIO LABIANCA', 'operativo@nitrodiviaggi.it', '335231617', 2, 0, 'FABRIZIO LABIANCA', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, 'nitrodintr77918', 'Agreements', 'negombo_60b894609694b9.32684523', 0.00, 'user', '2021-06-03 08:35:44', '2021-06-03 08:35:44'),
(72, '52', 'LUISELLA FIORDELLI', 'LUISELLA FIORDELLI', 'operativo@nitrodiviaggi.it', '335231617', 2, 0, 'LUISELLA FIORDELLI', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, 'nitrodintr77918', 'Agreements', 'negombo_60b8950dbf4545.13135989', 0.00, 'user', '2021-06-03 08:38:38', '2021-06-03 08:38:38'),
(73, '53', 'GIORDANO GALLI', 'GIORDANO GALLI', 'operativo@nitrodiviaggi.it', '335231617', 2, 0, 'GIORDANO GALLI', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, 'nitrodintr77918', 'Agreements', 'negombo_60b895b9b3e833.66968672', 0.00, 'user', '2021-06-03 08:41:30', '2021-06-03 08:41:30'),
(74, '54', 'MAURIZIO MILLI', 'MAURIZIO MILLI', 'operativo@nitrodiviaggi.it', '335231617', 2, 0, 'MAURIZIO MILLI', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, 'nitrodintr77918', 'Agreements', 'negombo_60b8963b287dc7.72650974', 0.00, 'user', '2021-06-03 08:43:39', '2021-06-03 08:43:39'),
(75, '55', 'ENZO CHIASSERINI', 'ENZO CHIASSERINI', 'operativo@nitrodiviaggi.it', '335231617', 2, 0, 'ENZO CHIASSERINI', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, 'nitrodintr77918', 'Agreements', 'negombo_60b897466e2624.87158919', 0.00, 'user', '2021-06-03 08:48:06', '2021-06-03 08:48:06'),
(76, '57', 'CLAUDIO MARRI', 'CLAUDIO MARRI', 'operativo@nitrodiviaggi.it', '335231617', 2, 0, 'CLAUDIO MARRI', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, 'nitrodintr77918', 'Agreements', 'negombo_60b897b41bc674.43231211', 0.00, 'user', '2021-06-03 08:49:56', '2021-06-03 08:49:56'),
(77, 'D11', 'sabato paolillo', 'sabato paolillo', 'hoteldellabaia@negombo.it', '3409323454', 2, 0, 'maria rosaria d\'ambrosio', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-05', 1, 'hoteldellabaiahdb52634', 'Agreements', 'negombo_60b897f7e72c01.44300644', 0.00, 'user', '2021-06-03 08:51:04', '2021-06-03 08:51:04'),
(78, '59', 'SANDRO ZANNINELLO', 'SANDRO ZANNINELLO', 'operativo@nitrodiviaggi.it', '335231617', 2, 0, 'SANDRO ZANNINELLO', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, 'nitrodintr77918', 'Agreements', 'negombo_60b89838759ef9.54108394', 0.00, 'user', '2021-06-03 08:52:08', '2021-06-03 08:52:08'),
(79, '60', 'DANIELA RADICCHI', 'DANIELA RADICCHI', 'operativo@nitrodiviaggi.it', '335231617', 2, 0, 'DANIELA RADICCHI', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, 'nitrodintr77918', 'Agreements', 'negombo_60b898a51c7ec4.75932695', 0.00, 'user', '2021-06-03 08:53:57', '2021-06-03 08:53:57'),
(80, '71', 'PAOLA FERRARI', 'PAOLA FERRARI', 'operativo@nitrodiviaggi.it', '335231617', 2, 0, 'PAOLA FERRARI', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, 'nitrodintr77918', 'Agreements', 'negombo_60b89939c58028.69525524', 0.00, 'user', '2021-06-03 08:56:26', '2021-06-03 08:56:26'),
(81, '72', 'SONIA BAGIACCHI', 'SONIA BAGIACCHI', 'operativo@nitrodiviaggi.it', '335231617', 2, 0, 'SONIA BAGIACCHI', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, 'nitrodintr77918', 'Agreements', 'negombo_60b899c39efb22.31851038', 0.00, 'user', '2021-06-03 08:58:43', '2021-06-03 08:58:43'),
(82, '73', 'MAURIZIO MADIAI', 'MAURIZIO MADIAI', 'operativo@nitrodiviaggi.it', '335231617', 2, 0, 'MAURIZIO MADIAI', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, 'nitrodintr77918', 'Agreements', 'negombo_60b89a1a28b917.34063319', 0.00, 'user', '2021-06-03 09:00:10', '2021-06-03 09:00:10'),
(83, '74', 'GENNARA CHELI', 'GENNARA CHELI', 'operativo@nitrodiviaggi.it', '335231617', 2, 0, 'GENNARA CHELI', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, 'nitrodintr77918', 'Agreements', 'negombo_60b89a91358796.11289059', 0.00, 'user', '2021-06-03 09:02:09', '2021-06-03 09:02:09'),
(84, '75', 'CINZIA SERAFINI', 'CINZIA SERAFINI', 'operativo@nitrodiviaggi.it', '335231617', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, 'nitrodintr77918', 'Agreements', 'negombo_60b89b2403a5e6.24688733', 0.00, 'user', '2021-06-03 09:04:36', '2021-06-03 09:04:36'),
(85, '34', 'Aldo Etur', 'Aldo Etur', 'villaliviaischia@gmail.com', '3471250468', 4, 0, 'Andrea Etur', 'Carla Fracassi', 'Francesca Papa', NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, 'villalivialvi54125', 'Agreements', 'negombo_60b89b91428df7.50401993', 0.00, 'user', '2021-06-03 09:06:25', '2021-06-03 09:06:25'),
(86, 'E12', 'Romualdo moretti', 'Romualdo moretti', 'romualdomoretti@yahoo.com', '3393799889', 2, 0, 'Anthony Galea', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, NULL, 'Credit Card', 'negombo_60b8a09f00d992_30833552', 80.00, 'user', '2021-06-03 09:30:29', '2021-06-03 09:30:29'),
(87, '1416', 'Melissa Gurgone', 'Melissa Gurgone', 'melissa.gurgone@hotmail.com', '3479554373', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, NULL, 'Credit Card', 'negombo_60b8a4d0cea0c7_51461819', 65.00, 'user', '2021-06-03 09:48:35', '2021-06-03 09:48:35'),
(88, 'A13', 'Adriana Malinconico', 'Adriana Malinconico', 'adrimali@hotmail.it', '3498850934', 2, 0, 'Adriana Malinconico', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 1, NULL, 'Credit Card', 'negombo_60b8b41d359eb5_81396634', 80.00, 'user', '2021-06-03 11:02:00', '2021-06-03 11:02:00'),
(89, 'B13', 'Pagano (da pagare alla cassa)', 'Pagano (da pagare alla cassa)', 'backoffice@negombo.it', '0', 4, 0, '1', '1', '1', NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, NULL, 'Entrance', 'negombo_60b8bb6c21ebb9.57085141', 128.00, 'Gabriella Pilato', '2021-06-03 11:22:20', '2021-06-03 11:22:20'),
(90, 'B14', 'Pagano (da pagare alla cassa)', 'Pagano (da pagare alla cassa)', 'backoffice@negombo.it', '0', 4, 0, '1', '1', '1', NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, NULL, 'Entrance', 'negombo_60b8bb7f1c36f5.03974232', 128.00, 'Gabriella Pilato', '2021-06-03 11:22:39', '2021-06-03 11:22:39'),
(91, '1202', 'Vincenzo Aquilone', 'Vincenzo Aquilone', 'vinaquil1@hotmail.com', '366 484 2673', 2, 0, 'Vincenzo Aquilone', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, NULL, 'Credit Card', 'negombo_60b8d920db0e91_91096494', 80.00, 'user', '2021-06-03 13:30:36', '2021-06-03 13:30:36'),
(92, 'C14', 'Federica Spagnuolo', 'Federica Spagnuolo', 'spagnuolo.federica@gmail.com', '3459918038', 2, 0, 'Federica Spagnuolo', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, NULL, 'Credit Card', 'negombo_60b8db1f198005_51054340', 80.00, 'user', '2021-06-03 13:39:06', '2021-06-03 13:39:06'),
(93, '101', 'Raffaele Carlone', 'Raffaele Carlone', 'raffaele.carlone@me.com', '3426206703', 3, 1, 'Raffaele Carlone', 'Alessia Sambri', NULL, 'Chiara Carlone', NULL, NULL, '2021-06-05', '2021-06-05', 1, NULL, 'Credit Card', 'negombo_60b8f329210c90_96935158', 127.00, 'user', '2021-06-03 15:21:18', '2021-06-03 15:21:18'),
(94, '715', 'Carlo Insolera', 'Carlo Insolera', 'Carlo656@gmail.com', '3343649755', 2, 0, 'Carlo Insolera', NULL, NULL, NULL, NULL, NULL, '2021-06-07', '2021-06-07', 1, NULL, 'Credit Card', 'negombo_60b8f332a12b14_62631067', 80.00, 'user', '2021-06-03 15:22:01', '2021-06-03 15:22:01'),
(95, 'A14', 'Alberto Grifo', 'Alberto Grifo', 'grifoalberto1@gmail.com', '081980182', 2, 0, 'TEVERINI MATTEO', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, 'grifogrf14390', 'Agreements', 'negombo_60b900d675f1f6.91965054', 0.00, 'user', '2021-06-03 16:18:30', '2021-06-03 16:18:30'),
(96, '423', 'Lucia Maccaferri', 'Lucia Maccaferri', 'lucia.maccaferri@alice.it', '3282163497', 2, 0, 'Eugenio Adimari', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, NULL, 'Credit Card', 'negombo_60b9153aa6c7b8_20507168', 80.00, 'user', '2021-06-03 17:46:56', '2021-06-03 17:46:56'),
(97, 'F12', 'EDUARDO CARANNANTE', 'EDUARDO CARANNANTE', 'eduardocarannante@gmail.com', '3331748745', 2, 0, 'EDUARDO CARANNANTE', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, NULL, 'Credit Card', 'negombo_60b919718158e8_36766880', 80.00, 'user', '2021-06-03 18:05:08', '2021-06-03 18:05:08'),
(98, '1430', 'Di meo luigi', 'Di meo luigi', 'nunazye@gmail', '3356410857', 2, 0, 'Carannante nunzia', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, NULL, 'Credit Card', 'negombo_60b92fb35f0d30_93669732', 80.00, 'user', '2021-06-03 19:42:25', '2021-06-03 19:42:25'),
(99, '1414', 'Antonino Romano', 'Antonino Romano', 'antoninoromano@gmail.com', '335403648', 4, 0, 'Alessandra Fanone', 'Ketty Caravecchia', 'Fabiana Gianfrani', NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, NULL, 'Credit Card', 'negombo_60b93601b451a3_69558473', 128.00, 'user', '2021-06-03 20:06:44', '2021-06-03 20:06:44'),
(100, '1011', 'Fabrizio Sanna', 'Fabrizio Sanna', 'fsanna11@gmail.com', '3200379158', 2, 0, 'Sanna', NULL, NULL, NULL, NULL, NULL, '2021-06-06', '2021-06-06', 1, NULL, 'Credit Card', 'negombo_60b936e1c3ea14_00930966', 80.00, 'user', '2021-06-03 20:12:07', '2021-06-03 20:12:07'),
(101, '1008', 'Stefania Buglisi', 'Stefania Buglisi', 'fuffy-90@tiscali.it', '3427277185', 2, 0, 'Juri costa', NULL, NULL, NULL, NULL, NULL, '2021-06-07', '2021-06-07', 1, NULL, 'Credit Card', 'negombo_60b94146cf0924_03017148', 80.00, 'user', '2021-06-03 21:02:13', '2021-06-03 21:02:13'),
(102, '1421', 'Emanuele romeo', 'Emanuele romeo', 'ema.romeo@virgilio.it', '3333434291', 3, 0, 'Antonia romeo', 'Domenico romeo', NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, NULL, 'Credit Card', 'negombo_60b9d565ee30a3_97289844', 105.00, 'user', '2021-06-04 07:26:47', '2021-06-04 07:26:47'),
(103, '1422', 'Carolina ciccarelli', 'Carolina ciccarelli', 'ema.romeo@icloud.com', '3356334360', 2, 0, 'Carmela basile', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, NULL, 'Credit Card', 'negombo_60b9d6466d1a51_14454344', 80.00, 'user', '2021-06-04 07:30:11', '2021-06-04 07:30:11'),
(104, 'B12', 'Angela Angió', 'Angela Angió', 'driade6@hotmail.it', '3203067216', 2, 0, 'Angela Angió', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, NULL, 'Credit Card', 'negombo_60b9db355f9dd4_08873703', 80.00, 'user', '2021-06-04 07:56:07', '2021-06-04 07:56:07'),
(105, 'A11', 'Elke Maria Erne', 'Elke Maria Erne', 'elke.erne@gmail.com', '3482240939', 3, 0, 'Alba Saturnini', 'Linda Menegotto', NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, NULL, 'Credit Card', 'negombo_60b9dd4f8a2a69_18051201', 105.00, 'user', '2021-06-04 08:01:02', '2021-06-04 08:01:02'),
(106, '1429', 'Maria Grazia Tota', 'Maria Grazia Tota', 'mariagraziatota3@gmail.com', '3886997636', 2, 0, 'Salvatore Braia', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, NULL, 'Credit Card', 'negombo_60b9e4e8af5c61_34587021', 80.00, 'user', '2021-06-04 08:34:16', '2021-06-04 08:34:16'),
(107, 'D24', 'ausilia manfuso', 'ausilia manfuso', 'hoteldellabaia@negombo.it', '3936322017', 3, 1, 'vincenzo manfuso', 'rosa chierchia', NULL, 'claudio bonifacio', NULL, NULL, '2021-06-05', '2021-06-06', 1, 'hoteldellabaiahdb52634', 'Agreements', 'negombo_60b9e89eba70f8.65166426', 0.00, 'user', '2021-06-04 08:47:27', '2021-06-04 08:47:27'),
(108, 'D14', 'Giulia Bolognini', 'Giulia Bolognini', 'g.bolognini91@gmail.com', '3409697884', 2, 0, 'Simone Corsale', NULL, NULL, NULL, NULL, NULL, '2021-06-06', '2021-06-06', 1, NULL, 'Credit Card', 'negombo_60b9e926cf4651_32252725', 80.00, 'user', '2021-06-04 08:50:31', '2021-06-04 08:50:31'),
(109, 'B11', 'mari domenico', 'mari domenico', 'mari_domenico@libero.it', '335243904', 2, 0, 'Marchionni Tiziana', NULL, NULL, NULL, NULL, NULL, '2021-06-06', '2021-06-06', 1, NULL, 'Credit Card', 'negombo_60b9ec187bf689_12948607', 80.00, 'user', '2021-06-04 09:03:25', '2021-06-04 09:03:25'),
(110, 'B12', 'Sandro Giancola', 'Sandro Giancola', 'mari_domenico@libero.it', '335243904', 2, 0, 'Stefania Lazzaro', NULL, NULL, NULL, NULL, NULL, '2021-06-06', '2021-06-06', 1, NULL, 'Credit Card', 'negombo_60b9ecd5833949_56189383', 80.00, 'user', '2021-06-04 09:06:24', '2021-06-04 09:06:24'),
(111, 'C13', 'damiani', 'damiani', 'info@albergoambasciatori.com', '081991139', 2, 0, 'damiani', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, 'ambasciatoriamb00342', 'Agreements', 'negombo_60b9f988555255.34992712', 0.00, 'user', '2021-06-04 09:59:36', '2021-06-04 09:59:36'),
(112, '1432', 'ROBERTO RIPPA', 'ROBERTO RIPPA', 'info@irishotelischia.com', '3494938045', 4, 0, 'ILARIA MASCILINI', 'FEDERICO PETRACCARO', 'KHATIRI MAHAN', NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, 'irisiri68286', 'Agreements', 'negombo_60ba0f6f2c8a69.33109294', 0.00, 'user', '2021-06-04 11:33:03', '2021-06-04 11:33:03'),
(113, '238', 'benedetto mule', 'benedetto mule', 'harashy66@alice.it', '3519411297', 2, 0, 'alessia andreozzi', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, NULL, 'Credit Card', 'negombo_60ba157b6f11d2_58851603', 80.00, 'user', '2021-06-04 12:01:09', '2021-06-04 12:01:09'),
(114, '1205', 'ANTONIO DEL POZZO', 'ANTONIO DEL POZZO', 'INFO@VILLASVIZZERA.IT', '081994263', 2, 0, 'ANTONIO DEL POZZO', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, 'Villasvizzeravsv29479', 'Agreements', 'negombo_60ba16067ec540.66823847', 0.00, 'user', '2021-06-04 12:01:10', '2021-06-04 12:01:10'),
(115, '1424', 'Carlotta Ferri', 'Carlotta Ferri', 'ferricarlottaa@gmail.com', '3492360595', 4, 0, 'Carlotta Ferri', 'Andrea Russo', 'Michela Liguori', NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, NULL, 'Credit Card', 'negombo_60ba18b37a3047_21440196', 128.00, 'user', '2021-06-04 12:14:38', '2021-06-04 12:14:38'),
(116, 'B33', 'MICHELE TRIMARCO', 'MICHELE TRIMARCO', 'INFO@VILLASVIZZERA.IT', '081994263', 2, 0, 'MICHELE TRIMARCO', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, 'VILLASVIZZERAVSV29479', 'Agreements', 'negombo_60ba1d967dc180.70461509', 0.00, 'user', '2021-06-04 12:33:26', '2021-06-04 12:33:26'),
(117, 'A12', 'Francesca Rosa', 'Francesca Rosa', 'francescarosa88@gmail.com', '3893462475', 2, 0, 'Francesca Rosa', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, NULL, 'Credit Card', 'negombo_60ba2a2b1a6884_44487126', 80.00, 'user', '2021-06-04 13:29:26', '2021-06-04 13:29:26'),
(118, 'F11', 'Donza Olimpia', 'Donza Olimpia', 'hoteldonfelipe@libero.it', '3331371023', 2, 0, 'MASSOLINO DANIELA', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, 'donfelipedfe47852', 'Agreements', 'negombo_60ba2c4ae2c415.16083832', 0.00, 'user', '2021-06-04 13:36:11', '2021-06-04 13:36:11'),
(119, '1441', 'Michele Russo', 'Michele Russo', 'effect@libero.it', '3296906668', 2, 0, 'Simona Spinella', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, NULL, 'Credit Card', 'negombo_60ba3e2ba3d818_08754357', 80.00, 'user', '2021-06-04 14:54:10', '2021-06-04 14:54:10'),
(120, 'C14', 'Carluccio Emanuela', 'Carluccio Emanuela', 'info@annabelle.it', '081 991890', 2, 0, 'Carluccio Emanuela', NULL, NULL, NULL, NULL, NULL, '2021-06-06', '2021-06-06', 1, 'annabelleann37511', 'Agreements', 'negombo_60bb1faed2bcb7.86467352', 0.00, 'user', '2021-06-05 06:54:39', '2021-06-05 06:54:39'),
(121, '81', 'SOLDA DEBORAH', 'SOLDA DEBORAH', 'moresco@leohotels.it', '081981355', 2, 0, 'SOLDA DEBORAH', NULL, NULL, NULL, NULL, NULL, '2021-06-07', '2021-06-07', 1, 'morescomrs41126', 'Agreements', 'negombo_60bb32c15f6db1.61184088', 0.00, 'user', '2021-06-05 08:16:01', '2021-06-05 08:16:01'),
(122, '12', 'Milanesi Jole Maria Celeste', 'Milanesi Jole Maria Celeste', 'info@annabelle.it', '081 991890', 2, 0, 'Milanesi Jole Maria Celeste', NULL, NULL, NULL, NULL, NULL, '2021-06-06', '2021-06-06', 1, 'annabelleann37511', 'Agreements', 'negombo_60bb36b5e4f243.95649915', 0.00, 'user', '2021-06-05 08:32:54', '2021-06-05 08:32:54'),
(123, '13', 'Annika Lundgren', 'Annika Lundgren', 'info@annabelle.it', '081 991890', 2, 0, 'Annika Lundgren', NULL, NULL, NULL, NULL, NULL, '2021-06-06', '2021-06-06', 1, 'annabelleann37511', 'Agreements', 'negombo_60bb36fc4101f8.61059938', 0.00, 'user', '2021-06-05 08:34:04', '2021-06-05 08:34:04'),
(124, '41', 'Carmine portoghese', 'Carmine portoghese', 'drpalmiragraziano@gmail.com', '3801273139', 2, 0, 'Palmira Graziano', NULL, NULL, NULL, NULL, NULL, '2021-06-06', '2021-06-06', 1, NULL, 'Credit Card', 'negombo_60bb53a9af7831_37741220', 80.00, 'user', '2021-06-05 10:38:14', '2021-06-05 10:38:14'),
(125, '1208', 'Rossana gismondi', 'Rossana gismondi', 'rossanagismondi@studio-gg.it', '3929138038', 4, 0, 'Renzo Gian alessio capolla', 'giulia adina capolla', 'Paola proni', NULL, NULL, NULL, '2021-06-06', '2021-06-06', 1, NULL, 'Credit Card', 'negombo_60bb580c752cc7_01941739', 128.00, 'user', '2021-06-05 10:57:07', '2021-06-05 10:57:07'),
(126, '1209', 'Massimo Nava', 'Massimo Nava', 'rossanagismondi@studio-gg.it', '3383858925', 4, 0, 'Nella dalla torre', 'Veronica ceruti', 'Paola arosio', NULL, NULL, NULL, '2021-06-06', '2021-06-06', 1, NULL, 'Credit Card', 'negombo_60bb59895ed285_49262426', 128.00, 'user', '2021-06-05 11:02:20', '2021-06-05 11:02:20'),
(127, 'B21', 'hedges  andrea anna', 'hedges  andrea anna', 'hoteldellabaia@negombo.it', '081995453', 2, 0, 'scrufari hedges anna  giulia', NULL, NULL, NULL, NULL, NULL, '2021-06-06', '2021-06-08', 1, 'hoteldellabaiahdb52634', 'Agreements', 'negombo_60bb5c71a4d741.34892799', 0.00, 'user', '2021-06-05 11:13:54', '2021-06-05 11:13:54'),
(128, 'A24', 'santini gemma  celeste', 'santini gemma  celeste', 'hoteldellabaia@negombo.it', '081995453', 2, 0, 'scrufari pasquale', NULL, NULL, NULL, NULL, NULL, '2021-06-06', '2021-06-08', 1, 'hoteldellabaiahdb52634', 'Agreements', 'negombo_60bb5cfdf196f2.92316866', 0.00, 'user', '2021-06-05 11:16:14', '2021-06-05 11:16:14'),
(129, 'B14', 'garrone isabella', 'garrone isabella', 'hoteldellabaia@negombo.it', '081995453', 3, 0, 'garrone  carlotta', 'emmy  wiskermann', NULL, NULL, NULL, NULL, '2021-06-06', '2021-06-08', 1, 'hoteldellabaiahdb52634', 'Agreements', 'negombo_60bb5de80fb7b8.35732658', 0.00, 'user', '2021-06-05 11:20:08', '2021-06-05 11:20:08'),
(130, 'B24', 'garrone elena', 'garrone elena', 'hoteldellabaia@negombo.it', '081995453', 2, 0, 'garrone  anna', NULL, NULL, NULL, NULL, NULL, '2021-06-06', '2021-06-08', 1, 'hoteldellabaiahdb52634', 'Agreements', 'negombo_60bb5e640f3b29.06628779', 0.00, 'user', '2021-06-05 11:22:12', '2021-06-05 11:22:12'),
(131, 'B23', 'lo sappio lucia', 'lo sappio lucia', 'hoteldellabaia@negombo.it', '081995453', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-06', '2021-06-08', 1, 'hoteldellabaiahdb52634', 'Agreements', 'negombo_60bb5eef715ad0.19184468', 0.00, 'user', '2021-06-05 11:24:31', '2021-06-05 11:24:31'),
(132, 'C21', 'garrone francesco', 'garrone francesco', 'hoteldellabaia@negombo.it', '081995453', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-06', '2021-06-08', 1, 'hoteldellabaiahdb52634', 'Agreements', 'negombo_60bb5f778a09b3.33257043', 0.00, 'user', '2021-06-05 11:26:47', '2021-06-05 11:26:47'),
(133, 'D11', 'Paolillo Sabato', 'Paolillo Sabato', 'hoteldellabaia@negombo.it', '081986398', 2, 0, 'D\'ambrosio Mariara Rosaria', NULL, NULL, NULL, NULL, NULL, '2021-06-06', '2021-06-06', 1, 'hoteldellabaiahdb52634', 'Agreements', 'negombo_60bb6ae0dc0f35.10826749', 0.00, 'user', '2021-06-05 12:15:29', '2021-06-05 12:15:29'),
(134, '1012', 'URZO CLAUDIA', 'URZO CLAUDIA', 'info@ilnespolo.it', '3387910244', 4, 0, 'URZO ANTONIA', 'MAZZOCCHI MARINA', 'PARIANTE ANTONIO', NULL, NULL, NULL, '2021-06-06', '2021-06-06', 1, 'ilnespoloine90052', 'Agreements', 'negombo_60bb6d95264cf4.25891429', 0.00, 'user', '2021-06-05 12:27:01', '2021-06-05 12:27:01'),
(135, '1416', 'Giorgio Cortucci', 'Giorgio Cortucci', 'formiu@msn.com', '3371025737', 2, 0, 'Giorgio Cortucci', NULL, NULL, NULL, NULL, NULL, '2021-06-08', '2021-06-08', 1, NULL, 'Credit Card', 'negombo_60bb7bfa0dd6f5_46189742', 80.00, 'user', '2021-06-05 13:31:22', '2021-06-05 13:31:22'),
(136, '1013', 'MR ANTONIO FARALLI', 'MR ANTONIO FARALLI', 'antonio.faralli@gmail.com', '7861009094', 2, 0, 'Chen Chen', NULL, NULL, NULL, NULL, NULL, '2021-06-08', '2021-06-08', 1, NULL, 'Credit Card', 'negombo_60bba972b14a41_07917889', 80.00, 'user', '2021-06-05 16:43:50', '2021-06-05 16:43:50'),
(137, '641', 'Sabrina Desjobert', 'Sabrina Desjobert', 'sabrina.desjobert@gmail.com', '0778319312', 2, 0, 'Sabrina Desjobert', NULL, NULL, NULL, NULL, NULL, '2021-06-09', '2021-06-09', 1, NULL, 'Credit Card', 'negombo_60bbc975612970_62591061', 80.00, 'user', '2021-06-05 19:02:13', '2021-06-05 19:02:13'),
(138, 'C13', 'FRANCESCA CIUFFETELLI', 'FRANCESCA CIUFFETELLI', 'francesca.ciuffetelli@hotmail.it', '393775401315', 4, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-08', '2021-06-08', 1, NULL, 'Credit Card', 'negombo_60bc81f513c230_24010444', 128.00, 'user', '2021-06-06 08:07:16', '2021-06-06 08:07:16'),
(139, 'B11', 'nicoletta rognini', 'nicoletta rognini', 'info@ki-travel.it', '3387974019', 2, 0, 'pesarini', NULL, NULL, NULL, NULL, NULL, '2021-06-09', '2021-06-09', 1, NULL, 'Credit Card', 'negombo_60bca13e3193f7_44633751', 80.00, 'user', '2021-06-06 10:20:49', '2021-06-06 10:20:49'),
(140, 'B12', 'NICOLETTA ROGNINI', 'NICOLETTA ROGNINI', 'info@ki-travel.it', '3387974019', 2, 0, 'cacciatori daniele', NULL, NULL, NULL, NULL, NULL, '2021-06-09', '2021-06-09', 1, NULL, 'Credit Card', 'negombo_60bca202e73808_41643724', 80.00, 'user', '2021-06-06 10:23:42', '2021-06-06 10:23:42'),
(141, 'B13', 'NICOLETTA ROGNINI', 'NICOLETTA ROGNINI', 'info@ki-travel.it', '3387974019', 2, 0, 'ruffo giancarlo', NULL, NULL, NULL, NULL, NULL, '2021-06-09', '2021-06-09', 1, NULL, 'Credit Card', 'negombo_60bca2a2eee940_14975601', 80.00, 'user', '2021-06-06 10:26:19', '2021-06-06 10:26:19'),
(142, 'B14', 'NICOLETTA ROGNINI', 'NICOLETTA ROGNINI', 'info@ki-travel.it', '3387974019', 3, 0, 'rognini nicoletta', 'delon roberta', NULL, NULL, NULL, NULL, '2021-06-09', '2021-06-09', 1, NULL, 'Credit Card', 'negombo_60bca33ebfcc23_93732822', 105.00, 'user', '2021-06-06 10:28:58', '2021-06-06 10:28:58'),
(143, 'D11', 'Barbara Tiramani', 'Barbara Tiramani', 'barbara.tiramani@assolombarda.it', '3292335468', 4, 0, 'Stefano Lietti', 'Giuseppe Barbazza', 'Cristina Maraschi', NULL, NULL, NULL, '2021-06-09', '2021-06-09', 1, NULL, 'Credit Card', 'negombo_60bcc6dade0722_34829472', 128.00, 'user', '2021-06-06 13:04:25', '2021-06-06 13:04:25'),
(144, 'C11', 'Paolo Valla', 'Paolo Valla', 'hoteldellabaia@negombo.it', '081986398', 2, 0, 'barocci laura', NULL, NULL, NULL, NULL, NULL, '2021-06-08', '2021-06-10', 1, 'hoteldellabaiahdb52634', 'Agreements', 'negombo_60bdc9a226d158.64840757', 0.00, 'user', '2021-06-07 07:24:18', '2021-06-07 07:24:18'),
(145, 'D11', 'Alberto Grifo', 'Alberto Grifo', 'grifoalberto1@gmail.com', '081980182', 2, 0, 'Schiavone Salvatore', NULL, NULL, NULL, NULL, NULL, '2021-06-08', '2021-06-08', 1, 'grifogrf14390', 'Agreements', 'negombo_60bdcc2dcfc666.53631125', 0.00, 'user', '2021-06-07 07:35:10', '2021-06-07 07:35:10'),
(146, '1407', 'Federica Torri', 'Federica Torri', 'f.torri3@hotmail.it', '+393343864591', 2, 0, 'Roberta Torri', NULL, NULL, NULL, NULL, NULL, '2021-06-09', '2021-06-09', 1, NULL, 'Credit Card', 'negombo_60bdcf26035b62_49503737', 80.00, 'user', '2021-06-07 07:48:51', '2021-06-07 07:48:51'),
(147, '1433', 'Laura Spadafora', 'Laura Spadafora', 'lardire@hotmail.com', '3333151650', 4, 0, 'Laura Spadafora', 'Maria Grazia Izzo', 'Anna Olivi', NULL, NULL, NULL, '2021-06-09', '2021-06-09', 1, NULL, 'Credit Card', 'negombo_60bddf39cf50a5_54987132', 128.00, 'user', '2021-06-07 08:57:32', '2021-06-07 08:57:32'),
(148, 'A11', 'Giacomo Strambi', 'Giacomo Strambi', 'giacomostrambi@studiosgs.it', '3482680028', 2, 0, 'Giacomo Strambi', NULL, NULL, NULL, NULL, NULL, '2021-06-09', '2021-06-09', 1, NULL, 'Credit Card', 'negombo_60be05f6611a22_23472194', 80.00, 'user', '2021-06-07 11:44:41', '2021-06-07 11:44:41'),
(149, 'C14', 'Laura Petrini', 'Laura Petrini', 'INFO@HOTELPROVIDENCE.IT', '3356623203', 4, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-09', '2021-06-09', 1, 'providenceprv29769', 'Agreements', 'negombo_60be3d7d793d60.34162838', 0.00, 'user', '2021-06-07 15:38:37', '2021-06-07 15:38:37'),
(150, '315', 'Martina Tessari', 'Martina Tessari', 'martina.tessari@gmail.com', '3488280700', 2, 0, 'Leonardo Bortolami', NULL, NULL, NULL, NULL, NULL, '2021-06-11', '2021-06-11', 1, NULL, 'Credit Card', 'negombo_60be43783aff99_05910160', 80.00, 'user', '2021-06-07 16:05:18', '2021-06-07 16:05:18'),
(151, '1426', 'vittoria monti', 'vittoria monti', 'vittoria_monti@virgilio.it', '3383286925', 2, 0, 'mario ammendola', NULL, NULL, NULL, NULL, NULL, '2021-06-09', '2021-06-11', 1, 'montivit13424', 'Agreements', 'negombo_60be4413ef0b54.54787686', 0.00, 'user', '2021-06-07 16:06:44', '2021-06-07 16:06:44'),
(152, '318', 'Fabrizio Tessari', 'Fabrizio Tessari', 'martina.tessari@gmail.com', '3488280700', 3, 0, 'Claudia Bonato', 'Pietro Tessari', NULL, NULL, NULL, NULL, '2021-06-11', '2021-06-11', 1, NULL, 'Credit Card', 'negombo_60be44146d5661_92627459', 105.00, 'user', '2021-06-07 16:07:42', '2021-06-07 16:07:42'),
(153, 'C14', 'Cinzia Balboni', 'Cinzia Balboni', 'cinzia.balboni63@gmail.com', '3343424577', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-10', '2021-06-10', 1, NULL, 'Credit Card', 'negombo_60bf2bf647b531_06622646', 65.00, 'user', '2021-06-08 08:38:03', '2021-06-08 08:38:03'),
(155, 'A14', 'Camerini', 'Camerini', 'backoffice@negombo.it', '1', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-15', '2021-06-30', 1, NULL, 'Admin', 'negombo_60bf3dfbc8c971.06103404', 0.00, 'Gabriella Pilato', '2021-06-08 09:52:59', '2021-06-08 09:52:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(45) NOT NULL DEFAULT '',
  `promocode` varchar(191) NOT NULL DEFAULT '',
  `tipo` varchar(2) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `nome`, `promocode`, `tipo`) VALUES
(1, 'ABUNDIA res.', 'abundiaresare34817', 'F8'),
(2, 'Albergo Conte ', 'albergoconteaco17089', 'F8'),
(3, 'Ambasciatori', 'ambasciatoriamb00342', 'F8'),
(4, 'Annabelle ', 'annabelleann37511', 'F8'),
(5, 'Antares', 'antaresant60459', '  '),
(6, 'Aragona Palace', 'aragonapalaceapa13224', '  '),
(7, 'Aragonese', 'aragoneseara27311', '  '),
(8, 'Bellevue', 'bellevuebll36031', 'F8'),
(9, 'Capizzo', 'capizzocpz01084', '  '),
(10, 'Casa Gennaro', 'casagennarocgn32587', '  '),
(11, 'Castiglione ', 'castiglionecst98239', 'F8'),
(12, 'Central Park', 'centralparkcpa09117', 'F8'),
(13, 'Continental mare', 'continentalmarecma41102', 'F8'),
(14, 'Cristallo', 'cristallocrs16055', '  '),
(15, 'Iris', 'irisiri68286', '3e'),
(16, 'La Sirenella', 'sirenellasrn27856', '  '),
(17, 'Manzi', 'manzimnz91966', 'F8'),
(18, 'Marina 10', 'marina10m1017763', '  '),
(19, 'Monti Pippo', 'montipippompi43220', '  '),
(20, 'Moresco', 'morescomrs41126', 'F8'),
(21, 'Nettuno', 'nettunontt04973', '  '),
(22, 'Parco dei principi', 'parcodeiprincipippr99915', 'F8'),
(23, 'Regina Palace ', 'reginapalacerpa06064', 'F8'),
(24, 'Royal Palm', 'royalpalmrpa21410', '  '),
(25, 'S.Angelo', 'sangelosan87748', '  '),
(26, 'S.Francesco', 'sfrancescosfr74786', 'F8'),
(27, 'S.Valentino', 'svalentinosva84281', 'F8'),
(28, 'Villa Carolina', 'villacarolinavci45871', '  '),
(29, 'Villa Lieta', 'villalietavli61598', '  '),
(30, 'Villa Ravino', 'villaravinovra29791', 'F8'),
(31, 'Villa Sirena', 'villasirenavsi44331', '  '),
(32, 'Villa Svizzera', 'villasvizzeravsv29479', 'F8'),
(33, 'Zaro', 'hzarohzr30639', 'F8'),
(34, 'Zi Carmela ', 'zicarmelazca30234', '  '),
(35, 'Acampora', 'acamporaaca28092', 'F2'),
(36, 'Cala degli aragonesi', 'caladegliaragonesicar68500', 'F2'),
(37, 'Gran Paradiso', 'granparadisogpa69826', 'F2'),
(38, 'Imperatore Travel', 'imperatoretravelitr98550', 'F2'),
(39, 'Nitrodi', 'nitrodintr77918', 'F2'),
(40, 'Villa Angela', 'villaangelavla25419', 'F2'),
(41, 'Villa Maria ', 'villamariavma73943', 'F2'),
(42, 'Hotel Della Baia', 'hoteldellabaiahdb52634', 'F2'),
(43, 'Floridiana', 'floridianaflr60697', '  '),
(44, 'Hotel La Mandorla', 'lamandorlamda32456', '  '),
(45, 'HT  Albatros', 'albatrosalb64299', '  '),
(46, 'HT  Ape Regina', 'apereginaare14938', '  '),
(47, 'HT  Baia Sorgeto ', 'baiasorgetobso94053', '  '),
(48, 'HT  Bel Tramonto', 'beltramontobtr58566', '  '),
(49, 'HT  Bellavista ', 'bellavistabll02126', '  '),
(50, 'HT  Blue Resort', 'blueresortbre09155', '  '),
(51, 'HT  Carlo Magno', 'carlomagnocma43679', '  '),
(52, 'HT  Citara', 'citaractr72141', '  '),
(53, 'HT  Costa Citara ', 'costacitaracci01461', '  '),
(54, 'HT  Di Meglio', 'dimegliodme28554', '  '),
(55, 'HT  Don Pedro', 'donpedrodpe68898', '  '),
(56, 'HT  Don Pepe', 'donpepedpe61588', '  '),
(57, 'HT  Felix', 'felixflx61579', '  '),
(58, 'HT  Gattopardo', 'gattopardogtt48775', '  '),
(59, 'HT  Grifo', 'grifogrf14390', '  '),
(60, 'HT  Hermitage', 'hermitagehrm48485', '  '),
(61, 'HT  Ideal', 'idealide40055', '  '),
(62, 'HT  il Bosco', 'ilboscoibo43803', '  '),
(63, 'HT  il Campagnuolo', 'ilcampagnuoloica06414', '  '),
(64, 'HT  il Nespolo', 'ilnespoloine90052', '  '),
(65, 'HT  Internazionale', 'internazionaleint15330', '  '),
(66, 'HT  Italia', 'italiaita00737', '  '),
(67, 'HT  Jantò', 'jantòjnt45084', '  '),
(68, 'HT  la Capannina ', 'capanninacpn44316', '  '),
(69, 'HT  La Luna', 'lunaln15517', '3e'),
(70, 'HT  La Reginella ', 'reginellargn06685', '  '),
(71, 'HT  le Canne', 'lecannelca10140', '  '),
(72, 'HT  Lord Byron', 'lordbyronlby55518', '  '),
(73, 'HT  Macri', 'macrimcr14057', '  '),
(74, 'HT  Mareblu', 'mareblumrb46183', '  '),
(75, 'HT  Matarese', 'mataresemtr17968', '  '),
(76, 'HT  Mediterraneo', 'mediterraneomdt67034', '  '),
(77, 'HT  Michelangelo', 'michelangelomch23295', '  '),
(78, 'HT  Miralisa', 'miralisamrl95049', '  '),
(79, 'HT  Miramare Castello', 'miramarecastellomca85531', '  '),
(80, 'HT  Myage', 'myagemyg45957', '  '),
(81, 'HT  Parco Maria', 'parcomariapma25543', '  '),
(82, 'HT  Principe', 'principeprn46988', '  '),
(83, 'HT  Providence ', 'providenceprv29769', '  '),
(84, 'HT  Punta del Sole ', 'puntadelsolepso67176', '  '),
(85, 'HT  Punta Imperatore ', 'puntaimperatorepim34985', '  '),
(86, 'HT  Punta Molino', 'puntamolinopmo43814', '  '),
(87, 'HT  Rivamare', 'rivamarervm82663', '  '),
(88, 'HT  S.Giorgio', 'sgiorgiosgi80295', '  '),
(89, 'HT  S.Lorenzo', 'slorenzoslo79269', '  '),
(90, 'HT  S.Montano', 'smontanosmo74531', '  '),
(91, 'HT  S.Raphael', 'sraphaelsra01911', '  '),
(92, 'HT  Solemar', 'solemarslm21283', '  '),
(93, 'HT  Sorriso', 'sorrisosrr66953', '  '),
(94, 'HT  Torre S.Angelo', 'torresangelotsa94515', '  '),
(95, 'HT  Tre Sorelle', 'tresorelletso53785', '  '),
(96, 'HT  Tritone ', 'tritonetrt92876', '  '),
(97, 'HT  Verde', 'verdevrd32216', '  '),
(98, 'HT  Villa d\' Orta', 'villadortavor81927', '  '),
(99, 'HT  Villa Durrueli', 'villadurruelivdu28341', '  '),
(100, 'HT  villa Franca ', 'villafrancavfr80908', '  '),
(101, 'HT  Villa Natalina ', 'villanatalinavna49951', '  '),
(102, 'HT  Villa Rita ', 'villaritavri28626', '  '),
(103, 'HT  Vittoria', 'vittoriavtt11813', '  '),
(104, 'Ht Europa', 'europaeup35418', '  '),
(105, 'Ht Excelsior', 'excelsiorexc47852', '  '),
(106, 'Ht Gemma', 'gemmagma55514', '  '),
(107, 'Ht Oasis', 'oasisoss78942', '  '),
(108, 'Ht Oriente', 'orienteoit12457', '  '),
(109, 'Ht Villa Panoramica', 'villapanoramicavip32547', '  '),
(110, 'Parco Conte Casam.', 'parcocontecne21456', '  '),
(111, 'Lostar', 'lostarlos54321', ''),
(112, 'Imperamare', 'imperamareima25874', ' '),
(113, 'Nausica', 'nausicaanca51478', '  '),
(114, 'Villa Angelica', 'villaangelica59412', '  ');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_25_170734_create_admins_table', 1),
(8, '2020_06_26_104930_create_bigmapmappings_table', 2),
(9, '2014_10_12_100000_create_password_resets_table', 3),
(17, '2020_06_25_152546_create_places_table', 4),
(19, '2014_10_12_000000_create_users_table', 5),
(30, '2020_06_28_095936_create_bookings_table', 8),
(32, '2020_08_08_140545_create_temp_bookings_table', 9),
(33, '2020_08_14_144354_create_trans_table', 9),
(35, '2020_08_30_162648_create_tempbooking_cards_table', 10),
(37, '2020_07_06_104439_create_promo_codes_table', 11),
(38, '2020_07_16_100644_create_setting_admins_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('shaykhsiddique.lava@gmail.com', '$2y$10$Lvu7A48C7kZs8pUqxAQUcOjHHVw0upy/xASDYMjo25QLc2KkQiF2K', '2020-07-02 15:07:11'),
('shaykhsiddiqee@gmail.com', '$2y$10$oNruYXxcMthD0ueFLUMsHeTOfL.Bu.MaJRtor7x4M4fxL/NAwwDCC', '2020-07-04 11:16:56'),
('giovanna@negombo.it', '$2y$10$omaEjXiBK9uMzRuMrZ41TOPJBK/qdCTfdHHCxoFIUDN61e6PtyFbK', '2020-08-04 07:26:03');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `place_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `co_xl` int(11) NOT NULL,
  `co_yl` int(11) NOT NULL,
  `co_xs` int(11) DEFAULT NULL,
  `co_ys` int(11) DEFAULT NULL,
  `coordinates` text COLLATE utf8mb4_unicode_ci,
  `coordsn` double NOT NULL,
  `coordse` double NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `price` double NOT NULL,
  `currency_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `place_id`, `place_name`, `map_name`, `co_xl`, `co_yl`, `co_xs`, `co_ys`, `coordinates`, `coordsn`, `coordse`, `status`, `price`, `currency_type`, `created_at`, `updated_at`) VALUES
(1, 'A11', 'A11', 'Spiaggia', 146, 460, 60, 272, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 16:37:54', '2021-05-28 16:37:54'),
(2, 'A12', 'A12', 'Spiaggia', 178, 446, 76, 262, NULL, 0, 0, 0, 12, 'EUR', '2021-05-28 16:38:36', '2021-05-28 16:38:36'),
(3, 'A13', 'A13', 'Spiaggia', 205, 436, 88, 256, NULL, 0, 0, 0, 13, 'EUR', '2021-05-28 16:38:55', '2021-05-28 16:38:55'),
(4, 'A14', 'A14', 'Spiaggia', 237, 424, 101, 248, NULL, 0, 0, 0, 14, 'EUR', '2021-05-28 16:39:58', '2021-05-28 16:39:58'),
(5, 'A21', 'A21', 'Spiaggia', 180, 492, 75, 290, NULL, 0, 0, 0, 21, 'EUR', '2021-05-28 16:40:40', '2021-05-28 16:40:40'),
(6, 'A22', 'A22', 'Spiaggia', 211, 480, 87, 282, NULL, 0, 0, 0, 22, 'EUR', '2021-05-28 16:41:53', '2021-05-28 16:41:53'),
(11, 'A23', 'A23', 'Spiaggia', 240, 468, 102, 280, NULL, 0, 0, 0, 23, 'EUR', '2021-05-28 16:44:38', '2021-05-28 16:44:38'),
(13, 'A24', 'A24', 'Spiaggia', 271, 458, 114, 269, NULL, 0, 0, 0, 24, 'EUR', '2021-05-28 16:45:04', '2021-05-28 16:45:04'),
(14, 'A31', 'A31', 'Spiaggia', 207, 525, 87, 310, NULL, 0, 0, 0, 31, 'EUR', '2021-05-28 16:45:31', '2021-05-28 16:45:31'),
(15, 'A32', 'A32', 'Spiaggia', 240, 510, 99, 301, NULL, 0, 0, 0, 32, 'EUR', '2021-05-28 16:45:54', '2021-05-28 16:45:54'),
(17, 'A33', 'A33', 'Spiaggia', 269, 498, 113, 292, NULL, 0, 0, 0, 33, 'EUR', '2021-05-28 16:46:17', '2021-05-28 16:46:17'),
(18, 'A34', 'A34', 'Spiaggia', 299, 482, 127, 284, NULL, 0, 0, 0, 34, 'EUR', '2021-05-28 16:46:49', '2021-05-28 16:46:49'),
(19, 'A41', 'A41', 'Spiaggia', 234, 551, 98, 325, NULL, 0, 0, 0, 41, 'EUR', '2021-05-28 16:47:18', '2021-05-28 16:47:18'),
(20, 'A42', 'A42', 'Spiaggia', 263, 540, 111, 317, NULL, 0, 0, 0, 42, 'EUR', '2021-05-28 16:47:54', '2021-05-28 16:47:54'),
(21, 'A43', 'A43', 'Spiaggia', 296, 524, 124, 309, NULL, 0, 0, 0, 43, 'EUR', '2021-05-28 16:48:15', '2021-05-28 16:48:15'),
(22, 'A44', 'A44', 'Spiaggia', 326, 512, 137, 299, NULL, 0, 0, -1, 44, 'EUR', '2021-05-28 16:48:38', '2021-05-30 08:27:33'),
(23, '503', '503', 'Balze basse', 41, 34, 15, 20, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 16:49:08', '2021-06-04 11:14:23'),
(24, 'B11', 'B11', 'Spiaggia', 276, 405, 116, 240, NULL, 0, 0, 0, 11, 'EUR', '2021-05-28 16:49:11', '2021-05-28 16:49:11'),
(25, '528', '528', 'Balze basse', 101, 1, 41, 2, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 16:49:31', '2021-05-28 16:49:31'),
(26, 'B12', 'B12', 'Spiaggia', 305, 392, 128, 228, NULL, 0, 0, 0, 12, 'EUR', '2021-05-28 16:49:37', '2021-05-28 16:49:37'),
(27, '527', '527', 'Balze basse', 139, 23, 57, 14, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 16:50:03', '2021-05-28 16:50:03'),
(28, '502', '502', 'Balze basse', 135, 110, 58, 66, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 16:50:25', '2021-06-04 11:15:32'),
(29, '526', '526', 'Balze basse', 207, 59, 87, 34, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 16:50:46', '2021-05-28 16:50:46'),
(30, '711', '711', 'Balze basse', 692, 548, 294, 327, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 16:50:53', '2021-05-28 17:22:20'),
(31, '525', '525', 'Balze basse', 260, 94, 110, 54, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 16:51:09', '2021-05-28 16:51:09'),
(32, 'B13', 'B13', 'Spiaggia', 334, 379, 140, 222, NULL, 0, 0, 0, 13, 'EUR', '2021-05-28 16:51:16', '2021-05-28 16:51:16'),
(33, '513', '513', 'Balze basse', 218, 113, 93, 64, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 16:51:29', '2021-05-28 16:51:29'),
(34, '712', '712', 'Balze basse', 681, 515, 289, 306, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 16:51:42', '2021-05-28 16:51:42'),
(35, 'B14', 'B14', 'Spiaggia', 361, 367, 153, 215, NULL, 0, 0, 0, 14, 'EUR', '2021-05-28 16:51:45', '2021-05-28 16:51:45'),
(36, '524', '524', 'Balze basse', 294, 124, 125, 68, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 16:51:52', '2021-05-30 08:56:14'),
(37, 'B21', 'B21', 'Spiaggia', 312, 441, 131, 257, NULL, 0, 0, 0, 21, 'EUR', '2021-05-28 16:52:04', '2021-05-28 16:52:04'),
(38, '512', '512', 'Balze basse', 256, 140, 109, 80, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 16:52:11', '2021-05-28 16:52:11'),
(39, 'B22', 'B22', 'Spiaggia', 338, 427, 143, 249, NULL, 0, 0, 0, 22, 'EUR', '2021-05-28 16:52:27', '2021-05-28 16:52:27'),
(40, 'B23', 'B23', 'Spiaggia', 367, 412, 155, 240, NULL, 0, 0, 0, 23, 'EUR', '2021-05-28 16:52:49', '2021-05-28 16:52:49'),
(41, '523', '523', 'Balze basse', 325, 149, 137, 87, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 16:52:58', '2021-05-28 16:52:58'),
(42, 'B24', 'B24', 'Spiaggia', 394, 398, 168, 235, NULL, 0, 0, 0, 24, 'EUR', '2021-05-28 16:53:04', '2021-05-28 16:53:04'),
(43, '511', '511', 'Balze basse', 281, 164, 119, 95, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 16:53:23', '2021-05-30 08:56:45'),
(44, 'B31', 'B31', 'Spiaggia', 342, 467, 146, 275, NULL, 0, 0, 0, 31, 'EUR', '2021-05-28 16:53:36', '2021-05-28 16:53:36'),
(45, 'B32', 'B32', 'Spiaggia', 371, 456, 158, 266, NULL, 0, 0, 0, 32, 'EUR', '2021-05-28 16:53:54', '2021-05-28 16:53:54'),
(46, '522', '522', 'Balze basse', 366, 187, 154, 109, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 16:53:57', '2021-05-30 08:59:06'),
(47, '713', '713', 'Balze basse', 652, 487, 276, 291, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 16:54:01', '2021-05-30 09:01:21'),
(48, '521', '521', 'Balze basse', 390, 208, 165, 121, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 16:54:20', '2021-06-04 11:04:03'),
(49, 'B33', 'B33', 'Spiaggia', 398, 442, 170, 259, NULL, 0, 0, 0, 33, 'EUR', '2021-05-28 16:54:25', '2021-05-28 16:54:25'),
(50, '721', '721', 'Balze basse', 653, 427, 280, 254, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 16:54:27', '2021-05-28 16:54:27'),
(51, 'B34', 'B34', 'Spiaggia', 428, 427, 183, 252, NULL, 0, 0, 0, 34, 'EUR', '2021-05-28 16:54:49', '2021-05-28 16:54:49'),
(52, '501', '501', 'Balze basse', 431, 341, 184, 199, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 16:54:53', '2021-06-04 11:16:43'),
(53, '731', '731', 'Balze basse', 723, 442, 306, 261, NULL, 0, 0, -1, 1, 'EUR', '2021-05-28 16:54:57', '2021-05-30 09:00:35'),
(54, 'B41', 'B41', 'Spiaggia', 365, 494, 154, 288, NULL, 0, 0, 0, 41, 'EUR', '2021-05-28 16:55:12', '2021-05-28 16:55:12'),
(55, '741', '741', 'Balze basse', 697, 316, 296, 186, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 16:55:27', '2021-05-28 17:03:15'),
(56, 'B42', 'B42', 'Spiaggia', 396, 477, 166, 279, NULL, 0, 0, -1, 42, 'EUR', '2021-05-28 16:55:36', '2021-05-30 08:25:13'),
(57, 'B43', 'B43', 'Spiaggia', 424, 464, 179, 272, NULL, 0, 0, 0, 43, 'EUR', '2021-05-28 16:55:53', '2021-05-28 16:55:53'),
(58, '732', '732', 'Balze basse', 669, 402, 286, 236, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 16:56:08', '2021-05-28 17:02:55'),
(59, 'B44', 'B44', 'Spiaggia', 452, 452, 192, 264, NULL, 0, 0, 0, 44, 'EUR', '2021-05-28 16:56:10', '2021-05-28 16:56:10'),
(60, 'C11', 'C11', 'Spiaggia', 394, 349, 168, 203, NULL, 0, 0, 0, 11, 'EUR', '2021-05-28 16:56:28', '2021-05-28 16:56:28'),
(61, '722', '722', 'Balze basse', 613, 367, 260, 218, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 16:56:45', '2021-05-28 16:56:45'),
(62, '1104', '1104', 'Zona Termale', 417, 423, 176, 249, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 16:56:46', '2021-05-28 16:56:46'),
(63, 'C12', 'C12', 'Spiaggia', 424, 333, 179, 195, NULL, 0, 0, 0, 12, 'EUR', '2021-05-28 16:56:55', '2021-05-28 16:56:55'),
(64, '1110', '1110', 'Zona Termale', 398, 531, 167, 308, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 16:57:06', '2021-05-28 16:57:06'),
(65, 'C13', 'C13', 'Spiaggia', 449, 316, 191, 185, NULL, 0, 0, 0, 13, 'EUR', '2021-05-28 16:57:18', '2021-05-28 16:57:18'),
(66, '718', '718', 'Balze basse', 541, 351, 231, 210, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 16:57:26', '2021-05-28 17:01:14'),
(67, '1109', '1109', 'Zona Termale', 417, 509, 178, 298, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 16:57:31', '2021-05-28 16:57:31'),
(68, 'C14', 'C14', 'Spiaggia', 477, 304, 203, 181, NULL, 0, 0, 0, 14, 'EUR', '2021-05-28 16:57:33', '2021-05-28 16:57:33'),
(69, '1108', '1108', 'Zona Termale', 433, 491, 184, 284, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 16:57:53', '2021-05-28 16:57:53'),
(70, 'C21', 'C21', 'Spiaggia', 427, 382, 181, 223, NULL, 0, 0, 0, 21, 'EUR', '2021-05-28 16:57:55', '2021-05-28 16:57:55'),
(71, '751', '751', 'Balze basse', 535, 248, 225, 148, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 16:57:57', '2021-06-04 11:16:09'),
(72, 'C22', 'C22', 'Spiaggia', 458, 366, 194, 214, NULL, 0, 0, 0, 22, 'EUR', '2021-05-28 16:58:19', '2021-05-28 16:58:19'),
(73, '1107', '1107', 'Zona Termale', 500, 495, 211, 288, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 16:58:22', '2021-05-28 16:58:22'),
(74, '761', '761', 'Balze basse', 564, 162, 241, 99, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 16:58:36', '2021-05-28 16:58:36'),
(75, 'C23', 'C23', 'Spiaggia', 484, 349, 206, 202, NULL, 0, 0, 0, 23, 'EUR', '2021-05-28 16:58:40', '2021-05-28 16:58:40'),
(76, '1106', '1106', 'Zona Termale', 473, 475, 201, 277, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 16:58:45', '2021-05-28 16:58:45'),
(77, 'C24', 'C24', 'Spiaggia', 512, 332, 216, 191, NULL, 0, 0, 0, 24, 'EUR', '2021-05-28 16:58:57', '2021-05-28 16:58:57'),
(78, '1105', '1105', 'Zona Termale', 448, 454, 191, 264, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 16:59:10', '2021-05-28 16:59:10'),
(79, '717', '717', 'Balze basse', 510, 365, 217, 218, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 16:59:11', '2021-05-28 16:59:11'),
(80, 'C31', 'C31', 'Spiaggia', 462, 407, 194, 236, NULL, 0, 0, 0, 31, 'EUR', '2021-05-28 16:59:21', '2021-05-28 16:59:21'),
(81, '1103', '1103', 'Zona Termale', 455, 416, 190, 243, '0', 0, 0, 0, 0, 'EUR', '2021-05-28 16:59:35', '2021-05-28 16:59:35'),
(82, 'C32', 'C32', 'Spiaggia', 489, 392, 206, 229, NULL, 0, 0, 0, 32, 'EUR', '2021-05-28 16:59:43', '2021-05-28 16:59:43'),
(83, 'C33', 'C33', 'Spiaggia', 517, 374, 218, 223, NULL, 0, 0, 0, 33, 'EUR', '2021-05-28 17:00:13', '2021-05-28 17:00:13'),
(84, 'C34', 'C34', 'Spiaggia', 544, 360, 231, 210, NULL, 0, 0, 0, 34, 'EUR', '2021-05-28 17:00:35', '2021-05-28 17:00:35'),
(85, 'C41', 'C41', 'Spiaggia', 487, 431, 208, 248, NULL, 0, 0, 0, 41, 'EUR', '2021-05-28 17:00:55', '2021-05-28 17:00:55'),
(86, '1102', '1102', 'Zona Termale', 477, 400, 203, 233, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:01:01', '2021-05-28 17:01:01'),
(87, '1101', '1101', 'Zona Termale', 502, 387, 213, 227, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:01:19', '2021-05-28 17:01:19'),
(88, 'C42', 'C42', 'Spiaggia', 519, 414, 220, 241, NULL, 0, 0, -1, 42, 'EUR', '2021-05-28 17:01:23', '2021-05-30 08:23:43'),
(89, 'C43', 'C43', 'Spiaggia', 542, 395, 228, 231, NULL, 0, 0, 0, 43, 'EUR', '2021-05-28 17:01:46', '2021-05-28 17:01:46'),
(90, 'C44', 'C44', 'Spiaggia', 571, 379, 242, 223, NULL, 0, 0, 0, 44, 'EUR', '2021-05-28 17:02:04', '2021-05-28 17:02:04'),
(91, '1307', '1307', 'Zona Termale', 191, 397, 78, 232, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:02:13', '2021-05-28 17:02:13'),
(92, 'D11', 'D11', 'Spiaggia', 504, 276, 212, 162, NULL, 0, 0, 0, 11, 'EUR', '2021-05-28 17:02:29', '2021-05-28 17:02:29'),
(93, '1306', '1306', 'Zona Termale', 216, 405, 92, 239, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:02:35', '2021-05-28 17:02:35'),
(94, 'D12', 'D12', 'Spiaggia', 527, 259, 223, 151, NULL, 0, 0, 0, 12, 'EUR', '2021-05-28 17:02:42', '2021-05-28 17:02:42'),
(95, '1305', '1305', 'Zona Termale', 233, 452, 97, 263, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:03:04', '2021-05-28 17:03:04'),
(96, '1304', '1304', 'Zona Termale', 252, 473, 107, 278, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 17:03:28', '2021-05-30 08:45:01'),
(97, '1303', '1303', 'Zona Termale', 282, 483, 121, 281, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 17:03:51', '2021-05-30 08:44:05'),
(98, '1302', '1302', 'Zona Termale', 320, 481, 137, 282, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:04:13', '2021-05-28 17:04:13'),
(99, '1301', '1301', 'Zona Termale', 341, 444, 145, 256, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:04:38', '2021-05-28 17:04:38'),
(100, '1201', '1201', 'Zona Termale', 102, 421, 44, 244, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 17:06:05', '2021-06-04 11:20:26'),
(101, '1202', '1202', 'Zona Termale', 84, 460, 36, 269, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:06:26', '2021-05-28 17:06:26'),
(102, '1203', '1203', 'Zona Termale', 111, 470, 48, 274, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 17:06:45', '2021-05-30 08:46:53'),
(103, '1204', '1204', 'Zona Termale', 142, 495, 60, 290, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 17:07:08', '2021-05-30 08:46:10'),
(104, '1205', '1205', 'Zona Termale', 177, 516, 74, 300, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:07:56', '2021-05-28 17:07:56'),
(105, '1206', '1206', 'Zona Termale', 38, 472, 17, 277, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:08:19', '2021-05-28 17:08:19'),
(106, '1207', '1207', 'Zona Termale', 64, 489, 27, 286, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:08:43', '2021-05-28 17:08:43'),
(107, '1208', '1208', 'Zona Termale', 98, 503, 39, 296, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:09:17', '2021-05-28 17:09:17'),
(108, 'D13', 'D13', 'Spiaggia', 549, 241, 231, 142, NULL, 0, 0, 0, 13, 'EUR', '2021-05-28 17:09:41', '2021-05-28 17:09:41'),
(109, '1209', '1209', 'Zona Termale', 119, 519, 51, 303, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:09:52', '2021-05-28 17:09:52'),
(110, 'D14', 'D14', 'Spiaggia', 566, 223, 241, 130, NULL, 0, 0, 0, 14, 'EUR', '2021-05-28 17:09:56', '2021-05-28 17:09:56'),
(111, '1210', '1210', 'Zona Termale', 156, 540, 67, 315, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:10:14', '2021-05-28 17:10:14'),
(112, 'D21', 'D21', 'Spiaggia', 542, 307, 230, 180, NULL, 0, 0, 0, 21, 'EUR', '2021-05-28 17:10:14', '2021-05-28 17:10:14'),
(113, 'D22', 'D22', 'Spiaggia', 565, 287, 240, 168, NULL, 0, 0, 0, 22, 'EUR', '2021-05-28 17:10:43', '2021-05-28 17:10:43'),
(114, 'D23', 'D23', 'Spiaggia', 591, 270, 249, 157, NULL, 0, 0, 0, 23, 'EUR', '2021-05-28 17:11:00', '2021-05-28 17:11:00'),
(115, 'D24', 'D24', 'Spiaggia', 612, 246, 261, 142, NULL, 0, 0, 0, 24, 'EUR', '2021-05-28 17:11:25', '2021-05-28 17:11:25'),
(116, 'D31', 'D31', 'Spiaggia', 579, 334, 244, 196, NULL, 0, 0, 0, 31, 'EUR', '2021-05-28 17:11:55', '2021-05-28 17:11:55'),
(117, '1211', '1211', 'Zona Termale', 198, 480, 85, 283, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 17:12:14', '2021-05-30 08:45:32'),
(118, 'D32', 'D32', 'Spiaggia', 609, 313, 257, 185, NULL, 0, 0, 0, 32, 'EUR', '2021-05-28 17:12:21', '2021-05-28 17:12:21'),
(119, '1212', '1212', 'Zona Termale', 225, 500, 94, 291, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:12:34', '2021-05-28 17:12:34'),
(120, 'D33', 'D33', 'Spiaggia', 632, 294, 269, 171, NULL, 0, 0, -1, 333, 'EUR', '2021-05-28 17:12:51', '2021-05-30 08:22:41'),
(121, 'D34', 'D34', 'Spiaggia', 653, 267, 278, 154, NULL, 0, 0, 0, 34, 'EUR', '2021-05-28 17:13:06', '2021-05-28 17:13:06'),
(122, '1213', '1213', 'Zona Termale', 247, 512, 104, 299, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:13:12', '2021-05-28 17:13:12'),
(123, 'D41', 'D41', 'Spiaggia', 605, 355, 256, 209, NULL, 0, 0, 0, 41, 'EUR', '2021-05-28 17:13:31', '2021-05-28 17:13:31'),
(125, 'D42', 'D42', 'Spiaggia', 634, 335, 270, 197, NULL, 0, 0, -1, 42, 'EUR', '2021-05-28 17:13:47', '2021-05-30 08:23:11'),
(126, 'D43', 'D43', 'Spiaggia', 665, 311, 281, 183, NULL, 0, 0, 0, 43, 'EUR', '2021-05-28 17:14:06', '2021-05-28 17:14:06'),
(127, 'D44', 'D44', 'Spiaggia', 686, 286, 292, 169, NULL, 0, 0, 0, 44, 'EUR', '2021-05-28 17:14:21', '2021-05-28 17:14:21'),
(128, 'D51', 'D51', 'Spiaggia', 636, 377, 269, 221, NULL, 0, 0, 0, 51, 'EUR', '2021-05-28 17:14:46', '2021-06-04 11:07:37'),
(129, '1214', '1214', 'Zona Termale', 233, 548, 99, 317, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:15:15', '2021-05-28 17:15:15'),
(130, 'D52', 'D52', 'Spiaggia', 656, 360, 279, 212, NULL, 0, 0, -1, 52, 'EUR', '2021-05-28 17:15:20', '2021-06-04 11:08:22'),
(131, 'D53', 'D53', 'Spiaggia', 681, 342, 288, 198, NULL, 0, 0, -1, 53, 'EUR', '2021-05-28 17:15:40', '2021-06-04 11:13:47'),
(132, '1215', '1215', 'Zona Termale', 262, 562, 112, 327, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 17:15:47', '2021-05-30 08:47:24'),
(133, '1216', '1216', 'Zona Termale', 290, 519, 124, 301, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:16:20', '2021-05-28 17:16:20'),
(134, '1217', '1217', 'Zona Termale', 322, 508, 138, 296, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:16:47', '2021-05-28 17:16:47'),
(135, '1218', '1218', 'Zona Termale', 330, 531, 140, 307, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:17:18', '2021-05-28 17:17:18'),
(136, '1219', '1219', 'Zona Termale', 297, 563, 127, 328, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 17:17:50', '2021-05-30 08:47:46'),
(137, 'E11', 'E11', 'Spiaggia', 592, 196, 252, 115, NULL, 0, 0, 0, 11, 'EUR', '2021-05-28 17:18:16', '2021-05-28 17:18:16'),
(138, '1220', '1220', 'Zona Termale', 324, 562, 139, 327, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:18:20', '2021-05-28 17:18:20'),
(139, '715', '715', 'Balze basse', 506, 404, 214, 240, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:18:24', '2021-05-28 17:21:17'),
(140, 'E12', 'E12', 'Spiaggia', 609, 175, 259, 102, NULL, 0, 0, 0, 12, 'EUR', '2021-05-28 17:18:33', '2021-05-28 17:18:33'),
(141, '714', '714', 'Balze basse', 541, 433, 229, 255, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:18:54', '2021-05-28 17:18:54'),
(142, '716', '716', 'Balze basse', 600, 423, 254, 251, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 17:19:26', '2021-05-30 09:00:04'),
(143, 'E13', 'E13', 'Spiaggia', 625, 155, 265, 91, NULL, 0, 0, 0, 13, 'EUR', '2021-05-28 17:19:39', '2021-05-28 17:19:39'),
(144, '702', '702', 'Balze basse', 482, 455, 204, 269, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:19:52', '2021-05-28 17:19:52'),
(145, '701', '701', 'Balze basse', 519, 473, 220, 280, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:20:10', '2021-05-28 17:20:10'),
(146, 'E14', 'E14', 'Spiaggia', 644, 132, 272, 81, NULL, 0, 0, 0, 14, 'EUR', '2021-05-28 17:20:21', '2021-05-28 17:20:21'),
(147, 'E21', 'E21', 'Spiaggia', 645, 215, 274, 129, NULL, 0, 0, 0, 21, 'EUR', '2021-05-28 17:20:55', '2021-05-28 17:20:55'),
(148, '1022', '1022', 'Zona Termale', 574, 548, 244, 318, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:21:06', '2021-05-28 17:21:06'),
(149, 'E22', 'E22', 'Spiaggia', 662, 192, 280, 119, NULL, 0, 0, 0, 22, 'EUR', '2021-05-28 17:21:15', '2021-05-28 17:21:15'),
(150, '1021', '1021', 'Zona Termale', 588, 522, 251, 307, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 17:21:38', '2021-05-30 08:43:28'),
(151, 'E23', 'E23', 'Spiaggia', 677, 175, 287, 106, NULL, 0, 0, -1, 23, 'EUR', '2021-05-28 17:21:56', '2021-05-30 08:21:04'),
(152, '1024', '1024', 'Zona Termale', 623, 575, 265, 337, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:21:59', '2021-05-28 17:21:59'),
(153, 'E24', 'E24', 'Spiaggia', 690, 153, 293, 91, NULL, 0, 0, -1, 24, 'EUR', '2021-05-28 17:22:22', '2021-05-30 08:20:22'),
(154, '1023', '1023', 'Zona Termale', 634, 550, 271, 321, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:22:25', '2021-05-28 17:22:25'),
(155, 'E31', 'E31', 'Spiaggia', 689, 236, 292, 139, NULL, 0, 0, 0, 31, 'EUR', '2021-05-28 17:22:49', '2021-05-28 17:22:49'),
(156, '1025', '1025', 'Zona Termale', 679, 555, 289, 323, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:22:54', '2021-05-28 17:22:54'),
(157, '1026', '1026', 'Zona Termale', 716, 557, 301, 326, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:23:15', '2021-05-28 17:23:15'),
(158, 'E32', 'E32', 'Spiaggia', 704, 215, 299, 128, NULL, 0, 0, 0, 32, 'EUR', '2021-05-28 17:23:22', '2021-05-28 17:23:22'),
(159, '1027', '1027', 'Zona Termale', 748, 561, 318, 327, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 17:23:49', '2021-05-30 08:42:56'),
(160, 'E33', 'E33', 'Spiaggia', 719, 195, 302, 118, NULL, 0, 0, 0, 33, 'EUR', '2021-05-28 17:23:58', '2021-05-28 17:23:58'),
(161, '1018', '1018', 'Zona Termale', 665, 499, 284, 289, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 17:24:14', '2021-05-30 08:41:49'),
(162, 'E34', 'E34', 'Spiaggia', 732, 172, 308, 102, NULL, 0, 0, 0, 34, 'EUR', '2021-05-28 17:24:20', '2021-05-28 17:24:20'),
(163, '1017', '1017', 'Zona Termale', 720, 492, 307, 289, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:24:34', '2021-05-28 17:24:34'),
(164, '1016', '1016', 'Zona Termale', 748, 492, 319, 288, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:24:58', '2021-05-28 17:24:58'),
(165, '1015', '1015', 'Zona Termale', 777, 461, 329, 269, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:26:13', '2021-05-28 17:26:13'),
(166, '1014', '1014', 'Zona Termale', 631, 461, 269, 272, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 17:26:35', '2021-05-30 08:39:50'),
(167, '1013', '1013', 'Zona Termale', 670, 455, 283, 266, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:27:04', '2021-05-28 17:27:04'),
(168, '1012', '1012', 'Zona Termale', 707, 447, 300, 262, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:27:24', '2021-05-28 17:27:24'),
(169, 'E41', 'E41', 'Spiaggia', 723, 246, 310, 141, NULL, 0, 0, -1, 41, 'EUR', '2021-05-28 17:27:25', '2021-05-30 08:22:01'),
(170, 'F11', 'F11', 'Spiaggia', 651, 111, 275, 69, NULL, 0, 0, 0, 11, 'EUR', '2021-05-28 17:27:49', '2021-05-28 17:27:49'),
(171, '1011', '1011', 'Zona Termale', 737, 432, 313, 254, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:28:06', '2021-05-28 17:28:06'),
(172, 'F12', 'F12', 'Spiaggia', 662, 86, 280, 52, NULL, 0, 0, 0, 12, 'EUR', '2021-05-28 17:28:18', '2021-05-28 17:28:18'),
(173, '622', '622', 'Balze Alte', 673, 485, 285, 287, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 17:28:21', '2021-05-30 09:08:04'),
(174, '621', '621', 'Balze Alte', 605, 480, 255, 285, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:28:37', '2021-05-28 17:28:37'),
(175, 'F13', 'F13', 'Spiaggia', 669, 69, 283, 43, NULL, 0, 0, -1, 13, 'EUR', '2021-05-28 17:28:38', '2021-05-30 08:19:44'),
(176, '1001', '1001', 'Zona Termale', 739, 354, 313, 207, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:28:43', '2021-05-28 17:28:43'),
(177, 'F14', 'F14', 'Spiaggia', 673, 47, 286, 30, NULL, 0, 0, -1, 14, 'EUR', '2021-05-28 17:28:49', '2021-06-01 09:04:08'),
(178, 'F15', 'F15', 'Spiaggia', 676, 20, 286, 15, NULL, 0, 0, -1, 15, 'EUR', '2021-05-28 17:29:02', '2021-06-01 09:04:42'),
(179, '1002', '1002', 'Zona Termale', 713, 343, 304, 202, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:29:04', '2021-05-28 17:29:04'),
(180, 'F21', 'F21', 'Spiaggia', 706, 125, 299, 75, NULL, 0, 0, 0, 21, 'EUR', '2021-05-28 17:29:19', '2021-05-28 17:29:19'),
(181, '1003', '1003', 'Zona Termale', 677, 333, 288, 195, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:29:23', '2021-05-28 17:29:23'),
(182, '634', '634', 'Balze Alte', 651, 431, 276, 257, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:29:33', '2021-05-28 17:29:33'),
(183, '1004', '1004', 'Zona Termale', 647, 322, 274, 187, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:29:53', '2021-05-28 17:29:53'),
(184, '632', '632', 'Balze Alte', 641, 410, 272, 241, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:30:00', '2021-05-28 17:30:00'),
(185, 'F31', 'F31', 'Spiaggia', 743, 151, 314, 93, NULL, 0, 0, 0, 31, 'EUR', '2021-05-28 17:30:01', '2021-05-28 17:30:01'),
(186, '1005', '1005', 'Zona Termale', 614, 317, 262, 185, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:30:14', '2021-05-28 17:30:14'),
(187, 'F32', 'F32', 'Spiaggia', 752, 132, 318, 79, NULL, 0, 0, 0, 32, 'EUR', '2021-05-28 17:30:15', '2021-05-28 17:30:15'),
(188, '674', '674', 'Balze Alte', 111, 53, 45, 34, NULL, 0, 0, 0, 674, 'EUR', '2021-05-28 17:31:11', '2021-05-28 17:31:11'),
(189, '673', '673', 'Balze Alte', 104, 68, 41, 44, NULL, 0, 0, 0, 673, 'EUR', '2021-05-28 17:31:35', '2021-05-28 17:31:35'),
(190, '1006', '1006', 'Zona Termale', 583, 337, 248, 201, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:31:50', '2021-05-28 17:31:50'),
(191, '672', '672', 'Balze Alte', 120, 84, 52, 52, NULL, 0, 0, 0, 672, 'EUR', '2021-05-28 17:31:56', '2021-05-28 17:31:56'),
(192, '1007', '1007', 'Zona Termale', 639, 359, 272, 211, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 17:32:12', '2021-05-30 08:40:29'),
(193, '671', '671', 'Balze Alte', 157, 87, 65, 54, NULL, 0, 0, 0, 671, 'EUR', '2021-05-28 17:32:13', '2021-05-28 17:32:13'),
(195, '1008', '1008', 'Zona Termale', 672, 367, 285, 214, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 17:32:34', '2021-06-04 11:20:57'),
(196, '654', '654', 'Balze Alte', 287, 110, 121, 68, NULL, 0, 0, 0, 654, 'EUR', '2021-05-28 17:32:38', '2021-05-28 17:32:38'),
(197, '653', '653', 'Balze Alte', 310, 134, 133, 79, NULL, 0, 0, 0, 653, 'EUR', '2021-05-28 17:32:54', '2021-05-28 17:32:54'),
(198, '631', '631', 'Balze Alte', 608, 417, 256, 247, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:33:00', '2021-05-28 17:33:00'),
(199, '655', '655', 'Balze Alte', 335, 114, 141, 69, NULL, 0, 0, 0, 655, 'EUR', '2021-05-28 17:33:06', '2021-05-28 17:33:06'),
(200, '652', '652', 'Balze Alte', 362, 153, 152, 93, NULL, 0, 0, -1, 652, 'EUR', '2021-05-28 17:33:49', '2021-05-30 09:06:28'),
(201, '651', '651', 'Balze Alte', 399, 171, 170, 103, NULL, 0, 0, 0, 651, 'EUR', '2021-05-28 17:34:02', '2021-05-28 17:34:02'),
(202, '661', '661', 'Balze Alte', 499, 195, 210, 112, NULL, 0, 0, 0, 661, 'EUR', '2021-05-28 17:34:18', '2021-05-28 17:34:18'),
(204, '615', '615', 'Balze Alte', 396, 416, 166, 247, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 17:34:35', '2021-05-30 09:10:07'),
(205, '1401', '1401', 'Zona Termale', 350, 381, 147, 222, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:34:40', '2021-05-28 17:34:40'),
(206, '662', '662', 'Balze Alte', 545, 196, 230, 115, NULL, 0, 0, 0, 662, 'EUR', '2021-05-28 17:34:48', '2021-05-28 17:34:48'),
(207, '1402', '1402', 'Zona Termale', 334, 362, 140, 209, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:35:02', '2021-05-28 17:35:02'),
(208, '616', '616', 'Balze Alte', 427, 403, 181, 238, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:35:02', '2021-05-28 17:35:02'),
(209, '664', '664', 'Balze Alte', 566, 218, 239, 127, NULL, 0, 0, -1, 664, 'EUR', '2021-05-28 17:35:03', '2021-05-30 09:07:24'),
(210, '614', '614', 'Balze Alte', 415, 377, 177, 225, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 17:35:20', '2021-05-30 09:08:36'),
(211, '1403', '1403', 'Zona Termale', 275, 337, 118, 199, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:35:25', '2021-05-28 17:35:25'),
(212, '613', '613', 'Balze Alte', 381, 393, 163, 234, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:35:45', '2021-05-28 17:35:45'),
(213, '1404', '1404', 'Zona Termale', 245, 327, 104, 188, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:35:48', '2021-05-28 17:35:48'),
(214, '612', '612', 'Balze Alte', 392, 351, 166, 210, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:36:00', '2021-05-28 17:36:00'),
(215, '1405', '1405', 'Zona Termale', 217, 315, 93, 186, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:36:19', '2021-05-28 17:36:19'),
(216, '1406', '1406', 'Zona Termale', 203, 246, 86, 146, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:36:38', '2021-05-28 17:36:38'),
(218, '1407', '1407', 'Zona Termale', 195, 226, 82, 131, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:38:06', '2021-05-28 17:38:06'),
(219, '3', '3', 'Zona Mare', 365, 470, 154, 284, NULL, 0, 0, 0, 3, 'EUR', '2021-05-28 17:38:12', '2021-05-28 17:38:12'),
(220, '1408', '1408', 'Zona Termale', 188, 206, 80, 120, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:38:29', '2021-05-28 17:38:29'),
(221, '86', '86', 'Zona Mare', 437, 6, 184, 7, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:38:52', '2021-05-28 17:38:52'),
(222, '1409', '1409', 'Zona Termale', 185, 183, 76, 108, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:39:10', '2021-05-28 17:39:10'),
(223, '85', '85', 'Zona Mare', 461, 20, 194, 17, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:39:15', '2021-05-28 17:39:15'),
(224, '1410', '1410', 'Zona Termale', 179, 160, 75, 93, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:39:42', '2021-05-28 17:39:42'),
(225, '663', '663', 'Balze Alte', 522, 215, 220, 130, NULL, 0, 0, -1, 663, 'EUR', '2021-05-28 17:40:19', '2021-05-30 09:06:57'),
(226, '633', '633', 'Balze Alte', 623, 436, 266, 258, NULL, 0, 0, 0, 633, 'EUR', '2021-05-28 17:40:44', '2021-05-28 17:40:44'),
(227, '84', '84', 'Zona Mare', 488, 36, 205, 25, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:40:48', '2021-05-28 17:40:48'),
(228, '1411', '1411', 'Zona Termale', 174, 135, 73, 83, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:41:04', '2021-05-28 17:41:04'),
(229, '665', '665', 'Balze Alte', 548, 243, 232, 142, NULL, 0, 0, 0, 665, 'EUR', '2021-05-28 17:41:05', '2021-05-28 17:41:05'),
(230, '83', '83', 'Zona Mare', 526, 73, 223, 48, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:41:08', '2021-05-28 17:41:08'),
(231, '666', '666', 'Balze Alte', 591, 270, 251, 159, NULL, 0, 0, 0, 666, 'EUR', '2021-05-28 17:41:20', '2021-05-28 17:41:20'),
(232, '1412', '1412', 'Zona Termale', 185, 112, 80, 64, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:41:26', '2021-05-28 17:41:26'),
(233, '641', '641', 'Balze Alte', 414, 255, 174, 151, NULL, 0, 0, 0, 641, 'EUR', '2021-05-28 17:41:50', '2021-05-28 17:41:50'),
(234, '1413', '1413', 'Zona Termale', 219, 98, 93, 54, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:41:54', '2021-05-28 17:41:54'),
(235, '82', '82', 'Zona Mare', 521, 127, 221, 80, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:42:04', '2021-05-28 17:42:04'),
(236, '642', '642', 'Balze Alte', 426, 279, 180, 166, NULL, 0, 0, 0, 642, 'EUR', '2021-05-28 17:42:07', '2021-05-28 17:42:07'),
(237, '1414', '1414', 'Zona Termale', 257, 91, 109, 53, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:42:23', '2021-05-28 17:42:23'),
(238, '643', '643', 'Balze Alte', 440, 307, 183, 180, NULL, 0, 0, 0, 643, 'EUR', '2021-05-28 17:42:27', '2021-05-28 17:42:27'),
(239, '81', '81', 'Zona Mare', 503, 156, 212, 95, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:42:35', '2021-05-28 17:42:35'),
(240, '611', '611', 'Balze Alte', 369, 368, 156, 216, NULL, 0, 0, 0, 611, 'EUR', '2021-05-28 17:42:46', '2021-05-28 17:42:46'),
(241, '1415', '1415', 'Zona Termale', 291, 86, 126, 52, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:42:57', '2021-05-28 17:42:57'),
(242, '64', '64', 'Zona Mare', 455, 200, 193, 120, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:43:00', '2021-05-28 17:43:00'),
(243, '1416', '1416', 'Zona Termale', 329, 87, 141, 49, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:43:21', '2021-05-28 17:43:21'),
(244, '601', '601', 'Balze Alte', 204, 298, 85, 175, NULL, 0, 0, -1, 601, 'EUR', '2021-05-28 17:43:22', '2021-06-04 11:18:00'),
(245, '63', '63', 'Zona Mare', 484, 219, 203, 134, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:43:24', '2021-05-28 17:43:24'),
(246, '602', '602', 'Balze Alte', 178, 267, 75, 158, NULL, 0, 0, 0, 602, 'EUR', '2021-05-28 17:43:36', '2021-05-28 17:43:36'),
(247, '62', '62', 'Zona Mare', 457, 235, 194, 139, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:43:45', '2021-05-28 17:43:45'),
(248, '1417', '1417', 'Zona Termale', 369, 99, 157, 58, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 17:43:49', '2021-06-04 11:19:53'),
(249, '603', '603', 'Balze Alte', 321, 262, 134, 156, NULL, 0, 0, 0, 603, 'EUR', '2021-05-28 17:43:52', '2021-05-28 17:43:52'),
(250, '424', '424', 'Balze Alte', 84, 218, 36, 130, NULL, 0, 0, -1, 424, 'EUR', '2021-05-28 17:44:24', '2021-06-04 11:17:32'),
(251, '1430', '1430', 'Zona Termale', 416, 182, 177, 108, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:44:42', '2021-05-28 17:44:42'),
(252, '61', '61', 'Zona Mare', 433, 246, 184, 147, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:44:44', '2021-05-28 17:44:44'),
(253, '425', '425', 'Balze Alte', 110, 198, 44, 119, NULL, 0, 0, -1, 425, 'EUR', '2021-05-28 17:44:52', '2021-05-30 09:11:02'),
(254, '1431', '1431', 'Zona Termale', 417, 208, 177, 123, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:45:04', '2021-05-28 17:45:04'),
(255, '60', '60', 'Zona Mare', 408, 252, 173, 151, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:45:13', '2021-05-28 17:45:13'),
(256, '423', '423', 'Balze Alte', 124, 224, 52, 129, NULL, 0, 0, 0, 423, 'EUR', '2021-05-28 17:45:13', '2021-05-28 17:45:13'),
(257, '1432', '1432', 'Zona Termale', 431, 232, 183, 137, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:45:34', '2021-05-28 17:45:34'),
(258, '422', '422', 'Balze Alte', 132, 240, 56, 144, NULL, 0, 0, 0, 422, 'EUR', '2021-05-28 17:45:45', '2021-05-28 17:45:45'),
(259, '1433', '1433', 'Zona Termale', 448, 263, 190, 156, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:45:59', '2021-05-28 17:45:59'),
(260, '59', '59', 'Zona Mare', 385, 266, 163, 159, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:46:02', '2021-05-28 17:46:02'),
(261, '421', '421', 'Balze Alte', 147, 261, 60, 156, NULL, 0, 0, -1, 421, 'EUR', '2021-05-28 17:46:06', '2021-05-30 09:12:04'),
(263, '58', '58', 'Zona Mare', 363, 278, 152, 167, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:46:33', '2021-05-28 17:46:33'),
(264, '1434', '1434', 'Zona Termale', 443, 292, 188, 171, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:46:38', '2021-05-28 17:46:38'),
(265, '413', '413', 'Balze Alte', 197, 346, 83, 202, NULL, 0, 0, -1, 413, 'EUR', '2021-05-28 17:46:40', '2021-05-30 08:52:48'),
(266, '412', '412', 'Balze Alte', 213, 370, 92, 217, NULL, 0, 0, 0, 412, 'EUR', '2021-05-28 17:46:56', '2021-05-28 17:46:56'),
(267, '57', '57', 'Zona Mare', 337, 290, 142, 172, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:46:58', '2021-05-28 17:46:58'),
(268, '1441', '1441', 'Zona Termale', 446, 341, 192, 200, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:47:05', '2021-05-28 17:47:05'),
(269, '411', '411', 'Balze Alte', 196, 403, 84, 236, NULL, 0, 0, -1, 411, 'EUR', '2021-05-28 17:47:12', '2021-05-30 08:51:02'),
(270, '1442', '1442', 'Zona Termale', 478, 332, 204, 192, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:47:25', '2021-05-28 17:47:25'),
(271, '401', '401', 'Balze Alte', 125, 443, 52, 261, NULL, 0, 0, 0, 401, 'EUR', '2021-05-28 17:47:35', '2021-05-28 17:47:35'),
(272, '1443', '1443', 'Zona Termale', 489, 310, 206, 182, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:47:42', '2021-05-28 17:47:42'),
(273, '407', '407', 'Balze Alte', 167, 442, 71, 258, NULL, 0, 0, 0, 407, 'EUR', '2021-05-28 17:47:54', '2021-05-28 17:47:54'),
(274, '55', '55', 'Zona Mare', 288, 309, 123, 185, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:48:08', '2021-05-28 17:48:08'),
(275, '1444', '1444', 'Zona Termale', 496, 290, 212, 168, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:48:10', '2021-05-28 17:48:10'),
(276, '1445', '1445', 'Zona Termale', 508, 242, 216, 141, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:48:35', '2021-05-28 17:48:35'),
(277, '405', '405', 'Balze Alte', 175, 484, 73, 282, NULL, 0, 0, 0, 405, 'EUR', '2021-05-28 17:48:37', '2021-05-28 17:48:37'),
(278, '56', '56', 'Zona Mare', 314, 298, 132, 180, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:48:37', '2021-05-28 17:48:37'),
(280, '54', '54', 'Zona Mare', 265, 320, 113, 190, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:49:04', '2021-05-28 17:49:04'),
(281, '406', '406', 'Balze Alte', 191, 458, 79, 271, NULL, 0, 0, -1, 406, 'EUR', '2021-05-28 17:49:20', '2021-05-30 09:12:42'),
(282, '51', '51', 'Zona Mare', 201, 347, 83, 206, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:49:32', '2021-05-28 17:49:32'),
(283, '402', '402', 'Balze Alte', 96, 458, 39, 266, NULL, 0, 0, 0, 402, 'EUR', '2021-05-28 17:49:37', '2021-05-28 17:49:37'),
(284, '403', '403', 'Balze Alte', 116, 477, 47, 279, NULL, 0, 0, 0, 403, 'EUR', '2021-05-28 17:49:52', '2021-05-28 17:49:52'),
(285, '53', '53', 'Zona Mare', 244, 328, 103, 196, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:49:57', '2021-05-28 17:49:57'),
(286, '404', '404', 'Balze Alte', 140, 491, 57, 290, NULL, 0, 0, 0, 404, 'EUR', '2021-05-28 17:50:07', '2021-05-28 17:50:07'),
(287, '52', '52', 'Zona Mare', 221, 341, 94, 201, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:50:17', '2021-05-28 17:50:17'),
(288, '78', '78', 'Zona Mare', 352, 251, 145, 152, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:50:54', '2021-05-28 17:50:54'),
(289, '77', '77', 'Zona Mare', 325, 262, 135, 159, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:51:19', '2021-05-28 17:51:19'),
(290, '1421', '1421', 'Zona Termale', 331, 316, 140, 187, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:51:24', '2021-05-28 17:51:24'),
(291, '76', '76', 'Zona Mare', 295, 273, 123, 164, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:51:44', '2021-05-28 17:51:44'),
(293, '71', '71', 'Zona Mare', 171, 320, 71, 189, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:52:14', '2021-05-28 17:52:14'),
(294, '1422', '1422', 'Zona Termale', 300, 298, 127, 171, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:52:17', '2021-05-28 17:52:17'),
(295, '1423', '1423', 'Zona Termale', 255, 264, 109, 153, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 17:52:37', '2021-05-30 08:38:08'),
(296, '73', '73', 'Zona Mare', 221, 301, 93, 179, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:52:50', '2021-05-28 17:52:50'),
(297, '1424', '1424', 'Zona Termale', 235, 157, 100, 95, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:53:08', '2021-05-28 17:53:08'),
(298, '72', '72', 'Zona Mare', 196, 309, 83, 185, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:53:16', '2021-05-28 17:53:16'),
(299, '1425', '1425', 'Zona Termale', 234, 129, 99, 77, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:53:34', '2021-05-28 17:53:34'),
(300, '45', '45', 'Zona Mare', 553, 229, 234, 136, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:53:43', '2021-05-28 17:53:43'),
(301, '1426', '1426', 'Zona Termale', 265, 138, 113, 82, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:53:55', '2021-05-28 17:53:55'),
(302, '44', '44', 'Zona Mare', 595, 242, 249, 145, NULL, 0, 0, -1, 1, 'EUR', '2021-05-28 17:54:07', '2021-05-30 08:28:20'),
(303, '1427', '1427', 'Zona Termale', 296, 121, 123, 72, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:54:16', '2021-05-28 17:54:16'),
(304, '41', '41', 'Zona Mare', 575, 271, 243, 160, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:54:25', '2021-05-28 17:54:25'),
(305, '1428', '1428', 'Zona Termale', 342, 117, 142, 69, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 17:54:43', '2021-06-04 11:19:22'),
(307, '74', '74', 'Zona Mare', 245, 295, 101, 172, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:54:52', '2021-05-28 17:54:52'),
(308, '4', '4', 'Zona Mare', 335, 456, 141, 277, NULL, 0, 0, 0, 4, 'EUR', '2021-05-28 17:55:10', '2021-05-28 17:55:10'),
(309, '1429', '1429', 'Zona Termale', 398, 145, 169, 87, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 17:55:13', '2021-05-28 17:55:13'),
(310, '75', '75', 'Zona Mare', 273, 281, 115, 167, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 17:55:18', '2021-05-28 17:55:18'),
(311, '5', '5', 'Zona Mare', 298, 443, 131, 264, NULL, 0, 0, 0, 5, 'EUR', '2021-05-28 17:55:35', '2021-05-28 18:02:11'),
(312, '91', '91', 'Zona Mare', 417, 535, 177, 322, NULL, 0, 0, 0, 91, 'EUR', '2021-05-28 17:56:17', '2021-05-28 17:56:17'),
(313, '92', '92', 'Zona Mare', 427, 521, 181, 315, NULL, 0, 0, 0, 92, 'EUR', '2021-05-28 17:56:55', '2021-05-28 17:56:55'),
(315, '93', '93', 'Zona Mare', 439, 510, 185, 306, NULL, 0, 0, 0, 93, 'EUR', '2021-05-28 17:57:27', '2021-05-28 17:57:27'),
(317, '94', '94', 'Zona Mare', 485, 509, 205, 303, NULL, 0, 0, 0, 94, 'EUR', '2021-05-28 17:57:45', '2021-05-28 17:57:45'),
(318, '1', '1', 'Zona Mare', 482, 487, 203, 291, NULL, 23.56522, 93.445615, 0, 1, 'EUR', '2021-05-28 17:58:06', '2021-06-08 08:20:13'),
(319, '2', '2', 'Zona Mare', 445, 486, 188, 293, NULL, 0, 0, -1, 2, 'EUR', '2021-05-28 17:58:25', '2021-05-30 08:33:24'),
(321, '11', '11', 'Zona Mare', 475, 453, 203, 275, NULL, 0, 0, 0, 11, 'EUR', '2021-05-28 17:59:04', '2021-05-28 17:59:04'),
(322, '12', '12', 'Zona Mare', 491, 444, 206, 267, NULL, 0, 0, 0, 12, 'EUR', '2021-05-28 17:59:23', '2021-05-28 17:59:23'),
(325, '13', '13', 'Zona Mare', 503, 426, 211, 259, NULL, 0, 0, 0, 13, 'EUR', '2021-05-28 17:59:47', '2021-05-28 17:59:47'),
(326, '14', '14', 'Zona Mare', 509, 414, 215, 251, NULL, 0, 0, 0, 14, 'EUR', '2021-05-28 18:00:18', '2021-05-28 18:00:18'),
(327, '15', '15', 'Zona Mare', 559, 399, 237, 242, NULL, 0, 0, -1, 15, 'EUR', '2021-05-28 18:00:36', '2021-05-30 08:30:09'),
(328, '16', '16', 'Zona Mare', 429, 437, 179, 263, NULL, 0, 0, -1, 16, 'EUR', '2021-05-28 18:01:02', '2021-05-30 08:32:17'),
(329, '17', '17', 'Zona Mare', 457, 425, 192, 256, NULL, 0, 0, 0, 17, 'EUR', '2021-05-28 18:01:27', '2021-05-28 18:01:27'),
(330, '18', '18', 'Zona Mare', 383, 442, 161, 265, NULL, 0, 0, 0, 18, 'EUR', '2021-05-28 18:01:59', '2021-05-28 18:01:59'),
(331, '19', '19', 'Zona Mare', 351, 429, 149, 258, NULL, 0, 0, 0, 19, 'EUR', '2021-05-28 18:02:38', '2021-05-28 18:02:38'),
(332, '20', '20', 'Zona Mare', 393, 423, 167, 257, NULL, 0, 0, 0, 20, 'EUR', '2021-05-28 18:03:32', '2021-05-28 18:03:32'),
(333, '21', '21', 'Zona Mare', 419, 411, 179, 249, NULL, 0, 0, 0, 21, 'EUR', '2021-05-28 18:03:53', '2021-05-28 18:03:53'),
(334, '22', '22', 'Zona Mare', 444, 396, 189, 242, NULL, 0, 0, 0, 22, 'EUR', '2021-05-28 18:04:12', '2021-05-28 18:04:12'),
(335, '38', '38', 'Zona Mare', 573, 327, 243, 195, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 18:04:30', '2021-05-28 18:04:30'),
(336, '23', '23', 'Zona Mare', 480, 389, 204, 237, NULL, 0, 0, 0, 23, 'EUR', '2021-05-28 18:04:37', '2021-05-28 18:04:37'),
(337, '42', '42', 'Zona Mare', 541, 255, 229, 152, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 18:04:50', '2021-05-28 18:04:50'),
(338, '24', '24', 'Zona Mare', 509, 378, 214, 229, NULL, 0, 0, -1, 24, 'EUR', '2021-05-28 18:04:57', '2021-05-30 08:29:14'),
(339, '25', '25', 'Zona Mare', 535, 366, 225, 224, NULL, 0, 0, 0, 25, 'EUR', '2021-05-28 18:05:16', '2021-05-28 18:05:16'),
(340, '26', '26', 'Zona Mare', 559, 355, 236, 215, NULL, 0, 0, 0, 26, 'EUR', '2021-05-28 18:05:35', '2021-05-28 18:05:35'),
(341, '43', '43', 'Zona Mare', 506, 241, 215, 145, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 18:06:03', '2021-05-28 18:06:03'),
(342, '31', '31', 'Zona Mare', 390, 395, 166, 241, NULL, 0, 0, 0, 31, 'EUR', '2021-05-28 18:06:04', '2021-05-28 18:06:04'),
(343, '36', '36', 'Zona Mare', 522, 343, 219, 208, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 18:06:34', '2021-05-28 18:06:34'),
(344, '37', '37', 'Zona Mare', 547, 337, 232, 201, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 18:07:01', '2021-05-28 18:07:01'),
(345, '32', '32', 'Zona Mare', 418, 385, 176, 235, NULL, 0, 0, -1, 32, 'EUR', '2021-05-28 18:07:29', '2021-06-01 09:07:25'),
(346, '35', '35', 'Zona Mare', 494, 362, 211, 215, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 18:07:39', '2021-05-28 18:07:39'),
(347, '33', '33', 'Zona Mare', 443, 372, 187, 228, NULL, 0, 0, -1, 33, 'EUR', '2021-05-28 18:08:20', '2021-06-01 09:06:27'),
(348, '34', '34', 'Zona Mare', 467, 363, 198, 221, NULL, 0, 0, 0, 34, 'EUR', '2021-05-28 18:08:35', '2021-05-28 18:08:35'),
(353, '101', '101', 'Arco', 345, 510, 144, 307, NULL, 0, 0, 0, 101, 'EUR', '2021-05-28 18:14:11', '2021-05-28 18:14:11'),
(354, '102', '102', 'Arco', 322, 492, 135, 297, NULL, 0, 0, 0, 102, 'EUR', '2021-05-28 18:14:33', '2021-05-28 18:14:33'),
(355, '103', '103', 'Arco', 301, 475, 125, 285, NULL, 0, 0, 0, 103, 'EUR', '2021-05-28 18:14:52', '2021-05-28 18:14:52'),
(356, '104', '104', 'Arco', 336, 461, 142, 278, NULL, 0, 0, 0, 104, 'EUR', '2021-05-28 18:16:28', '2021-05-28 18:16:28'),
(357, '105', '105', 'Arco', 402, 482, 167, 290, NULL, 0, 0, -1, 105, 'EUR', '2021-05-28 18:18:08', '2021-05-30 08:36:18'),
(359, '106', '106', 'Arco', 401, 461, 170, 279, NULL, 0, 0, 0, 106, 'EUR', '2021-05-28 18:18:33', '2021-05-28 18:18:33'),
(360, '107', '107', 'Arco', 440, 452, 185, 273, NULL, 0, 0, 0, 107, 'EUR', '2021-05-28 18:18:57', '2021-05-28 18:18:57'),
(361, '108', '108', 'Arco', 475, 449, 200, 273, NULL, 0, 0, -1, 108, 'EUR', '2021-05-28 18:19:22', '2021-06-04 11:18:31'),
(362, '221', '221', 'Solarium', 243, 374, 103, 221, NULL, 0, 0, -1, 1, 'EUR', '2021-05-28 18:19:36', '2021-05-30 08:54:17'),
(363, '109', '109', 'Arco', 494, 415, 210, 252, NULL, 0, 0, -1, 109, 'EUR', '2021-05-28 18:19:45', '2021-05-30 08:35:17'),
(364, '111', '111', 'Arco', 317, 416, 134, 251, NULL, 0, 0, 0, 111, 'EUR', '2021-05-28 18:20:14', '2021-05-28 18:20:14'),
(365, '222', '222', 'Solarium', 245, 415, 105, 244, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 18:20:15', '2021-05-28 18:20:15'),
(367, '112', '112', 'Arco', 319, 397, 135, 241, NULL, 0, 0, 0, 112, 'EUR', '2021-05-28 18:20:48', '2021-05-28 18:20:48'),
(368, '223', '223', 'Solarium', 245, 459, 104, 270, NULL, 0, 0, -1, 1, 'EUR', '2021-05-28 18:21:00', '2021-05-30 08:54:47'),
(369, '113', '113', 'Arco', 339, 378, 142, 228, NULL, 0, 0, 0, 113, 'EUR', '2021-05-28 18:21:12', '2021-05-28 18:21:12'),
(370, '226', '226', 'Solarium', 176, 525, 73, 308, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 18:21:21', '2021-05-28 18:21:21'),
(371, '114', '114', 'Arco', 358, 357, 151, 215, NULL, 0, 0, 0, 114, 'EUR', '2021-05-28 18:21:29', '2021-05-28 18:21:29'),
(372, '225', '225', 'Solarium', 225, 525, 95, 310, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 18:21:42', '2021-05-28 18:21:42'),
(373, '115', '115', 'Arco', 389, 333, 164, 201, NULL, 0, 0, 0, 115, 'EUR', '2021-05-28 18:21:48', '2021-05-28 18:21:48'),
(374, '116', '116', 'Arco', 425, 337, 180, 205, NULL, 0, 0, -1, 116, 'EUR', '2021-05-28 18:22:06', '2021-05-30 08:34:35'),
(375, '224', '224', 'Solarium', 271, 527, 114, 310, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 18:22:07', '2021-05-28 18:22:07'),
(376, '238', '238', 'Solarium', 472, 525, 198, 307, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 18:22:49', '2021-05-28 18:22:49'),
(377, '301', '301', 'Arco', 535, 414, 225, 250, NULL, 0, 0, 0, 301, 'EUR', '2021-05-28 18:23:13', '2021-05-28 18:23:13'),
(378, '239', '239', 'Solarium', 527, 482, 223, 281, NULL, 0, 0, 0, 1, 'EUR', '2021-05-28 18:23:15', '2021-05-28 18:23:15'),
(379, '302', '302', 'Arco', 513, 379, 217, 230, NULL, 0, 0, 0, 302, 'EUR', '2021-05-28 18:23:34', '2021-05-28 18:23:34'),
(380, '303', '303', 'Arco', 487, 354, 207, 215, NULL, 0, 0, 0, 303, 'EUR', '2021-05-28 18:23:52', '2021-05-28 18:23:52'),
(381, '304', '304', 'Arco', 577, 376, 243, 227, NULL, 0, 0, 0, 304, 'EUR', '2021-05-28 18:24:18', '2021-05-28 18:24:18'),
(382, '305', '305', 'Arco', 553, 355, 235, 216, NULL, 0, 0, -1, 305, 'EUR', '2021-05-28 18:24:47', '2021-05-30 08:34:06'),
(383, '341', '341', 'Arco', 515, 247, 217, 153, NULL, 0, 0, 0, 341, 'EUR', '2021-05-28 18:25:24', '2021-05-28 18:25:24'),
(384, '311', '311', 'Arco', 457, 302, 192, 185, NULL, 0, 0, 0, 311, 'EUR', '2021-05-28 18:25:47', '2021-05-28 18:25:47'),
(385, '312', '312', 'Arco', 421, 299, 177, 183, NULL, 0, 0, 0, 312, 'EUR', '2021-05-28 18:26:13', '2021-05-28 18:26:13'),
(386, '313', '313', 'Arco', 453, 278, 191, 169, NULL, 0, 0, 0, 313, 'EUR', '2021-05-28 18:26:47', '2021-05-28 18:26:47'),
(387, '314', '314', 'Arco', 403, 274, 172, 167, NULL, 0, 0, 0, 314, 'EUR', '2021-05-28 18:27:23', '2021-05-28 18:27:23'),
(388, '316', '316', 'Arco', 448, 257, 189, 157, NULL, 0, 0, 0, 316, 'EUR', '2021-05-28 18:27:54', '2021-05-28 18:27:54'),
(389, '317', '317', 'Arco', 401, 257, 169, 156, NULL, 0, 0, 0, 317, 'EUR', '2021-05-28 18:28:33', '2021-05-28 18:28:33'),
(390, '319', '319', 'Arco', 407, 230, 172, 143, NULL, 0, 0, 0, 319, 'EUR', '2021-05-28 18:29:29', '2021-05-28 18:29:29'),
(391, '315', '315', 'Arco', 349, 280, 146, 171, NULL, 0, 0, 0, 315, 'EUR', '2021-05-28 18:29:50', '2021-05-28 18:29:50'),
(392, '318', '318', 'Arco', 347, 261, 146, 159, NULL, 0, 0, 0, 318, 'EUR', '2021-05-28 18:30:12', '2021-05-28 18:30:12'),
(393, '320', '320', 'Arco', 346, 240, 145, 145, NULL, 0, 0, 0, 320, 'EUR', '2021-05-28 18:30:36', '2021-05-28 18:30:36'),
(394, '201', '201', 'Solarium', 405, 155, 172, 91, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 18:31:08', '2021-05-28 18:31:08'),
(395, '202', '202', 'Solarium', 351, 159, 150, 93, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 18:31:25', '2021-05-28 18:31:25'),
(396, '342', '342', 'Arco', 391, 123, 165, 80, NULL, 0, 0, 0, 342, 'EUR', '2021-05-28 18:31:34', '2021-05-28 18:31:34'),
(397, '203', '203', 'Solarium', 284, 162, 121, 95, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 18:31:42', '2021-05-28 18:31:42'),
(398, '204', '204', 'Solarium', 409, 199, 175, 116, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 18:32:00', '2021-05-28 18:32:00'),
(399, '205', '205', 'Solarium', 350, 200, 149, 117, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 18:32:17', '2021-05-28 18:32:17'),
(400, '343', '343', 'Arco', 360, 96, 153, 64, NULL, 0, 0, 0, 343, 'EUR', '2021-05-28 18:32:30', '2021-05-28 18:32:30'),
(401, '206', '206', 'Solarium', 289, 203, 123, 120, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 18:32:33', '2021-05-28 18:32:33'),
(402, '344', '344', 'Arco', 342, 75, 145, 50, NULL, 0, 0, 0, 344, 'EUR', '2021-05-28 18:32:47', '2021-05-28 18:32:47'),
(403, '207', '207', 'Solarium', 418, 263, 176, 152, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 18:33:02', '2021-05-28 18:33:02'),
(404, '345', '345', 'Arco', 313, 49, 131, 36, NULL, 0, 0, 0, 345, 'EUR', '2021-05-28 18:33:06', '2021-05-28 18:33:06'),
(405, '208', '208', 'Solarium', 357, 267, 153, 156, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 18:33:28', '2021-05-28 18:33:28'),
(406, '346', '346', 'Arco', 263, 34, 110, 26, NULL, 0, 0, -1, 346, 'EUR', '2021-05-28 18:33:29', '2021-06-04 11:15:04'),
(407, '333', '333', 'Arco', 246, 65, 101, 45, NULL, 0, 0, 0, 333, 'EUR', '2021-05-28 18:33:46', '2021-05-28 18:33:46'),
(408, '209', '209', 'Solarium', 303, 269, 126, 157, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 18:33:47', '2021-05-30 08:49:41'),
(409, '332', '332', 'Arco', 283, 76, 118, 53, NULL, 0, 0, 0, 332, 'EUR', '2021-05-28 18:34:10', '2021-05-28 18:34:10'),
(410, '211', '211', 'Solarium', 243, 287, 105, 169, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 18:34:12', '2021-05-28 18:34:12'),
(411, '331', '331', 'Arco', 317, 109, 134, 70, NULL, 0, 0, 0, 331, 'EUR', '2021-05-28 18:34:33', '2021-05-28 18:34:33'),
(412, '214', '214', 'Solarium', 204, 332, 87, 190, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 18:34:38', '2021-05-28 18:34:38'),
(413, '322', '322', 'Arco', 254, 95, 107, 64, NULL, 0, 0, 0, 322, 'EUR', '2021-05-28 18:34:53', '2021-05-28 18:34:53'),
(414, '212', '212', 'Solarium', 135, 296, 56, 176, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 18:35:00', '2021-05-28 18:35:00'),
(415, '321', '321', 'Arco', 302, 131, 127, 83, NULL, 0, 0, 0, 321, 'EUR', '2021-05-28 18:35:12', '2021-05-28 18:35:12'),
(416, '213', '213', 'Solarium', 157, 356, 68, 209, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 18:35:18', '2021-05-30 08:50:12'),
(417, '231', '231', 'Solarium', 354, 341, 154, 205, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 18:35:42', '2021-05-28 18:35:42'),
(418, '232', '232', 'Solarium', 408, 339, 173, 197, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 18:36:03', '2021-05-28 18:36:03'),
(419, '233', '233', 'Solarium', 361, 385, 155, 225, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 18:36:22', '2021-05-30 08:53:31'),
(420, '234', '234', 'Solarium', 416, 381, 175, 222, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 18:36:37', '2021-05-28 18:36:37'),
(421, '241', '241', 'Solarium', 487, 169, 205, 99, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 18:37:11', '2021-05-28 18:37:11'),
(422, '242', '242', 'Solarium', 551, 146, 232, 85, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 18:37:35', '2021-05-28 18:37:35'),
(423, '243', '243', 'Solarium', 550, 187, 234, 111, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 18:37:52', '2021-05-28 18:37:52'),
(424, '244', '244', 'Solarium', 502, 247, 211, 146, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 18:38:23', '2021-05-28 18:38:23'),
(425, '245', '245', 'Solarium', 499, 294, 210, 173, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 18:39:15', '2021-05-28 18:39:15'),
(426, '235', '235', 'Solarium', 497, 380, 212, 218, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 18:39:42', '2021-05-28 18:39:42'),
(427, '236', '236', 'Solarium', 522, 429, 225, 251, NULL, 0, 0, -1, 0, 'EUR', '2021-05-28 18:40:26', '2021-05-30 08:55:23'),
(428, '237', '237', 'Solarium', 463, 454, 198, 265, NULL, 0, 0, 0, 0, 'EUR', '2021-05-28 18:40:44', '2021-05-28 18:40:44');

-- --------------------------------------------------------

--
-- Table structure for table `promo_codes`
--

CREATE TABLE `promo_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `map_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `promo_user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `promocode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `promo_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numberofuse` int(11) NOT NULL DEFAULT '5',
  `discount` double(8,2) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promo_codes`
--

INSERT INTO `promo_codes` (`id`, `map_name`, `promo_user`, `promocode`, `promo_type`, `numberofuse`, `discount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'For All', 'Shaykh Siddiqu', 'PROMO#PRO', 'F8', -1, 15.00, 1, '2021-03-01 09:36:58', '2021-05-28 06:27:05'),
(4, 'For All', 'Antares', 'antaresant60459', 'F3', -1, 100.00, 1, '2021-05-29 10:31:42', '2021-05-29 10:31:42'),
(5, 'For All', 'Albatros', 'albatrosalb64299', 'F3', -1, 100.00, 1, '2021-05-29 10:32:17', '2021-05-29 10:32:17'),
(6, 'For All', 'Aragona Palace', 'aragonapalaceapa13224', 'F3', -1, 100.00, 1, '2021-05-29 10:37:36', '2021-05-29 10:37:36'),
(7, 'For All', 'Ape Regina', 'apereginaare14938', 'F3', -1, 100.00, 1, '2021-05-29 10:37:59', '2021-05-29 10:37:59'),
(8, 'For All', 'Aragonese', 'aragoneseara27311', 'F3', -1, 100.00, 1, '2021-05-29 10:38:24', '2021-05-29 10:38:24'),
(9, 'For All', 'Baia Sorgeto', 'baiasorgetobso94053', 'F3', -1, 100.00, 1, '2021-05-29 10:38:47', '2021-05-29 10:38:47'),
(10, 'For All', 'Bel Tramonto', 'beltramontobtr58566', 'F3', -1, 100.00, 1, '2021-05-29 10:39:10', '2021-05-29 10:39:10'),
(11, 'For All', 'Bellavista', 'bellavistabll02126', 'F3', -1, 100.00, 1, '2021-05-29 10:39:32', '2021-05-29 10:39:32'),
(12, 'For All', 'Blue Resort', 'blueresortbre09155', 'F3', -1, 100.00, 1, '2021-05-29 10:39:56', '2021-05-29 10:39:56'),
(13, 'For All', 'Botania', 'botaniabta69514', 'F3', -1, 100.00, 1, '2021-05-29 10:42:14', '2021-05-29 10:42:14'),
(14, 'For All', 'Capizzo', 'capizzocpz01084', 'F3', -1, 100.00, 1, '2021-05-29 10:42:39', '2021-05-29 10:42:39'),
(15, 'For All', 'Carlo Magno', 'carlomagnocma43679', 'F3', -1, 100.00, 1, '2021-05-29 10:43:01', '2021-05-29 10:43:01'),
(16, 'For All', 'Casa Gerardo', 'casagerardocag32541', 'F3', -1, 100.00, 1, '2021-05-29 10:43:22', '2021-05-29 10:43:22'),
(17, 'For All', 'Citara', 'citaractr72141', 'F3', -1, 100.00, 1, '2021-05-29 10:43:48', '2021-05-29 10:43:48'),
(18, 'For All', 'Costa Citara', 'costacitaracci01461', 'F3', -1, 100.00, 1, '2021-05-29 10:44:10', '2021-05-29 10:44:10'),
(19, 'For All', 'Cristallo', 'cristallocrs16055', 'F3', -1, 100.00, 1, '2021-05-29 10:44:42', '2021-05-29 10:44:42'),
(20, 'For All', 'Di Meglio', 'dimegliodme28554', 'F3', -1, 100.00, 1, '2021-05-29 10:45:21', '2021-05-29 10:45:21'),
(21, 'For All', 'Don Pedro', 'donpedrodpe68898', 'F3', -1, 100.00, 1, '2021-05-29 10:48:53', '2021-05-29 10:48:53'),
(22, 'For All', 'Don Pepe', 'donpepedpe61588', 'F3', -1, 100.00, 1, '2021-05-29 10:49:23', '2021-05-29 10:49:23'),
(23, 'For All', 'Europa', 'europaeup35418', 'F3', -1, 100.00, 1, '2021-05-29 10:49:48', '2021-05-29 10:49:48'),
(24, 'For All', 'Felix', 'felixflx61579', 'F3', -1, 100.00, 1, '2021-05-29 10:50:08', '2021-05-29 10:50:08'),
(25, 'For All', 'Floridiana', 'floridianaflr60697', 'F3', -1, 100.00, 1, '2021-05-29 10:50:34', '2021-05-29 10:50:34'),
(26, 'For All', 'Gattopardo', 'gattopardogtt48775', 'F3', -1, 100.00, 1, '2021-05-29 10:50:54', '2021-05-29 10:50:54'),
(27, 'For All', 'Gemma', 'gemmagma55514', 'F3', -1, 100.00, 1, '2021-05-29 10:51:13', '2021-05-29 10:51:13'),
(28, 'For All', 'Grifo', 'grifogrf14390', 'F3', -1, 100.00, 1, '2021-05-29 10:51:41', '2021-05-29 10:51:41'),
(29, 'For All', 'Hermitage', 'hermitagehrm48485', 'F3', -1, 100.00, 1, '2021-05-29 10:52:02', '2021-05-29 14:32:07'),
(30, 'For All', 'Ideal', 'idealide40055', 'F3', -1, 100.00, 1, '2021-05-29 10:52:22', '2021-05-29 10:52:22'),
(31, 'For All', 'Il Bosco', 'ilboscoibo43803', 'F3', -1, 100.00, 1, '2021-05-29 10:52:42', '2021-05-29 10:52:42'),
(32, 'For All', 'Il Campagnuolo', 'ilcampagnuoloica06414', 'F3', -1, 100.00, 1, '2021-05-29 10:53:02', '2021-05-29 10:53:02'),
(33, 'For All', 'Il Monastero', 'ilmonasteroimo35478', 'F8', -1, 100.00, 1, '2021-05-29 10:53:21', '2021-06-08 08:00:11'),
(34, 'For All', 'Il Nespolo', 'ilnespoloine90052', 'F8', -1, 100.00, 1, '2021-05-29 10:53:41', '2021-06-06 08:45:58'),
(35, 'For All', 'Imperamare', 'imperamareima25874', 'F3', -1, 100.00, 1, '2021-05-29 10:54:08', '2021-05-29 10:54:08'),
(36, 'For All', 'Internazionale', 'internazionaleint15330', 'F3', -1, 100.00, 1, '2021-05-29 10:54:35', '2021-05-29 10:54:35'),
(37, 'For All', 'Iris', 'irisiri68286', 'F3', -1, 100.00, 1, '2021-05-29 10:54:58', '2021-05-29 10:54:58'),
(38, 'For All', 'Italia', 'italiaita00737', 'F3', -1, 100.00, 1, '2021-05-29 10:55:25', '2021-05-29 10:55:25'),
(39, 'For All', 'Jantò', 'jantòjnt45084', 'F3', -1, 100.00, 1, '2021-05-29 10:55:45', '2021-05-29 10:55:45'),
(40, 'For All', 'La Capannina', 'capanninacpn44316', 'F3', -1, 100.00, 1, '2021-05-29 10:57:40', '2021-05-29 10:57:40'),
(41, 'For All', 'La Luna', 'lunaln15517', 'F3', -1, 100.00, 1, '2021-05-29 10:57:58', '2021-05-29 10:57:58'),
(42, 'For All', 'La Mandorla', 'lamandorlamda32456', 'F3', -1, 100.00, 1, '2021-05-29 10:58:20', '2021-05-29 10:58:20'),
(43, 'For All', 'La Reginella', 'reginellargn06685', 'F3', -1, 100.00, 1, '2021-05-29 11:01:17', '2021-05-29 11:01:17'),
(44, 'For All', 'La Sirenella', 'sirenellasrn27856', 'F3', -1, 100.00, 1, '2021-05-29 11:01:34', '2021-05-29 11:01:34'),
(45, 'For All', 'Le Canne', 'lecannelca10140', 'F3', -1, 100.00, 1, '2021-05-29 11:01:58', '2021-05-29 11:01:58'),
(46, 'For All', 'Lord Byron', 'lordbyronlby55518', 'F3', -1, 100.00, 1, '2021-05-29 11:02:19', '2021-05-29 11:02:19'),
(47, 'For All', 'Lostar', 'lostarlos54321', 'F3', -1, 100.00, 1, '2021-05-29 11:02:40', '2021-05-29 11:02:40'),
(48, 'For All', 'Macrì', 'macrimcr14057', 'F3', -1, 100.00, 1, '2021-05-29 11:02:57', '2021-05-29 11:02:57'),
(49, 'For All', 'Mare Blù', 'mareblumrb46183', 'F3', -1, 100.00, 1, '2021-05-29 11:03:15', '2021-05-29 11:03:15'),
(50, 'For All', 'Marina 10', 'marina10m1017763', 'F3', -1, 100.00, 1, '2021-05-29 11:03:39', '2021-05-29 11:03:39'),
(51, 'For All', 'Matarese', 'mataresemtr17968', 'F3', -1, 100.00, 1, '2021-05-29 11:04:26', '2021-05-29 11:04:26'),
(52, 'For All', 'Mediterraneo', 'mediterraneomdt67034', 'F3', -1, 100.00, 1, '2021-05-29 11:04:55', '2021-05-29 11:04:55'),
(53, 'For All', 'Michelangelo', 'michelangelomch23295', 'F3', -1, 100.00, 1, '2021-05-29 11:05:16', '2021-05-29 11:05:16'),
(54, 'For All', 'Miralisa', 'miralisamrl95049', 'F3', -1, 100.00, 1, '2021-05-29 11:05:36', '2021-05-29 11:05:36'),
(55, 'For All', 'Miramare e Castello', 'miramarecastellomca85531', 'F3', -1, 100.00, 1, '2021-05-29 11:05:55', '2021-05-29 11:05:55'),
(56, 'For All', 'Monti', 'montipippompi43220', 'F3', -1, 100.00, 1, '2021-05-29 11:06:18', '2021-05-29 11:06:18'),
(57, 'For All', 'Moresco', 'morescomrs41126', 'F8', -1, 100.00, 1, '2021-05-29 11:06:36', '2021-06-06 09:48:39'),
(58, 'For All', 'Myage', 'myagemyg45957', 'F3', -1, 100.00, 1, '2021-05-29 11:07:00', '2021-05-29 11:07:00'),
(59, 'For All', 'Nausicaa', 'nausicaanca51478', 'F3', -1, 100.00, 1, '2021-05-29 11:07:16', '2021-05-29 11:07:16'),
(60, 'For All', 'Nettuno', 'nettunontt04973', 'F3', -1, 100.00, 1, '2021-05-29 11:07:35', '2021-05-29 11:07:35'),
(61, 'For All', 'Oasis Inn', 'oasisoss78942', 'F3', -1, 100.00, 1, '2021-05-29 11:07:54', '2021-05-29 11:07:54'),
(62, 'For All', 'Oriente', 'orienteit12457', 'F3', -1, 100.00, 1, '2021-05-29 11:08:12', '2021-05-29 11:08:12'),
(63, 'For All', 'Parco Conte', 'parcocontecne21456', 'F3', -1, 100.00, 1, '2021-05-29 11:08:31', '2021-05-29 11:08:31'),
(64, 'For All', 'Parco Maria', 'parcomariapma25543', 'F3', -1, 100.00, 1, '2021-05-29 11:08:53', '2021-05-29 11:08:53'),
(65, 'For All', 'Principe', 'principeprn46988', 'F3', -1, 100.00, 1, '2021-05-29 11:09:23', '2021-05-29 11:09:23'),
(66, 'For All', 'Providence', 'providenceprv29769', 'F3', -1, 100.00, 1, '2021-05-29 11:09:45', '2021-05-29 11:09:45'),
(67, 'For All', 'Punta del Sole', 'puntadelsolepso67176', 'F3', -1, 100.00, 1, '2021-05-29 11:10:03', '2021-05-29 11:10:03'),
(68, 'For All', 'Punta Imperatore', 'puntaimperatorepim34985', 'F3', -1, 100.00, 1, '2021-05-29 11:10:21', '2021-05-29 11:10:21'),
(69, 'For All', 'Punta Molino', 'puntamolinopmo43814', 'F3', -1, 100.00, 1, '2021-05-29 11:10:38', '2021-05-29 11:10:38'),
(70, 'For All', 'Rivamare', 'rivamarervm82663', 'F3', -1, 100.00, 1, '2021-05-29 11:10:55', '2021-05-29 11:10:55'),
(71, 'For All', 'Royal Palm', 'royalpalmrpa21410', 'F3', -1, 100.00, 1, '2021-05-29 11:11:10', '2021-05-29 11:11:10'),
(72, 'For All', 'Royal Sunset', 'royalsunsetrst36985', 'F3', -1, 100.00, 1, '2021-05-29 11:11:32', '2021-05-29 11:11:32'),
(73, 'For All', 'San Giorgio', 'sgiorgiosgi80295', 'F3', -1, 100.00, 1, '2021-05-29 11:11:52', '2021-05-29 11:11:52'),
(74, 'For All', 'Sant\'Angelo', 'sangelosan87748', 'F3', -1, 100.00, 1, '2021-05-29 11:12:09', '2021-05-29 11:12:09'),
(75, 'For All', 'San Lorenzo', 'slorenzoslo79269', 'F3', -1, 100.00, 1, '2021-05-29 11:12:27', '2021-05-29 11:12:27'),
(76, 'For All', 'San Montano', 'smontanosmo74531', 'F3', -1, 100.00, 1, '2021-05-29 11:12:49', '2021-05-29 11:12:49'),
(77, 'For All', 'San Raphael', 'sraphaelsra01911', 'F3', -1, 100.00, 1, '2021-05-29 11:13:08', '2021-05-29 11:13:08'),
(78, 'For All', 'Solemar', 'solemarslm21283', 'F3', -1, 100.00, 1, '2021-05-29 11:18:30', '2021-05-29 11:18:30'),
(79, 'For All', 'Sorriso', 'sorrisosrr66953', 'F3', -1, 100.00, 1, '2021-05-29 11:18:46', '2021-05-29 11:18:46'),
(80, 'For All', 'Torre Sant\'Angelo', 'torresangelotsa94515', 'F3', -1, 100.00, 1, '2021-05-29 11:19:04', '2021-05-29 11:19:04'),
(81, 'For All', 'Tre Sorelle', 'tresorelletso53785', 'F3', -1, 100.00, 1, '2021-05-29 11:19:30', '2021-05-29 11:19:30'),
(82, 'For All', 'Tritone', 'tritonetrt92876', 'F3', -1, 100.00, 1, '2021-05-29 11:20:07', '2021-05-29 11:20:07'),
(83, 'For All', 'Villa Angelica', 'villaangelica59412', 'F3', -1, 100.00, 1, '2021-05-29 11:21:11', '2021-05-29 11:21:11'),
(84, 'For All', 'Villa Carolina', 'villacarolinavci45871', 'F3', -1, 100.00, 1, '2021-05-29 11:22:21', '2021-05-29 11:22:21'),
(85, 'For All', 'Villa D\'Orta', 'villadortavor81927', 'F3', -1, 100.00, 1, '2021-05-29 11:22:52', '2021-05-29 11:22:52'),
(86, 'For All', 'Villa Durrueli', 'villadurruelivdu28341', 'F3', -1, 100.00, 1, '2021-05-29 11:23:10', '2021-05-29 11:23:10'),
(87, 'For All', 'Villa Franca', 'villafrancavfr80908', 'F3', -1, 100.00, 1, '2021-05-29 11:23:30', '2021-05-29 11:23:30'),
(88, 'For All', 'Villa Lieta', 'villalietavli61598', 'F3', -1, 100.00, 1, '2021-05-29 11:23:49', '2021-05-29 11:23:49'),
(89, 'For All', 'Villa Natalina', 'villanatalinavna49951', 'F3', -1, 100.00, 1, '2021-05-29 11:24:12', '2021-05-29 11:24:12'),
(90, 'For All', 'Villa Neptunus', 'villaneptunusvtu14759', 'F3', -1, 100.00, 1, '2021-05-29 11:24:31', '2021-05-29 11:24:31'),
(91, 'For All', 'Villa Panoramica', 'villapanoramicavip32547', 'F3', -1, 100.00, 1, '2021-05-29 11:25:02', '2021-05-29 11:25:02'),
(92, 'For All', 'Villa Rita', 'villaritavri28626', 'F3', -1, 100.00, 1, '2021-05-29 11:25:24', '2021-05-29 11:25:24'),
(93, 'For All', 'Villa Sirena', 'villasirenavsi44331', 'F3', -1, 100.00, 1, '2021-05-29 11:25:49', '2021-05-29 11:25:49'),
(94, 'For All', 'Villa Sofia', 'villasofiavso52639', 'F3', -1, 100.00, 1, '2021-05-29 11:26:11', '2021-05-29 11:26:11'),
(95, 'For All', 'Villa Teresa', 'villateresavts98745', 'F3', -1, 100.00, 1, '2021-05-29 11:26:31', '2021-05-29 11:26:31'),
(96, 'For All', 'Vittoria', 'vittoriavtt11813', 'F3', -1, 100.00, 1, '2021-05-29 11:26:53', '2021-05-29 11:26:53'),
(97, 'For All', 'Zi Carmela', 'zicamelazca30234', 'F3', -1, 100.00, 1, '2021-05-29 11:27:17', '2021-05-29 11:27:17'),
(98, 'For All', 'Hibiscus', 'hibiscushis67543', 'F3', -1, 100.00, 1, '2021-05-29 11:27:36', '2021-05-29 11:27:36'),
(99, 'For All', 'Bristol', 'bristolbri23541', 'F3', -1, 100.00, 1, '2021-05-29 11:27:53', '2021-05-29 11:27:53'),
(100, 'For All', 'Alexander', 'alexanderaxe65987', 'F3', -1, 100.00, 1, '2021-05-29 14:06:29', '2021-05-29 14:06:29'),
(101, 'For All', 'Imperial Ischia', 'imperialial25879', 'F3', -1, 100.00, 1, '2021-05-29 14:06:48', '2021-05-29 14:06:48'),
(102, 'For All', 'Villa Livia', 'villalivialvi54125', 'F2', -1, 100.00, 1, '2021-05-29 14:07:10', '2021-05-29 14:07:10'),
(103, 'For All', 'Don Felipe', 'donfelipedfe47852', 'F3', -1, 100.00, 1, '2021-05-29 14:07:29', '2021-06-05 07:42:53'),
(104, 'For All', 'Villa Hermosa', 'vhermosas73431', 'F3', -1, 100.00, 1, '2021-05-29 14:08:00', '2021-05-29 14:08:00'),
(105, 'For All', 'Noris', 'norisnrs15749', 'F3', -1, 100.00, 1, '2021-05-29 14:08:21', '2021-05-29 14:08:21'),
(106, 'For All', 'Parco Cartaromana', 'pcartaromana27033', 'F3', -1, 100.00, 1, '2021-05-29 14:08:41', '2021-05-29 14:08:41'),
(107, 'For All', 'Ischia Lido', 'islido34567', 'F3', -1, 100.00, 1, '2021-05-29 14:08:56', '2021-05-29 14:08:56'),
(108, 'For All', 'Abundia', 'abundiaresare34817', 'F3', -1, 100.00, 1, '2021-05-29 14:09:42', '2021-05-29 15:26:40'),
(109, 'For All', 'Conte Albergo', 'albergoconteaco17089', 'F8', -1, 100.00, 1, '2021-05-29 14:10:41', '2021-05-29 14:10:41'),
(110, 'For All', 'Ambasciatori', 'ambasciatoriamb00342', 'F8', -1, 100.00, 1, '2021-05-29 14:10:59', '2021-05-29 14:10:59'),
(111, 'For All', 'Annabelle', 'annabelleann37511', 'F8', -1, 100.00, 1, '2021-05-29 14:11:18', '2021-05-29 14:11:18'),
(112, 'For All', 'Bellevue', 'bellevuebll36031', 'F8', -1, 100.00, 1, '2021-05-29 14:13:02', '2021-05-29 14:13:02'),
(113, 'For All', 'Castiglione', 'castiglionecst98239', 'F8', -1, 100.00, 1, '2021-05-29 14:13:47', '2021-05-29 14:13:47'),
(114, 'For All', 'Central Park', 'centralparkcpa09117', 'F8', -1, 100.00, 1, '2021-05-29 14:14:17', '2021-05-29 14:14:17'),
(115, 'For All', 'Continental Mare', 'continentalmarecma41102', 'F8', -1, 100.00, 1, '2021-05-29 14:18:13', '2021-05-29 14:18:13'),
(116, 'For All', 'Manzi', 'manzimnz91966', 'F8', -1, 100.00, 1, '2021-05-29 14:18:31', '2021-05-29 14:18:31'),
(117, 'For All', 'Parco dei Principi', 'parcodeiprincipippr99915', 'F8', -1, 100.00, 1, '2021-05-29 14:19:08', '2021-05-29 14:19:08'),
(118, 'For All', 'Regina Palace', 'reginapalacerpa06064', 'F8', -1, 100.00, 1, '2021-05-29 14:19:32', '2021-05-29 14:19:32'),
(119, 'For All', 'San Francesco', 'sfrancescosfr74786', 'F8', -1, 100.00, 1, '2021-05-29 14:20:09', '2021-05-29 14:20:09'),
(120, 'For All', 'San Valentino', 'svalentinosva84281', 'F8', -1, 100.00, 1, '2021-05-29 14:20:26', '2021-05-29 14:20:26'),
(121, 'For All', 'Villa Ravino', 'villaravinovra29791', 'F8', -1, 100.00, 1, '2021-05-29 14:20:48', '2021-05-29 14:20:48'),
(122, 'For All', 'Villa Svizzera', 'villasvizzeravsv29479', 'F8', -1, 100.00, 1, '2021-05-29 14:21:06', '2021-05-29 14:21:06'),
(123, 'For All', 'Zaro', 'hzarohzr30639', 'F8', -1, 100.00, 1, '2021-05-29 14:21:24', '2021-05-29 14:21:24'),
(124, 'For All', 'Acampora Travel', 'acamporaaca28092', 'F2', -1, 100.00, 1, '2021-05-29 14:21:47', '2021-05-29 14:21:47'),
(125, 'For All', 'Gran Paradiso', 'granparadisogpa69826', 'F2', -1, 100.00, 1, '2021-05-29 14:22:32', '2021-06-05 09:34:15'),
(126, 'For All', 'Imperatore Travel', 'imperatoretravelitr98550', 'F2', -1, 100.00, 1, '2021-05-29 14:25:03', '2021-05-29 14:25:03'),
(127, 'For All', 'Nitrodi Viaggi', 'nitrodintr77918', 'F2', -1, 100.00, 1, '2021-05-29 14:25:27', '2021-05-29 14:25:27'),
(128, 'For All', 'Villa Angela', 'villaangelavla254119', 'F2', -1, 100.00, 1, '2021-05-29 14:25:46', '2021-05-29 14:25:46'),
(129, 'For All', 'Villa Maria', 'villamariavma73943', 'F2', -1, 100.00, 1, '2021-05-29 14:26:20', '2021-05-29 14:26:20'),
(130, 'For All', 'Verde Bristol', 'verdevrd69880', 'F3', -1, 100.00, 1, '2021-05-29 15:26:18', '2021-05-29 15:26:18'),
(131, 'For All', 'Hotel della Baia', 'hoteldellabaiahdb52634', 'F2', -1, 100.00, 1, '2021-05-29 15:49:47', '2021-05-29 15:49:47'),
(132, 'For All', 'Villa Bina', 'villabinabna47852', 'F3', -1, 100.00, 1, '2021-05-30 10:25:21', '2021-05-30 10:25:21'),
(133, 'For All', 'Ferdinando', 'casaferdinando54223', 'F3', -1, 100.00, 1, '2021-06-02 07:30:55', '2021-06-02 07:30:55'),
(134, 'For All', 'Casa degli Aranci', 'casaaranci74530', 'F3', -1, 100.00, 1, '2021-06-03 17:14:52', '2021-06-03 17:14:52'),
(135, 'For All', 'Abbonamento Salemme 04-06-21', 'salemmesm4562', 'F3', 12, 100.00, 1, '2021-06-04 11:09:47', '2021-06-04 11:09:47'),
(136, 'For All', 'Casa Gennaro', 'casagennarocsg87596', 'F8', -1, 100.00, 1, '2021-06-04 16:29:32', '2021-06-04 16:29:32'),
(137, 'For All', 'Monti Vittoria', 'montivit13424', 'F2', 12, 100.00, 1, '2021-06-05 08:19:26', '2021-06-07 16:06:44'),
(138, 'For All', 'Casa Cigliano', 'casaciglianocsg56987', 'F8', -1, 100.00, 1, '2021-06-06 09:46:33', '2021-06-06 09:46:33'),
(139, 'For All', 'Miramonte e Mare', 'miramare15253', 'F8', -1, 100.00, 1, '2021-06-06 09:48:25', '2021-06-06 09:48:25'),
(144, 'For All', 'Junior Village', 'juniorvlg44253', 'F3', -1, 100.00, 1, '2021-06-08 09:49:46', '2021-06-08 09:49:46');

-- --------------------------------------------------------

--
-- Table structure for table `setting_admins`
--

CREATE TABLE `setting_admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `max_no_days` int(11) NOT NULL,
  `booking_email_content` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `closing_time` time NOT NULL,
  `adult1_price` double(8,2) NOT NULL,
  `adult2_price` double(8,2) NOT NULL,
  `adult3_price` double(8,2) NOT NULL,
  `adult4_price` double(8,2) NOT NULL,
  `adult1_1baby_price` double(8,2) NOT NULL,
  `adult1_2baby_price` double(8,2) DEFAULT NULL,
  `adult1_3baby_price` double(8,2) DEFAULT NULL,
  `adult2_1baby_price` double(8,2) NOT NULL,
  `adult2_2baby_price` double(8,2) NOT NULL,
  `adult3_1baby_price` double(8,2) NOT NULL,
  `adult4_1baby_price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_admins`
--

INSERT INTO `setting_admins` (`id`, `max_no_days`, `booking_email_content`, `closing_time`, `adult1_price`, `adult2_price`, `adult3_price`, `adult4_price`, `adult1_1baby_price`, `adult1_2baby_price`, `adult1_3baby_price`, `adult2_1baby_price`, `adult2_2baby_price`, `adult3_1baby_price`, `adult4_1baby_price`, `created_at`, `updated_at`) VALUES
(1, -1, '<h2><strong>Congratulazioni</strong> [name], hai prenotato con successo.</h2>\n\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>Tracking Number:</strong> [tracking_id]</div>\n\n<p>&nbsp;</p>\n\n<table style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td style=\"width:50.0000%\"><strong>Booking ID:</strong> [booking_id]<br />\n			<strong>Check-In:</strong> [checkin_date]</td>\n			<td style=\"width:50.0000%\"><br />\n			<strong>Check-Out:</strong> [checkout_date]</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<table style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td style=\"width:50.0000%\">\n			<p><strong>Full Name:</strong> [name]</p>\n\n			<p><strong>Email:</strong> [user_email]</p>\n\n			<p><strong>Phone:</strong> [user_phone]</p>\n\n			<p><strong>Number of Adults:</strong> [no_of_adults]</p>\n\n			<p><strong>Number of Babies:</strong> [no_of_babies]</p>\n\n			<p><strong>Payment Type:</strong> [payment_type]</p>\n\n			<p><strong>Paid Amount: </strong>[paid_amount]</p>\n			</td>\n			<td style=\"width:50.0000%\"><strong>Place ID:</strong> [place_id]<br />\n			<strong>Place Name:</strong> [place_name]<br />\n			<strong>Map Name:</strong> [map_name]<br />\n			<strong>Place Description:&nbsp;</strong>[place_description]</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>Thank You,<br />\n<strong>Negombo</strong> Admin.</p>', '17:00:00', 65.00, 80.00, 105.00, 128.00, 65.00, 90.00, 115.00, 95.00, 118.00, 127.00, 130.00, '2000-01-29 18:00:00', '2021-06-08 11:58:25');

-- --------------------------------------------------------

--
-- Table structure for table `tempbooking_cards`
--

CREATE TABLE `tempbooking_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `place_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_surname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_no_of_guest` int(11) NOT NULL,
  `user_no_of_babies` int(11) NOT NULL,
  `guest_surname1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_surname2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_surname3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baby_surname1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baby_surname2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baby_surname3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_checkin` date NOT NULL,
  `user_checkout` date NOT NULL,
  `is_approved` smallint(6) NOT NULL DEFAULT '0',
  `user_promo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_payment_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_booking_tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_card_paymentid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_ammount` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tempbooking_cards`
--

INSERT INTO `tempbooking_cards` (`id`, `place_id`, `user_fullname`, `user_surname`, `user_email`, `user_phone`, `user_no_of_guest`, `user_no_of_babies`, `guest_surname1`, `guest_surname2`, `guest_surname3`, `baby_surname1`, `baby_surname2`, `baby_surname3`, `user_checkin`, `user_checkout`, `is_approved`, `user_promo`, `user_payment_type`, `user_booking_tracking_id`, `user_card_paymentid`, `paid_ammount`, `created_at`, `updated_at`) VALUES
(19, 'A21', 'Shaykh Siddique', 'Shaykh Siddique', 'shaykhsiddique.lava@gmail.com', '01554656556', 2, 0, 'aaa', NULL, NULL, NULL, NULL, NULL, '2021-05-30', '2021-05-30', 0, NULL, 'Credit Card', 'negombo_60b120ffbe39b5_28025297', '00148709521303171390', 90.00, '2021-05-28 16:57:36', '2021-05-28 16:57:36'),
(20, '501', 'Antonio Gallo', 'Antonio Gallo', '83antoniogallo@gmail.com', '3388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-30', '2021-05-30', 0, NULL, 'Credit Card', 'negombo_60b12744945ca2_83666612', '00148534620303176207', 65.00, '2021-05-28 17:24:21', '2021-05-28 17:24:21'),
(21, 'C12', 'Marco Zullo', 'Marco Zullo', 'foxtrot1960@libero.it', '3358374415', 3, 0, 'Marco Zullo', 'Monica Marilena Miazzi', NULL, NULL, NULL, NULL, '2021-06-02', '2021-06-02', 0, NULL, 'Credit Card', 'negombo_60b33ca47f0c19_78611893', '00150516596303380177', 105.00, '2021-05-30 07:20:05', '2021-05-30 07:20:05'),
(25, 'C12', 'Alessandro Loconsole', 'Alessandro Loconsole', 'alexlock82@gmail.com', '3208446183', 2, 0, 'Alessandro Loconsole', NULL, NULL, NULL, NULL, NULL, '2021-05-31', '2021-05-31', 0, NULL, 'Credit Card', 'negombo_60b355c1cd73e9_15187898', '00150660552303399056', 80.00, '2021-05-30 09:07:14', '2021-05-30 09:07:14'),
(26, 'C12', 'Alessandro Loconsole', 'Alessandro Loconsole', 'alexlock82@gmail.com', '3208446183', 2, 0, 'Alessandro Loconsole', NULL, NULL, NULL, NULL, NULL, '2021-05-31', '2021-05-31', 0, NULL, 'Credit Card', 'negombo_60b355ef808c97_63585402', '00150920999303399201', 80.00, '2021-05-30 09:08:00', '2021-05-30 09:08:00'),
(27, '401', 'Marco Raineri', 'Marco Raineri', 'marco.raineri63@gmail.com', '3477080378', 2, 0, 'Marco Raineri', NULL, NULL, NULL, NULL, NULL, '2021-05-31', '2021-05-31', 0, NULL, 'Credit Card', 'negombo_60b35fa305d3c1_03948501', '00150949558303407742', 80.00, '2021-05-30 09:49:24', '2021-05-30 09:49:24'),
(28, '402', 'Marco Raineri', 'Marco Raineri', 'marco.raineri63@gmail.com', '3477080378', 2, 0, 'Marco Raineri', NULL, NULL, NULL, NULL, NULL, '2021-05-31', '2021-05-31', 0, NULL, 'Credit Card', 'negombo_60b35fdbbfae54_90012441', '00150830311303407991', 80.00, '2021-05-30 09:50:20', '2021-05-30 09:50:20'),
(29, 'D12', 'Pasquale Giugliano', 'Pasquale Giugliano', 'pasqualegiu@tin.it', '3497905701', 2, 0, 'pasquale giugliano', NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-06-01', 0, NULL, 'Credit Card', 'negombo_60b36190e09e29_59396455', '00150648220303409414', 80.00, '2021-05-30 09:57:37', '2021-05-30 09:57:37'),
(30, 'C12', 'Alessandro Loconsole', 'Alessandro Loconsole', 'alexlock82@gmail.com', '3208446183', 2, 0, 'Alessandro Loconsole', NULL, NULL, NULL, NULL, NULL, '2021-05-31', '2021-05-31', 0, NULL, 'Credit Card', 'negombo_60b365278937c9_54986563', '00150552282303412274', 80.00, '2021-05-30 10:12:56', '2021-05-30 10:12:56'),
(35, '1429', 'Massimo di pietro', 'Massimo di pietro', 'massimo.dipietro71@gmail.com', '3297359745', 2, 0, 'Monica mancini cilla', NULL, NULL, NULL, NULL, NULL, '2021-05-31', '2021-05-31', 0, NULL, 'Credit Card', 'negombo_60b39a1f7425f2_71676469', '00150423289303442587', 80.00, '2021-05-30 13:58:56', '2021-05-30 13:58:56'),
(39, 'C13', 'Pasquale Giugliano', 'Pasquale Giugliano', 'pasqualegiu@tin.it', '3497905701', 2, 0, 'pasquale giugliano', NULL, NULL, NULL, NULL, NULL, '2021-06-03', '2021-06-03', 0, NULL, 'Credit Card', 'negombo_60b4aeb81802e4_77988837', '00151137980303578085', 80.00, '2021-05-31 09:39:04', '2021-05-31 09:39:04'),
(40, 'C12', 'Pasquale Giugliano', 'Pasquale Giugliano', 'pasqualegiu@tin.it', '3497905701', 2, 0, 'pasquale giugliano', NULL, NULL, NULL, NULL, NULL, '2021-06-03', '2021-06-03', 0, NULL, 'Credit Card', 'negombo_60b4af00b790d1_28436666', '00151312604303578405', 80.00, '2021-05-31 09:40:17', '2021-05-31 09:40:17'),
(41, '702', 'Maria Francesca Magnotta', 'Maria Francesca Magnotta', 'leamagnotta@gmail.com', '3773075133', 4, 0, 'Antimo Magnotta', 'Antonella Gadola', 'Stefania Magnotta', NULL, NULL, NULL, '2021-06-03', '2021-06-03', 0, '0', 'Credit Card', 'negombo_60b4be9a687317_18011424', '00151849571303598153', 128.00, '2021-05-31 10:46:52', '2021-05-31 10:46:52'),
(43, '1429', 'daniela di lauro', 'daniela di lauro', 'dottdilaurodaniela@gmail.com', '3881244394', 4, 0, 'ambrosio salvatore', 'marrapese gianluigi', 'ambrosio salvatore', NULL, NULL, NULL, '2021-06-02', '2021-06-02', 0, NULL, 'Credit Card', 'negombo_60b4da7c846959_12321504', '00151749189303625891', 128.00, '2021-05-31 12:45:49', '2021-05-31 12:45:49'),
(44, '1406', 'Maria Francesca Magnotta', 'Maria Francesca Magnotta', 'leamagnotta@gmail.com', '3773075133', 4, 0, 'Antimo Magnotta', 'Antonella Gadola', 'Nuria Heller', NULL, NULL, NULL, '2021-06-03', '2021-06-03', 0, '0', 'Credit Card', 'negombo_60b4e5b6c26639_06471665', '00151323687303638397', 128.00, '2021-05-31 13:33:43', '2021-05-31 13:33:43'),
(48, 'A21', 'Laura Galetto', 'Laura Galetto', 'peterpan73@gmail.com', '3387433859', 2, 0, 'Rosangela Sala', NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-06-02', 0, NULL, 'Credit Card', 'negombo_60b4ea981a3196_60817616', '00151996043303644114', 160.00, '2021-05-31 13:54:32', '2021-05-31 13:54:32'),
(50, '1025', 'Elisa Fiamenghi', 'Elisa Fiamenghi', 'ellyth@live.it', '3337494863', 2, 0, 'Vincenzo D\'addio', NULL, NULL, NULL, NULL, NULL, '2021-06-03', '2021-06-03', 0, NULL, 'Credit Card', 'negombo_60b4fe2674d7d1_60006961', '00151493221303667784', 80.00, '2021-05-31 15:17:59', '2021-05-31 15:17:59'),
(52, 'C11', 'Maura Mirandanti', 'Maura Mirandanti', 'miramaura.14@gmail.com', '+393334424348', 4, 0, 'Pucci Duilio', 'Mirandanti Maura', 'ASPRELLA LIBONATI CARMELA', NULL, NULL, NULL, '2021-06-02', '2021-06-02', 0, NULL, 'Credit Card', 'negombo_60b504de1d3cf4_84468041', '00151394991303675756', 128.00, '2021-05-31 15:46:38', '2021-05-31 15:46:38'),
(55, '714', 'Maurizio minelli', 'Maurizio minelli', 'Izio2008@hotmail.it', '3288722359', 2, 0, 'Potito Marucci', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 0, NULL, 'Credit Card', 'negombo_60b5515ed30fe1_27910131', '00151552567303750414', 80.00, '2021-05-31 21:13:03', '2021-05-31 21:13:03'),
(56, '603', 'Valentina Sanesi', 'Valentina Sanesi', 'valentinasanesi@gmail.com', '3337726500', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 0, NULL, 'Credit Card', 'negombo_60b563179eedb0_64255407', '00152689097303759961', 65.00, '2021-05-31 22:28:40', '2021-05-31 22:28:40'),
(62, '56', 'fabrizio camponeschi', 'fabrizio camponeschi', 'studiocamponeschi@tiscali.it', '3358116106', 2, 1, 'fabrizio camponeschi', NULL, NULL, 'ginevra camponeschi', NULL, NULL, '2021-06-04', '2021-06-04', 0, NULL, 'Credit Card', 'negombo_60b5f7d7aa5963_39710792', '00152115441303824545', 95.00, '2021-06-01 09:03:20', '2021-06-01 09:03:20'),
(64, 'C12', 'Pasquale Giugliano', 'Pasquale Giugliano', 'pasqualegiu@tin.it', '3497905701', 2, 0, 'Pasquale Giugliano', NULL, NULL, NULL, NULL, NULL, '2021-06-03', '2021-06-04', 0, NULL, 'Credit Card', 'negombo_60b608e406c3e6_66640980', '00152608224303846965', 160.00, '2021-06-01 10:16:04', '2021-06-01 10:16:04'),
(65, 'B14', 'Pasquale Giugliano', 'Pasquale Giugliano', 'pasqualegiu@tin.it', '3497905701', 2, 0, 'Pasquale Giugliano', NULL, NULL, NULL, NULL, NULL, '2021-06-03', '2021-06-04', 0, NULL, 'Credit Card', 'negombo_60b60919c5daa9_04324551', '00152695963303847212', 160.00, '2021-06-01 10:16:59', '2021-06-01 10:16:59'),
(66, 'C11', 'Pasquale Giugliano', 'Pasquale Giugliano', 'pasqualegiu@tin.it', '3497905701', 2, 0, 'Pasquale Giugliano', NULL, NULL, NULL, NULL, NULL, '2021-06-03', '2021-06-03', 0, NULL, 'Credit Card', 'negombo_60b60993f36124_46458343', '00152203512303847785', 80.00, '2021-06-01 10:19:00', '2021-06-01 10:19:00'),
(67, 'C13', 'Pasquale Giugliano', 'Pasquale Giugliano', 'pasqualegiu@tin.it', '3497905701', 2, 0, 'Pasquale Giugliano', NULL, NULL, NULL, NULL, NULL, '2021-06-03', '2021-06-03', 0, NULL, 'Credit Card', 'negombo_60b609f1068796_50069523', '00152510498303848276', 80.00, '2021-06-01 10:20:33', '2021-06-01 10:20:33'),
(68, '1427', 'Pasquale Giugliano', 'Pasquale Giugliano', 'pasqualegiu@tin.it', '3497905701', 2, 0, 'Pasquale Giugliano', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 0, NULL, 'Credit Card', 'negombo_60b60ac0f0f7e7_90949570', '00152239498303849132', 80.00, '2021-06-01 10:24:01', '2021-06-01 10:24:01'),
(69, 'C12', 'Pasquale Giugliano', 'Pasquale Giugliano', 'pasqualegiu@tin.it', '3497905701', 2, 0, 'Pasquale Giugliano', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 0, NULL, 'Credit Card', 'negombo_60b60af5ba0792_95319232', '00152265779303849346', 80.00, '2021-06-01 10:24:54', '2021-06-01 10:24:54'),
(70, '71', 'Cristiano Costagliola', 'Cristiano Costagliola', 'c.costagliola@gesforsrl.it', '3394668832', 2, 0, 'DE CARO LUIGI', NULL, NULL, NULL, NULL, NULL, '2021-06-02', '2021-06-02', 0, NULL, 'Credit Card', 'negombo_60b61589dab5a5_95569486', '00152990947303861375', 80.00, '2021-06-01 11:10:02', '2021-06-01 11:10:02'),
(71, 'D11', 'Anna maria lombardi', 'Anna maria lombardi', 'maripilli@hotmail.it', '3355917184', 3, 0, 'Veronica della fonte', 'Isabella viviani', NULL, NULL, NULL, NULL, '2021-06-02', '2021-06-02', 0, NULL, 'Credit Card', 'negombo_60b61829930be9_72747466', '00152146314303864151', 105.00, '2021-06-01 11:21:15', '2021-06-01 11:21:15'),
(74, '1414', 'bianca del villano', 'bianca del villano', 'biancadelvillano@virgilio.it', '3492548513', 3, 0, 'pepe', 'del villano', NULL, NULL, NULL, NULL, '2021-06-02', '2021-06-02', 0, NULL, 'Credit Card', 'negombo_60b62a68911929_63223947', '00152589088303882817', 105.00, '2021-06-01 12:39:05', '2021-06-01 12:39:05'),
(75, '71', 'Cristiano Costagliola', 'Cristiano Costagliola', 'c.costagliola@gesforsrl.it', '3394668832', 2, 0, 'DE CARO LUIGI', NULL, NULL, NULL, NULL, NULL, '2021-06-02', '2021-06-02', 0, NULL, 'Credit Card', 'negombo_60b62b5b968145_00757553', '00152146457303884005', 80.00, '2021-06-01 12:43:08', '2021-06-01 12:43:08'),
(77, 'C21', 'Raffaele Avallone', 'Raffaele Avallone', 'raf.avallone@libero.it', '3774355068', 4, 0, 'Raffaele Avallone', 'Antonio Esposito', 'Carla Mercogliano', NULL, NULL, NULL, '2021-06-02', '2021-06-02', 0, '0', 'Credit Card', 'negombo_60b63b277d0c10_31778091', '00152506807303902645', 128.00, '2021-06-01 13:50:32', '2021-06-01 13:50:32'),
(81, 'C11', 'Lavinia Panto', 'Lavinia Panto', 'laviniapanto@gmail.com', '3664975150', 3, 1, 'Anchise Nazzareno', 'Anchise Chiara', NULL, 'Anchise Laura', NULL, NULL, '2021-06-02', '2021-06-02', 0, NULL, 'Credit Card', 'negombo_60b644645761b5_54277819', '00152721043303913286', 127.00, '2021-06-01 14:29:56', '2021-06-01 14:29:56'),
(82, 'C11', 'Lavinia Panto', 'Lavinia Panto', 'laviniapanto@gmail.com', '3664975150', 3, 1, 'Anchise Nazzareno', 'Anchise Chiara', NULL, 'Anchise Laura', NULL, NULL, '2021-06-02', '2021-06-02', 0, NULL, 'Credit Card', 'negombo_60b644dcea78b0_46094409', '00152576301303913823', 127.00, '2021-06-01 14:31:57', '2021-06-01 14:31:57'),
(83, 'E11', 'Mario Veltroni', 'Mario Veltroni', 'mario.veltroni@hotmail.com', '339 5434544', 2, 0, 'Isabella Giovannini', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 0, NULL, 'Credit Card', 'negombo_60b6a0c39720c3_97372493', '00152689433303996720', 80.00, '2021-06-01 21:04:04', '2021-06-01 21:04:04'),
(85, '761', 'Francesca Racioppi', 'Francesca Racioppi', 'francescaracioppi@gmail.com', '3381121013', 2, 0, 'Paola lavagna', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60b6b1bf4e2227_84944992', '00153869497304004245', 80.00, '2021-06-01 22:16:32', '2021-06-01 22:16:32'),
(86, '761', 'Francesca Racioppi', 'Francesca Racioppi', 'francescaracioppi@gmail.com', '3381121013', 2, 0, 'Paola Lavagna', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60b6b2030e73e0_99836508', '00153256162304004341', 80.00, '2021-06-01 22:17:39', '2021-06-01 22:17:39'),
(88, '601', 'Mattia Piccioli', 'Mattia Piccioli', 'mattia.piccioli@outlook.it', '3425477148', 2, 0, 'Mattia Piccioli', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 0, NULL, 'Credit Card', 'negombo_60b6b65692e359_62894001', '00153792528304005323', 80.00, '2021-06-01 22:36:07', '2021-06-01 22:36:07'),
(89, 'C12', 'Pasquale Giugliano', 'Pasquale Giugliano', 'pasqualegiu@tin.it', '3497905701', 2, 0, 'Pasquale Giugliano', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60b71ad84d9156_93138569', '00153535107304014486', 80.00, '2021-06-02 05:44:57', '2021-06-02 05:44:57'),
(90, 'C24', 'Barbara Robecchi', 'Barbara Robecchi', 'barbara.robecchi@alice.it', '3358474134', 3, 0, 'Paola Colombo', 'Rosalinda Ripamonti', NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 0, NULL, 'Credit Card', 'negombo_60b728da2a4a88_70921525', '00153929262304019923', 105.00, '2021-06-02 06:44:42', '2021-06-02 06:44:42'),
(92, 'C11', 'Michael Bringmann', 'Michael Bringmann', 'fam.bringmann@mac.com', '3477411530', 3, 0, 'Michael Bringmann', 'Paola Fundarò Bringmann', NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 0, NULL, 'Credit Card', 'negombo_60b72aee995c85_23819068', '00153673933304021082', 105.00, '2021-06-02 06:53:35', '2021-06-02 06:53:35'),
(94, 'F11', 'Cristiana Raffa', 'Cristiana Raffa', 'cristiana.raffa.rai@gmail.com', '3481639488', 2, 0, 'Cristiana Raffa', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 0, NULL, 'Credit Card', 'negombo_60b730d7252455_09162851', '00153144262304024993', 80.00, '2021-06-02 07:18:47', '2021-06-02 07:18:47'),
(96, '1301', 'Davide Ponticelli', 'Davide Ponticelli', 'davide.ponticelli@gmail.com', '3355918492', 4, 0, 'Guido Ponticelli', 'Enrichetta Bilzi', 'Agata Ponticelli', NULL, NULL, NULL, '2021-06-04', '2021-06-04', 0, NULL, 'Credit Card', 'negombo_60b7358c36b672_91858057', '00153925008304028622', 128.00, '2021-06-02 07:38:52', '2021-06-02 07:38:52'),
(98, 'D11', 'Girolamo Speciale', 'Girolamo Speciale', 'minoski85@hotmail.com', '3922661035', 2, 0, 'Muollo claudia', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 0, NULL, 'Credit Card', 'negombo_60b7423898ce11_31424512', '00153292664304039856', 80.00, '2021-06-02 08:32:57', '2021-06-02 08:32:57'),
(99, 'C14', 'Sonia Ranelli', 'Sonia Ranelli', 'alessandro.raco2007@libero.it', '3288297599', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60b74635f00137_81279240', '00153828328304043727', 65.00, '2021-06-02 08:49:58', '2021-06-02 08:49:58'),
(100, 'D11', 'Sonia Ranelli', 'Sonia Ranelli', 'alessandro.raco2007@libero.it', '3288297599', 3, 0, 'Maria Cristina Campoli', 'Rosaria Totaro', NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60b7472d057537_38510066', '00153244665304044713', 105.00, '2021-06-02 08:54:05', '2021-06-02 08:54:05'),
(103, '82', 'Valentina marciano', 'Valentina marciano', 'v.marciano@yahoo.it', '3246229329', 2, 0, 'Valentina marciano', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60b75b42d01a29_74710763', '00153367840304063186', 80.00, '2021-06-02 10:19:47', '2021-06-02 10:19:47'),
(104, 'D11', 'Simone Vecchio', 'Simone Vecchio', 'simonevecchio.jss@gmail.com', '3664232295', 2, 0, 'Claudia Favero', NULL, NULL, NULL, NULL, NULL, '2021-06-03', '2021-06-03', 0, NULL, 'Credit Card', 'negombo_60b75f9a6b1d37_71342023', '00153426026304066440', 80.00, '2021-06-02 10:38:19', '2021-06-02 10:38:19'),
(106, '82', 'Valentina Marciano', 'Valentina Marciano', 'v.marciano@yahoo.it', '3246229329', 2, 0, 'Valentina marciano', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60b76958654d95_93016859', '00153260967304073293', 80.00, '2021-06-02 11:19:53', '2021-06-02 11:19:53'),
(108, '1402', 'Mariella gareddu', 'Mariella gareddu', 'mgareddu@gmail.com', '3477665488', 2, 0, 'Mariella gareddu', NULL, NULL, NULL, NULL, NULL, '2021-06-03', '2021-06-03', 0, NULL, 'Credit Card', 'negombo_60b7909c360ab0_17829829', '00153287400304099685', 80.00, '2021-06-02 14:07:24', '2021-06-02 14:07:24'),
(114, '36', 'Simone Moscarino', 'Simone Moscarino', 'simone.moscarino@virgilio.it', '3662436278', 2, 0, 'Chiara Errico', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 0, NULL, 'Credit Card', 'negombo_60b7cd2023a766_62889087', '00153343229304142200', 80.00, '2021-06-02 18:25:36', '2021-06-02 18:25:36'),
(115, '36', 'Simone Moscarino', 'Simone Moscarino', 'simone.moscarino@virgilio.it', '3662436278', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 0, NULL, 'Credit Card', 'negombo_60b7cd75da8356_76523971', '00153394577304142442', 80.00, '2021-06-02 18:27:03', '2021-06-02 18:27:03'),
(122, 'C14', 'Pasquale Giugliano', 'Pasquale Giugliano', 'pasqualegiu@tin.it', '3497905701', 2, 0, 'Pasquale Giugliano', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60b8743d7621e6_07093325', '00154220881304190822', 80.00, '2021-06-03 06:18:38', '2021-06-03 06:18:38'),
(123, 'C13', 'Pasquale Giugliano', 'Pasquale Giugliano', 'pasqualegiu@tin.it', '3497905701', 2, 0, 'Pasquale Giugliano', NULL, NULL, NULL, NULL, NULL, '2021-06-06', '2021-06-06', 0, NULL, 'Credit Card', 'negombo_60b874893d1b45_93032202', '00154540969304191027', 80.00, '2021-06-03 06:19:53', '2021-06-03 06:19:53'),
(125, '1416', 'Melissa Gurgone', 'Melissa Gurgone', 'melissa.gurgone@hotmail.com', '3479554373', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 0, NULL, 'Credit Card', 'negombo_60b88c5b208b00_73122634', '00154437615304213733', 65.00, '2021-06-03 08:01:31', '2021-06-03 08:01:31'),
(126, 'E12', 'Rimualdo moretti', 'Rimualdo moretti', 'romualdomoretti@yahoo.com', '3393799889', 2, 0, 'Anthony Galea', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60b8a03c3655b5_81251240', '00154301493304239263', 80.00, '2021-06-03 09:26:21', '2021-06-03 09:26:21'),
(130, '14', 'ludovica bonesi', 'ludovica bonesi', 'marchetti_riccardo@fastwebnet.it', '3496488332', 2, 0, 'ludovica bonesi', NULL, NULL, NULL, NULL, NULL, '2021-06-06', '2021-06-06', 0, '0', 'Credit Card', 'negombo_60b8d2a9578b28_54588376', '00154401729304293381', 80.00, '2021-06-03 13:01:30', '2021-06-03 13:01:30'),
(131, 'B21', 'Lucia Maccaferri', 'Lucia Maccaferri', 'lucia.maccaferri@alice.it', '3282163497', 2, 0, 'Eugenio Adimari', NULL, NULL, NULL, NULL, NULL, '2021-06-04', '2021-06-04', 0, NULL, 'Credit Card', 'negombo_60b8d4ad5ef2d4_91456773', '00154349818304295756', 80.00, '2021-06-03 13:10:06', '2021-06-03 13:10:06'),
(133, 'C14', 'Federica Spagnuolo', 'Federica Spagnuolo', 'spagnuolo.federica@gmail.com', '3459918038', 2, 0, 'Federica spagnuolo', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60b8d9d7ad56b0_89246818', '00154403278304301560', 80.00, '2021-06-03 13:32:08', '2021-06-03 13:32:08'),
(135, '1422', 'Carmela Di Bonito', 'Carmela Di Bonito', 'carmela23585@alice.it', '3286615065', 2, 1, 'Di Bonito carmela', NULL, NULL, 'Romano Christian', NULL, NULL, '2021-06-04', '2021-06-04', 0, NULL, 'Credit Card', 'negombo_60b8ea50bb03c4_17685078', '00154652239304321871', 95.00, '2021-06-03 14:42:25', '2021-06-03 14:42:25'),
(138, '238', 'benedetto mule', 'benedetto mule', 'harashy66@alice.it', '3519411297', 2, 0, 'alessia andreozzi', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60b909382227b4_74698868', '00154170681304354116', 80.00, '2021-06-03 16:54:17', '2021-06-03 16:54:17'),
(140, 'F12', 'EDUARDO', 'EDUARDO', 'eduardocarannante@gmail.com', '3331748745', 2, 0, 'EDUARDO CARANNANTE', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60b918d31868b2_05006782', '00154617943304366402', 80.00, '2021-06-03 18:00:51', '2021-06-03 18:00:51'),
(141, 'F12', 'EDUARDO CARANNANTE', 'EDUARDO CARANNANTE', 'eduardocarannante@gmail.com', '3331748745', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60b918fa6fcb46_97756474', '00154854103304366603', 80.00, '2021-06-03 18:01:31', '2021-06-03 18:01:31'),
(144, '1413', 'Antonino Romano', 'Antonino Romano', 'antoninoromano@gmail.com', '335403648', 4, 0, 'Fabiana Gianfrani', 'Alessandra Fanone', 'Ketty Caravecchia', NULL, NULL, NULL, '2021-06-05', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60b934777a8137_14895986', '00154264060304389797', 128.00, '2021-06-03 19:58:48', '2021-06-03 19:58:48'),
(148, 'A11', 'Maria Rosaria Esposito', 'Maria Rosaria Esposito', 'mariarosari.esposito@inps.it', '3204636736', 2, 0, 'Maura Vastano', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60b946f92a4469_20481413', '00154405555304403437', 80.00, '2021-06-03 21:17:46', '2021-06-03 21:17:46'),
(149, 'D12', 'Alessandro Maggiore', 'Alessandro Maggiore', 'a.maggiore@advancedlab.it', '3929709008', 2, 1, 'Alessandro', NULL, NULL, 'Maggiore', NULL, NULL, '2021-06-05', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60b9c0871d0f53_27832176', '00155189039304421065', 95.00, '2021-06-04 05:56:24', '2021-06-04 05:56:24'),
(150, 'D51', 'af', 'af', 'negombo@negombo.it', '081986152', 3, 0, 'aa', 'aa', NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60b9d5225317a1_56057557', '00155819674304435441', 105.00, '2021-06-04 07:24:18', '2021-06-04 07:24:18'),
(153, '60', 'Valentina Finamonti', 'Valentina Finamonti', 'valentinafinamonti@gmail.com', '3281517221', 3, 0, 'Valentina', 'Finamonti', NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60b9d78ab44650_18422123', '00155167664304438212', 105.00, '2021-06-04 07:34:35', '2021-06-04 07:34:35'),
(154, '60', 'Valentina Finamonti', 'Valentina Finamonti', 'valentinafinamonti@gmail.com', '3281517221', 3, 0, 'Vittoria tropea', 'Silvia fabrizi', NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60b9d853d63945_89646679', '00155245195304439242', 105.00, '2021-06-04 07:37:56', '2021-06-04 07:37:56'),
(155, 'B12', 'Angela Angió', 'Angela Angió', 'driade6@hotmail.it', '3203067216', 2, 0, 'Angela Angió', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60b9da95acf234_86813155', '00155683605304441876', 80.00, '2021-06-04 07:47:34', '2021-06-04 07:47:34'),
(156, '71', 'Matteo Cariglia', 'Matteo Cariglia', 'matteo.cariglia@enel.com', '3890097670', 2, 1, 'Aggie Grzegorczyk', NULL, NULL, 'Laila Cariglia', NULL, NULL, '2021-06-05', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60b9daeb777eb3_30885872', '00155804726304442324', 95.00, '2021-06-04 07:49:00', '2021-06-04 07:49:00'),
(160, 'D14', 'Giulia Bolognini', 'Giulia Bolognini', 'g.bolognini91@gmail.com', '3409697884', 2, 0, 'Simone Corsale', NULL, NULL, NULL, NULL, NULL, '2021-06-06', '2021-06-06', 0, NULL, 'Credit Card', 'negombo_60b9e88e338602_25369629', '00155205457304459555', 80.00, '2021-06-04 08:47:11', '2021-06-04 08:47:11'),
(166, '643', 'Nicola Scardone', 'Nicola Scardone', 'n.scardone86@gmail.com', '3398209788', 4, 0, 'Alessandro Mollo', 'Sara Scardone', 'Fabrizio Grillo', NULL, NULL, NULL, '2021-06-05', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60ba1f3bb50422_39540657', '00155125478304522705', 128.00, '2021-06-04 12:40:28', '2021-06-04 12:40:28'),
(167, 'A14', 'Guido Villani', 'Guido Villani', 'guido_v73@inwind.it', '3313725258', 2, 0, 'Villani', NULL, NULL, NULL, NULL, NULL, '2021-06-06', '2021-06-06', 0, NULL, 'Credit Card', 'negombo_60ba21c892f989_67127871', '00155215140304525803', 80.00, '2021-06-04 12:51:21', '2021-06-04 12:51:21'),
(168, 'A12', 'Francesca Rosa', 'Francesca Rosa', 'francescarosa88@gmail.com', '3893462475', 2, 0, 'Francesca Rosa', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60ba29314baf59_95264027', '00155531137304533993', 80.00, '2021-06-04 13:22:58', '2021-06-04 13:22:58'),
(170, '1407', 'Michele Russo', 'Michele Russo', 'effect@libero.it', '3296906668', 2, 0, 'Michele Russo', NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60ba2dd36f0636_97717515', '00155190977304539084', 80.00, '2021-06-04 13:42:44', '2021-06-04 13:42:44'),
(171, 'C11', 'Maria chiara Cappellini', 'Maria chiara Cappellini', 'mariachiaracappellini@hotmail.it', '3393409840', 2, 0, 'Maria Chiara Cappellini', NULL, NULL, NULL, NULL, NULL, '2021-06-06', '2021-06-06', 0, NULL, 'Credit Card', 'negombo_60ba2ee2008a47_92719982', '00155683284304540330', 80.00, '2021-06-04 13:47:14', '2021-06-04 13:47:14'),
(172, '51', 'Carmela Di Bonito', 'Carmela Di Bonito', 'carmela23585@alice.ir', '3286615065', 2, 1, 'Carmela di bonito', NULL, NULL, 'Romano Christian', NULL, NULL, '2021-06-05', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60ba3c40e22a84_18152013', '00155532922304554832', 95.00, '2021-06-04 14:44:17', '2021-06-04 14:44:17'),
(174, '60', 'Martina Gasbarri', 'Martina Gasbarri', 'martina.gasbarri@icloud.com', '3404621996', 2, 0, 'Vittorio Antuono', NULL, NULL, NULL, NULL, NULL, '2021-06-08', '2021-06-08', 0, NULL, 'Credit Card', 'negombo_60bb3761ed5240_25096373', '00156415757304663821', 80.00, '2021-06-05 08:35:46', '2021-06-05 08:35:46'),
(179, 'C12', 'Erica Zucchi', 'Erica Zucchi', 'erica.zucchi@libero.it', '3293156265', 2, 0, 'Filippo Piazzi', NULL, NULL, NULL, NULL, NULL, '2021-06-06', '2021-06-06', 0, NULL, 'Credit Card', 'negombo_60bb8f7a82a429_49448186', '00156559529304729372', 80.00, '2021-06-05 14:51:39', '2021-06-05 14:51:39'),
(180, '1013', 'Antonio Faralli', 'Antonio Faralli', 'antonio.faralli@gmail.com', '7861009094', 2, 0, 'Faralli', NULL, NULL, NULL, NULL, NULL, '2021-06-08', '2021-06-08', 0, NULL, 'Credit Card', 'negombo_60bba8d053c812_57437259', '00156355862304746124', 80.00, '2021-06-05 16:39:45', '2021-06-05 16:39:45'),
(183, '34', 'Marco Cerqua Massera', 'Marco Cerqua Massera', 'marco.cerqua.61@gmail.com', '3292230841', 4, 0, 'Ruggiero Maria Francesca', 'Ruggiero Antonio', 'Ruggiero Giuseppina', NULL, NULL, NULL, '2021-06-09', '2021-06-09', 0, NULL, 'Credit Card', 'negombo_60bc763e4d3427_43152460', '00157399119304795452', 128.00, '2021-06-06 07:16:15', '2021-06-06 07:16:15'),
(185, '75', 'ai io', 'ai io', 'ai@libero', '3496565321', 2, 0, 'ai io', NULL, NULL, NULL, NULL, NULL, '2021-06-09', '2021-06-09', 0, '0', 'Credit Card', 'negombo_60bca0f21b7440_72636037', '00157950742304825233', 80.00, '2021-06-06 10:18:26', '2021-06-06 10:18:26'),
(191, '1408', 'Federica Torri', 'Federica Torri', 'f.torri3@hotmail.it', '+393343864591', 2, 0, 'Federica Torri', NULL, NULL, NULL, NULL, NULL, '2021-06-09', '2021-06-09', 0, NULL, 'Credit Card', 'negombo_60bdbb3205bf87_86543416', '00158474408304932741', 80.00, '2021-06-07 06:22:42', '2021-06-07 06:22:42'),
(192, '1407', 'Federica Torri', 'Federica Torri', 'f.torri3@hotmail.it', '+393343864591', 2, 0, 'Federica Torri', NULL, NULL, NULL, NULL, NULL, '2021-06-09', '2021-06-09', 0, NULL, 'Credit Card', 'negombo_60bdceec3976f4_13072888', '00158217227304949721', 80.00, '2021-06-07 07:46:52', '2021-06-07 07:46:52'),
(195, 'E11', 'Gabriele Agrillo', 'Gabriele Agrillo', 'prenotazioni@ilvacanziere.eu', '08118787235', 2, 0, 'Gabriele Agrillo', NULL, NULL, NULL, NULL, NULL, '2021-06-09', '2021-06-09', 0, NULL, 'Credit Card', 'negombo_60be03c69687d0_82033963', '00158890312305013113', 80.00, '2021-06-07 11:32:23', '2021-06-07 11:32:23'),
(197, '315', 'Martina Tessari', 'Martina Tessari', 'martina.tessari@gmail.com', '3488280700', 4, 0, 'Fabrizio Tessari', 'Claudia Bonato', 'Pietro Tessari', NULL, NULL, NULL, '2021-06-11', '2021-06-11', 0, NULL, 'Credit Card', 'negombo_60be43051889f1_03197289', '00158416851305080324', 128.00, '2021-06-07 16:02:13', '2021-06-07 16:02:13'),
(200, '1406', 'Diego Testa', 'Diego Testa', 'diego_testa88@hotmail.com', '3357416485', 2, 0, 'Diego Testa', NULL, NULL, NULL, NULL, NULL, '2021-06-09', '2021-06-09', 0, NULL, 'Credit Card', 'negombo_60be686c8b2e59_22550036', '00158199619305114281', 80.00, '2021-06-07 18:41:49', '2021-06-07 18:41:49'),
(202, 'E11', 'Alessio oota', 'Alessio oota', 'lollo@hotmail.it', '3281251263', 2, 0, 'Alessio oota', NULL, NULL, NULL, NULL, NULL, '2021-06-11', '2021-06-11', 0, NULL, 'Credit Card', 'negombo_60bf3080838142_24179680', '00159809992305194893', 80.00, '2021-06-08 08:55:30', '2021-06-08 08:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `temp_bookings`
--

CREATE TABLE `temp_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_checkin` date NOT NULL,
  `cookie` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temp_bookings`
--

INSERT INTO `temp_bookings` (`id`, `client_ip`, `place_id`, `user_checkin`, `cookie`, `created`, `created_at`, `updated_at`) VALUES
(900, '151.43.82.17', '58', '2021-06-09', 'negombo_60bf588de0d7a2.52319770', '2021-06-08 13:46:21', '2021-06-08 11:46:21', '2021-06-08 11:46:21'),
(901, '2.228.102.213', '651', '2021-06-11', 'negombo_60bf58d799dfc8.16880906', '2021-06-08 13:47:35', '2021-06-08 11:47:35', '2021-06-08 11:47:35'),
(902, '212.216.158.99', 'A31', '2021-06-09', 'negombo_60bf59ae8bb619.78177512', '2021-06-08 13:51:10', '2021-06-08 11:51:10', '2021-06-08 11:51:10'),
(903, '151.43.82.17', '643', '2021-06-09', 'negombo_60bf5a03270827.93158350', '2021-06-08 13:52:35', '2021-06-08 11:52:35', '2021-06-08 11:52:35'),
(904, '151.43.82.17', '666', '2021-06-09', 'negombo_60bf5a266df518.78280942', '2021-06-08 13:53:10', '2021-06-08 11:53:10', '2021-06-08 11:53:10'),
(905, '151.43.82.17', '666', '2021-06-09', 'negombo_60bf5a363b8ee0.96910003', '2021-06-08 13:53:26', '2021-06-08 11:53:26', '2021-06-08 11:53:26'),
(906, '212.216.158.99', '1429', '2021-06-09', 'negombo_60bf5b06f2f086.66197204', '2021-06-08 13:56:54', '2021-06-08 11:56:54', '2021-06-08 11:56:54');

-- --------------------------------------------------------

--
-- Table structure for table `trans`
--

CREATE TABLE `trans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Programmer', 'shaykhsiddiqee@gmail.com', 'admin', NULL, '$2y$10$MbbL3YBMdasgYNNdPsSYietjNZpeBMSrTzDtheXG4hFZc7EAPInCC', '4eH5hlzoKXESGCgEAyjD5JNJvOfkXqMLciB2lrSd9sPEEk5TFDNnE6neWcBn', '2020-07-02 02:05:59', '2020-08-04 07:32:33'),
(12, 'Mario Angelo Iannotta', 'marioiannotta@virgilio.it', 'admin', NULL, '$2y$10$bZbl3MjwAvuw7eMiEIaPheOoUr.n5Yfu6.6IJU/Ig6jphEfD7Aif2', 'bYaZhCjzIJkzl2JyDgdTiVz3QDXmmy1bnLHvIu8AS6TtCjvqIklbi7rcwH6y', '2020-07-19 17:17:45', '2021-06-03 07:49:00'),
(14, 'Gabriella Pilato', 'backoffice@negombo.it', 'admin', NULL, '$2y$10$Svyt3B0y6uIyL6hsLwtDpuAWpswFUNejw/UD.DolBBhYtR/sMBwWi', 'XN2PrvPkwiwK5YYD60vr28nMQgvIWf4Zo5h0ZghgIC7LAYFAEA88ns8bO2a0', '2020-07-19 17:20:01', '2020-07-26 01:29:58'),
(15, 'Antonella Cantaressi', 'negombo@negombo.it', 'staff', NULL, '$2y$10$KGdAWA5JjMq/CcRlde3vwOx/1MTs/IK2V8mjXl8PgSKzI.KKUCBPC', NULL, '2020-07-19 17:21:19', '2020-07-19 17:21:19'),
(17, 'Antonio Gallo', '83antoniogallo@gmail.com', 'admin', NULL, '$2y$10$exRpAuXOdthKJ5allOjK8ODsprUnxQTSxonSD1RRwtR8AqAn98cHa', '3mDouEggQCK7gH4Fehyibr1AufclBqpPlscVofbFQmNKjYgsu4rkL7gwQw8r', '2020-07-26 00:41:34', '2020-07-26 02:17:25'),
(18, 'test entrance', 'teststuff@exmpl.com', 'staff', NULL, '$2y$10$0htfigguuqCdLO2c6.TpCeI08DFjkD4IsL4ujMG6JtUX54ZpQTWK2', NULL, '2020-08-02 19:32:29', '2020-08-02 19:32:29'),
(20, 'Bruno Cernigliaro', 'brc2005@libero.it', 'admin', NULL, '$2y$10$9JCL6HhBjomokgbPXZDDMOdy9t0b7PWufs20jVgcr4xjtCbd2a8lS', NULL, '2020-08-06 05:53:55', '2020-08-06 05:53:55');

-- --------------------------------------------------------

--
-- Table structure for table `_parametri`
--

CREATE TABLE `_parametri` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Param` varchar(50) DEFAULT NULL,
  `Tipo` varchar(1) DEFAULT NULL,
  `Valore` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_parametri`
--

INSERT INTO `_parametri` (`id`, `Param`, `Tipo`, `Valore`) VALUES
(79, 'lastdata', NULL, ''),
(80, 'ComPort', NULL, ''),
(81, 'MenuKey', NULL, ''),
(82, 'DefData', NULL, ''),
(83, 'DbVer', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `_tabledef`
--

CREATE TABLE `_tabledef` (
  `Table_ID` bigint(20) UNSIGNED NOT NULL,
  `Table_Name` varchar(20) DEFAULT NULL,
  `Field_Ord` int(11) DEFAULT NULL,
  `Field_Name` varchar(20) DEFAULT NULL,
  `Field_Type` varchar(1) DEFAULT NULL,
  `Field_Len` int(11) DEFAULT NULL,
  `Field_Dec` int(11) DEFAULT NULL,
  `Field_Desc` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `bigmapmappings`
--
ALTER TABLE `bigmapmappings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_place_id_foreign` (`place_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promocodes` (`promocode`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `places_place_id_unique` (`place_id`);

--
-- Indexes for table `promo_codes`
--
ALTER TABLE `promo_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `promo_codes_promocode_unique` (`promocode`);

--
-- Indexes for table `setting_admins`
--
ALTER TABLE `setting_admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tempbooking_cards`
--
ALTER TABLE `tempbooking_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_bookings`
--
ALTER TABLE `temp_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trans`
--
ALTER TABLE `trans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `_parametri`
--
ALTER TABLE `_parametri`
  ADD UNIQUE KEY `ID` (`id`);

--
-- Indexes for table `_tabledef`
--
ALTER TABLE `_tabledef`
  ADD PRIMARY KEY (`Table_ID`),
  ADD UNIQUE KEY `Table_ID` (`Table_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=429;
--
-- AUTO_INCREMENT for table `promo_codes`
--
ALTER TABLE `promo_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT for table `setting_admins`
--
ALTER TABLE `setting_admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tempbooking_cards`
--
ALTER TABLE `tempbooking_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;
--
-- AUTO_INCREMENT for table `temp_bookings`
--
ALTER TABLE `temp_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=907;
--
-- AUTO_INCREMENT for table `trans`
--
ALTER TABLE `trans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `_parametri`
--
ALTER TABLE `_parametri`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `_tabledef`
--
ALTER TABLE `_tabledef`
  MODIFY `Table_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
