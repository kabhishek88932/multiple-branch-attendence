-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2025 at 03:42 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `status` enum('Present','Absent','Leave','Half-day') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `branch_name`, `location`, `created_at`, `updated_at`) VALUES
(1, 'Delhi', 'Aliyahmouth', '2025-04-24 07:22:16', '2025-04-24 07:22:16'),
(2, 'Goa', 'South Nyasiashire', '2025-04-24 07:22:16', '2025-04-24 07:22:16'),
(3, 'Mumbai', 'New Brendafort', '2025-04-24 07:22:17', '2025-04-24 07:22:17');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `joining_date` date NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `base_salary` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `designation`, `joining_date`, `branch_id`, `base_salary`, `created_at`, `updated_at`) VALUES
(1, 'Mya Mueller', 'Film Laboratory Technician', '1996-11-10', 1, '42453.00', '2025-04-24 07:22:16', '2025-04-24 07:22:16'),
(2, 'Gabriella Shields IV', 'Gas Plant Operator', '1972-05-21', 1, '35956.00', '2025-04-24 07:22:16', '2025-04-24 07:22:16'),
(3, 'Mack Hodkiewicz', 'Steel Worker', '1978-03-31', 1, '38109.00', '2025-04-24 07:22:16', '2025-04-24 07:22:16'),
(4, 'Lon Lueilwitz', 'Eligibility Interviewer', '2018-04-16', 1, '48492.00', '2025-04-24 07:22:16', '2025-04-24 07:22:16'),
(5, 'Mr. Clint Collier', 'Extruding Machine Operator', '1987-04-09', 1, '30326.00', '2025-04-24 07:22:16', '2025-04-24 07:22:16'),
(6, 'D\'angelo Wolff', 'Engraver', '2018-10-26', 1, '17926.00', '2025-04-24 07:22:16', '2025-04-24 07:22:16'),
(7, 'Dr. Davin Bruen', 'Agricultural Crop Farm Manager', '1981-09-30', 1, '44154.00', '2025-04-24 07:22:16', '2025-04-24 07:22:16'),
(8, 'Nellie Wilderman', 'Truck Driver', '2003-05-17', 1, '42299.00', '2025-04-24 07:22:16', '2025-04-24 07:22:16'),
(9, 'Presley Yost', 'Motor Vehicle Operator', '1995-07-24', 1, '15753.00', '2025-04-24 07:22:16', '2025-04-24 07:22:16'),
(10, 'Adelia Koelpin', 'Director Of Social Media Marketing', '2010-11-24', 1, '23921.00', '2025-04-24 07:22:16', '2025-04-24 07:22:16'),
(11, 'Ena Greenholt DDS', 'Logging Equipment Operator', '2002-01-20', 2, '19501.00', '2025-04-24 07:22:17', '2025-04-24 07:22:17'),
(12, 'Dr. Darrick Stanton I', 'Caption Writer', '1973-12-07', 2, '30359.00', '2025-04-24 07:22:17', '2025-04-24 07:22:17'),
(13, 'Lenore Kihn', 'Forming Machine Operator', '1972-08-12', 2, '25640.00', '2025-04-24 07:22:17', '2025-04-24 07:22:17'),
(14, 'Stephanie Fritsch', 'Pharmacist', '2015-10-31', 2, '19937.00', '2025-04-24 07:22:17', '2025-04-24 07:22:17'),
(15, 'Trevor Beatty', 'Segmental Paver', '2019-09-08', 2, '26996.00', '2025-04-24 07:22:17', '2025-04-24 07:22:17'),
(16, 'Asha Schimmel', 'Sculptor', '2018-06-16', 2, '34329.00', '2025-04-24 07:22:17', '2025-04-24 07:22:17'),
(17, 'Tanya Donnelly PhD', 'Dishwasher', '2004-07-17', 2, '23102.00', '2025-04-24 07:22:17', '2025-04-24 07:22:17'),
(18, 'Luna Kutch', 'Letterpress Setters Operator', '1996-01-09', 2, '25344.00', '2025-04-24 07:22:17', '2025-04-24 07:22:17'),
(19, 'Miss Juliet Kling', 'Boiler Operator', '1997-04-28', 2, '15905.00', '2025-04-24 07:22:17', '2025-04-24 07:22:17'),
(20, 'Elta Baumbach', 'Compacting Machine Operator', '1984-10-29', 2, '32616.00', '2025-04-24 07:22:17', '2025-04-24 07:22:17'),
(21, 'Patricia Blick', 'Curator', '1970-02-06', 3, '18648.00', '2025-04-24 07:22:17', '2025-04-24 07:22:17'),
(22, 'Megane Glover V', 'Physical Therapist', '1990-06-12', 3, '19944.00', '2025-04-24 07:22:17', '2025-04-24 07:22:17'),
(23, 'Prof. Augustus Skiles MD', 'Mathematical Technician', '2009-06-28', 3, '25845.00', '2025-04-24 07:22:17', '2025-04-24 07:22:17'),
(24, 'Prof. Diana Schinner III', 'Welding Machine Operator', '1988-12-07', 3, '20261.00', '2025-04-24 07:22:17', '2025-04-24 07:22:17'),
(25, 'Marta Nader DDS', 'Computer Repairer', '2006-02-20', 3, '23785.00', '2025-04-24 07:22:17', '2025-04-24 07:22:17'),
(26, 'Lacy Schuppe', 'Pharmacy Technician', '2014-06-08', 3, '36197.00', '2025-04-24 07:22:17', '2025-04-24 07:22:17'),
(27, 'Nellie Littel', 'Optometrist', '1991-04-14', 3, '28116.00', '2025-04-24 07:22:17', '2025-04-24 07:22:17'),
(28, 'Mr. Flavio Bailey', 'Animal Control Worker', '2023-11-16', 3, '43533.00', '2025-04-24 07:22:17', '2025-04-24 07:22:17'),
(29, 'Gloria D\'Amore', 'Glass Blower', '1991-01-01', 3, '16850.00', '2025-04-24 07:22:17', '2025-04-24 07:22:17'),
(30, 'Ms. Billie Mitchell', 'Agricultural Product Grader Sorter', '1973-08-21', 3, '44305.00', '2025-04-24 07:22:17', '2025-04-24 07:22:17');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_04_24_124616_create_branches_table', 1),
(6, '2025_04_24_124626_create_employees_table', 1),
(7, '2025_04_24_124637_create_attendances_table', 1),
(8, '2025_04_24_124647_create_salaries_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `month` varchar(255) NOT NULL,
  `total_working_days` int(11) NOT NULL,
  `present_days` int(11) NOT NULL,
  `leaves` int(11) NOT NULL,
  `absents` int(11) NOT NULL,
  `half_days` int(11) NOT NULL,
  `base_salary` decimal(10,2) NOT NULL,
  `final_salary` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`id`, `employee_id`, `month`, `total_working_days`, `present_days`, `leaves`, `absents`, `half_days`, `base_salary`, `final_salary`, `created_at`, `updated_at`) VALUES
(1, 1, 'April 2025', 30, 23, 2, 5, 2, '50000.00', '50000.00', '2025-04-24 07:38:10', '2025-04-24 07:38:10'),
(2, 2, 'April 2025', 30, 29, 4, 4, 2, '50000.00', '50000.00', '2025-04-24 07:38:10', '2025-04-24 07:38:10'),
(3, 3, 'April 2025', 30, 29, 5, 4, 0, '50000.00', '50000.00', '2025-04-24 07:38:10', '2025-04-24 07:38:10'),
(4, 4, 'April 2025', 30, 20, 3, 5, 1, '50000.00', '50000.00', '2025-04-24 07:38:10', '2025-04-24 07:38:10'),
(5, 5, 'April 2025', 30, 30, 0, 2, 2, '50000.00', '50000.00', '2025-04-24 07:38:10', '2025-04-24 07:38:10'),
(6, 6, 'April 2025', 30, 28, 5, 4, 0, '50000.00', '50000.00', '2025-04-24 07:38:10', '2025-04-24 07:38:10'),
(7, 7, 'April 2025', 30, 20, 1, 5, 2, '50000.00', '50000.00', '2025-04-24 07:38:10', '2025-04-24 07:38:10'),
(8, 8, 'April 2025', 30, 26, 5, 2, 2, '50000.00', '50000.00', '2025-04-24 07:38:10', '2025-04-24 07:38:10'),
(9, 9, 'April 2025', 30, 21, 4, 4, 2, '50000.00', '50000.00', '2025-04-24 07:38:10', '2025-04-24 07:38:10'),
(10, 10, 'April 2025', 30, 28, 4, 1, 0, '50000.00', '50000.00', '2025-04-24 07:38:10', '2025-04-24 07:38:10'),
(11, 11, 'April 2025', 30, 23, 1, 5, 1, '50000.00', '50000.00', '2025-04-24 07:38:10', '2025-04-24 07:38:10'),
(12, 12, 'April 2025', 30, 29, 1, 4, 1, '50000.00', '50000.00', '2025-04-24 07:38:10', '2025-04-24 07:38:10'),
(13, 13, 'April 2025', 30, 23, 5, 0, 2, '50000.00', '50000.00', '2025-04-24 07:38:10', '2025-04-24 07:38:10'),
(14, 14, 'April 2025', 30, 24, 1, 3, 2, '50000.00', '50000.00', '2025-04-24 07:38:10', '2025-04-24 07:38:10'),
(15, 15, 'April 2025', 30, 21, 1, 3, 0, '50000.00', '50000.00', '2025-04-24 07:38:10', '2025-04-24 07:38:10'),
(16, 16, 'April 2025', 30, 30, 0, 3, 0, '50000.00', '50000.00', '2025-04-24 07:38:10', '2025-04-24 07:38:10'),
(17, 17, 'April 2025', 30, 21, 2, 1, 2, '50000.00', '50000.00', '2025-04-24 07:38:10', '2025-04-24 07:38:10'),
(18, 18, 'April 2025', 30, 22, 0, 1, 0, '50000.00', '50000.00', '2025-04-24 07:38:10', '2025-04-24 07:38:10'),
(19, 19, 'April 2025', 30, 27, 4, 3, 0, '50000.00', '50000.00', '2025-04-24 07:38:10', '2025-04-24 07:38:10'),
(20, 20, 'April 2025', 30, 21, 1, 3, 0, '50000.00', '50000.00', '2025-04-24 07:38:10', '2025-04-24 07:38:10'),
(21, 21, 'April 2025', 30, 28, 4, 3, 0, '50000.00', '50000.00', '2025-04-24 07:38:10', '2025-04-24 07:38:10'),
(22, 22, 'April 2025', 30, 26, 5, 3, 2, '50000.00', '50000.00', '2025-04-24 07:38:10', '2025-04-24 07:38:10'),
(23, 23, 'April 2025', 30, 24, 0, 4, 0, '50000.00', '50000.00', '2025-04-24 07:38:10', '2025-04-24 07:38:10'),
(24, 24, 'April 2025', 30, 26, 0, 3, 1, '50000.00', '50000.00', '2025-04-24 07:38:10', '2025-04-24 07:38:10'),
(25, 25, 'April 2025', 30, 21, 2, 1, 1, '50000.00', '50000.00', '2025-04-24 07:38:10', '2025-04-24 07:38:10'),
(26, 26, 'April 2025', 30, 20, 5, 2, 2, '50000.00', '50000.00', '2025-04-24 07:38:10', '2025-04-24 07:38:10'),
(27, 27, 'April 2025', 30, 25, 2, 4, 2, '50000.00', '50000.00', '2025-04-24 07:38:11', '2025-04-24 07:38:11'),
(28, 28, 'April 2025', 30, 25, 4, 1, 1, '50000.00', '50000.00', '2025-04-24 07:38:11', '2025-04-24 07:38:11'),
(29, 29, 'April 2025', 30, 24, 1, 4, 1, '50000.00', '50000.00', '2025-04-24 07:38:11', '2025-04-24 07:38:11'),
(30, 30, 'April 2025', 30, 21, 3, 3, 2, '50000.00', '50000.00', '2025-04-24 07:38:11', '2025-04-24 07:38:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attendances_employee_id_date_unique` (`employee_id`,`date`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salaries_employee_id_foreign` (`employee_id`);

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
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salaries`
--
ALTER TABLE `salaries`
  ADD CONSTRAINT `salaries_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
