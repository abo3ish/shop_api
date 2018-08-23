-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2018 at 03:36 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_api`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2018_08_17_150703_create_products_table', 1),
(9, '2018_08_17_150836_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('a185621c728e2bf864936786c80b8b76d9e0496b2d97a24e483f0638c117093d57f61992c4fee93c', 1, 2, NULL, '[]', 0, '2018-08-23 09:08:00', '2018-08-23 09:08:00', '2019-08-23 11:08:00'),
('deef2cd41bf181b57a3cacc3b371e79f9cc9543d5f896e5e3c3651342b6f49a98d4fe1286b15a6ff', 1, 2, NULL, '[]', 0, '2018-08-23 11:20:13', '2018-08-23 11:20:13', '2019-08-23 13:20:13');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'Lpzg8J5ZJCCXwNV1CjrOfMyNWetVNHwZh4NVL8W9', 'http://localhost', 1, 0, 0, '2018-08-23 09:05:37', '2018-08-23 09:05:37'),
(2, NULL, 'Laravel Password Grant Client', 'huHRd2pagUSOQi7d3xKhqTkWoOYjUkdTEu8LHQow', 'http://localhost', 0, 1, 0, '2018-08-23 09:05:37', '2018-08-23 09:05:37');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-08-23 09:05:37', '2018-08-23 09:05:37');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('090fa5757a5a3a33531f6ded31707e42a2abaeef302b7f70434e1c437b60ac9cce13a6eb96081d6a', 'deef2cd41bf181b57a3cacc3b371e79f9cc9543d5f896e5e3c3651342b6f49a98d4fe1286b15a6ff', 0, '2019-08-23 13:20:13'),
('3f9a3537fdd8026cc99d8573128d3c53a9493f58e2286227371c45c80ca474f7bba9691f6db0e72f', 'a185621c728e2bf864936786c80b8b76d9e0496b2d97a24e483f0638c117093d57f61992c4fee93c', 0, '2019-08-23 11:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `stock`, `price`, `discount`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'perspiciatis', 'Laudantium aspernatur ratione earum ut recusandae amet adipisci. Tempore molestiae et culpa. Ex repellat eius mollitia omnis.', 1, 881, 19, 3, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(3, 'dolore', 'Culpa nihil voluptas ullam odio. Qui possimus et animi et culpa. Consequuntur ducimus eligendi fugiat ducimus.', 135, 575, 30, 3, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(4, 'sit', 'Facere aliquid voluptatem aperiam necessitatibus est. Et et voluptatem veritatis culpa id dolores voluptas nulla. Repellat est laboriosam quo cum quos quia commodi. Nulla minus eius harum.', 46, 565, 63, 1, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(5, 'et', 'Est voluptatibus debitis dolorum officia. Voluptate saepe blanditiis cupiditate libero enim. Quis ex voluptate ea corrupti quia eligendi tenetur ut. Voluptate aperiam molestiae est animi modi ut ipsam.', 196, 561, 72, 2, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(6, 'dolorem', 'Eum officiis molestiae eum nesciunt excepturi nostrum et corrupti. Deleniti vel deleniti libero sed consequatur suscipit nesciunt possimus. Debitis dolor vitae nam accusantium rerum necessitatibus et.', 115, 819, 66, 6, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(7, 'odit', 'Inventore esse aspernatur aut et cum cumque officia. Vero incidunt libero sit maxime sed. Recusandae est voluptate mollitia dolores autem cum tempore.', 104, 369, 66, 2, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(8, 'autem', 'Mollitia qui est omnis voluptas praesentium quia error. Cum dolorem quae omnis est excepturi. Numquam sapiente pariatur reiciendis eum.', 43, 175, 99, 5, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(9, 'aut', 'Repellat eum qui ut esse. Vitae voluptates voluptas neque est eos voluptatem illum. Id blanditiis in vel sint adipisci occaecati. Dolores labore blanditiis excepturi consequatur.', 95, 276, 4, 1, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(10, 'amet', 'Provident voluptas animi consequatur qui perspiciatis enim perferendis magni. Cupiditate accusantium est doloremque ut consectetur architecto aut. Voluptas culpa quam sed similique voluptas dolore numquam facilis.', 53, 617, 7, 4, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(11, 'voluptate', 'Qui voluptates illum eligendi consequatur et. Nihil ea nobis est. Consequatur distinctio in laboriosam est modi nesciunt.', 79, 781, 98, 4, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(12, 'culpa', 'Praesentium laudantium magni modi. Eveniet dicta nemo odit tempore rem. Eum vel labore non quis atque.', 60, 649, 44, 5, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(13, 'illo', 'Dolorem et corporis consequuntur amet sapiente. Sit alias perferendis incidunt possimus sapiente corrupti vitae. Numquam adipisci accusantium voluptatem dolor est tempora atque. Error magnam aut ut reprehenderit blanditiis vitae aut.', 108, 727, 47, 7, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(14, 'nam', 'Nisi quis omnis est laboriosam pariatur culpa. Aspernatur velit incidunt aut consequatur assumenda et omnis tempore. Expedita tempora repellat magni saepe.', 126, 667, 9, 6, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(16, 'voluptates', 'Consectetur eligendi est eligendi rerum consequuntur. Neque sit error odit voluptas provident nulla id. Eaque beatae qui enim blanditiis.', 9, 354, 85, 1, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(17, 'voluptas', 'Cum voluptas vel nam nulla aut sed autem. Facilis autem consequuntur dignissimos.', 136, 569, 2, 3, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(18, 'officia', 'Quo voluptate quia quos qui harum. Ut qui et nulla in.', 94, 786, 32, 3, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(19, 'consequuntur', 'Nobis sapiente eaque est facere atque repellat. Quia quis iste explicabo et. Adipisci numquam laboriosam veritatis ut consectetur eveniet.', 0, 883, 28, 1, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(20, 'voluptas', 'Harum quia eum et nam quia debitis est explicabo. Cumque aut pariatur repudiandae maxime sit aut. Assumenda enim enim sunt natus.', 43, 766, 20, 2, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(21, 'harum', 'Facere quia ea eos quos veritatis. Est ipsa qui deserunt. Omnis omnis sunt et quis est dicta.', 189, 928, 14, 3, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(22, 'hic', 'Impedit consequatur possimus est cum et vel commodi. Ea fugit est aut et. Debitis nostrum repellendus quaerat consequatur. Rerum sint autem et natus repellat laboriosam aut.', 3, 150, 22, 1, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(23, 'non', 'Illum similique tempore velit magnam. Non quia quia repudiandae sunt consequatur est delectus.', 117, 688, 4, 3, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(24, 'nihil', 'Assumenda aliquam odio officia distinctio est. Harum perspiciatis unde voluptatem maxime voluptas deleniti laudantium. Qui quia fuga voluptatem eaque deleniti quasi.', 153, 223, 17, 7, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(25, 'explicabo', 'Quasi est qui eaque doloribus quidem ut. Sunt ad rerum veniam saepe eum. Quam pariatur architecto non.', 80, 950, 46, 6, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(26, 'aspernatur', 'Et maxime nam esse sit ex dolorem a. Facere magni esse inventore enim. Debitis eius ea voluptatibus reiciendis. Vel quia sequi itaque totam fuga omnis dolor quisquam.', 200, 347, 69, 3, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(27, 'inventore', 'Reiciendis quas eum laboriosam repellendus inventore et. Enim voluptas sit alias. Inventore sit sint itaque eum nemo.', 52, 485, 21, 5, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(28, 'quam', 'Sint dolore dolores consequatur perferendis eius. Omnis perspiciatis dolores voluptates facere tempore assumenda animi voluptate. Esse nobis ad sit fugiat doloremque blanditiis.', 159, 837, 48, 2, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(29, 'quis', 'Dolorem aut at quia ullam. Magnam suscipit labore rerum. Cumque non voluptas libero consequatur.', 39, 222, 13, 1, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(30, 'dolorum', 'Qui delectus in voluptatem quasi enim. Est dolor cupiditate est est vero error. Aut quam quod sint quae perferendis qui. Voluptas minus eligendi pariatur fugit ut voluptatum sapiente.', 58, 473, 30, 6, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(31, 'debitis', 'Optio veritatis quas optio accusamus soluta cumque. Quas et sed quaerat eaque ex. Exercitationem eos nobis aut facere corrupti.', 127, 680, 66, 7, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(32, 'excepturi', 'Cupiditate porro itaque ea incidunt accusamus. Ex consequatur similique quibusdam quod sed suscipit dolor. Rerum harum dolorem quo illum velit aspernatur quos.', 87, 794, 54, 5, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(33, 'consectetur', 'Est qui velit dolore beatae excepturi voluptate assumenda. Soluta molestiae minima molestiae minus veritatis ea. Tempora exercitationem excepturi perferendis error.', 131, 908, 80, 7, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(34, 'quaerat', 'Ut quis quasi et. Corporis qui modi reprehenderit eos et. Ipsam omnis deserunt qui commodi corrupti alias fuga. Rem cumque fugiat dolores.', 71, 255, 20, 6, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(35, 'fugiat', 'Sed ut iusto voluptas fuga ut iusto. Amet non iste dolores. Ratione aut libero illo tempore corporis unde illum.', 39, 406, 43, 2, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(36, 'rerum', 'Nobis consequuntur esse doloremque facere ut autem maiores. Quia molestiae eveniet cupiditate ducimus eius impedit. Esse est itaque at culpa. Et voluptates sunt ratione fugit omnis minus cum quidem.', 144, 267, 52, 1, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(37, 'iure', 'Fugiat ut nam ratione aut est. Recusandae minima autem qui ipsum veritatis.', 135, 510, 50, 4, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(38, 'omnis', 'Iusto et tenetur occaecati necessitatibus. Et iusto dolorum odit velit qui quam. Incidunt dolores ipsa aliquid magni ut. Itaque dolorum assumenda voluptate sunt ut aut maxime.', 85, 978, 71, 3, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(39, 'veritatis', 'Ipsam rerum voluptatem harum aliquid. Aliquam officiis consectetur atque nulla dolores non magnam. Qui temporibus velit fugiat et aut explicabo ut. Doloremque ex dolor tempora et.', 80, 608, 75, 2, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(40, 'nobis', 'Labore esse officiis consequatur sunt explicabo tenetur odit. Numquam nam assumenda modi tempore fugit voluptas in. Nesciunt molestias itaque minima consequatur aut. Minus accusamus quia velit.', 86, 335, 21, 2, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(41, 'quos', 'Laborum omnis qui id ipsum. Aspernatur iste officia quo eveniet fuga quisquam repellendus. Sapiente officia explicabo velit qui magnam minus. Voluptate rerum voluptas enim nisi sit et repellat.', 136, 241, 91, 4, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(42, 'voluptates', 'Rem quasi eum voluptatem. Explicabo et repudiandae in expedita. Optio ea qui voluptatum facilis iure placeat saepe quia. Consequatur enim ut ipsa qui.', 61, 797, 99, 7, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(43, 'est', 'Fuga facilis ducimus officiis aut qui illum. Incidunt labore accusamus explicabo quibusdam autem id. Et provident mollitia ut dolorem sunt.', 53, 876, 32, 1, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(44, 'et', 'Illo esse architecto error consequatur. Quia architecto corporis placeat veniam rerum beatae aut unde. Minima accusantium consectetur aut aperiam. Laboriosam hic qui est sed repellat accusantium.', 59, 853, 29, 7, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(45, 'consectetur', 'Sit sapiente similique occaecati dolores corrupti. Molestias saepe et tempora alias non vel illo eos. Officiis nulla nostrum ipsum eveniet et consequatur nisi consequuntur.', 2, 837, 67, 6, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(46, 'modi', 'Animi amet inventore totam quia ipsam. Odio quae vitae voluptatem doloribus qui est. Consectetur rem earum autem iusto pariatur nihil. Et est eos dolorem.', 51, 664, 66, 6, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(47, 'neque', 'Quam qui in culpa est id. Et non nobis perferendis ea odio cupiditate. Ipsa ipsa est amet dolores nemo ut hic. Tempora repellendus non ipsam ut.', 102, 670, 63, 5, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(48, 'placeat', 'Et dolorem officiis non facilis ea dolor quo repudiandae. Commodi ut est dicta et veniam. Maxime autem eos unde alias veniam tempore at. Error quas adipisci adipisci illo quia accusantium sint. Cumque eligendi dolores est animi autem praesentium culpa vel.', 159, 197, 33, 3, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(49, 'eum', 'Sunt consectetur veniam deserunt possimus. Et vero aut qui omnis.', 10, 915, 63, 2, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(50, 'ad', 'Doloribus pariatur id occaecati ipsa a commodi. Nesciunt ratione id qui natus enim quidem eius. At voluptatem asperiores non sit.', 66, 198, 92, 3, '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(51, 'rerum', 'Adipisci suscipit illum sit magnam placeat nulla sed. Aut suscipit illo culpa dolorum eum qui. Numquam magni quis et et.', 173, 294, 6, 12, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(52, 'nulla', 'Repellat placeat ducimus ad voluptatum. Voluptatibus tempore quod amet consectetur. Ut sunt porro dolores corrupti est iusto.', 35, 936, 47, 3, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(53, 'et', 'Perferendis dignissimos dolores iure aut aut et. Eum qui aliquam ducimus qui et animi. Dolor est eveniet quia autem natus et.', 93, 208, 4, 9, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(54, 'ut', 'Asperiores quis error sed et facilis. Omnis blanditiis sunt voluptas tenetur rerum voluptatem ut. Dolorem earum ducimus vel molestiae et autem assumenda.', 66, 177, 50, 13, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(55, 'et', 'Est laborum soluta officia doloribus. Eius quidem dolores numquam sed repellendus et sequi. Ipsa non qui sint voluptatem unde ab quisquam.', 122, 633, 62, 13, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(56, 'vero', 'Nihil nemo officia nulla atque. Sapiente rerum adipisci cumque maiores. Optio reprehenderit voluptas possimus ducimus sapiente.', 142, 595, 44, 13, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(57, 'tenetur', 'Mollitia sit id ut. Quidem non autem voluptas provident fuga ut dolores. Dolores inventore esse perspiciatis ut.', 43, 726, 80, 12, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(58, 'est', 'Et tempora quasi labore nostrum. Voluptatum hic voluptatem accusamus dolor facere illum laborum. Asperiores rerum ad ab necessitatibus est ipsum ipsam ex. Tempore ducimus facere incidunt odio temporibus voluptatem nihil.', 160, 426, 13, 1, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(59, 'ut', 'Vero aut repellendus in culpa deserunt. Sint enim eligendi corporis numquam molestiae voluptas. Qui nulla optio illo non explicabo. Quia enim reiciendis et et.', 138, 549, 98, 1, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(60, 'eligendi', 'Sequi molestias rerum illo omnis ea deleniti. Voluptate reiciendis eum repellendus quia.', 140, 660, 60, 10, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(61, 'voluptatum', 'Vel voluptate ratione tempore explicabo sit ut ut. Consequuntur ea ut quis aut.', 190, 323, 72, 11, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(62, 'et', 'Voluptates adipisci pariatur itaque qui. Inventore expedita accusamus minus est voluptatum quos. Error molestiae corrupti officiis facere. Sed doloribus natus expedita molestiae voluptate.', 176, 581, 31, 5, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(63, 'earum', 'Est nesciunt corporis minima amet culpa sed dolorum. Nemo facere repudiandae eius quam recusandae. Architecto et ea et.', 111, 183, 95, 2, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(64, 'quia', 'Porro non dolore dolores impedit. Id dolor blanditiis debitis. Dolorum et sapiente harum sit quia in. Nisi est in quasi aut officia non dolorem.', 50, 934, 69, 13, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(65, 'aliquam', 'Maiores qui quasi distinctio. Quia id earum animi nemo. Non enim molestiae ullam ut. Sunt neque nulla consequuntur.', 148, 403, 8, 3, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(66, 'dolorem', 'Velit placeat dolorem saepe quas sequi. Perspiciatis soluta ut sed voluptatem eveniet. Alias sunt non ad corrupti. Consequatur esse quas tenetur dolorum architecto consequuntur.', 158, 472, 91, 9, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(67, 'repellat', 'Sed et possimus quaerat unde. Rerum labore quo ut ratione et ut et. Iure commodi beatae velit est velit velit.', 151, 836, 66, 8, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(68, 'consequuntur', 'Qui omnis ad autem id expedita qui voluptatem provident. Est sequi et eum animi doloribus occaecati. Asperiores perspiciatis architecto quo sunt omnis eaque rem fugiat.', 63, 686, 55, 1, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(69, 'et', 'Qui sint et adipisci eos et velit voluptatibus libero. Minima et molestiae provident dolorem harum corporis. Maiores repellendus ut sequi et labore accusantium quis. Facere non vero aut.', 173, 797, 44, 10, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(70, 'unde', 'Cumque enim et in nemo harum sunt. Quae qui est ea nobis voluptas commodi. Aut voluptatem ratione omnis voluptatibus ullam tenetur. Atque dolorem soluta odio temporibus maiores explicabo.', 148, 558, 65, 11, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(71, 'quia', 'Aut voluptatem est deleniti aut. Voluptatem et eos ea expedita. Reprehenderit est aut et.', 143, 142, 94, 14, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(72, 'eos', 'Quasi praesentium impedit saepe in nam praesentium. Quibusdam repellendus iusto necessitatibus earum. Repudiandae odit accusantium vero atque quis facilis assumenda.', 86, 370, 22, 1, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(73, 'accusantium', 'Aut eos enim facere laboriosam error nam ut. Officia vero non non aspernatur minus velit magnam. Cum ut earum nemo nobis provident incidunt eos.', 82, 418, 60, 2, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(74, 'iusto', 'Sit fuga sit unde qui. Natus reiciendis eius deleniti a quia. A dolor sint quisquam quae reprehenderit suscipit natus.', 149, 474, 21, 7, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(75, 'repellendus', 'Enim ut odit velit occaecati. Consequuntur nemo ut nisi voluptatem aut aut eos natus. Sit distinctio reprehenderit ipsum dignissimos. Eligendi qui et quis a consequatur aliquam.', 88, 165, 60, 4, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(76, 'velit', 'Magni fugit molestias cumque odit incidunt et repellendus. Quia perspiciatis omnis quae fuga ipsum fugit animi. Quis autem vitae cumque non animi debitis. Et nulla natus laborum. Enim dolores veritatis autem voluptatem officiis.', 115, 110, 94, 11, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(77, 'sapiente', 'Dolor esse animi beatae eum itaque laudantium. Asperiores non totam numquam distinctio. Dolorem earum aut et et non ratione.', 138, 383, 56, 2, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(78, 'dignissimos', 'Quis consequuntur numquam et nesciunt. Molestiae ex autem reprehenderit aliquid fuga impedit aliquid. Et consequatur in et sequi. Magni eum ut architecto voluptas nam aut quam eos.', 75, 981, 35, 14, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(79, 'maxime', 'Occaecati ea velit tempora voluptatum eos aut. Rerum quia dignissimos ea non sit. Non doloremque et assumenda. Voluptatem itaque aut ex quia nisi doloremque.', 87, 281, 55, 1, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(80, 'porro', 'Qui odio dolorem officia impedit deserunt. Voluptate rerum suscipit quaerat dolores non. Veniam veniam aut vel error. Autem dolorem enim sit ullam eum nihil porro.', 130, 760, 77, 2, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(81, 'et', 'Doloremque tempore perspiciatis eos illum et corporis quo. Fuga et qui occaecati corporis sit recusandae alias. Quisquam ut perspiciatis nihil dignissimos.', 43, 128, 28, 1, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(82, 'aliquam', 'Architecto ut fuga quae. Qui distinctio inventore dignissimos sapiente rerum ipsum. Voluptates deleniti tempore unde deserunt repellat expedita qui. Fugiat perferendis et quo necessitatibus hic ea soluta dicta.', 47, 574, 24, 6, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(83, 'repudiandae', 'Eos sunt et libero culpa. Sed expedita quia molestiae aut aut dignissimos autem. Ducimus placeat voluptas pariatur est.', 13, 490, 14, 8, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(84, 'ea', 'Debitis est aut quis explicabo error. Ut et nobis deserunt hic expedita sed. Consectetur reprehenderit sapiente reprehenderit magni quis possimus.', 134, 964, 12, 11, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(85, 'molestias', 'Eos mollitia omnis illo tempora aut in. Optio aut rerum deserunt neque rem eum sed. Eos beatae ea voluptate distinctio veritatis. Reprehenderit atque quia et qui sint ratione rem. Quo rerum quibusdam sit incidunt et.', 31, 155, 57, 3, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(86, 'modi', 'Facere excepturi optio voluptatem qui sint. Dolorum voluptate voluptas voluptas. Dolores blanditiis veritatis optio fuga sunt qui. Fugiat qui eos dolores minima.', 81, 496, 80, 9, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(87, 'rerum', 'Deserunt sunt velit similique animi libero. Eum voluptates repellat et animi laboriosam dolor ut. Aut est ex consequuntur rerum.', 114, 113, 2, 7, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(88, 'aut', 'Tenetur rerum maiores dolorum aspernatur enim quo dolorem animi. Ad voluptatum cupiditate delectus vel aut molestiae minima.', 147, 825, 76, 2, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(89, 'illo', 'Facere est ducimus est est ea omnis molestias voluptas. Rerum ut ducimus adipisci laboriosam amet qui quam. Ea consequuntur veritatis voluptatum et pariatur natus.', 148, 107, 93, 4, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(90, 'atque', 'Suscipit corrupti quasi quae. Saepe ut veniam eaque est aut. Eveniet incidunt eveniet eaque nisi dolores. Et dolor aut pariatur voluptatem aperiam commodi et non.', 76, 222, 93, 14, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(91, 'alias', 'Facilis voluptatibus laborum odio nam doloremque. Numquam voluptatum itaque id. Recusandae commodi omnis est quam aliquam. Modi aut veritatis voluptates necessitatibus sed perspiciatis.', 59, 455, 79, 3, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(92, 'voluptas', 'Quas necessitatibus ratione aut soluta tempora. At ut et tempore alias. Earum ut non rerum dicta vel et amet quasi. Quia non necessitatibus quo.', 182, 862, 16, 12, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(93, 'qui', 'Deserunt mollitia saepe molestiae itaque. Dolor vel dolores ullam corrupti ut voluptate qui voluptatem. Reiciendis non eum doloribus qui distinctio. Harum tempora beatae consequuntur.', 41, 837, 42, 9, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(94, 'sequi', 'Beatae iusto quaerat nobis non. Sit nulla laudantium quia dolores soluta iste dolorem. Unde aut ab fugiat est.', 87, 447, 41, 12, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(95, 'ratione', 'Laboriosam assumenda illo culpa. Ex assumenda nam repudiandae dignissimos officia. Accusamus dolores assumenda reprehenderit minima quisquam neque. Voluptate et sed inventore id voluptatibus laborum sit ea.', 29, 232, 66, 13, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(96, 'qui', 'Qui corporis consequatur eos dolore mollitia ad exercitationem. Nobis aspernatur quod ad sint distinctio. Et vitae nam provident ab. Doloremque et eum labore et quam consequuntur. Dolores et iure et aliquam.', 78, 292, 16, 12, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(97, 'perferendis', 'Optio numquam incidunt sapiente consequuntur commodi commodi. Illo quaerat quia ut omnis consequuntur et. Quia perferendis impedit velit non quaerat voluptatibus laudantium.', 82, 513, 71, 10, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(98, 'voluptas', 'Consectetur quis temporibus et nemo sint nemo. Beatae fuga dolores et harum rem in. Qui et velit perferendis sed minus facere ad. Et sunt officia eos reprehenderit possimus ut et.', 77, 289, 96, 5, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(99, 'maxime', 'Culpa placeat et eveniet omnis eius voluptates quia. Voluptatum laborum cum et. Totam minus aut sunt alias non. Deleniti quis molestiae dolores recusandae dolor odit nam.', 200, 270, 29, 9, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(100, 'repellendus', 'Eum eaque quia omnis facilis et voluptate. Quaerat veritatis iure atque error ullam quo voluptatem. Et velit molestiae nam enim id.', 91, 160, 14, 12, '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(101, 'repellat', 'Facere in debitis omnis vel et. Facilis minima asperiores deserunt eaque ipsam qui fuga est. Eum modi nemo minima et aut commodi.', 19, 473, 37, 4, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(102, 'qui', 'Aspernatur doloremque in at voluptatem quos. Rerum dolores qui nihil enim porro. Itaque cum rerum dolore eum sit expedita necessitatibus. Non est velit similique occaecati repellat voluptatibus.', 181, 266, 70, 5, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(103, 'maxime', 'Optio harum quaerat ipsam excepturi ut. Recusandae quia corrupti eveniet eveniet maxime. Modi harum voluptate eum repellat excepturi. Aperiam id laborum ipsum est vel quod.', 40, 220, 30, 5, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(104, 'hic', 'Sit dolores tempore dignissimos dolores atque. Quaerat sit aut saepe in sed minus. Ut sit sed expedita optio veritatis accusantium.', 126, 934, 35, 15, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(105, 'omnis', 'Eos quo nulla in voluptatem nemo nemo consequatur inventore. Doloremque minima nemo placeat iusto. Non et sequi doloremque et rerum magnam ea. Dolore et est hic dolores nihil reiciendis.', 29, 821, 57, 9, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(106, 'non', 'Impedit impedit qui quidem aliquam maxime impedit id et. Ad maiores nesciunt suscipit dolorem illo aliquid qui. Ipsum dolores est aliquam corrupti illo et. Qui veritatis amet eveniet debitis quas.', 158, 772, 27, 19, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(107, 'omnis', 'Asperiores esse aut dolorem. Numquam placeat earum qui dolores voluptates. Et et dolorem rerum.', 178, 840, 95, 13, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(108, 'omnis', 'Aut saepe illo velit. Aut ea rerum ut reiciendis. Cupiditate beatae doloribus voluptatem similique aut ipsam incidunt. Aliquam voluptatem et alias ipsa.', 15, 338, 89, 14, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(109, 'pariatur', 'Et officia unde eligendi architecto quis at natus vel. Veritatis minima fuga eos numquam quidem. Cumque sed veniam aut architecto fugit quia natus repellendus.', 143, 333, 94, 15, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(110, 'reprehenderit', 'Fugit aliquid eligendi ut nam odit error vero. Est magnam et unde accusamus ipsa consequatur dolor sit. Quisquam nostrum dolores quis cumque sunt.', 98, 882, 7, 13, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(111, 'et', 'Culpa et odit tempora rerum laborum excepturi iste. Aut incidunt non nostrum ea mollitia recusandae et praesentium. Cum atque omnis quo laboriosam ea consequatur velit.', 47, 194, 79, 11, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(112, 'maxime', 'Vel et sint illo cum alias quos labore. Voluptatum et quia at. Dolor possimus sequi voluptatibus natus adipisci facere aut.', 147, 687, 75, 16, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(113, 'consequatur', 'Voluptatum error accusantium qui id et. Totam ducimus accusamus tempora. Iste consequatur voluptas necessitatibus sunt.', 54, 655, 19, 19, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(114, 'laudantium', 'Dolor officia et porro et. Culpa non eius eius ut eligendi quibusdam qui. Et ipsam ut repellat quia quaerat officia et. Non sint necessitatibus ut est.', 181, 345, 77, 3, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(115, 'consectetur', 'Odit laborum sit nihil. Reprehenderit aut vitae odit qui provident. Adipisci debitis omnis expedita aut.', 54, 903, 93, 17, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(116, 'quo', 'Consequatur quo dolorem architecto repellendus quo. Odit dolor nulla et quibusdam vero. Repellendus distinctio dignissimos ipsum excepturi facilis nihil fuga eaque. Qui a quia fuga necessitatibus.', 131, 882, 5, 8, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(117, 'ullam', 'Impedit ratione atque molestiae et quas amet illum. Beatae et et corporis non quaerat omnis. Quisquam necessitatibus eaque voluptatum voluptate magnam autem eligendi ipsa. Odit corporis est ipsum accusantium aut. Repudiandae ea ad recusandae fuga corporis autem.', 100, 973, 80, 1, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(118, 'ut', 'Id quisquam dolor officiis. Nisi sit velit sint doloribus praesentium dolorem. Voluptates odio aperiam debitis omnis. Rerum quidem est consequatur asperiores dicta laudantium.', 167, 801, 64, 4, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(119, 'natus', 'Dolorum est est hic. Eum tempore ipsa esse architecto iure rerum similique. Ut dolore neque rerum inventore eligendi sequi qui.', 60, 708, 95, 10, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(120, 'dolores', 'In occaecati sit facilis reprehenderit. Quis autem corporis quo voluptatum et. Qui qui perferendis non assumenda delectus dolor et excepturi. Praesentium quis voluptatem rerum ipsum quibusdam.', 80, 783, 44, 3, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(121, 'aut', 'Et enim architecto nihil veritatis. Et natus placeat exercitationem ipsum qui ut hic. Qui voluptatibus cupiditate est minima.', 30, 784, 47, 14, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(122, 'quaerat', 'Dicta laboriosam quam dolores vel autem. Et fugit harum necessitatibus amet officia aut omnis. Suscipit ut dolore repudiandae reiciendis enim minima odio sit.', 155, 997, 75, 8, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(123, 'ut', 'Eius optio tempore voluptas enim. Provident accusantium sunt in debitis at. Minus qui quam natus eligendi. Rem perspiciatis laudantium labore ut beatae.', 166, 448, 35, 18, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(124, 'quia', 'Molestiae incidunt eveniet velit eos. Iusto quos quaerat est tenetur doloremque non non corporis. Enim quidem maxime magnam quos earum ut natus.', 52, 140, 50, 21, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(125, 'repudiandae', 'Harum odio possimus quas minus architecto. Sed nulla dolor explicabo alias similique perferendis quia. Id consequatur ipsum dicta et.', 80, 699, 11, 12, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(127, 'culpa', 'Exercitationem ad numquam qui. Dolores eligendi placeat repellat.', 190, 550, 69, 16, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(128, 'ex', 'Et ea qui sunt itaque. Itaque deleniti non sint perspiciatis. Ipsam quia ut fugit quod qui. Iusto ut dignissimos atque a. Dolor velit aliquid reiciendis alias dicta.', 160, 566, 62, 4, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(129, 'assumenda', 'At ut repudiandae asperiores aut magnam ullam dignissimos. Sed voluptatibus accusamus ut voluptas. Laborum neque quia quo provident ullam et.', 162, 991, 59, 18, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(130, 'eos', 'Quia quia quaerat non dicta velit et. Dolorum veniam ut occaecati perspiciatis ipsum corrupti. Et nihil et deleniti labore. Odio id nulla et fugiat nostrum enim.', 95, 375, 89, 10, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(131, 'dolorem', 'Eum quia velit ab expedita. Corporis est aut enim rem. Non animi nihil et molestias et nihil.', 161, 705, 15, 21, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(132, 'amet', 'Saepe cupiditate aut hic laborum. Nihil aut dolores numquam ea aut placeat. Quia suscipit illo odit tempora laboriosam aspernatur tempora. Quas quo illum modi sed.', 96, 892, 27, 17, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(133, 'explicabo', 'Distinctio rerum rerum nesciunt quod doloribus mollitia. Eum eos impedit beatae. Aliquid dolor maxime veritatis.', 119, 391, 46, 16, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(134, 'ea', 'Assumenda aut libero facilis perspiciatis consequatur assumenda. Assumenda est illum quis corrupti molestiae quae. Veritatis qui fugiat placeat nobis blanditiis. Minima labore explicabo dicta in nisi itaque minima quos. Assumenda tempore in molestiae labore quia ut.', 155, 127, 48, 19, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(135, 'ut', 'Saepe dolor aut earum quis et. Aliquid modi quisquam quidem molestiae totam. Impedit ea fuga qui sapiente vitae vel. Possimus nemo omnis velit qui.', 91, 927, 95, 18, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(136, 'consectetur', 'In tempore eum dolor sed occaecati consequatur temporibus. Placeat sapiente omnis dolor omnis. Sunt eligendi modi culpa voluptatibus tempora error dolore. Facere eveniet quia nisi cum optio rerum blanditiis porro.', 93, 489, 1, 15, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(137, 'atque', 'Est qui eveniet aut placeat repellat eum. Nesciunt et dolore dignissimos nihil ea eligendi ut. Sit voluptatem et accusamus repudiandae ut tempore animi. Voluptatem tempore nihil repudiandae eaque debitis. At repellendus tenetur quis fugit occaecati non.', 91, 423, 48, 2, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(138, 'at', 'Qui ut velit et facilis. Iusto dolores et incidunt consequatur quod quos id. Quos officia consectetur aperiam dolor beatae neque dolores voluptate.', 53, 931, 83, 9, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(139, 'ducimus', 'Ea omnis harum debitis quo hic quas. Rerum commodi omnis possimus sed eum dolores possimus. Natus molestias rerum rerum quo quo. Vel delectus deserunt optio sit et. Qui sed veritatis quibusdam in facilis expedita tempora.', 115, 624, 60, 1, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(140, 'voluptas', 'Et sit similique exercitationem qui dolorum explicabo. Est quo velit quis vero distinctio perspiciatis et. Magnam voluptatem sed consequuntur illo sequi possimus possimus.', 126, 214, 49, 17, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(141, 'necessitatibus', 'Aut saepe dignissimos voluptas molestias qui. Omnis dolorum aut nihil non quia optio eveniet. Ipsum excepturi eos nesciunt nemo omnis praesentium consectetur. Asperiores voluptatem sint perspiciatis id aspernatur.', 120, 454, 42, 12, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(142, 'odit', 'Quod architecto qui pariatur. Consectetur ipsa asperiores reiciendis sint aperiam sunt corporis.', 40, 708, 4, 10, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(143, 'expedita', 'Exercitationem accusamus et quisquam. Molestiae quasi sed eveniet nemo dolores recusandae deserunt. Assumenda voluptatem saepe dolore necessitatibus cum atque expedita. Aut quia vel dolores cumque voluptas. Voluptas perspiciatis ut et velit dolores.', 175, 496, 27, 1, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(144, 'sed', 'Iusto et animi accusantium et nihil fuga velit ab. Ea nesciunt voluptatem sit laboriosam aut ab. Nihil quas sit eos optio est. Ducimus sed id est quia ad. Odio non nesciunt sint dolore ducimus.', 90, 570, 63, 5, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(145, 'temporibus', 'Voluptate non nam id. Autem voluptatibus sit est sint esse. Enim nulla et nihil quia voluptate. Id eos dolore sed numquam sed voluptatem consectetur.', 179, 139, 3, 13, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(146, 'assumenda', 'Nostrum ea non sed. Dolorem unde eveniet repellat ex sint nesciunt illo. Vero illo enim molestiae aut.', 21, 689, 88, 3, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(147, 'quos', 'Assumenda tempora autem et magni. Nemo ratione sed quia vitae nostrum in. Natus optio nobis quia nisi id ducimus.', 74, 242, 60, 17, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(148, 'ipsa', 'Et eos non doloremque ipsam explicabo nostrum dolor. Temporibus accusamus consequatur ut et consequatur. Perferendis officia sit qui sed placeat inventore magnam dolores.', 124, 330, 55, 21, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(149, 'architecto', 'Praesentium quae iste nihil. Dolore exercitationem laborum et cupiditate nihil est et consequatur. Repellat enim consectetur dolor eveniet. Tempore qui illum omnis maiores saepe praesentium quaerat eos.', 107, 458, 50, 9, '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(150, 'rerum', 'Veritatis mollitia illum distinctio esse qui facere aut. Quas nihil dignissimos dolore numquam et id doloribus.', 157, 508, 77, 10, '2018-08-23 09:04:45', '2018-08-23 09:04:45');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `body`, `user_id`, `product_id`, `star`, `created_at`, `updated_at`) VALUES
(1, 'Aut et qui consequatur. Tenetur ex ea perferendis repellendus. Molestias nostrum maxime ut sed.', 19, 77, 4, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(2, 'Quo ducimus qui iure natus harum facilis nihil. Laboriosam et quod deleniti hic minima harum totam. Rerum nihil suscipit similique omnis. Velit sapiente reiciendis vero nihil.', 8, 26, 2, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(3, 'Animi voluptatum corrupti autem dolorum. Mollitia aperiam fugit recusandae blanditiis nulla. Officiis et est recusandae nostrum ratione est. Veritatis necessitatibus aut vitae architecto nemo.', 7, 5, 1, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(4, 'Voluptatibus quo aspernatur et sapiente. Itaque itaque est accusamus aut esse autem.', 15, 40, 0, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(5, 'Aut praesentium voluptate suscipit dolores placeat quia non error. Voluptas harum earum rerum commodi. Et maxime quas eum autem ab enim.', 7, 69, 5, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(6, 'This very nice Item', 1, 32, 3, '2018-08-23 09:04:47', '2018-08-23 11:24:42'),
(7, 'Distinctio est possimus in illo vel quia ipsam. Qui non accusantium eaque saepe totam officia. Laudantium voluptas dolore ipsum optio consectetur non odio sunt.', 17, 95, 1, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(9, 'Voluptate consectetur quia sunt voluptatem delectus provident dolorum. Natus voluptas occaecati magni cumque. Nihil sapiente eius quia consequatur provident labore qui et. Aut qui quas libero autem impedit ut.', 1, 38, 0, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(10, 'Labore porro quae nesciunt numquam molestiae voluptatem in. Quia autem aperiam vitae reiciendis non repudiandae. Autem optio alias ea.', 2, 87, 2, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(11, 'Placeat quia totam laborum sequi aperiam aspernatur. Adipisci repellendus iste corrupti ut unde illo impedit unde. Nulla sequi neque voluptate et dolorem. Neque quo et fuga ad reiciendis.', 11, 42, 2, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(12, 'Impedit deleniti culpa amet ea quos iusto. Rerum est ab quia in suscipit dolore ipsam. Numquam fugit quis id natus atque.', 13, 88, 5, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(13, 'Aut officiis sunt reiciendis ab magnam. Molestiae in odit pariatur. Dolor nam dolores suscipit odit laborum. Animi dolores molestiae dolorum voluptatibus quia natus.', 12, 59, 3, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(14, 'Porro velit quae ut ipsa debitis. Placeat commodi at quas explicabo nihil qui.', 9, 39, 2, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(15, 'Beatae sequi rerum eos cum sint in ducimus. Et magni quod illum vero mollitia quo reprehenderit. Quidem ad deleniti sed fugiat. Ut et occaecati aut beatae saepe sint.', 21, 31, 0, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(16, 'Iusto veritatis dicta nesciunt modi architecto aut culpa. Aliquam vitae et quis exercitationem voluptate aut modi impedit. In architecto libero deserunt vitae quod voluptatem ut. Autem sint maxime unde est qui. Minus minus mollitia nihil rerum inventore qui accusantium voluptas.', 7, 107, 4, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(17, 'Distinctio fugiat veniam dolorem amet ut eaque. Non aliquam eveniet vel eaque ut. Reprehenderit aliquam est quia quia quidem. Omnis ut quia provident amet modi numquam blanditiis.', 12, 64, 4, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(18, 'Sit consequuntur consequatur ipsa aut. Molestiae sunt voluptatem unde quis quasi deserunt quibusdam. Rerum blanditiis soluta ut.', 16, 38, 2, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(19, 'Aut rem omnis veritatis et doloribus. A voluptates omnis saepe corporis a autem. Porro quia blanditiis sunt excepturi doloremque beatae.', 15, 20, 5, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(20, 'Corrupti et officia similique sed neque iure accusantium. Sit expedita laborum sit dolores ea est vitae. Unde similique sit autem velit sunt nesciunt quo.', 21, 45, 2, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(21, 'Eaque eius porro omnis officia aliquid. Nihil itaque dolorum qui nihil molestias. Delectus voluptates eum necessitatibus corporis est. Et nisi beatae provident adipisci assumenda.', 11, 48, 3, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(22, 'Minima harum eum odit voluptatem dolore accusantium. Expedita rem praesentium et unde ullam. Quia aut atque quae et.', 5, 81, 0, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(23, 'Dolorum aspernatur animi consectetur ex est eligendi optio ratione. Excepturi quod voluptatem facilis incidunt quis. Ut aspernatur laborum dolorum.', 17, 142, 1, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(24, 'Placeat rerum soluta sit est. Dolorum praesentium ut ratione quasi est. Voluptas veniam atque enim est. Velit quis enim veniam laudantium.', 10, 35, 4, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(25, 'Aut sint quia quas nisi aut dolorum aut maxime. Eos quis sint molestiae a quos. Blanditiis dignissimos ducimus quis voluptas. Quaerat occaecati hic molestiae saepe pariatur nisi ipsam.', 8, 33, 0, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(26, 'Assumenda et est ut cupiditate. Voluptatem ea est quaerat et consequatur similique. Voluptatum iure error ratione totam omnis harum ullam.', 9, 20, 2, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(27, 'Saepe quibusdam labore itaque minima dolor. Eos quam eum ut rerum. Esse ut aperiam vel cumque nesciunt sit. Id quasi nisi delectus non omnis.', 1, 39, 5, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(28, 'Explicabo eligendi quisquam aspernatur tempora voluptas velit natus. Ut nisi nobis ut velit illum aliquid ipsa. Est illum id neque.', 16, 74, 2, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(29, 'Sint possimus ipsa sapiente aut. Voluptate maiores adipisci hic distinctio rem similique qui.', 16, 136, 4, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(30, 'Quo hic qui rerum cumque modi quia aut. Tenetur officiis amet unde ducimus velit magnam quas. Debitis voluptates neque placeat cumque enim pariatur sit eaque.', 15, 37, 3, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(31, 'Id velit amet earum nulla. Eos voluptatem est non fugiat ducimus. Deserunt id velit ut ut nulla.', 8, 38, 5, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(32, 'Quasi eum veritatis incidunt ex. Voluptates adipisci totam atque et voluptatibus enim. Quis similique a deserunt est qui qui excepturi quam.', 15, 10, 2, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(33, 'Omnis ab sint inventore eaque eius. Nam non commodi nam voluptates.', 6, 47, 3, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(34, 'Iure omnis eligendi dolor repellendus. Fugit quod vel voluptas temporibus deleniti. Deserunt accusamus deleniti velit excepturi earum non. Deleniti aut aut et enim id.', 1, 67, 1, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(35, 'In consequatur vero doloremque culpa repudiandae cupiditate et. Ex nemo sapiente praesentium molestiae autem voluptas eos amet. Molestiae ipsum non dolore. Aspernatur velit labore sunt soluta.', 11, 36, 3, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(36, 'Ratione qui fugit et soluta necessitatibus repudiandae esse. Et distinctio corporis et sit velit omnis mollitia non. Velit porro voluptatem minus suscipit maiores. Repudiandae est et quis consequatur eum aut distinctio.', 1, 83, 1, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(37, 'Quo voluptates et voluptas aut aut sequi vel sit. Possimus minima consequatur quo in earum magni. Ut quidem ex ab exercitationem nesciunt minus autem. Fugiat doloremque dolorum ut repudiandae.', 10, 80, 4, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(38, 'Placeat sed aliquam quae est. Soluta quam beatae soluta molestiae. Consequatur cupiditate cupiditate eligendi reprehenderit alias ut. Neque quis qui voluptatem ipsum et suscipit. Sunt id mollitia ab recusandae dolores rem.', 2, 38, 1, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(39, 'In nam nihil amet officiis. Id tempore a unde odio itaque autem sunt repellendus. Perferendis autem quam labore est.', 7, 142, 4, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(40, 'Maxime qui voluptatem ut rerum. Consequatur aut cum consequatur et maiores. Et nam adipisci qui fugiat id quam adipisci. Debitis ut numquam enim accusantium dolorem magni accusamus consectetur.', 9, 73, 1, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(41, 'Earum doloribus dolore reiciendis aut voluptates et. Doloremque eveniet consequatur est praesentium ipsam deserunt doloribus.', 15, 51, 4, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(42, 'Fugiat beatae officiis non qui qui aut amet. Expedita aspernatur dignissimos aut vero ratione. Nesciunt non rem delectus quas enim.', 16, 32, 4, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(43, 'Aut culpa voluptas sit eos. Nam iusto quos dolorem consequatur esse porro est. Consequatur a cupiditate quia harum enim rerum aliquid ipsa.', 15, 30, 3, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(44, 'Dolore molestias ut dignissimos ipsa. Sint eaque repellat dolor officiis sit neque quia. Vero ut recusandae quae.', 18, 125, 4, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(45, 'Natus sed facilis qui dicta amet. Id harum dolor sed veniam neque quia. Quia consequatur ex atque dicta est. Autem perferendis quam et perspiciatis et molestiae.', 4, 91, 2, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(46, 'Suscipit reprehenderit ipsam suscipit animi itaque vero sapiente et. Facere sed velit provident ullam ut aliquam. Ab placeat eligendi nihil. Qui ut ad accusamus est sapiente.', 8, 54, 0, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(47, 'Adipisci facilis ratione et officia optio quae vero. Est minus tempora quibusdam eos perspiciatis. Quisquam vel earum eveniet sunt odit. Voluptatem maxime rem odit optio.', 6, 12, 0, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(48, 'Neque occaecati aliquid aliquid. Sit est ut occaecati sint. Dolorum earum similique sunt et.', 20, 148, 2, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(49, 'Quia aliquid excepturi in qui aliquam. Molestiae totam nihil dolor.', 14, 76, 2, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(50, 'Aspernatur atque nobis tempora suscipit aliquid voluptatem. Adipisci id esse corporis eum soluta perspiciatis et ea. Dignissimos eveniet rerum voluptatum corporis molestiae saepe.', 8, 108, 5, '2018-08-23 09:04:47', '2018-08-23 09:04:47'),
(51, 'This very nice Items', 1, 10, 3, '2018-08-23 10:35:10', '2018-08-23 11:12:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kristopher Gorczany', 'zechariah.gottlieb@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'pm22dIdL81', '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(2, 'Albina Ankunding', 'padberg.guy@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'JRoMzRxkyp', '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(3, 'Aliyah Hayes', 'hand.lonzo@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wGH81dcRQz', '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(4, 'Spencer Ullrich', 'neil.mckenzie@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'BKP87Pmkil', '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(5, 'Maryse Hammes', 'nwalsh@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '3Zz2aRbnEP', '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(6, 'Madonna Dooley', 'vpowlowski@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'acwG1uBFr0', '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(7, 'Madisen Nienow', 'jamal84@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wDnSpNfhV3', '2018-08-23 09:02:25', '2018-08-23 09:02:25'),
(8, 'Santos Ryan', 'qcremin@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'MGZRNxDSVJ', '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(9, 'Prof. Remington Abshire', 'cruz13@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ByTH5r2mxH', '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(10, 'Garry Toy', 'herzog.jaren@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'REDB0jL7Ir', '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(11, 'Nikita Friesen', 'ullrich.tristian@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'F18pCQDbVw', '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(12, 'Kristoffer Balistreri V', 'spencer44@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'OMbvuds02a', '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(13, 'Adelbert Crooks', 'kassulke.janessa@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'BeWyQgHlH0', '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(14, 'Ethelyn Kessler', 'stanton.matt@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'YQ6kQRTi5T', '2018-08-23 09:02:44', '2018-08-23 09:02:44'),
(15, 'Cleve Larson', 'gtoy@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'vam0VJ4yh1', '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(16, 'Jacinthe Batz', 'schmidt.bella@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'IyNFaRpVI2', '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(17, 'Keanu Tremblay', 'alphonso.wiza@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '6xLeNk4m5F', '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(18, 'Lue McKenzie', 'nola46@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'iBbd1Bn6Ja', '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(19, 'Mack Simonis II', 'pattie.hill@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'nLrLkVtVDj', '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(20, 'Prof. Jalyn Jacobson PhD', 'keshawn58@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'k2tWfg4wDM', '2018-08-23 09:04:45', '2018-08-23 09:04:45'),
(21, 'Lou Kulas IV', 'nmaggio@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ELngTepsez', '2018-08-23 09:04:45', '2018-08-23 09:04:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_index` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_index` (`user_id`),
  ADD KEY `reviews_product_id_index` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
