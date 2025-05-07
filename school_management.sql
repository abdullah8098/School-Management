-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2025 at 02:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_16_171852_add_column_to_users_table', 1),
(5, '2024_05_16_190011_create_personal_access_tokens_table', 1),
(6, '2025_05_07_055854_create_students_table', 1),
(7, '2025_05_07_060900_add_column_to_students_table', 2),
(8, '2025_05_07_062406_create_student_mapped_classes_table', 3),
(9, '2025_05_07_065012_add_column_to_student_mapped_classes_table', 4),
(10, '2025_05_07_070121_create_subjects_table', 5),
(11, '2025_05_07_070244_create_student_mapped_exams_table', 5),
(13, '2025_05_07_085212_drop_column_to_student_mapped_classes_table', 6),
(14, '2025_05_07_060807_create_standards_table', 7),
(15, '2025_05_07_085718_add_column_to_student_mapped_classes_table', 7),
(16, '2025_05_07_091012_drop_column_to_student_mapped_exams_table', 8),
(17, '2025_05_07_091055_add_column_to_student_mapped_exams_table', 9),
(19, '2025_05_07_060808_create_sem_table', 10),
(20, '2025_05_07_091814_drop_column_to_student_mapped_exams_table', 11),
(21, '2025_05_07_092236_add_column_to_student_mapped_exams_table', 12),
(22, '2025_05_07_115929_drop_column_to_subjects_table', 13),
(23, '2025_05_07_115958_add_column_to_subjects_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sem`
--

CREATE TABLE `sem` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sem`
--

INSERT INTO `sem` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '1st', '2025-05-07 11:39:34', '2025-05-07 11:39:42'),
(2, '2nd', '2025-05-07 11:39:46', '2025-05-07 11:39:50');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('AyxnA7CE8dVKMCDW0Ev3AT1OWo6ksi2cKEoXkSRp', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoienY1YUFKRFBIemprckM3b0ZNSXdxcDVSUjJZa2RCYkJSS0NlWnJhUyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjYzODoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluL3N0dWRlbnQvZXlKcGRpSTZJbWxUYVcxRE0yeGtUWEJEZWpjM2FWQlhla0ZIWjNjOVBTSXNJblpoYkhWbElqb2lRbWhRTlRGSGVHeDJUVTFDYkVzeUwzWlpNeTluZHowOUlpd2liV0ZqSWpvaU5tVXlaams0TnpNeU9UZzRPV1ppWVRsa01ERXdPVGt3WkRFMFpHWm1ZakZtT0Rsa1ptSmtNMlUwTlRBd05XSTFNVEV4WXprME1UYzNOemhqTkdOaFl5SXNJblJoWnlJNklpSjkvZXlKcGRpSTZJbTR4TlRsRGRYQktTRGRUYVZaMWFWZHphRU5LUlhjOVBTSXNJblpoYkhWbElqb2liRzVJZFVvNVJ6ZHNlRUZZYkRKMmMxTkhkMVJGWnowOUlpd2liV0ZqSWpvaU1UWmxaVGxtWmpFMlpEZzRaVGN6WkRaalpXSmhZekkwWkRjMk5XVTNabU0zTWpSa00yWTJabVEwTkRFeE9HRTBOV1ZoWWpsa01XRXlOV1kyWWpSak1DSXNJblJoWnlJNklpSjkvZXlKcGRpSTZJbXBVWVd3d2N6VkVOVVpYYUd0UFJYSnlSV28ySzBFOVBTSXNJblpoYkhWbElqb2lSemh0TTIwMGVrc3ZkemgxVVdaaVVtaG5ia0ZYUVQwOUlpd2liV0ZqSWpvaU1EUm1Nall5TlRCaU1EQmtOMk14WkRFMFl6VTRZVGs1WldVeU5qSmhabU14TlRZd09ERmhaR1UxWlRRd01tUXlabU0xTWpJNE16VmlPR1UzWW1Oa1ppSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1746619830);

-- --------------------------------------------------------

--
-- Table structure for table `standards`
--

CREATE TABLE `standards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(5) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `standards`
--

INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '5th', '2025-05-07 09:02:16', '2025-05-07 09:02:51'),
(2, '6th', '2025-05-07 09:02:56', '2025-05-07 09:03:00'),
(3, '7th', '2025-05-07 09:03:04', '2025-05-07 09:03:07'),
(4, '8th', '2025-05-07 09:03:11', '2025-05-07 09:03:14');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(35) NOT NULL,
  `dob` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `contact`, `email`, `dob`, `created_at`, `updated_at`) VALUES
(1, 'John', '9999999999', 'john@gmail.com', '2006-05-17', NULL, NULL),
(2, 'Jack', '8888888888', 'jack@gmail.com', '2000-05-22', NULL, NULL),
(3, 'Peterson', '7777777777', 'peterson@gmail.com', '2000-05-04', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_mapped_classes`
--

CREATE TABLE `student_mapped_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_mapped_classes`
--

INSERT INTO `student_mapped_classes` (`id`, `student_id`, `class_id`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-06-15', '2024-04-12', '2025-05-07 09:03:44', '2025-05-07 09:03:48'),
(2, 2, 1, '2024-06-17', '2025-04-11', '2025-05-07 09:03:52', '2025-05-07 09:03:55'),
(3, 1, 2, '2024-06-17', '2025-04-11', '2025-05-07 09:03:59', '2025-05-07 09:04:02'),
(4, 3, 3, '2024-06-17', '2025-04-11', '2025-05-07 09:04:05', '2025-05-07 09:04:09');

-- --------------------------------------------------------

--
-- Table structure for table `student_mapped_exams`
--

CREATE TABLE `student_mapped_exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sem_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `obtained_marks` varchar(255) NOT NULL,
  `obtained_percentage` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_mapped_exams`
--

INSERT INTO `student_mapped_exams` (`id`, `student_id`, `class_id`, `sem_id`, `subject_id`, `obtained_marks`, `obtained_percentage`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 1, 1, '56', '56', NULL, NULL),
(3, 1, 1, 1, 2, '60', '60', NULL, NULL),
(4, 1, 1, 1, 3, '80', '80', NULL, NULL),
(5, 1, 1, 2, 1, '41', '41', NULL, NULL),
(6, 1, 1, 2, 2, '70', '70', NULL, NULL),
(7, 1, 1, 2, 3, '50', '50', NULL, NULL),
(8, 1, 2, 1, 4, '40', '40', NULL, NULL),
(9, 1, 2, 1, 5, '50', '50', NULL, NULL),
(10, 1, 2, 1, 6, '80', '80', NULL, NULL),
(11, 1, 2, 2, 4, '41', '41', NULL, NULL),
(12, 1, 2, 2, 2, '70', '70', NULL, NULL),
(13, 1, 2, 2, 3, '50', '50', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exam_marks` int(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `class_id`, `exam_marks`, `created_at`, `updated_at`) VALUES
(1, 'English', 1, 100, NULL, NULL),
(2, 'Maths', 1, 100, NULL, NULL),
(3, 'Science', 1, 100, NULL, NULL),
(4, 'English', 1, 100, NULL, NULL),
(5, 'Maths', 1, 100, NULL, NULL),
(6, 'Science', 1, 100, NULL, NULL),
(7, 'English', 2, 100, NULL, NULL),
(8, 'Maths', 2, 100, NULL, NULL),
(9, 'Science', 2, 100, NULL, NULL),
(10, 'English', 2, 100, NULL, NULL),
(11, 'Maths', 2, 100, NULL, NULL),
(12, 'Science', 2, 100, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL COMMENT '0 = Admin',
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `simple_password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_name`, `role`, `contact`, `email`, `email_verified_at`, `password`, `simple_password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '0', '999999999', 'admin@gmail.com', NULL, '$2y$12$62iehW7Rb2gPXTcy3PsXQ.gtQ4xQ8CwO6jsM7cgzrYffBqiuyB.XO', '1234', NULL, '2025-05-07 00:32:43', '2025-05-07 00:32:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sem`
--
ALTER TABLE `sem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `standards`
--
ALTER TABLE `standards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_mapped_classes`
--
ALTER TABLE `student_mapped_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_mapped_classes_student_id_foreign` (`student_id`),
  ADD KEY `student_mapped_classes_class_id_foreign` (`class_id`);

--
-- Indexes for table `student_mapped_exams`
--
ALTER TABLE `student_mapped_exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_mapped_exams_student_id_foreign` (`student_id`),
  ADD KEY `student_mapped_exams_subject_id_foreign` (`subject_id`),
  ADD KEY `student_mapped_exams_class_id_foreign` (`class_id`),
  ADD KEY `student_mapped_exams_sem_id_foreign` (`sem_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_class_id_foreign` (`class_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sem`
--
ALTER TABLE `sem`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `standards`
--
ALTER TABLE `standards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_mapped_classes`
--
ALTER TABLE `student_mapped_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_mapped_exams`
--
ALTER TABLE `student_mapped_exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_mapped_classes`
--
ALTER TABLE `student_mapped_classes`
  ADD CONSTRAINT `student_mapped_classes_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `standards` (`id`),
  ADD CONSTRAINT `student_mapped_classes_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `student_mapped_exams`
--
ALTER TABLE `student_mapped_exams`
  ADD CONSTRAINT `student_mapped_exams_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `standards` (`id`),
  ADD CONSTRAINT `student_mapped_exams_sem_id_foreign` FOREIGN KEY (`sem_id`) REFERENCES `sem` (`id`),
  ADD CONSTRAINT `student_mapped_exams_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `student_mapped_exams_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `standards` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
