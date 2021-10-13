-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.22 - MySQL Community Server - GPL
-- Server OS:                    Linux
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table ip_address_management.audit_logs
CREATE TABLE IF NOT EXISTS `audit_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `log_time` datetime NOT NULL,
  `request_path` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_id` int DEFAULT NULL,
  `post_json` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_response` text COLLATE utf8mb4_unicode_ci,
  `request_ip` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ip_address_management.audit_logs: ~0 rows (approximately)
/*!40000 ALTER TABLE `audit_logs` DISABLE KEYS */;
INSERT INTO `audit_logs` (`id`, `log_time`, `request_path`, `request_id`, `post_json`, `final_response`, `request_ip`, `created_at`, `updated_at`) VALUES
	(208, '2021-10-13 05:33:54', 'http://localhost:8000/api/login', NULL, '{"email":"filomena.green@example.net","password":"123456"}', '{"status":true,"code":200,"message":"You are successfully Login","data":{"token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTYzNDE0NjQzNCwiZXhwIjoxNjM0MTUwMDM0LCJuYmYiOjE2MzQxNDY0MzQsImp0aSI6Ikl0d1hJTXRWUFB6U2JmVXkiLCJzdWIiOjEsInBydiI6Ijg3ZTBhZjFlZjlmZDE1ODEyZmRlYzk3MTUzYTE0ZTBiMDQ3NTQ2YWEifQ.yKGg4J0aZb1i_Iaab-ayMaszK_Yro64Ffvcp2qDM7Z0","token_type":"bearer","expires_in":3600,"user":{"id":1,"email":"filomena.green@example.net","name":"Nakia Mosciski","created_at":"2021-10-13T05:11:57.000000Z","updated_at":"2021-10-13T05:11:57.000000Z"}},"errors":[]}', '127.0.0.1', '2021-10-13 23:33:54', '2021-10-13 23:33:54'),
	(209, '2021-10-13 06:05:48', 'http://localhost:8000/api/login', NULL, '{"email":"filomena.green@example.net","password":"123456"}', '{"status":true,"code":200,"message":"You are successfully Login","data":{"token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTYzNDE0ODM0OCwiZXhwIjoxNjM0MTUxOTQ4LCJuYmYiOjE2MzQxNDgzNDgsImp0aSI6IkI0dVl4M1pOSXlUMDNIRTEiLCJzdWIiOjEsInBydiI6Ijg3ZTBhZjFlZjlmZDE1ODEyZmRlYzk3MTUzYTE0ZTBiMDQ3NTQ2YWEifQ.iAMeKDCj9H4RCPu7zrAA2v5IEjrApxLL95dmKJXs8UY","token_type":"bearer","expires_in":3600,"user":{"id":1,"email":"filomena.green@example.net","name":"Nakia Mosciski","created_at":"2021-10-13T05:11:57.000000Z","updated_at":"2021-10-13T05:11:57.000000Z"}},"errors":[]}', '127.0.0.1', '2021-10-14 00:05:48', '2021-10-14 00:05:48'),
	(210, '2021-10-13 06:15:33', 'http://localhost:8000/api/login', NULL, '{"email":"filomena.green@example.net","password":"123456"}', '{"status":true,"code":200,"message":"You are successfully Login","data":{"token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTYzNDE0ODkzMywiZXhwIjoxNjM0MTUyNTMzLCJuYmYiOjE2MzQxNDg5MzMsImp0aSI6IkNTV0ZUakFKaGNYMENiOTYiLCJzdWIiOjEsInBydiI6Ijg3ZTBhZjFlZjlmZDE1ODEyZmRlYzk3MTUzYTE0ZTBiMDQ3NTQ2YWEifQ.4bCDh61jcb_7JDwjKoZvZYvcW35wGP8fX_LhBqTMWdU","token_type":"bearer","expires_in":3600,"user":{"id":1,"email":"filomena.green@example.net","name":"Nakia Mosciski","created_at":"2021-10-13T05:11:57.000000Z","updated_at":"2021-10-13T05:11:57.000000Z"}},"errors":[]}', '127.0.0.1', '2021-10-14 00:15:33', '2021-10-14 00:15:33'),
	(211, '2021-10-13 06:16:53', 'http://localhost:8000/api/ip-update/6', 1, '{"ip_address":"0.0.5.32","ip_label":"Test","_method":"PUT"}', '{"status":true,"code":200,"message":"Ip address Updated","data":{"id":6,"ip_address":"0.0.5.32","ip_label":"Test","created_by":1,"created_at":"2021-10-13T12:02:04.000000Z"},"errors":[]}', '127.0.0.1', '2021-10-14 00:16:53', '2021-10-14 00:16:53'),
	(212, '2021-10-13 06:30:22', 'http://localhost:8000/api/login', NULL, '{"email":"filomena.green@example.net","password":"123456"}', '{"status":true,"code":200,"message":"You are successfully Login","data":{"token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTYzNDE0OTgyMiwiZXhwIjoxNjM0MTUzNDIyLCJuYmYiOjE2MzQxNDk4MjIsImp0aSI6IlRETTAzTWE5NHpxdWR3VkUiLCJzdWIiOjEsInBydiI6Ijg3ZTBhZjFlZjlmZDE1ODEyZmRlYzk3MTUzYTE0ZTBiMDQ3NTQ2YWEifQ.TkDP47FeuXnz28b8uJKYQQZyadhYXtPOOpKQfBtJGs4","token_type":"bearer","expires_in":3600,"user":{"id":1,"email":"filomena.green@example.net","name":"Nakia Mosciski","created_at":"2021-10-13T05:11:57.000000Z","updated_at":"2021-10-13T05:11:57.000000Z"}},"errors":[]}', '127.0.0.1', '2021-10-14 00:30:22', '2021-10-14 00:30:22');
/*!40000 ALTER TABLE `audit_logs` ENABLE KEYS */;

-- Dumping structure for table ip_address_management.ip_tables
CREATE TABLE IF NOT EXISTS `ip_tables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_label` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `updated_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip_tables_ip_address_unique` (`ip_address`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ip_address_management.ip_tables: ~0 rows (approximately)
/*!40000 ALTER TABLE `ip_tables` DISABLE KEYS */;
INSERT INTO `ip_tables` (`id`, `ip_address`, `ip_label`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(2, '0.0.0.2', 'Lorem ipsum Lorem ip', 9, 9, '2021-10-13 11:30:53', '2021-10-13 12:26:18'),
	(3, '0.0.0.1', 'hello.com', 9, 9, '2021-10-13 12:20:01', '2021-10-13 12:20:01'),
	(4, '0.0.0.3', 'hello.com', 9, 9, '2021-10-13 12:26:50', '2021-10-13 12:26:50'),
	(5, '0.0.5.6', 'Testss', 1, 1, '2021-10-13 17:23:39', '2021-10-13 17:38:29'),
	(6, '0.0.5.32', 'Test', 1, 1, '2021-10-13 18:02:04', '2021-10-13 18:02:04');
/*!40000 ALTER TABLE `ip_tables` ENABLE KEYS */;

-- Dumping structure for table ip_address_management.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ip_address_management.migrations: ~3 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2020_12_14_142729_create_users_table', 1),
	(2, '2021_10_12_181759_create_ip_tables_table', 1),
	(3, '2021_10_13_181709_create_audit_logs_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table ip_address_management.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ip_address_management.users: ~10 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `name`, `password`, `created_at`, `updated_at`) VALUES
	(1, 'filomena.green@example.net', 'Nakia Mosciski', '$2a$12$/cyCa.W2XiMjszEHHfBAJugsbUVC.GeG7QicuQ6kQy9PRLkdXqSHa', '2021-10-13 11:11:57', '2021-10-13 11:11:57'),
	(2, 'ppadberg@example.net', 'Kyla Lakin V', '$2a$12$/cyCa.W2XiMjszEHHfBAJugsbUVC.GeG7QicuQ6kQy9PRLkdXqSHa', '2021-10-13 11:11:57', '2021-10-13 11:11:57'),
	(3, 'vincenzo46@example.org', 'Mr. Wilford Greenfelder PhD', '$2a$12$/cyCa.W2XiMjszEHHfBAJugsbUVC.GeG7QicuQ6kQy9PRLkdXqSHa', '2021-10-13 11:11:57', '2021-10-13 11:11:57'),
	(4, 'henderson.kertzmann@example.org', 'Kade Kohler', '$2a$12$/cyCa.W2XiMjszEHHfBAJugsbUVC.GeG7QicuQ6kQy9PRLkdXqSHa', '2021-10-13 11:11:57', '2021-10-13 11:11:57'),
	(5, 'augustus.gutkowski@example.net', 'Terrance Ernser', '$2a$12$/cyCa.W2XiMjszEHHfBAJugsbUVC.GeG7QicuQ6kQy9PRLkdXqSHa', '2021-10-13 11:11:57', '2021-10-13 11:11:57'),
	(6, 'muller.ladarius@example.net', 'Ms. Mara Bednar', '$2a$12$/cyCa.W2XiMjszEHHfBAJugsbUVC.GeG7QicuQ6kQy9PRLkdXqSHa', '2021-10-13 11:11:57', '2021-10-13 11:11:57'),
	(7, 'bartell.trey@example.org', 'Dusty Auer', '$2a$12$/cyCa.W2XiMjszEHHfBAJugsbUVC.GeG7QicuQ6kQy9PRLkdXqSHa', '2021-10-13 11:11:57', '2021-10-13 11:11:57'),
	(8, 'amanda18@example.org', 'Kianna Kulas', '$2a$12$/cyCa.W2XiMjszEHHfBAJugsbUVC.GeG7QicuQ6kQy9PRLkdXqSHa', '2021-10-13 11:11:57', '2021-10-13 11:11:57'),
	(9, 'scorkery@example.net', 'Christophe Goodwin', '$2a$12$/cyCa.W2XiMjszEHHfBAJugsbUVC.GeG7QicuQ6kQy9PRLkdXqSHa', '2021-10-13 11:11:57', '2021-10-13 11:11:57'),
	(10, 'myron.gerlach@example.com', 'Keyshawn Nolan', '$2a$12$/cyCa.W2XiMjszEHHfBAJugsbUVC.GeG7QicuQ6kQy9PRLkdXqSHa', '2021-10-13 11:11:57', '2021-10-13 11:11:57');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
