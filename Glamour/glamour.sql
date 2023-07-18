-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2023 at 09:01 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `glamour`
--

-- --------------------------------------------------------

--
-- Table structure for table `anniversary`
--

CREATE TABLE `anniversary` (
  `id` int(100) NOT NULL,
  `user_id` int(255) NOT NULL,
  `booking_id` varchar(255) NOT NULL,
  `venue` varchar(100) NOT NULL,
  `guest_number` varchar(100) NOT NULL,
  `cuisine` varchar(100) NOT NULL,
  `style` varchar(100) NOT NULL,
  `theme_design` varchar(100) NOT NULL,
  `extra_services` varchar(100) NOT NULL,
  `other_preferences` text NOT NULL,
  `upcoming_age` int(100) NOT NULL,
  `celeb_gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anniversary`
--

INSERT INTO `anniversary` (`id`, `user_id`, `booking_id`, `venue`, `guest_number`, `cuisine`, `style`, `theme_design`, `extra_services`, `other_preferences`, `upcoming_age`, `celeb_gender`) VALUES
(24, 9632, 'ANNIV-0001', 'The Green Lounge', '51-100', 'Royal', 'Basic', 'Masquerade Ball', 'DJ Services,Videographer', '', 0, ''),
(25, 9632, 'ANNIV-0025', 'Nuevo Comienzo Resort', '51-100', 'Deluxe', 'Sleek', 'Travel', 'DJ Services,Bar Area', '', 0, ''),
(26, 9632, 'ANNIV-0026', 'Nuevo Comienzo Resort', '51-100', 'Royal', 'Basic', 'Hollywood Glamour', 'DJ Services,Videographer,Makeup Artist', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `id` int(255) NOT NULL,
  `invoice_id` varchar(255) NOT NULL,
  `receipt_id` varchar(255) NOT NULL,
  `billing_id` varchar(255) NOT NULL,
  `booking_id` varchar(255) NOT NULL,
  `user_id` int(100) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `valid_id` varchar(255) NOT NULL,
  `ref_num` varchar(255) NOT NULL,
  `proof` varchar(255) NOT NULL,
  `amount` float NOT NULL,
  `date` varchar(255) NOT NULL,
  `mop` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`id`, `invoice_id`, `receipt_id`, `billing_id`, `booking_id`, `user_id`, `firstname`, `lastname`, `address`, `email`, `phone`, `valid_id`, `ref_num`, `proof`, `amount`, `date`, `mop`, `payment_type`, `status`) VALUES
(15, '', '', 'BILL-0001', 'WED-0001', 9632, 'Jeffrey', 'Latina', 'Mandaluyong City', 'jeffvlatina@gmail.com', '09453391986', 'CSS/Pictures/billing/646daee41bdbc_348361953_1253283728644784_3579724110173630409_n.jpg', '', 'CSS/Pictures/billing/646daee42a7fc_348359246_916636292753192_3224299686877871013_n.jpg', 100000, '2023-05-22', 'Cash', 'Downpayment', 'Pending'),
(16, '', '', 'BILL-0016', 'WED-0001', 9632, 'Kiana', 'Solana', 'Mandaluyong City', 'cs@gmail.com', '09543', 'CSS/Pictures/billing/646daf0d7e5e5_348361953_1253283728644784_3579724110173630409_n.jpg', '', 'CSS/Pictures/billing/646daf0d7e8e7_348359246_916636292753192_3224299686877871013_n.jpg', 200000, '2023-04-16', 'Cash', 'Downpayment', 'Pending'),
(17, '', '', 'BILL-0017', 'WED-0001', 9632, 'Poz', 'Xaq', 'Pasig City', 'cs@gmail.com', '09543', 'CSS/Pictures/billing/646daf7be4285_348361953_1253283728644784_3579724110173630409_n.jpg', '', 'CSS/Pictures/billing/646daf7be4ab9_348359246_916636292753192_3224299686877871013_n.jpg', 300000, '2023-05-14', 'Cash', 'Fullpayment', 'Paid'),
(18, '', '', 'BILL-0018', 'WED-0001', 9632, 'Zara', 'Cas', 'Makati City', 'zara@gmail.com', '095435345', 'CSS/Pictures/billing/646dafb021734_348361953_1253283728644784_3579724110173630409_n.jpg', '', 'CSS/Pictures/billing/646dafb021d23_348359246_916636292753192_3224299686877871013_n.jpg', 1200000, '2023-05-24', 'Cash', 'Downpayment', 'Pending'),
(19, '', '', 'BILL-0019', 'WED-0001', 9632, 'Pil', 'Man', 'Manila City', 'pil@gmail.com', '09423345', 'CSS/Pictures/billing/646dafe098416_348361953_1253283728644784_3579724110173630409_n.jpg', '', 'CSS/Pictures/billing/646dafe0988ef_348359246_916636292753192_3224299686877871013_n.jpg', 800000, '2023-05-24', 'Cash', 'Downpayment', 'Pending'),
(20, '', '', 'BILL-0020', 'WED-0001', 9632, 'Miran', 'Pas', 'Pasig City', 'pas@gmail.com', '09423345', 'CSS/Pictures/billing/646db00c653fc_348361953_1253283728644784_3579724110173630409_n.jpg', '', 'CSS/Pictures/billing/646db00c65e4c_348359246_916636292753192_3224299686877871013_n.jpg', 200000, '2023-05-24', 'Cash', 'Fullpayment', 'Paid'),
(21, '', '', 'BILL-0021', 'WED-0001', 9632, 'Lala', 'Ri', 'Batangas City', 'xx@gmail.com', '09423345', 'CSS/Pictures/billing/646db028e1e73_348361953_1253283728644784_3579724110173630409_n.jpg', '', 'CSS/Pictures/billing/646db028e2189_348359246_916636292753192_3224299686877871013_n.jpg', 600000, '2023-06-15', 'Cash', 'Fullpayment', 'Pending'),
(22, '', '', 'BILL-0022', 'WED-0001', 9632, 'Jeff', 'Hosk', 'mandaluyong', 'jvlatina@gmail.com', '091323213', 'CSS/Pictures/billing/646db564df1b7_validid.jpg', '', 'CSS/Pictures/billing/646db564e247f_proof.jpg', 200000, '2023-05-24', 'Bank', 'Downpayment', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `birthday`
--

CREATE TABLE `birthday` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `booking_id` varchar(255) NOT NULL,
  `upcoming_age` int(100) NOT NULL,
  `celeb_gender` varchar(50) NOT NULL,
  `venue` varchar(100) NOT NULL,
  `guest_number` varchar(100) NOT NULL,
  `cuisine` varchar(100) NOT NULL,
  `style` varchar(100) NOT NULL,
  `theme_design` varchar(100) NOT NULL,
  `extra_services` varchar(255) NOT NULL,
  `other_preferences` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `birthday`
--

INSERT INTO `birthday` (`id`, `user_id`, `booking_id`, `upcoming_age`, `celeb_gender`, `venue`, `guest_number`, `cuisine`, `style`, `theme_design`, `extra_services`, `other_preferences`) VALUES
(34, 9632, 'BDAY-0001', 18, 'Female', 'Glass Garden', '1-50', 'Deluxe', 'Basic', 'Fairytale', 'DJ Services,Bar Area', ''),
(35, 9632, 'BDAY-0035', 21, 'Male', 'Paradisso Terrestre', '101-200', 'Royal', 'Polished', 'Costume', 'DJ Services,Emcee,Videographer', ''),
(36, 9632, 'BDAY-0036', 50, 'Female', 'Versailles Palace', '101-200', 'Royal', 'Sleek', 'Tropical Party', 'DJ Services,Videographer', '');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(255) NOT NULL,
  `user_id` int(100) NOT NULL,
  `booking_id` varchar(255) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `emailadd` varchar(100) NOT NULL,
  `bookdate` date NOT NULL,
  `weektype` varchar(100) NOT NULL,
  `event` varchar(100) NOT NULL,
  `amount` float NOT NULL,
  `status` varchar(100) NOT NULL,
  `coordinator_1` varchar(100) NOT NULL,
  `coordinator_2` varchar(100) NOT NULL,
  `coordinator_3` varchar(100) NOT NULL,
  `coordinator_4` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `user_id`, `booking_id`, `firstname`, `lastname`, `phone`, `address`, `emailadd`, `bookdate`, `weektype`, `event`, `amount`, `status`, `coordinator_1`, `coordinator_2`, `coordinator_3`, `coordinator_4`) VALUES
(168, 9632, 'WED-0001', 'Jeff', 'Latina', '09111111111', 'Manila City', 'jeffvlatina@gmail.com', '2023-07-06', 'weekday', 'Wedding', 0, 'confirmed', 'Approved', 'Approved', 'Approved', 'Approved'),
(169, 9632, 'WED-0070', 'Jessi', 'Alba', '09324235', 'Pasay City', 'b@b.com', '2023-07-08', 'weekend', 'Wedding', 0, 'pending', 'Pending', 'Pending', 'Pending', 'Pending'),
(170, 9632, 'WED-0071', 'Kiara', 'Sun', '09324256', 'Makati City', 'k@a.com', '2023-07-27', 'weekday', 'Wedding', 0, 'pending', 'Pending', 'Pending', 'Pending', 'Pending'),
(171, 9632, 'BDAY-0001', 'Muana', 'Eli', '092342342', 'Manila City', 'vv@a.com', '2023-08-24', 'weekday', 'Birthday', 0, 'pending', 'Pending', 'Pending', 'Pending', 'Pending'),
(172, 9632, 'BDAY-0035', 'Sisa', 'Kia', '095452', 'Maui City', 'bb@a.com', '2023-05-28', 'weekday', 'Birthday', 0, 'confirmed', 'Approved', 'Approved', 'Approved', 'Approved'),
(173, 9632, 'BDAY-0036', 'Cia', 'Bia', '0954532', 'Pasig City', 'pp@a.com', '2023-07-08', 'weekend', 'Birthday', 0, 'pending', 'Pending', 'Pending', 'Pending', 'Pending'),
(174, 9632, 'CHRIS-0001', 'Jeff', 'Latina', '09111111111', 'Manila City', 'a@a.com', '2023-07-02', 'weekend', 'Christening', 0, 'pending', 'Pending', 'Pending', 'Pending', 'Pending'),
(175, 9632, 'CHRIS-0021', 'Zara', 'Cza', '095434543', 'Aurora City', 'zz@a.com', '2023-09-08', 'weekday', 'Christening', 0, 'pending', 'Pending', 'Pending', 'Pending', 'Pending'),
(176, 9632, 'CHRIS-0022', 'Liam', 'Payne', '0954353453', 'Batanes City', 'bbc@a.com', '2023-07-04', 'weekday', 'Christening', 0, 'approved', 'Approved', 'Approved', 'Approved', 'Approved'),
(177, 9632, 'ANNIV-0001', 'Max', 'El', '094234323', 'Hawkins City', 'vv@a.com', '2023-08-24', 'weekday', 'Anniversary', 0, 'approved', 'Approved', 'Approved', 'Approved', 'Approved'),
(178, 9632, 'ANNIV-0025', 'Mike', 'Asa', '0953363', 'Urugan City', 'vvx@a.com', '2023-07-06', 'weekday', 'Anniversary', 0, 'pending', 'Pending', 'Pending', 'Pending', 'Pending'),
(179, 9632, 'ANNIV-0026', 'Klio', 'Vush', '09543534', 'Quezon City', 'bnm@a.com', '2023-05-26', 'weekday', 'Anniversary', 0, 'confirmed', 'Approved', 'Approved', 'Approved', 'Approved'),
(180, 9632, 'CORP-0001', 'Quin', 'Aur', '095345354', 'Marinduque', 'ffe@a.com', '2023-09-21', 'weekday', 'Corporate', 0, 'pending', 'Pending', 'Pending', 'Pending', 'Pending'),
(181, 9632, 'CORP-0010', 'Wer', 'Una', '09534534', 'Quezon', 'brb@a.com', '2024-02-22', 'weekday', 'Corporate', 0, 'pending', 'Pending', 'Pending', 'Pending', 'Pending'),
(182, 9632, 'CORP-0011', 'Bea', 'Andrey', '095363542', 'Pasig City', 'vvvb@a.com', '2024-03-05', 'weekday', 'Corporate', 0, 'pending', 'Pending', 'Pending', 'Pending', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `christening`
--

CREATE TABLE `christening` (
  `id` int(100) NOT NULL,
  `user_id` int(255) NOT NULL,
  `booking_id` varchar(255) NOT NULL,
  `celeb_gender` varchar(50) NOT NULL,
  `venue` varchar(100) NOT NULL,
  `guest_number` varchar(100) NOT NULL,
  `cuisine` varchar(100) NOT NULL,
  `style` varchar(100) NOT NULL,
  `theme_design` varchar(100) NOT NULL,
  `extra_services` varchar(255) NOT NULL,
  `other_preferences` text NOT NULL,
  `upcoming_age` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `christening`
--

INSERT INTO `christening` (`id`, `user_id`, `booking_id`, `celeb_gender`, `venue`, `guest_number`, `cuisine`, `style`, `theme_design`, `extra_services`, `other_preferences`, `upcoming_age`) VALUES
(20, 9632, 'CHRIS-0001', 'Male', 'Sedretos Royale', '101-200', 'None', 'Basic', 'Garden Party', 'Emcee,Invitation Cards', '', 0),
(21, 9632, 'CHRIS-0021', 'Female', 'The Green Lounge', '101-200', 'Royal', 'Basic', 'Garden Party', 'None', '', 0),
(22, 9632, 'CHRIS-0022', 'Female', 'Sitio Elena', '201-300', 'Royal', 'Sleek', 'Fairytale Party', 'Emcee', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `corporate`
--

CREATE TABLE `corporate` (
  `id` int(100) NOT NULL,
  `user_id` int(255) NOT NULL,
  `booking_id` varchar(100) NOT NULL,
  `venue` varchar(100) NOT NULL,
  `guest_number` varchar(100) NOT NULL,
  `cuisine` varchar(100) NOT NULL,
  `style` varchar(100) NOT NULL,
  `theme_design` varchar(100) NOT NULL,
  `extra_services` varchar(100) NOT NULL,
  `other_preferences` text NOT NULL,
  `upcoming_age` int(100) NOT NULL,
  `celeb_gender` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `corporate`
--

INSERT INTO `corporate` (`id`, `user_id`, `booking_id`, `venue`, `guest_number`, `cuisine`, `style`, `theme_design`, `extra_services`, `other_preferences`, `upcoming_age`, `celeb_gender`) VALUES
(9, 9632, 'CORP-0001', 'One Grand Pavillion', '51-100', 'None', 'Sleek', 'Costume Party', 'DJ Services,Videographer', '', 0, ''),
(10, 9632, 'CORP-0010', 'Lihim ng Kubli', '51-100', 'Royal', 'Polished', 'Black and White Ball', 'DJ Services,Emcee,Photographer', '', 0, ''),
(11, 9632, 'CORP-0011', 'Paradisso Terrestre', '201-300', 'Royal', 'Basic', 'Sports-themed Event', 'DJ Services,Bar Area', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(255) NOT NULL,
  `invoice_id` varchar(255) NOT NULL,
  `user_id` int(100) NOT NULL,
  `booking_id` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `id` int(11) NOT NULL,
  `receipt_id` varchar(255) NOT NULL,
  `user_id` int(100) NOT NULL,
  `booking_id` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE `theme` (
  `id` int(100) NOT NULL,
  `theme_name` varchar(100) NOT NULL,
  `theme_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`id`, `theme_name`, `theme_type`) VALUES
(1, 'Bohemian', 'Birthday'),
(2, 'Fairytale', 'Birthday'),
(3, 'Modern', 'Birthday'),
(4, 'Tropical Party', 'Birthday'),
(5, 'Retro', 'Birthday'),
(6, 'Costume', 'Birthday'),
(7, 'Garden Party', 'Christening'),
(8, 'Vintage Tea Party', 'Christening'),
(9, 'Fairytale Party', 'Christening'),
(10, 'Beach Party', 'Christening'),
(11, 'Rustic Barn Party', 'Christening'),
(12, 'Disney Theme', 'Christening'),
(13, 'Beach', 'Wedding'),
(14, 'Garden', 'Wedding'),
(15, 'Modern', 'Wedding'),
(16, 'Vintage', 'Wedding'),
(17, 'Rustic', 'Wedding'),
(18, 'Fairytale', 'Wedding'),
(19, 'Hollywood Glamour', 'Corporate'),
(20, 'Costume Party', 'Corporate'),
(21, 'Sports-themed Event', 'Corporate'),
(22, 'Black and White Ball', 'Corporate'),
(23, 'Vintage Chic', 'Corporate'),
(24, 'Masquerade Ball', 'Corporate'),
(25, 'Vintage', 'Anniversary'),
(26, 'Garden', 'Anniversary'),
(27, 'Masquerade Ball', 'Anniversary'),
(28, 'Travel', 'Anniversary'),
(29, 'Hollywood Glamour', 'Anniversary'),
(30, 'Rustic Chic', 'Anniversary');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `user_status` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `reset_token` text DEFAULT NULL,
  `token_expired` date DEFAULT NULL,
  `verify_token` varchar(191) NOT NULL,
  `verify_status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0=no,1=yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `username`, `firstname`, `lastname`, `email`, `address`, `phone`, `user_status`, `password`, `reset_token`, `token_expired`, `verify_token`, `verify_status`) VALUES
(32, 500096020258, 'Glamour Team', 'Joervy', 'Sanchez', 'admin@a.com', '', '', 'Admin', '$2y$10$Qb0xVrtMW0neQeFlJ6/nW.Froh.uSZCeUxLbUJfRkPtmPH5ewpwNm', NULL, NULL, '', 1),
(33, 365175434, 'Luxx Venue Co.', 'Cyreene', 'Genova', 'venue@v.com', '', '', 'Venue Coordinator', '$2y$10$5rMH4E33PGZE9zRsiN1nmODWoM09GFilGcHEBNXivxAckrzG/3HgK', NULL, NULL, '', 1),
(34, 760246340624, 'REM Styles', 'Ariz', 'Salazar', 'style@s.com', '', '', 'Style Coordinator', '$2y$10$lRn4eNvxKWXuxHTjWtFjpeS4j4.uMh/uxxmACAtU6eT7HYviW5yF6', NULL, NULL, '', 1),
(35, 855716676347721335, 'Dons Talent Agency', 'Elnard', 'Vallejo', 'extra@e.com', '', '', 'Extra Services Coordinator', '$2y$10$hf7VzSDD/V5QpXd3Aeyu1.lSA5Og7mA0h3JbRYcl.K.uek1OYqMoC', NULL, NULL, '', 1),
(36, 39498, 'Customer', 'Jeffrey', 'Latina', 'customer@c.com', 'Mandaluyong City', '09453391986', 'User', '$2y$10$r0n7vQ9H/vppg.BuXFCUgO.ZPBD0V5meQdSNzbvaVj.lWa/H0zSfS', 'fa5133cc804cb91fb056d75b867e0c4f', '2023-05-07', '', 1),
(37, 75551244, 'Sour Catering', 'Glaidelyn', 'Cabalsi', 'catering@c.com', '', '', 'Catering Coordinator', '$2y$10$2q.XJC8ZfNLgnylGvAqm/.egAkdHVrpfoywKn7AmT/KWEFuRE8Bcu', NULL, NULL, '', 1),
(56, 5397, 'nine', 'Mary', 'Boceso', 'm@m.com', '', '', 'User', '$2y$10$XztEgm1xeTZRxJGQOEG0/uZs6OFKDq6XNUl7atqcS5odmkupEhjoq', NULL, NULL, '613c4e595cd2000dbbbe6ae5a602e899', 0),
(57, 9632, 'jayhosk', 'Jeff', 'Latina', 'a@a.com', 'Manila City', '09111111111', 'User', '$2y$10$RnafScz.Hv2vsjHV0.r9QeNcDzeGzOHwOTZ6X5jElcbHvUoRCibWi', NULL, NULL, '14d741917f98d33d4b53e3a55209681d', 1);

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `id` int(100) NOT NULL,
  `venuename` varchar(50) NOT NULL,
  `venuetype` varchar(50) NOT NULL,
  `venueaddress` varchar(255) NOT NULL,
  `venueimg` varchar(255) NOT NULL,
  `venuepano` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `venuename`, `venuetype`, `venueaddress`, `venueimg`, `venuepano`) VALUES
(1, 'The Emerald Events Place', 'Wedding', 'Antipolo, Rizal', 'wedding-venue1.jpg', 'https://shorturl.at/myz89'),
(2, 'The Mango Farm Events Place', 'Wedding', 'Cainta, Rizal', 'wedding-venue2.jpg', 'https://shorturl.at/fhkzZ'),
(3, 'Lihim ng Kubli', 'Wedding', 'Indang, Cavite', 'wedding-venue3.jpg', 'https://shorturl.at/dfjvy'),
(4, 'Versailles Palace', 'Wedding', 'Almanza Dos, Las Piñas', 'wedding-venue4.jpg', 'https://shorturl.at/hjoPU'),
(5, 'The Madisons Events Place', 'Wedding', 'Cupang, Muntinlupa', 'wedding-venue5.jpg', 'https://shorturl.at/ekwDV'),
(7, 'Paradisso Terrestre', 'Birthday', 'Bacoor, Cavite', 'birthday-venue1.jpg', 'https://shorturl.at/EOYZ2'),
(8, 'Glass Garden', 'Birthday', 'Evangelista Ave, Pasig', 'birthday-venue2.jpg', 'https://shorturl.at/vY258'),
(9, 'Versailles Palace', 'Birthday', 'Almanza Dos, Las Piñas', 'birthday-venue3.jpg', 'https://shorturl.at/kBHPY'),
(10, 'Fernwood Gardens', 'Birthday', 'Quezon City, Metro Manila', 'birthday-venue4.jpg', 'https://shorturl.at/bjqw8'),
(11, 'The Emerald Events Place', 'Birthday', 'Antipolo, Rizal', 'birthday-venue5.jpg', 'https://shorturl.at/mqtNY'),
(13, 'The Green Lounge', 'Christening', 'Greenhills, San Juan', 'christening-venue1.jpg', 'https://shorturl.at/hlMT6'),
(14, 'Sitio Elena', 'Christening', 'Cainta, Rizal', 'christening-venue2.jpg', 'https://shorturl.at/akMO2'),
(15, 'Patio de Manila', 'Christening', 'Malate, Manila', 'christening-venue3.jpg', 'https://shorturl.at/dxyLU'),
(16, 'Sedretos Royale', 'Christening', 'Marikina, Metro Manila', 'christening-venue4.jpg', 'https://shorturl.at/mnxM7'),
(17, 'The Forest Barn', 'Christening', 'Magallanes, Cavite', 'christening-venue5.jpg', 'https://shorturl.at/jlmIY'),
(19, 'Lihim ng Kubli', 'Anniversary', 'Indang, Cavite', 'anniversary-venue1.jpg', 'https://shorturl.at/gzAFG'),
(26, 'The Green Lounge', 'Anniversary', 'Greenhills, San Juan', 'anniversary-venue2.jpg', 'https://shorturl.at/fgmT0'),
(27, 'Nuevo Comienzo Resort', 'Anniversary', 'Silang, Cavite', 'anniversary-venue3.jpg', 'https://shorturl.at/glKM0'),
(28, 'The Silica Events Place', 'Anniversary', 'Paranaque, Metro Manila', 'anniversary-venue4.jpg', 'https://shorturl.at/bJZ38'),
(29, 'Fernwood Gardens', 'Anniversary', 'Quezon City, Metro Manila', 'anniversary-venue5.jpg', 'https://shorturl.at/bjqw8'),
(31, 'The Circle Events Place', 'Corporate', 'Quezon City, Metro Manila', 'corporate-venue1.jpg', 'https://shorturl.at/rsCW3'),
(32, 'Lihim ng Kubli', 'Corporate', 'Indang, Cavite', 'corporate-venue2.jpg', 'https://shorturl.at/hKMU6'),
(33, 'One Grand Pavillion', 'Corporate', 'Malolos, Bulacan', 'corporate-venue3.jpg', 'https://shorturl.at/bwNX4'),
(34, 'Paradisso Terrestre', 'Corporate', 'Bacoor, Cavite', 'corporate-venue4.jpg', 'https://shorturl.at/FJMU4'),
(35, 'Josephine Events', 'Corporate', 'Kawit, Cavite', 'corporate-venue5.jpg', 'https://shorturl.at/mwyzS');

-- --------------------------------------------------------

--
-- Table structure for table `wedding`
--

CREATE TABLE `wedding` (
  `id` int(100) NOT NULL,
  `user_id` int(255) NOT NULL,
  `booking_id` varchar(255) NOT NULL,
  `venue` varchar(100) NOT NULL,
  `guest_number` varchar(100) NOT NULL,
  `cuisine` varchar(100) NOT NULL,
  `style` varchar(100) NOT NULL,
  `theme_design` varchar(100) NOT NULL,
  `extra_services` varchar(100) NOT NULL,
  `other_preferences` text NOT NULL,
  `upcoming_age` int(100) NOT NULL,
  `celeb_gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wedding`
--

INSERT INTO `wedding` (`id`, `user_id`, `booking_id`, `venue`, `guest_number`, `cuisine`, `style`, `theme_design`, `extra_services`, `other_preferences`, `upcoming_age`, `celeb_gender`) VALUES
(69, 9632, 'WED-0001', 'The Emerald Events Place', '51-100', 'Deluxe', 'Sleek', 'Garden', 'DJ Services,Videographer', '', 0, ''),
(70, 9632, 'WED-0070', 'The Emerald Events Place', '51-100', 'None', 'Basic', 'Garden', 'DJ Services,Videographer', '', 0, ''),
(71, 9632, 'WED-0071', 'None', '51-100', 'Normal', 'Basic', 'Beach', 'DJ Services', '', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anniversary`
--
ALTER TABLE `anniversary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `birthday`
--
ALTER TABLE `birthday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `christening`
--
ALTER TABLE `christening`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `corporate`
--
ALTER TABLE `corporate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wedding`
--
ALTER TABLE `wedding`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anniversary`
--
ALTER TABLE `anniversary`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `birthday`
--
ALTER TABLE `birthday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `christening`
--
ALTER TABLE `christening`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `corporate`
--
ALTER TABLE `corporate`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `theme`
--
ALTER TABLE `theme`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `wedding`
--
ALTER TABLE `wedding`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
