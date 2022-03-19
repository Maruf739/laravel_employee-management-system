-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2022 at 04:44 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `created_at`, `updated_at`, `username`, `image`, `first_name`, `last_name`, `email`, `password`, `status`) VALUES
(1, '2022-02-16 08:48:12', NULL, 'ganesh', '', 'ganesh', 'khadka', 'ganesh46@gmail.com', '$2y$10$7Llby.owfWrT1vRiCU20/O0szqu2xE0fDA1wWKmSyDAxmxNRorBx.', 1),
(2, '2022-02-16 08:48:13', NULL, 'maruf', '', 'asad', 'maruf', 'maruf@gmail.com', '$2y$10$Cc9S6duhYZ6l3C9xlfRLaOtpCM5EzXfDc5Sl2.OBoLRTaB3sFntS6', 1);

-- --------------------------------------------------------

--
-- Table structure for table `advancepayments`
--

CREATE TABLE `advancepayments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `amount` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calendars`
--

CREATE TABLE `calendars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `calendars`
--

INSERT INTO `calendars` (`id`, `title`, `color`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 'Monthly Closing', '#30dfdc', '2022-02-16', '2022-02-17', '2022-02-16 08:57:07', '2022-02-16 08:57:07'),
(2, 'dskfhsd dfhsdkfh', '#c741ec', '2022-02-24', '2022-02-25', '2022-02-16 08:58:07', '2022-02-16 08:58:07');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `city_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `department_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `created_at`, `updated_at`, `department_name`) VALUES
(1, '2022-02-16 08:51:00', '2022-02-16 08:51:00', 'Seals'),
(2, '2022-02-16 08:51:06', '2022-02-16 08:51:06', 'HR');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `designation_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `employee_id`, `designation_type`, `created_at`, `updated_at`) VALUES
(1, 2, 'MD', '2022-02-16 08:50:38', '2022-02-16 08:50:38'),
(2, 3, 'Manager', '2022-02-16 08:50:48', '2022-02-16 08:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(20) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `join_date` date NOT NULL,
  `job_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` bigint(20) NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `leave_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `days` bigint(20) NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `leave_type_offer` tinyint(4) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `employee_id`, `leave_type`, `date_from`, `date_to`, `days`, `reason`, `leave_type_offer`, `is_approved`, `created_at`, `updated_at`) VALUES
(1, 3, 'Sickness', '2022-02-16', '2022-02-16', 1, 'sdgasdfjj sdfsdfj', 1, 1, '2022-02-16 08:54:17', '2022-02-16 08:54:46'),
(2, 3, 'tyser', '2022-02-18', '2022-02-19', 2, 'rsgfgsd', 0, 1, '2022-02-16 23:58:35', '2022-02-16 23:58:45');

-- --------------------------------------------------------

--
-- Table structure for table `managesalaries`
--

CREATE TABLE `managesalaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `working_days` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gross_salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `managesalaries`
--

INSERT INTO `managesalaries` (`id`, `employee_name`, `designation_type`, `working_days`, `tax`, `gross_salary`, `created_at`, `updated_at`) VALUES
(1, 'Asad', 'Manager', '30', '10%', '500', '2022-02-15 15:15:33', '2022-02-16 15:15:33'),
(2, 'Maruf', 'MD', '60', '10%', '1000', NULL, NULL),
(3, 'Bishal', 'Sells', '29', '10%', '400', NULL, NULL),
(4, 'Ganesh', 'seals', '28', '10%', '400', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_03_10_044553_create_employees_table', 1),
(4, '2019_03_10_050306_create_admins_table', 1),
(5, '2019_03_10_050652_create_cities_table', 1),
(6, '2019_03_10_050845_create_departments_table', 1),
(7, '2019_03_10_050953_create_salaries_table', 1),
(8, '2019_03_14_025243_create_shifts_table', 1),
(9, '2019_03_17_061433_create_leaves_table', 1),
(10, '2019_03_17_094258_create_totalleaves_table', 1),
(11, '2019_03_17_114000_create_profiles_table', 1),
(12, '2019_03_18_061726_create_downloads_table', 1),
(13, '2019_03_24_051434_create_managesalaries_table', 1),
(14, '2019_03_25_143643_create_designations_table', 1),
(15, '2019_04_10_113018_create_advancepayments_table', 1),
(16, '2019_04_21_111757_create_events_table', 1),
(17, '2019_04_26_023012_create_calendars_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `salary_amount` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`id`, `employee_id`, `salary_amount`, `created_at`, `updated_at`) VALUES
(1, 2, 40000, '2022-02-16 08:50:14', '2022-02-16 08:50:14'),
(2, 3, 20000, '2022-02-16 08:50:24', '2022-02-16 08:50:24');

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shift` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `totalleaves`
--

CREATE TABLE `totalleaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `leaves_count` bigint(20) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `salary` bigint(20) DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `phone` bigint(20) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `join_date` date NOT NULL,
  `job_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` bigint(20) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `leaves_count`, `username`, `image`, `first_name`, `last_name`, `role`, `salary`, `email`, `password`, `status`, `phone`, `address`, `gender`, `dob`, `join_date`, `job_type`, `city`, `age`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'ganesh', '1645023686.png', 'ganesh', 'khadka', 'admin', NULL, 'ganeshkhadka46@gmail.com', '$2y$10$YpTkWbG.9aOXaeb8XOqQF.6pj4b5MefXipzQkfMdYAj34O7zFLHkG', 1, 9866567794, 'butwal', 'male', '2019-03-12', '2019-03-12', 'sales', 'butwal', 23, NULL, '2022-02-16 08:48:12', '2022-02-16 09:01:26'),
(2, NULL, 'maruf', '1645022999.jpg', 'asad', 'maruf', 'admin', 20000, 'maruf@gmail.com', '$2y$10$ufdfLVBgJ6C8rOBp3dIwCOgJrVIsKWpkeWDHnadEZGKZnFJpckITa', 1, 17258525127, 'Rampura', 'male', '1995-02-03', '2019-03-12', 'sales', 'Dhaka', 27, NULL, '2022-02-16 08:48:12', '2022-02-16 08:49:59'),
(3, NULL, 'Asad', '1645028427.jpg', 'Maruf', 'md', 'employee', NULL, 'asad@gmail.com', '$2y$10$5KnmBixtrGRaldYiC8voeebZz/ySwLpU7nElVUA3lkaUZkMSJr5HC', 1, 1711279739, 'Rampura', 'male', '2019-03-12', '2019-03-12', 'IT', 'Dhaka', 26, NULL, '2022-02-16 08:48:12', '2022-02-16 10:20:27'),
(4, NULL, 'nabin', '1645028295.png', 'nbn', 'bhandari', 'admin', NULL, 'nabin@gmail.com', '$2y$10$05BZz/SiSrzR1HkjMT1Ph.WW4PFErzqgBdn7LGHmcx5RObCn0ifb2', 1, 9866454562, 'butwal', 'male', '2019-03-12', '2019-03-12', 'Developer', 'butwal', 21, NULL, '2022-02-16 08:48:12', '2022-02-16 10:18:15'),
(5, NULL, 'abcd', '1645028374.png', 'xyz', 'pqr', 'employee', NULL, 'employee1@gmail.com', '$2y$10$4V3IQ70JzxwJyV1AEfelA.fPTGcHubv.y/ROygmFtG344njcUxnn.', 1, 9866567794, 'butwal', 'male', '2019-03-12', '2019-03-12', 'Developer', 'butwal', 25, NULL, '2022-02-16 08:48:12', '2022-02-16 10:19:35'),
(6, NULL, 'bishal', '1645028396.png', 'bishal', 'gc', 'employee', NULL, 'bishal@gmail.com', '$2y$10$BnRzoHKnktq11KnPmdizMePnDiQpJyxktCB1gMKZo1kgKJki4ygzy', 1, 9866567794, 'butwal', 'male', '2019-03-12', '2019-03-12', 'designer', 'butwal', 25, NULL, '2022-02-16 08:48:12', '2022-02-16 10:19:56'),
(7, NULL, 'asad', NULL, 'sda', 'asdas', 'employee', NULL, 'asdasret@gmil.com', '$2y$10$1LKUWOXCLWn.Ni7zaR/REugMLvIPYrapU.YfCrG9d988WTxIkR9gm', NULL, 102, 'sdas', 'male', '2022-03-30', '2022-03-15', 'asda', 'asda', 54674, NULL, '2022-03-06 04:57:16', '2022-03-06 04:57:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advancepayments`
--
ALTER TABLE `advancepayments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advancepayments_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `calendars`
--
ALTER TABLE `calendars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designations_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leaves_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `managesalaries`
--
ALTER TABLE `managesalaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salaries_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `totalleaves`
--
ALTER TABLE `totalleaves`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `advancepayments`
--
ALTER TABLE `advancepayments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `calendars`
--
ALTER TABLE `calendars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `managesalaries`
--
ALTER TABLE `managesalaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `totalleaves`
--
ALTER TABLE `totalleaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advancepayments`
--
ALTER TABLE `advancepayments`
  ADD CONSTRAINT `advancepayments_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `designations`
--
ALTER TABLE `designations`
  ADD CONSTRAINT `designations_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `leaves`
--
ALTER TABLE `leaves`
  ADD CONSTRAINT `leaves_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `salaries`
--
ALTER TABLE `salaries`
  ADD CONSTRAINT `salaries_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
