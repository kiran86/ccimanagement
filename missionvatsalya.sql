-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 15, 2025 at 08:20 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `missionvatsalya`
--

-- --------------------------------------------------------

--
-- Table structure for table `cci`
--

CREATE TABLE `cci` (
  `id` varchar(255) NOT NULL,
  `district` varchar(255) DEFAULT NULL,
  `cci_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `pin` int(11) DEFAULT 0,
  `run_by` varchar(255) DEFAULT NULL,
  `cci_unit_no` smallint(6) DEFAULT 0,
  `cci_unit_gender` varchar(255) DEFAULT NULL,
  `cci_unit_strength` int(11) DEFAULT 0,
  `is_pab_approved` tinyint(1) DEFAULT 0,
  `reg_no` varchar(255) DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  `reg_valid_upto` date DEFAULT NULL,
  `reg_status` double DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `contact_desg` varchar(255) DEFAULT NULL,
  `contact_phno` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cci`
--

INSERT INTO `cci` (`id`, `district`, `cci_name`, `address`, `pin`, `run_by`, `cci_unit_no`, `cci_unit_gender`, `cci_unit_strength`, `is_pab_approved`, `reg_no`, `reg_date`, `reg_valid_upto`, `reg_status`, `contact_name`, `contact_desg`, `contact_phno`) VALUES
('CCI_001', 'Alipurduar', 'Alipurduar Govt Run Specialized Adoption Agency', 'SUFAL BANGLA BUILDING 1ST FLOOR, NEAR SUB DIVISIONAL OFFICER\'S OFFICE, ALIPURDUAR MUNICIPALITY, PO- ALIPURDUAR COURT, PIN- 736122', NULL, 'Government', 1, 'Combined', 10, 1, 'WB/JJ/ALI/05/03/0007', '2001-05-22', '2001-04-27', 5, NULL, NULL, 0),
('CCI_002', 'Alipurduar', 'Khagrabari Rural Energy Development Association (Kreda)', 'Vill-Madhya Kamakhyaguri, P.O. Kamakhaguri, Kumargram, Alipurduar', 706202, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/ALI/01/01/0143', '2004-01-21', '2031-03-26', 5, '', '', 0),
('CCI_003', 'Alipurduar', 'Khagrabari Rural Energy Development Association (Kreda)', 'Vill-Madhya Kamakhyaguri, P.O. Kamakhaguri, Kumargram, Alipurduar', 706202, 'Non-Government Organisation', 2, 'Female', 50, 1, 'WB/JJ/ALI/01/02/0145', '2001-04-21', '2031-03-26', 5, '', '', 0),
('CCI_004', 'Bankura', 'Chamtagara Adibasi Mahila Samity', 'Vill‚Äì Chamtagara, PO-  Chamtagara, PS ‚Äì Chhatna', 722137, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/BAN/02/03/0021', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_005', 'Bankura', 'Sumangalam Home For Boys', 'KHARIKASULI, PO- MORAR, DIST- BANKURA', NULL, 'Government', 1, 'Male', 50, 1, 'JJ/Reg./Gov./012/1', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_006', 'Bankura', 'Sumangalam Home For Boys', 'KHARIKASULI, PO- MORAR, DIST- BANKURA, WB', NULL, 'Government', 2, 'Male', 50, 1, 'JJ/Reg./Gov./012/2', '2028-01-23', '2027-01-28', 5, '', '', 0),
('CCI_007', 'Birbhum', 'Naveena Home For Girls Run By Elmhirst Institute Of Community Studies', 'Andrew Palli Santiniketan', 731235, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/BIR/01/02/0176', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_008', 'Birbhum', 'Rampurhat Spastics And Handicapped Society (Cwsn Boys)', 'Chandmari Uttar Pally, Ward No.13, PO+PS-Rampurhat', 731224, 'Non-Government Organisation', 1, 'Male', 50, 1, 'PROV/WB/JJ/0022', '2026-12-17', '2025-06-18', 4, '', '', 0),
('CCI_009', 'Birbhum', 'Suri Center For Child Welfare', 'Sova Bazar,Rabindra pally,P.O-Suiri', 731101, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/BIR/02/03/0028/1', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_010', 'Coochbihar', 'Children Home For Blind Boys', 'PO+DIST- COOHBEHAR,PIN-736101', NULL, 'Government', 1, 'Male', 50, 1, 'JJ/Reg./Gov./015/1', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_011', 'Coochbihar', 'Children Home For Blind Boys', 'PO+DIST- COOCHBEHAR, PIN 736101, WB-736101', NULL, 'Government', 2, 'Male', 50, 1, 'JJ/Reg./Gov./015/2', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_012', 'Coochbihar', 'New Bharti Club', 'Vill+PO-Baneswar,P.S. Kotwali', 736133, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/COO/02/03/0060', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_013', 'Coochbihar', 'Sahid Bandana Smriti Balika Abas', 'PO+DIST- COOCH BEHAR, PIN -736101, WB', NULL, 'Government', 1, 'Combined', 10, 1, 'WB/JJ/COO/05/03/004', '2007-02-20', '2007-01-25', 5, NULL, NULL, 0),
('CCI_014', 'Coochbihar', 'Sahid Bandana Smriti Balika Abas', 'PO+DIST- COOCH BEHAR', 736101, 'Government', 1, 'Female', 50, 1, 'JJ/Reg./Gov./005/1', '2028-01-23', '2027-01-28', 5, '', '', 0),
('CCI_015', 'Coochbihar', 'Sahid Bandana Smriti Balika Abas', 'PO+DIST- COOCHBEHAR, PIN-736101', NULL, 'Government', 2, 'Female', 50, 1, 'JJ/Reg./Gov./005/2', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_016', 'Coochbihar', 'Sahid Bandana Smriti Balika Abas', 'PO+DIST-COOCHBEHAR, PIN-736101', NULL, 'Government', 3, 'Female', 50, 1, 'JJ/Reg./Gov./005/3', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_017', 'Dakshin Dinajpur', 'Nowpara Teor Samaj Kalyan Samity', 'Vill- RainagarNear Hili Hospital,P.O+P.S-Hili', 733126, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/DIN(S)/02/03/0037', '2016-01-24', '2015-01-29', 5, '', '', 0),
('CCI_018', 'Dakshin Dinajpur', 'Suvayan Home (M)', 'VILL-HOSSIERPUR, PO-BELTALA PARK, BALURGHAT, DIST- DAKSHIN DINAJPUR', NULL, 'Government', 1, 'Male', 50, 1, 'JJ/Reg./Gov./010/1', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_019', 'Dakshin Dinajpur', 'Suvayan Home (M)', 'VILL- HOSSIERPUR, PO- BELTALA PARK, BALURGHAT, DAKSHIN DINAJPUR, WB', NULL, 'Government', 2, 'Male', 50, 1, 'JJ/Reg./Gov./010/2', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_020', 'Darjeeling', 'All India Women\'s Conference Open Shelter', 'H.D Lama Road, near Satthi Sedi, PO+ Dist- Darjeeling', NULL, 'Non-Government Organisation', 1, 'Female', 25, 0, '', NULL, NULL, 6, NULL, NULL, NULL),
('CCI_021', 'Darjeeling', 'Calvary International Biblical Academy For Boys, Phansidewa', 'Phansidewa, Siliguri, Pin. 734435', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'PROV/WB/JJ/0102', '2029-12-17', '2028-06-18', 6, NULL, NULL, NULL),
('CCI_022', 'Darjeeling', 'Calvary International Biblical Academy For Girls, Phansidewa', 'Phansidewa, Siliguri, Pin. 734435', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0101', '2029-12-17', '2028-06-18', 6, NULL, NULL, NULL),
('CCI_023', 'Darjeeling', 'Child In Need Institution (Open Shelter For Girls)', 'Meghnad Sarani, Hakim Para, Po+Ps-Siliguri, 734001', 734001, 'Non-Government Organisation', 1, 'Female', 25, 1, 'WB/JJ/DAR/03/02/0050', '2021-06-23', '2020-06-28', 5, NULL, NULL, NULL),
('CCI_024', 'Darjeeling', 'Edith Wilkins Street Children Trust Foundation (Ewsctf) Children Home For Boys', '8th Jawahar Road, East Holmden, Lower Hermitage, Darjeeling, Pin-734101', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'PROV/WB/JJ/0125', '2029-12-17', '2028-06-18', 2, NULL, NULL, NULL),
('CCI_025', 'Darjeeling', 'Edith Wilkins Street Children Trust Foundation Home For Girls', '8th Jawahar Road, East Holmden, Lower Hermitage', 734101, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/DAR/01/02/0169', '2004-01-21', '2031-03-26', 5, '', '', 0),
('CCI_026', 'Darjeeling', 'First Love Children Home For Boys', 'Devidangabazar, PO. Champasari, PS. Pradhannagar, Siliguri, Pin. 734003', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'PROV/WB/JJ/0145', '2029-12-17', '2028-06-18', 2, NULL, NULL, NULL),
('CCI_027', 'Darjeeling', 'First Love Children Home For Girls', 'Devidangabazar, PO. Champasari, PS. Pradhannagar, Siliguri, Pin. 734003', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/DAR/01/02/0058', '2029-06-18', '2028-06-23', 4, NULL, NULL, NULL),
('CCI_028', 'Darjeeling', 'Flame Of Hope, Siliguri(Girls)', 'Tarijoti sivmandir, New rongia, Dist-Darjeeling, 734013,', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, '371-SW/O/JJA-11/17', '2004-01-16', '2031-03-21', 4, NULL, NULL, NULL),
('CCI_029', 'Darjeeling', 'Govt. Run Children\'S Home For Girls', 'BAIRATISHAL, MATIGARA, SILIGURI, DIST-DARJEELING, WB', NULL, 'Government', 1, 'Female', 50, 1, 'JJ/Reg./Gov./020', '2005-10-23', '2005-09-28', 5, NULL, NULL, 0),
('CCI_030', 'Darjeeling', 'Grace Children Home For Boys, Karmatar, Bijanbari', 'Gokibazar, Pulbazar, Karmatarbusty, PS. Pulbazar, Pin. 734201', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/DAR/01/01/0075', '2029-06-18', '2028-06-23', 6, NULL, NULL, NULL),
('CCI_031', 'Darjeeling', 'Grace Children Home For Girls, Karmatar, Bijanbari', 'Gokibazar, Pulbazar, Karmatarbusty, PS. Pulbazar, Pin. 734201', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0138', '2029-12-17', '2028-06-18', 6, NULL, NULL, NULL),
('CCI_032', 'Darjeeling', 'Himalaya Children Home For Boys, Siliguri', 'Vivekananda Pally, Kadamtala, Siliguri-734011', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'PROV/WB/JJ/0434', '2029-12-17', '2028-06-18', 6, NULL, NULL, NULL),
('CCI_033', 'Darjeeling', 'Himalaya Children Home For Girls, Siliguri', 'Vivekananda Pally, Kadamtala, Siliguri-734011', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0074', '2029-12-17', '2028-06-18', 6, NULL, NULL, NULL),
('CCI_034', 'Darjeeling', 'Kiwanis Noora Home For Girls, Rangbull Run By Hossana Covenant Trust', ' Rangbull, Near Gramin Bank, PO. Rangbull, PS. Jorebungla, Pin. 734123', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0081', '2029-12-17', '2028-06-18', 2, NULL, NULL, NULL),
('CCI_035', 'Darjeeling', 'Lamp (Open Shelter For Boys)', 'Natun Para Jalpai More , Ward no-5, Siliguri, Pin-734005', NULL, 'Non-Government Organisation', 1, 'Male', 25, 0, 'PROV/WB/JJ/0044', '2029-12-17', '2028-06-18', 6, NULL, NULL, NULL),
('CCI_036', 'Darjeeling', 'Mercy Home For Boys', 'Near Aat Gallery, Chamling Nivas, Darjeeling -734101', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'PROV/WB/JJ/0139', '2029-12-17', '2028-06-18', 6, NULL, NULL, NULL),
('CCI_037', 'Darjeeling', 'Mercy Home For Girls', 'Armadale Compound, Ava Art Gallery, Darjeeling, Pin-734101', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/DAR/01/02/077', '2029-06-18', '2028-06-23', 6, NULL, NULL, NULL),
('CCI_038', 'Darjeeling', 'Sano Diyo, Siliguri(Girls)', 'New rongia, Via NBU, Bairatisal, Siliguri-734013', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0128', '2029-12-17', '2028-06-18', 6, NULL, NULL, NULL),
('CCI_039', 'Hooghly', 'Children Home For Girls, Uttarpara', '7, RAJMOHAN ROAD, UTTARPARA, PIN-712258', NULL, 'Government', 1, 'Female', 50, 1, 'JJ/Reg./Gov./002/1', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_040', 'Hooghly', 'Children Home For Girls, Uttarpara', '7, RAJMOHAN ROAD, UTTARPARA, DIST- HOOGHLY, WB, PIN-712258', NULL, 'Government', 1, 'Combined', 10, 1, 'WB/JJ/HOO/05/03/0003', '2012-05-19', '2012-04-24', 5, NULL, NULL, 0),
('CCI_041', 'Hooghly', 'Children Home For Girls, Uttarpara', '7, RAJMOHAN ROAD, UTTARPARA, PIN-712258', NULL, 'Government', 2, 'Female', 50, 1, 'JJ/Reg./Gov./002/2', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_042', 'Hooghly', 'Children Home For Girls, Uttarpara', '7, RAJMOHAN ROAD, UTTARPARA, PIN-712258', NULL, 'Government', 3, 'Female', 50, 1, 'JJ/Reg./Gov./002/3', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_043', 'Hooghly', 'Gopalnagar Nivedita Welfare Society', 'Vill-Gopalnagar, PO Harharia (Singur),', 712409, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/01/01/0062', '2029-06-18', '2028-06-23', 4, '', '', 0),
('CCI_044', 'Hooghly', 'Jana Siksha Prochar Kendra', 'Vill & PO Baganda, PS Jangipara, Hooghly', NULL, 'Non-Government Organisation', 1, 'Female', 50, 1, 'JJ/Reg/NGO-11', '2013-02-13', '2031-03-15', 0, '', '', 0),
('CCI_045', 'Hooghly', 'Kalyan Bharati Observation Home For Boys', 'Kamarkundu', 712407, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/HOO/01/01/0151', '2010-01-19', '2030-09-24', 4, '', '', 0),
('CCI_046', 'Hooghly', 'Khanyan Dr. B. R. Ambedkar Seva Samity, ( Cwsn Home For Girls)Panduah', 'Vill-Khanyan (Station Bazar) , PO. Khanyan, PS. Pandua, Hooghly, Pin-712147', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0162', '2029-12-17', '2028-06-18', 0, NULL, NULL, NULL),
('CCI_047', 'Hooghly', 'Khanyan Dr. B.R. Ambedkar Seba Samity', 'Vill & PO Mogra, PS Mogra, Block Chinsura Mogra, Hooghly', 712148, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/Hoo/01/01/0154', '2029-06-23', '2028-06-28', 5, '', '', 0),
('CCI_048', 'Hooghly', 'Nabadiganta Openshelter For 25 Boys', 'Bandel Hooghly', NULL, 'Non-Government Organisation', 1, 'Male', 25, 0, '', NULL, NULL, 4, NULL, NULL, NULL),
('CCI_049', 'Hooghly', 'Prabartak Seva Niketan', 'Sarkarpara Lane, Boraichanditala, PO & PS Chandannagar, Hooghly', 712136, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/HOO/01/02/0159', '2004-01-20', '2031-03-25', 5, '', '', 0),
('CCI_050', 'Hooghly', 'Satya Bharti', '28 Vidyasagar Road,PO-Nabagram, Kornagar', 712246, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/HOO/02/03/0113', '2019-01-20', '2018-01-25', 5, '', '', 0),
('CCI_051', 'Hooghly', 'Taraknath Social Welfare', 'Tarakeswar ,jyotashmbul Po-Tarakeswar, Hooghly PIN-712410', 712410, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/HOO/03/01/0160', '2019-06-23', '2018-06-28', 5, NULL, NULL, NULL),
('CCI_052', 'Howrah', 'Akshay Nagar Pallisiri Sangha, Girls (Open Shelter)', 'Vill-Sahebbagan, PO-Samabay Palli, Nischinda, Howrah, Pin-711205', 711205, 'Non-Government Organisation', 1, 'Female', 25, 1, 'PROV/WB/JJ/0078', '2029-12-17', '2028-06-18', 7, NULL, NULL, NULL),
('CCI_053', 'Howrah', 'Asha Bhavan Centre', 'Uluberia Kathila PO Banitabala, PS Uluberia, Howrah', NULL, 'Non-Government Organisation', 1, 'Female', 25, 1, 'WB/JJ/HOW/03/02/0157', '2022-06-23', '2021-06-28', 5, NULL, NULL, NULL),
('CCI_054', 'Howrah', 'Asha Bhavan Centre', 'Vill Kathila, PO Banitabla, PS Uluberia, Howrah', 711316, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/HOW/01/02/0011/1', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_055', 'Howrah', 'Asha Bhavan Centre', 'Vill Kathila, PO Banitabla, PS Uluberia, Howrah', 711316, 'Non-Government Organisation', 2, 'Female', 50, 1, 'WB/JJ/HOW/01/02/0011/2', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_056', 'Howrah', 'Asha Bhavan Centre', 'Vill Kathila, PO Banitabla, PS Uluberia, Howrah', 711316, 'Non-Government Organisation', 3, 'Female', 50, 1, 'WB/JJ/HOW/01/02/0011/3', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_057', 'Howrah', 'Chiranabin', 'Vill Parbakshi, PO Bakshi, PS Joypur, Howrah', 711303, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/HOW/01/01/0144', '2004-01-21', '2031-03-26', 5, '', '', 0),
('CCI_058', 'Howrah', 'Chiranabin', 'Vill Parbakshi, PO Bakshi, PS Joypur, Howrah', 711303, 'Non-Government Organisation', 2, 'Female', 50, 1, 'WB/JJ/HOW/01/02/0146', '2004-01-21', '2031-03-26', 5, '', '', 0),
('CCI_059', 'Howrah', 'Chiranabin', 'Vill Parbakshi, PO Bakshi, PS Joypur, Howrah', 711303, 'Non-Government Organisation', 3, 'Female', 50, 1, 'WB/JJ/HOW/01/02/0146/2', '2004-01-21', '2031-03-26', 5, '', '', 0),
('CCI_060', 'Howrah', 'Chiranabin', 'Vill Parbakshi, PO Bakshi, PS Joypur, Howrah', 711303, 'Non-Government Organisation', 4, 'Female', 50, 1, 'WB/JJ/HOW/01/02/0146/3', '2004-01-21', '2031-03-26', 5, '', '', 0),
('CCI_061', 'Howrah', 'Hijli Kalyan Kendra, Boys (Open Shelter)', 'Kaminipara, Thana Makua, Panchanantala, Bakultala, P.O.-Danesh Sk. Lane, PS-Sankrail, Howrah-711109', 711109, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/MID(W)/03/01/0004', '2008-01-22', '2031-07-27', 5, NULL, NULL, NULL),
('CCI_062', 'Howrah', 'Howrah Central Supravat, Boys (Open Shelter)', 'Ghanshyam Apartment, Gt. Floor, Chunavati, P.O.-Podra, Sankrail, Howrah-711109', 711109, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/HOW/ 03/01/0001', '2007-01-22', '2030-06-27', 5, NULL, NULL, NULL),
('CCI_063', 'Howrah', 'Howrah South Point - Lalkuthi Home For Girls', '83/1 Dakshin Baksara, 1st bye lane, Howrah-711109', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/HOW/01/02/0093', '2029-06-18', '2028-06-23', 6, NULL, NULL, NULL),
('CCI_064', 'Howrah', 'Itinda Community Development Society', 'Vill Bhooyarah, PO Mugkalyan, Howrah ', 711312, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/HOW/01/01/0043', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_065', 'Howrah', 'Itinda Community Development Society', 'Vill Bhooyarah, PO Mugkalyan, Howrah ', 711312, 'Non-Government Organisation', 2, 'Male', 50, 1, 'WB/JJ/HOW/01/01/0134', '2004-01-21', '2031-03-26', 5, '', '', 0),
('CCI_066', 'Howrah', 'Keuti Purba Dharani Biplabi Sangha', '43, Sailendra (nath) Bose Road, P.S. Golabari,  Dist-Howrah', 711106, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/HOW/02/03/0031', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_067', 'Howrah', 'Khardah Public Cultural & Welfare Association (Open Shelter)', 'Vill-Khardah, PO-Tulshiberia, Dist-Howrah, Pin-711401', 711401, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/HOW/03/01/0015', '2029-06-23', '2028-06-28', 5, NULL, NULL, NULL),
('CCI_068', 'Howrah', 'Sundaribai Mulchand Mahatta Home (Smm Home)', '8, STARK ROAD, LILUAH, PO- HOWRAH, PIN-711101, DIST- HOWRAH, WB', NULL, 'Government', 1, 'Female', 50, 1, 'JJ/Reg./Gov/001/1', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_069', 'Howrah', 'Sundaribai Mulchand Mahatta Home (Smm Home)', '8, STARK ROAD , LILUAH, PO+DIST- HOWRAH, PIN-711101', NULL, 'Government', 1, 'Combined', 10, 1, 'WB/JJ/HOW/05/03/0006/1', '2004-01-22', '2016-12-26', 5, NULL, NULL, 0),
('CCI_070', 'Howrah', 'Sundaribai Mulchand Mahatta Home (Smm Home)', '8, STARK ROAD, LILUAH, PO- HOWRAH, PIN- 711101, DIST- HOWRAH, WB', NULL, 'Government', 2, 'Female', 50, 1, 'JJ/Reg./Gov./001/2', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_071', 'Howrah', 'Sundaribai Mulchand Mahatta Home (Smm Home)', '8, STARK ROAD, LILUAH, PO+DIST- HOWRAH, PIN-711101', NULL, 'Government', 2, 'Combined', 10, 1, 'WB/JJ/HOW/05/03/0006/2', '2004-01-22', '2016-12-26', 5, NULL, NULL, 0),
('CCI_072', 'Howrah', 'Sundaribai Mulchand Mahatta Home (Smm Home)', '8, STARK ROAD, LILUAH, PO- HOWRAH, DIST- HOWRAH, PIN- 711101', NULL, 'Government', 3, 'Female', 50, 1, 'JJ/Reg./Gov./001/3', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_073', 'Howrah', 'Sundaribai Mulchand Mahatta Home (Smm Home)', '8, STARK ROAD, LILUAH, PO+DIST- HOWRAH, PIN-711101', NULL, 'Government', 4, 'Female', 50, 1, 'JJ/Reg./Gov./001/4', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_074', 'Howrah', 'Sundaribai Mulchand Mahatta Home (Smm Home)', '8, STARK ROAD, LILUAH PO+DIST- HOWRAH, PIN- 711101', NULL, 'Government', 5, 'Female', 50, 1, 'JJ/Reg/Gov./001/5', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_075', 'Howrah', 'Sundaribai Mulchand Mahatta Home (Smm Home)', '8, STARK ROAD, LILUAH, PO+DIST- HOWRAH, PIN-711101', NULL, 'Government', 6, 'Female', 50, 1, 'JJ/Reg./Gov./001/6', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_076', 'Howrah', 'Sundaribai Mulchand Mahatta Home (Smm Home)', '8, STARK ROAD,  LILUAH PO+DIST- HOWRAH, PIN-711101', NULL, 'Government', 7, 'Female', 50, 1, 'JJ/Reg./Gov./001/7', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_077', 'Howrah', 'Youth Welfare And Cultural Society, (Open Shelter For Boys)', 'Amriya, PO-Kolorah, Domjur, Howrah, Pin-711411', 711411, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/HOW/03/01/0052', '2029-06-23', '2028-06-28', 5, NULL, NULL, NULL),
('CCI_078', 'Jalpaiguri', 'Anubhab Run By Jalpaiguri Mahila Kalyan Sangha', 'New Town Bose Para, PO & Dist Jalpaiguri', 735101, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/JAL/01/02/0054', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_079', 'Jalpaiguri', 'Howrah South Point, Bakuabari, Cwsn Girls', ',P.O,- Mohitnagar, Pin Code 735102, Dist -  Jalpaiguri', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/JAL/01/02/0139', '2029-06-18', '2028-06-23', 6, NULL, NULL, NULL),
('CCI_080', 'Jalpaiguri', 'Howrah South Point, Mogradangi, Cwsn Boys', 'Mogradangi,P.O- Payachari, Pin Code 735135, Dist -  Jalpaiguri', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/JAL/01/01/0119', '2029-06-18', '2028-06-23', 6, NULL, NULL, NULL),
('CCI_081', 'Jalpaiguri', 'Howrah South Point, Mohitnagar, Cwsn Boys', 'Jalpaiguri Branch,P.O- Mohitnagar, Pin Code 735102, Dist -  Jalpaiguri', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, '3172/SW/O/JJA-71/16', '2004-01-16', '2031-03-21', 6, NULL, NULL, NULL),
('CCI_082', 'Jalpaiguri', 'Korak Children Home For Boys', 'RACE COURSE, DIST- JALPAIGURI, WB', NULL, 'Government', 1, 'Male', 50, 1, 'JJ/Reg./Gov./009/1', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_083', 'Jalpaiguri', 'Korak Children Home For Boys', 'RACE COURSE, DIST-JALPAIGURI, WB', NULL, 'Government', 2, 'Male', 50, 1, 'JJ/Reg/Gov./009/2', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_084', 'Jalpaiguri', 'Korok Children Home For Boys', NULL, NULL, 'Government', 1, 'Combined', 10, 1, 'WB/JJ/JAL/05/03/0005', '2012-09-21', '2012-08-26', 5, NULL, NULL, 0),
('CCI_085', 'Jalpaiguri', 'Nijoloy Children Home For Girls (Womens Interlink Foundation)', 'Pandapara Battola, PO Pandapara Kalibari, Jalpaiguri', 735132, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/JAL/01/02/0148', '2004-01-23', '2031-03-28', 5, '', '', 0),
('CCI_086', 'Jalpaiguri', 'Swapnatoron (25 Boys)', 'Senpara, Ward No-2, P.O & Dist. Jalpaiguri, PIN-735101', NULL, 'Non-Government Organisation', 1, 'Male', 25, 0, '', NULL, NULL, 6, NULL, NULL, NULL),
('CCI_087', 'Jhargram', 'Nivedita Gramin Karma Mandir', 'PO-Manikpara, Dist-Jhargram', 721513, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/JHA/02/03/0135', '2004-01-21', '2031-03-26', 5, '', '', 0),
('CCI_088', 'Kalimpong', 'Apostolic Convent Fellowship Welfare Society (Boys)', 'Dr. B. L. Dixit Road, Pin. 734301', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'PROV/WB/JJ/0105', '2029-12-17', '2028-06-18', 4, NULL, NULL, NULL),
('CCI_089', 'Kalimpong', 'Apostolic Convent Fellowship Welfare Society (Girls)', 'Dr. B. L. Dixit Road, Pin. 734301', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0106', '2029-12-17', '2028-06-18', 4, NULL, NULL, NULL),
('CCI_090', 'Kalimpong', 'Bal Suraksha Abhiyan Trust (Ashadeep) For Boys', 'Risi road, 8th mile, Po+Ps- Kalimpong, 734301', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/KAL/01/01/0051', '2029-06-18', '2028-06-23', 0, NULL, NULL, NULL),
('CCI_091', 'Kalimpong', 'Bal Suraksha Abhiyan Trust (Ashadeep) For Girls', 'Risi road, 8th mile, Po+Ps- Kalimpong, 734301', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/KAL/01/02/0053', '2029-06-18', '2028-06-23', 0, NULL, NULL, NULL),
('CCI_092', 'Kalimpong', 'Hope Family Trust', 'Primtam Road, kalimpong, Pin-734301', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0091', '2029-12-17', '2028-06-18', 4, NULL, NULL, NULL),
('CCI_093', 'Kalimpong', 'Hosanna Covenant Charitable Trust (25 Boys)', 'Adhikari gaon, lower bong busty, Opp. Bajla floor mill, Kalimpong', NULL, 'Non-Government Organisation', 1, 'Male', 25, 0, 'WB/JJ/KAL/01/01/0126', '2018-07-22', '2017-07-27', 5, NULL, NULL, NULL),
('CCI_094', 'Kolkata', 'All Bengal Womens Union', '89, Elliot Road, Kolkata', 700017, 'Non-Government Organisation', 1, 'Female', 50, 1, 'PROV/WB/JJ/0267/1', '2010-01-23', '2031-03-24', 0, '', '', 0),
('CCI_095', 'Kolkata', 'All Bengal Womens Union', '89, Elliot Road, Kolkata', 700017, 'Non-Government Organisation', 2, 'Female', 50, 1, 'PROV/WB/JJ/0267/2', '2010-01-23', '2031-03-24', 0, '', '', 0),
('CCI_096', 'Kolkata', 'Amader Bari Child In Need Institute (Cini)', '63, Rafi Ahmed Kidwai Road, Kolkata', 700016, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/KOL/01/02/0066', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_097', 'Kolkata', 'Amader Padakhep Open Shelter', '75, Purba Phulbagan near Sahid Bedi, PS-Patuli, Kolkata-700086', 700086, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/03/01/0003', '2008-01-22', '2031-07-27', 5, NULL, NULL, NULL),
('CCI_098', 'Kolkata', 'Anandaloy Home For Boys Run By Emanuel Ministries', '28 B Creek Row, Kolkata- 700014', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/KOL/01/01/0121', '2027-06-22', '2026-06-27', 5, NULL, NULL, NULL),
('CCI_099', 'Kolkata', 'Bengal Service Society Open Shelter', '196F/2A/1 Picnic Garden Road , Kol-39', 700039, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/03/01/0105', '2026-06-18', '2025-06-23', 2, NULL, NULL, NULL),
('CCI_100', 'Kolkata', 'Calcutta Social Project Open Shelter For Boys', '1/4 , Monoharpukur Road, Kolkata- 700029', 700029, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/03/01/0010', '2001-01-23', '2031-12-27', 5, NULL, NULL, NULL),
('CCI_101', 'Kolkata', 'Calcutta Social Project Open Shelter For Girls', '1/4 , Monoharpukur Road, Kolkata- 700029', 700029, 'Non-Government Organisation', 1, 'Female', 25, 1, 'WB/JJ/KOL/03/01/0010', '2001-01-23', '2031-12-27', 5, NULL, NULL, NULL),
('CCI_102', 'Kolkata', 'Child In Need Institute (Cini)', 'Chaitanya Library 4/1 Dani Ghosh Sarani, Bedon Street, Kolkata 6', 700006, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/03/02/0178', '2006-06-24', '2006-05-29', 5, NULL, NULL, NULL),
('CCI_103', 'Kolkata', 'Child In Need Institute (Cini) Urban Unit, Hamara Ghar, Open Shelter', '37 Pottery Road, Kolkata - 700015', 700015, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/03/01/0014', '2021-06-23', '2020-06-28', 5, NULL, NULL, NULL),
('CCI_104', 'Kolkata', 'Child In Need Institute (Cini) Urban Unit-Ii,', 'Sealdah Carshed', NULL, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/03/01/0019', '2021-06-23', '2020-06-28', 5, NULL, NULL, NULL),
('CCI_105', 'Kolkata', 'Childlife Preserve Shishur Sevay (25 Girls)', '17/2/7 Sahapur Main Road, Kolkata-700038.', NULL, 'Non-Government Organisation', 1, 'Female', 25, 0, 'WB/JJ/KOL/01/02/0116', '2017-06-22', '2016-06-27', 5, NULL, NULL, NULL),
('CCI_106', 'Kolkata', 'Children Home For Boys Unit I Run By Future Hope', '1/8 Rowland Road', 700020, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/01/01/0088', '2029-06-23', '2028-06-28', 5, '', '', 0),
('CCI_107', 'Kolkata', 'Children Home For Boys Unit Ii Run By Future Hope', '200/2D Rashbehari Avenue', 700029, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/01/01/0115', '2005-12-23', '2005-11-28', 5, NULL, NULL, 0),
('CCI_108', 'Kolkata', 'Children Home For Boys Unit Iii Run By Future Hope', '6, Bompass Road', 700029, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/01/01/0120', '2006-10-22', '2006-09-27', 5, NULL, NULL, 0),
('CCI_109', 'Kolkata', 'Children Home For Girls Run By Future Hope', '32 A and B Old, Ballygunge 2nd Lane', 700019, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/KOL/01/02/0174', '2029-06-23', '2028-06-28', 5, '', '', 0),
('CCI_110', 'Kolkata', 'Free To Be Kids Children Home For Girls', '17/3 Srijoni, Joka, Thakurpukur, PS-Haridevpur, Kol-104', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0055', '2029-12-19', '2028-06-20', 6, NULL, NULL, NULL),
('CCI_111', 'Kolkata', 'Future Hope (Children Home For Little Girls)', '1/12, Rowland Road, Kolkata - 700020', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0132', '2029-12-17', '2028-06-18', 6, NULL, NULL, NULL),
('CCI_112', 'Kolkata', 'Gana Unyan Parshad Open Shelter For Boys', '28/1B/1, Bospukur Road, Kolkata- 700045', 700045, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/03/01/0180', '2021-06-18', '2020-06-23', 4, NULL, NULL, NULL),
('CCI_113', 'Kolkata', 'Gandhi Peace Foundation (Open Shelter For Girls)', 'West Chowbaga, Kolkata-', 700105, 'Non-Government Organisation', 1, 'Female', 25, 1, 'WB/JJ/KOL/03/02/0182', '2026-06-18', '2025-06-23', 4, NULL, NULL, NULL),
('CCI_114', 'Kolkata', 'Garden Reach Alif Nagar Development Organisation (Open Shelter)', 'G-352/1 Alif Nagar (Garden Reach), Kolkata-700024', 700024, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/03/01/0005', '2008-01-22', '2031-07-27', 5, NULL, NULL, NULL),
('CCI_115', 'Kolkata', 'Garden Reach Bangla Bustee (Open Shelter)', 'G-38, Bangla Basti, Garden Reach Road, Kolkata-700024', 700024, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/03/01/0020', '2021-06-23', '2020-06-28', 5, NULL, NULL, NULL),
('CCI_116', 'Kolkata', 'Garden Reach Slum Development (Open Shelter)', 'P-229 Tikia Para 1st Lane, Garfden Reach, Kolkata-700024', 700024, 'Non-Government Organisation', 1, 'Female', 25, 1, 'WB/JJ/KOL/03/02/0006', '2008-01-22', '2031-07-27', 5, NULL, NULL, NULL),
('CCI_117', 'Kolkata', 'Hamara Ghar Child In Need Institute (Cini)', '37, Pottery Road, Tangra, Kolkata', 700015, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/KOL/01/01/0086', '2004-01-23', '2031-03-28', 5, '', '', 0),
('CCI_118', 'Kolkata', 'Hope Kolkata Foundation (Crisis Interventation Center) Children Home For Girls', '60 A/4 Bosepukur road, Kolkata 700042', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/KOL/01/02/0110', '2029-06-18', '2028-06-23', 5, NULL, NULL, NULL),
('CCI_119', 'Kolkata', 'Hope Kolkata Foundation (Be Kind Children Home For Boys)', 'EF-55, 901, Rajdanga Main Road, Kolkata 700107', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/KOL/01/01/0111', '2029-06-18', '2028-06-23', 4, NULL, NULL, NULL),
('CCI_120', 'Kolkata', 'Hope Kolkata Foundation (Crisis Interventation Center) Children Home For Boys', '42, Russo Road, PS. Jadavpur, Kolkata 700033', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/KOL/01/01/0109', '2029-06-18', '2028-06-23', 5, NULL, NULL, NULL),
('CCI_121', 'Kolkata', 'Hope Kolkata Foundation (Punarjiban Home For Addicted Children) (Boys)', '16, Dr. Radha Gobina Nath Sarani, Kolkata 700033', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/KOL/01/01/0097', '2029-06-18', '2028-06-23', 5, NULL, NULL, NULL),
('CCI_122', 'Kolkata', 'Hope Kolkata Foundation Ashar Alo (Children Home For Girls) (Unit I)', '1/2/1B/1, Dharmatala Road, Kolkata - 700042', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, '2305-SW/O/JJA-45/16', '2004-01-16', '2031-03-21', 4, NULL, NULL, NULL),
('CCI_123', 'Kolkata', 'Hope Kolkata Foundation(Ashirbad Home)(Boys)', '39, Panditiya Place, Kolkata- 700029', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, '2389-SW/O/JJA-45/16', '2004-01-16', '2031-03-21', 4, NULL, NULL, NULL),
('CCI_124', 'Kolkata', 'Hope Kolkata Foundation(Kasba Girls Home) (Unit Ii) (Girls)', '1/2/1B/1, Dharmatala Road, Kolkata - 700042', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, '2316-SW/O/JJA-52/16', '2004-01-16', '2031-03-21', 4, NULL, NULL, NULL),
('CCI_125', 'Kolkata', 'Humanity Association (Open Shelter For Boys)', '226, B.B. Ganguly Street, Kolkata -12', 700012, 'Non-Government Organisation', 1, 'Male', 25, 1, '', NULL, NULL, 2, NULL, NULL, NULL),
('CCI_126', 'Kolkata', 'Indian Society For Rehabilitations Of Children', '9B, lake View Road', 700029, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/KOL/02/03/0047', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_127', 'Kolkata', 'Indian Society For Rehabilitations Of Children', '9B, lake View Road', 700029, 'Non-Government Organisation', 2, 'Combined', 10, 1, '', NULL, NULL, 2, '', '', 0),
('CCI_128', 'Kolkata', 'Institute Of Psychological & Educational Research (Iper)(Open Shelter)', 'P 39/1 , Prince Anwar Shah Road, Kolkata - 700045', 700045, 'Non-Government Organisation', 1, 'Female', 25, 1, 'WB/JJ/KOL/03/02/0061', '2028-06-23', '2027-06-28', 5, NULL, NULL, NULL),
('CCI_129', 'Kolkata', 'Jatiyo Kristiyo Prochar Samity (Children Home For Girls)(Mahima Umang)', '88/14, Bhattacharjee Para, Kolkata - 700063', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/KOL/01/02/0103', '2004-01-21', '2031-03-26', 5, NULL, NULL, NULL),
('CCI_130', 'Kolkata', 'Jatiyo Kristiyo Prochar Samity (Children Home For Girls)(Mahima Umeed )', '18/4, M. G. Road, Balaka, Joka - II, Kolkata 700104', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/KOL/01/02/0108', '2004-01-21', '2031-03-26', 5, NULL, NULL, NULL),
('CCI_131', 'Kolkata', 'Keertika Protection Home Children Home For Girls', '91 A/69, BL Saha Road, Kolkata - 700053', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'Wb/JJ/KOL/01/02/0044', '2029-06-18', '2028-06-23', 5, NULL, NULL, NULL),
('CCI_132', 'Kolkata', 'Liberal Association For Movement Of People (Lamp) (Open Shelter)', '66,Surya Sen Street, Kol.- 09', 700009, 'Non-Government Organisation', 1, 'Female', 25, 1, 'WB/JJ/KOL/03/01/0098', '2021-06-23', '2020-06-28', 5, NULL, NULL, NULL),
('CCI_133', 'Kolkata', 'Lutheran World Service India Trust', '33/7 Murari Pukur Road, Kolkata 10', 700010, 'Non-Government Organisation', 1, 'Female', 25, 1, 'WB/JJ/KOL/03/02/0158', '2027-06-23', '2026-06-28', 5, NULL, NULL, NULL),
('CCI_134', 'Kolkata', 'Missionaries Of Charity (Daya Dan Children Home For Boys)', '58/1, Nimtala Ghat Street, Kolkata - 700006.', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/KOL/01/01/0038', '2029-06-18', '2028-06-23', 5, NULL, NULL, NULL),
('CCI_135', 'Kolkata', 'Missionaries Of Charity (Daya Dan Children Home For Girls)', '58/1, Nimtala Ghat Street, Kolkata - 700006.', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/KOL/01/02/0042', '2029-06-18', '2028-06-23', 6, NULL, NULL, NULL),
('CCI_136', 'Kolkata', 'National Council For Women In India Child And Welfare Section (Ncwi) (Open Shelter)', 'Bosumati Bhavan, 166, BB Ganguly Street, Kolkata- 700012', 700012, 'Non-Government Organisation', 1, 'Female', 25, 1, 'WB/JJ/KOL/03/02/0074', '2026-06-23', '2025-06-28', 5, NULL, NULL, NULL),
('CCI_137', 'Kolkata', 'Nirmala Sishu Bhawan (Children Home For Cwsn Girls)', '78, AJC Bose Road, Kolkata - 700014', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/KOL/01/02/0083', '2029-12-18', '2028-06-23', 5, NULL, NULL, NULL),
('CCI_138', 'Kolkata', 'Pouline Home For Girl Run By Emanuel Ministries', '56A Prince Gulam Hussain Shah Road. Jadavpur. Kolkata-700032', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/KOL/01/02/0124', '2013-06-22', '2006-12-27', 5, NULL, NULL, NULL),
('CCI_139', 'Kolkata', 'Prerona Run By Paschim Banga Krira -O- Janakalyan Parishad (Children Home For Girls)', '29 Biren Roy Road, Kolkata 700008 ', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/KOL/01/02/0131', '2004-01-21', '2031-03-26', 5, NULL, NULL, NULL),
('CCI_140', 'Kolkata', 'Shafkat Alam Centre Tiljala Shed (Open Shelter)', '52 Tiljala Road, Kolkata- 700046', 700046, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/03/01/0065', '2021-06-18', '2020-06-23', 4, NULL, NULL, NULL),
('CCI_141', 'Kolkata', 'Society For Indian Childrens Welfare', '20 & 22 Col. Biswas Road, Beckbagan', 700019, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/KOL/02/03/0041', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_142', 'Kolkata', 'Society For Indian Childrens Welfare', '20 & 22 Col. Biswas Road, Beckbagan', 700019, 'Non-Government Organisation', 2, 'Combined', 10, 1, 'WB/JJ/KOL/02/03/0041/1', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_143', 'Kolkata', 'Society For Indian Childrens Welfare', '20 & 22 Col. Biswas Road, Beckbagan', 700019, 'Non-Government Organisation', 3, 'Combined', 10, 1, 'WB/JJ/KOL/02/03/0041/3', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_144', 'Kolkata', 'The Indian Society For Sponsorship And Adoption', '1, Palace Court, 1, Kyd Street, Kolkata- 700016  Home: P-41, Sector -A Metropolitan Co- operative Society', 700105, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/KOL/02/03/0071/1', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_145', 'Kolkata', 'The Indian Society For Sponsorship And Adoption', '1, Palace Court, 1, Kyd Street, Kolkata- 700016  Home: P-41, Sector -A Metropolitan Co- operative Society', 700105, 'Non-Government Organisation', 2, 'Combined', 10, 1, 'WB/JJ/KOL/02/03/0071/2', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_146', 'Kolkata', 'The Indian Society For Sponsorship And Adoption', '1, Palace Court, 1, Kyd Street, Kolkata- 700016  Home: P-41, Sector -A Metropolitan Co- operative Society', 700105, 'Non-Government Organisation', 3, 'Combined', 10, 1, 'WB/JJ/KOL/02/03/0071/3', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_147', 'Kolkata', 'The Indian Society For Sponsorship And Adoption', '1, Palace Court, 1, Kyd Street, Kolkata- 700016  Home: P-41, Sector -A Metropolitan Co- operative Society', 700105, 'Non-Government Organisation', 4, 'Combined', 10, 1, 'WB/JJ/KOL/02/03/0071/4', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_148', 'Kolkata', 'Trinita Society For Social & Health Research (Open Shelter)', '30 B Radhamadhab Dutta Garden Lane, Kolkata-10', 700010, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/03/01/0155', '2021-06-23', '2020-06-28', 5, NULL, NULL, NULL),
('CCI_149', 'Kolkata', 'Trinita Society For Social & Health Research (Open Shelter)', '32/3, Tapsia Road, (South), Kolkata- 700046 (forth Floor)', 700046, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/03/01/0155', '2021-06-23', '2020-06-28', 5, NULL, NULL, NULL),
('CCI_150', 'Kolkata', 'United Bustee Development Association (Ubda) (Open Shelter)', '22/E, Gorachand Road, Kolkata - 700014', 700014, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/03/01/0067', '2021-06-18', '2020-06-23', 4, NULL, NULL, NULL),
('CCI_151', 'Kolkata', 'West Bengal Council For Child Welfare (Wbccw) (Open Shelter)', '42, Ramesh Mitra Road, Kolkata-700025', 700025, 'Non-Government Organisation', 1, 'Female', 25, 1, 'WB/JJ/KOL/03/01/0065', '2021-06-18', '2020-06-23', 7, NULL, NULL, NULL),
('CCI_152', 'Maldah', 'Children Home For Girls, Malda (Shaishali Sishu Kanya Abas)', 'SARBOMANGALA ROAD, PO+DIST- MALDA, WB', NULL, 'Government', 1, 'Female', 50, 1, 'JJ/Reg./Gov./017/1', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_153', 'Maldah', 'Children Home For Girls, Malda (Shaishali Sishu Kanya Abas)', 'SARBOMANGALA ROAD, PO+DIST-MALDA, WB', NULL, 'Government', 2, 'Female', 50, 1, 'JJ/Reg./Gov./017/2', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_154', 'Maldah', 'Sunitee Sishu Griha Run By Haiderpur Shelter Of Malda', 'Maheshmati (West) Behind Bikram Club', 732101, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/MAL/02/03/0027', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_155', 'Murshidabad', 'Ananda Ashram Home (M)', 'K.N.ROAD, PO- BERHAMPORE, DIST- MURSHIDABAD, WB', NULL, 'Government', 1, 'Male', 50, 1, 'JJ/Reg./Gov./ 013/1', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_156', 'Murshidabad', 'Ananda Ashram Home (M)', 'K.N.ROAD, PO- BERHAMPORE, DIST- MURSHIDABAD', NULL, 'Government', 2, 'Male', 50, 1, 'JJ/Reg./Gov./013/2', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_157', 'Murshidabad', 'Beldanga Bhagirathi Seva Sadan', 'Maheshmati (West) Behind Bikram Club', 732101, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/MUR/02/03/0025', '2025-08-24', '2024-08-29', 5, '', '', 0),
('CCI_158', 'Murshidabad', 'Domkal Vikas Kendra', 'Vill-+PO-Domkal, PS-Domkal', 742302, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/MUR/02/03/0033', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_159', 'Murshidabad', 'Haripur Dr. Ambedkar Janaseba Mission', 'Vill & PO Nagar, PS Khargram, Murshidabad', 742159, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/MUR/01/02/0106', '2004-01-21', '2031-03-26', 5, '', '', 0),
('CCI_160', 'Murshidabad', 'Haripur Dr. Ambedkar Janasevba Mission. Home For Boys', 'Vill+Po- Nagara. P.s -Khargram. Murshidabad, PIN742122', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, '', NULL, NULL, 2, NULL, NULL, NULL),
('CCI_161', 'Murshidabad', 'Kazi Nazrul Islam Childrens Home (Destitute Home)', 'KADAI(M). KADAI, PO- BERHAMPORE, DIST- MURSHIDABAD', NULL, 'Government', 2, 'Male', 50, 1, 'JJ/Reg.Gov./016/2', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_162', 'Murshidabad', 'Kazi Nazrul Islam Childrens Home(Destitute Home)', 'KADAI (M), KADAI, PO- BERHAMPORE, DIST- MURSHIDABAD, WB', NULL, 'Government', 1, 'Male', 50, 1, 'JJ/Reg./Gov./016/1', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_163', 'Murshidabad', 'Shilayan Home For Girls', 'BABULBONA ROAD, BISHNUPUR, PO- BERHAMPORE, PIN-742101, DIST- MURSHIDABAD', NULL, 'Government', 1, 'Female', 50, 1, 'JJ/Reg./Gov./006/1', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_164', 'Murshidabad', 'Shilayan Home For Girls', 'BABULBONA ROAD, BISHNUPUR, PO- BERHAMPORE, PIN-742101, DIST- MURSHIDABAD', NULL, 'Government', 1, 'Combined', 10, 1, 'WB/JJ/MUR/05/03/0010', '2025-08-24', '2024-08-29', 5, '', '', 0),
('CCI_165', 'Murshidabad', 'Shilayan Home For Girls', 'BABULBONA ROAD, BISHNUPUR, PO- BERHAMPORE, DIST- MURSHIDABAD, PIN-742101', NULL, 'Government', 2, 'Female', 50, 1, 'JJ/Reg./Gov./006/2', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_166', 'Murshidabad', 'Shilayan Home For Girls', 'BABULBONA ROAD, BISHNUPUR, PO- BERHAMPORE, DIST- MURSHIDABAD, PIN-742101', NULL, 'Government', 3, 'Female', 50, 1, 'JJ/Reg./Gov./006/3', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_167', 'Murshidabad', 'Shilayan Home For Girls', 'BABULBONA ROAD, BISHNUPUR, PO- BERHAMPORE, DIST- MURSHIDABAD, PIN-742101', NULL, 'Government', 4, 'Female', 50, 1, 'JJ/Reg./Gov./006/4', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_168', 'Murshidabad', 'Shilayan Home For Girls', 'BABULBONA ROAD, BISHNUPUR, PO- BERHAMPORE, DIST- MURSHIDABAD', NULL, 'Government', 5, 'Female', 50, 1, 'JJ/Reg./Gov./006/5', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_169', 'Murshidabad', 'Shilayan Home For Girls', 'BABULBONA ROAD, BISHNUPUR, PO- BERHAMPORE, DIST- MURSHIDABAD', NULL, 'Government', 6, 'Female', 50, 1, 'JJ/Reg./Gov./006/6', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_170', 'Nadia', 'Children Home For Girls, Nadia', 'NAGENDRANAGAR, 3RD LANE, PO- KRISHNANAGAR, DIST- NADIA, WB', NULL, 'Government', 1, 'Female', 50, 1, 'JJ/Reg./Gov./018/1', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_171', 'Nadia', 'Karimpur Social Welfare Society', 'Pattabuka More, PO Natna Pattabuka, PS Karimpur, Nadia', 741122, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/NAD/01/01/0089', '2025-07-20', '2024-07-25', 5, '', '', 0),
('CCI_172', 'Nadia', 'Karimpur Social Welfare Society', 'Pattabuka More, PO Natna Pattabuka, PS Karimpur, Nadia', 741122, 'Non-Government Organisation', 2, 'Male', 50, 1, 'PROV/WB/JJ/0260', '2025-01-20', '2024-07-20', 4, '', '', 0),
('CCI_173', 'Nadia', 'Maa Sarada Sishu Tirtha (Children Home For Girls)', 'Vill. Harishpur, PO. Krishnagar, Dist. Nadia, Pin. 741101', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0122', '2029-12-17', '2028-06-18', 6, NULL, NULL, NULL),
('CCI_174', 'Nadia', 'Madrashatul Bannat Aiyshatussidqara (25 Girls)', 'village: Jhitkipota, P.S-Kotwali. Dist: Nadia, W.B, PIN-741102', NULL, 'Non-Government Organisation', 1, 'Female', 25, 0, '', NULL, NULL, 6, NULL, NULL, NULL),
('CCI_175', 'Nadia', 'Nakashipara Nirmal Hriday Samity', 'Vill Galaidaripara, PO Badbillwagram, PS Nakashipara, Nadia', 741126, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/NAD/01/01/0078', '2006-01-18', '2031-05-23', 0, '', '', 0),
('CCI_176', 'Nadia', 'Nirmalnagar Prantik Janabikash Kendra(50 Bos)[Swami Pranabananada Seva Nikatan]', 'Ukilnara, PO- Pritinagar, PS- Ranaghat, Dist- Nadia, PIN-741247', NULL, 'Non-Government Organisation', 1, 'Male', 50, 0, 'WB/JJ/NAD/01/01/0099', '2018-02-22', '2017-02-27', 5, NULL, NULL, NULL),
('CCI_177', 'Nadia', 'Ranaghat Lions Trust', 'Biswaspara, PO-Ranaghat', 741201, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/NAD/02/03/0091', '2004-01-21', '2031-03-26', 5, '', '', 0),
('CCI_178', 'North 24 Parganas', 'Adyapeeth Balakashram (Children Home For Boys)', '50 ‚Äì D.D. Mondal Ghat road, P.O. dashineswar, P.S.- Belghoria Pin Code -700076', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, '3137-SW/O/JJA-63/16', '2004-01-16', '2031-03-21', 6, NULL, NULL, NULL),
('CCI_179', 'North 24 Parganas', 'Aradhana Social Development Organisation (Open Shelter For Boys)', 'Sailen Moullick Sarani, PO-Hridaypur, North 24 Parganas, Pin-700127', 700127, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/24 PGS (N)/03/01/0012', '2001-01-23', '2031-12-27', 5, NULL, NULL, NULL),
('CCI_180', 'North 24 Parganas', 'Asian Sahojogi Sanstha India', 'Kestopur, Chandberia, PS. New Town, Pin. 700102', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/24Pgs(N)01/01/0009', '2009-01-17', '2031-08-22', 4, NULL, NULL, NULL),
('CCI_181', 'North 24 Parganas', 'Barrackpore Avenue Women\'S Cultural & Social Welfare Society (Bachpan Boys Home 1)', '93, Charnok Road, Barrackpore Cantonment, Unique Lodge, Barrackpore, Kolkata-700120', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/24 PGS (N)/ 01/01/0102', '2029-06-18', '2028-06-23', 5, NULL, NULL, NULL),
('CCI_182', 'North 24 Parganas', 'Barrackpore Avenue Women\'S Cultural & Social Welfare Society (Boys Home)', '10 Sukanta Sarani, Nona Chandanpukur, Barrackpore, PIN700122', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/24PGS(N)/01/01/0117', '2029-06-18', '2028-06-23', 0, NULL, NULL, NULL),
('CCI_183', 'North 24 Parganas', 'Barrackpore Avenue Women\'S Cultural & Social Welfare Society (Girls Home)', '640/D, B. T. Road, Bash Bagan, Barrackpore, Pin-700120', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/24 PGS (N)/01/02/0094', '2029-06-18', '2028-06-23', 5, NULL, NULL, NULL),
('CCI_184', 'North 24 Parganas', 'Bengal Mass Education Society (Open Shelter For Boys)', 'E/15/D ADRASHA NAGAR BELGHORIA, P.O-NIMTA, KOL-49', 700049, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/03/01/0150', '2031-05-23', '2030-05-28', 5, NULL, NULL, NULL),
('CCI_185', 'North 24 Parganas', 'Bhoruka Public Welfare Trust - Snehaneer Home', '63, Rafi Ahmed Kidwai Road, Kolkata', 700157, 'Non-Government Organisation', 1, 'Female', 19, 0, 'WB/JJ/24PGS(N)/01/02/0164', '2029-06-18', '2028-06-23', 0, '', '', 0),
('CCI_186', 'North 24 Parganas', 'Bikash Bharati Welfare Society Open Shelter', '23/1, Deshbondhu Road, Kolkata- 700035', 700035, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/KOL/03/01/0067', '2021-06-18', '2020-06-23', 4, NULL, NULL, NULL),
('CCI_187', 'North 24 Parganas', 'Bodhana Home', 'Chakpachuria, PO Chakpachuria, PS Technocity, North 24 Parganas', 700160, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/24 PGS (N)/01/01/0162/1', '2010-01-21', '2030-09-26', 5, '', '', 0),
('CCI_188', 'North 24 Parganas', 'Bodhana Home', 'Chakpachuria, PO Chakpachuria, PS Technocity, North 24 Parganas', 700160, 'Non-Government Organisation', 2, 'Male', 50, 1, 'WB/JJ/24 PGS (N)/01/01/0162/2', '2010-01-21', '2030-09-26', 5, '', '', 0),
('CCI_189', 'North 24 Parganas', 'Bodhi Peet Home', 'AQ-16, Sector-V, Saltlake', 700091, 'Non-Government Organisation', 1, 'Female', 25, 1, 'WB/JJ/KOL/01/02/0132', '2029-07-22', '2028-07-27', 5, '', '', 0),
('CCI_190', 'North 24 Parganas', 'Child Care Home Run By Wif', 'Sukantanagar, Saltlake,Sector-IV', 700098, 'Non-Government Organisation', 1, 'Female', 50, 1, 'JJ/REG/NGO/005', '2011-02-10', '2011-01-15', 4, '', '', 0),
('CCI_191', 'North 24 Parganas', 'Deepika Social Welfare Society (Girls)', '16/7, Srikrishnapur Road, Taki Road, PO. Badu, PS. Barasat, Kolkata-700124', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0096', '2029-12-17', '2026-06-18', 2, NULL, NULL, NULL),
('CCI_192', 'North 24 Parganas', 'Dhrubashram Home', '30, SRI GOPAL MULLICK ROAD, KOLKATA-700057', NULL, 'Government', 1, 'Male', 50, 1, 'JJ/Reg./Gov./014/1', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_193', 'North 24 Parganas', 'Dhrubashram Home', '30, SRI GOPAL MULLICK ROAD, KOLKATA-700057', NULL, 'Government', 2, 'Male', 50, 1, 'JJ/Reg./Gov./014/2', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_194', 'North 24 Parganas', 'Durgapur Handicapped Happy Home', '7th Street Harshabardhan Road, A- Zone, Durgapur-4, Dist- Paschim Bardhaman, PIN- 713204', NULL, 'Non-Government Organisation', 1, 'Combined', NULL, 0, '', NULL, NULL, 6, NULL, NULL, NULL),
('CCI_195', 'North 24 Parganas', 'Embassy Of Hope', 'Dasadrone, Mandir Bagan, PO- Rajarhat, Gopalpur, PS- Baguihati, Dist- North 24 Parganas', NULL, 'Non-Government Organisation', 1, 'Combined', NULL, 0, '', NULL, NULL, 6, NULL, NULL, NULL),
('CCI_196', 'North 24 Parganas', 'Happy Home, Choto Jirakpur(Girls)', 'CK-6, Salt Lake, Sec-II, Kolkata ‚Äì 91.', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/24PGS(N)/01/02/0085', '2029-06-18', '2028-06-23', 0, NULL, NULL, NULL),
('CCI_197', 'North 24 Parganas', 'Hasi Sengupta Orphanage Home For 25 Boys', 'Vill+ P.O- Shikra. Kulingram Pin-743428', NULL, 'Non-Government Organisation', 1, 'Male', 25, 0, '', NULL, NULL, 4, NULL, NULL, NULL),
('CCI_198', 'North 24 Parganas', 'Ichapur Brahmaputra Silpa Niketan Open Shelter For 25 Boys', 'Bramhanpara, Ichapur, PO- Nawabganj, PIN- 743144', NULL, 'Non-Government Organisation', 1, 'Male', 25, 0, '', NULL, NULL, 0, NULL, NULL, NULL),
('CCI_199', 'North 24 Parganas', 'Janasiksha Prochar Kendra (Open Shelter)', 'CK-6, Salt Lake, Sec-II, Kolkata ‚Äì 91.', 700091, 'Non-Government Organisation', 1, 'Female', 25, 1, 'WB/JJ/KOL/03/02/0104', '2022-06-18', '2021-06-23', 4, NULL, NULL, NULL),
('CCI_200', 'North 24 Parganas', 'Kaleb Happy Home', 'Joypul, Baishnab para, Duttapukur, PIN- 743234', NULL, 'Non-Government Organisation', 1, 'Combined', NULL, 0, '', NULL, NULL, 4, NULL, NULL, NULL),
('CCI_201', 'North 24 Parganas', 'Kamakhya Balak Ashram For Boys', 'Debipore, Kathore Road, PO. Badu, PS. Barasat, Pin. 700128', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'PROV/WB/JJ/0085', '2029-12-17', '2028-06-18', 2, NULL, NULL, NULL),
('CCI_202', 'North 24 Parganas', 'Kamakhya Balak Ashram For Girls', 'Debipore, Kathore Road, PO. Badu, PS. Barasat, Pin. 700128', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0121', '2029-12-17', '2028-06-18', 4, NULL, NULL, NULL),
('CCI_203', 'North 24 Parganas', 'Khelaghar (Girls)', 'Vill.+PO. Badu Dhalipara Road, PS. Barasat, Kolkata-700124', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/24 PGS N/01/02/0084', '2029-06-18', '2026-06-23', 5, NULL, NULL, NULL),
('CCI_204', 'North 24 Parganas', 'Kishalaya Home', 'PO-BARASAT, DIST-NORTH 24 PARGANAS, WB', NULL, 'Government', 1, 'Male', 50, 1, 'JJ/Reg./Gov./008/1', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_205', 'North 24 Parganas', 'Kishalaya Home', 'PO- BARASAT, DIST- NORTH 24 PARGANAS, WB', NULL, 'Government', 2, 'Male', 50, 1, 'JJ/Reg./Gov./008/2', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0);
INSERT INTO `cci` (`id`, `district`, `cci_name`, `address`, `pin`, `run_by`, `cci_unit_no`, `cci_unit_gender`, `cci_unit_strength`, `is_pab_approved`, `reg_no`, `reg_date`, `reg_valid_upto`, `reg_status`, `contact_name`, `contact_desg`, `contact_phno`) VALUES
('CCI_206', 'North 24 Parganas', 'Mukti Rehabilitatin Centre', 'Ramkrishna Pally,Dashadrone,  P.O-Rajarhat Gopalpur', 700136, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/24 PGS (N)/02/03/0024', '2029-06-23', '2028-06-28', 5, '', '', 0),
('CCI_207', 'North 24 Parganas', 'Mukti Rehabilitatin Centre (Open Shelter)', 'Ramkrishnapally, Dahadrone, PO-Rajarhat, North 24 Pgs, Pin-700136', 700136, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/24 PGS(N)/03/01/0002', '2007-01-22', '2030-06-27', 5, NULL, NULL, NULL),
('CCI_208', 'North 24 Parganas', 'Naihati New Life Society (Open Shelter For Girls)', '172, Talpukur Road, Deulpara, PO. Naihati, North 24 Parganas-743165', 743165, 'Non-Government Organisation', 1, 'Female', 25, 1, 'WB/JJ/24 PGS(N)/03/02/0055', '2022-06-23', '2021-06-28', 5, NULL, NULL, NULL),
('CCI_209', 'North 24 Parganas', 'Nijoloy Women S Interlink Foundation', 'Sukanta Sarani, Doltala More, Methopara, Ganganagar, Madhyamgram', 700132, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/24 PGS (N)/01/02/0168', '2012-08-19', '2012-07-24', 0, '', '', 0),
('CCI_210', 'North 24 Parganas', 'Ramkrishna Vivekananda Mission', '20, Riverside Road, Barrackpore', 700120, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/24 PGS (N)/01/01/0048', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_211', 'North 24 Parganas', 'Ramkrishna Vivekananda Mission (Open Shelter For Girls)', 'Agarpara Branch, 3, B.T. Road, Kolkata ‚Äì 58', 700058, 'Non-Government Organisation', 1, 'Female', 25, 1, 'WB/JJ/24 PGS(N)/03/02/0184', '2027-06-18', '2026-06-23', 4, NULL, NULL, NULL),
('CCI_212', 'North 24 Parganas', 'Rupayan Children Home For Boys', 'Block KE, Bulding No. AG-663/10-06, Kaikhali Biman Nagar, PO+PS. Airport, Kolkata - 700052', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/24 PGS N/01/01/0064', '2029-06-18', '2028-06-23', 5, NULL, NULL, NULL),
('CCI_213', 'North 24 Parganas', 'Snehaneer Home For Girls Run By Bhoruka Public Welfare Trust', 'Jhowtala Road, Hatiara, Rajarhat, Kolkata - 700157', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0050', '2029-12-17', '2026-06-18', 4, NULL, NULL, NULL),
('CCI_214', 'North 24 Parganas', 'Society For Equitable Voluntary Action(Seva)', 'Vill+PO. Atghara, PS. Baduria, North 24 Parganas, Pin-731204', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0090', '2029-12-17', '2028-06-18', 2, NULL, NULL, NULL),
('CCI_215', 'North 24 Parganas', 'Sos Children Village', 'Block -BK, Sector-II, Bidhannaga, Kolkata-700091', NULL, 'Non-Government Organisation', 1, 'Combined', NULL, 0, '3386-SW/O/JJA-74/16', '2004-01-16', '2031-03-21', 4, NULL, NULL, NULL),
('CCI_216', 'North 24 Parganas', 'Sree Gouranga Goudiya Mission Sevashram', 'Muragacha, PO. Jugberia, North 24 Parganas-700111', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/24PGS (N)/01/02/0059', '2029-06-18', '2028-06-23', 5, NULL, NULL, NULL),
('CCI_217', 'North 24 Parganas', 'Sukanya Home', 'AQ-15, SECTOR-V, SALT LAKE CITY, KOLKATA-700091, WB', NULL, 'Government', 1, 'Female', 50, 1, 'JJ/Reg./Gov./007/1', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_218', 'North 24 Parganas', 'Sukanya Home', 'AQ-15, SECTOR-V, SALT LAKE CITY, KOLKATA-700091, WB', NULL, 'Government', 2, 'Female', 50, 1, 'JJ/Reg./Gov./007/2', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_219', 'North 24 Parganas', 'Udayan (Boys)', 'Vill+PO. Sewali, Telinipara, Barrackpore, Pin. 700121', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'PROV/WB/JJ/0137', '2029-12-17', '2028-06-18', 2, NULL, NULL, NULL),
('CCI_220', 'North 24 Parganas', 'Udayan (Girls)', 'Vill+PO. Sewali, Telinipara, Barrackpore, Pin. 700121', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'PROV/WB/JJ/0127', '2029-12-17', '2026-06-18', 2, NULL, NULL, NULL),
('CCI_221', 'Paschim Bardhaman', 'Durgapur Indira Pragati Society', 'Gopal Math, Kamala Kutir, PO- Oyaria, Durgapur', 713217, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/BAR(W)/02/03/0034', '2014-07-24', '2013-07-29', 5, '', '', 0),
('CCI_222', 'Paschim Medinipur', 'Benai Bijoy Krishna Rural Developmentn Society', 'Vill Uttarbar, PO Kheput Block Daspur II, Dist Paschim Medinipur', 721148, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/MID(W)/01/01/0161', '2014-06-23', '2013-06-28', 5, '', '', 0),
('CCI_223', 'Paschim Medinipur', 'Benai Bijoy Krishna Rural Developmentn Society', 'Vill Uttarbar, PO Kheput Block Daspur II, Dist Paschim Medinipur', 721148, 'Non-Government Organisation', 2, 'Male', 50, 1, 'WB/JJ/MID(W)/01/01/0046', '2004-01-21', '2031-03-26', 5, '', '', 0),
('CCI_224', 'Paschim Medinipur', 'Chakkumar Association For Social Service', 'Vill Chakkumar, PO Debra Bazar, Debra, Dist Paschim Medinipur', 721126, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/MID(W)/01/01/0152', '2006-02-23', '2006-01-28', 5, '', '', 0),
('CCI_225', 'Paschim Medinipur', 'Chakkumar Association For Social Service', 'Vill Chakkumar, PO Debra Bazar, Debra, Dist Paschim Medinipur', 721126, 'Non-Government Organisation', 2, 'Male', 50, 1, 'WB/JJ/MID(W)/01/01/0153', '2006-08-23', '2006-07-28', 5, '', '', 0),
('CCI_226', 'Paschim Medinipur', 'Dantan Manav Kalyan Kendra', 'Krishnapur, PO Dantan, Dist Paschim Medinipur', 721426, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/MID(W)/01/02/0036', '2026-06-24', '2025-06-29', 5, '', '', 0),
('CCI_227', 'Paschim Medinipur', 'Missionaries Of Charity', 'Vill- Kearchand, P.O- Ronbonia, P.S- Keshariya, Paschim Medinipur', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, '', NULL, NULL, 4, NULL, NULL, NULL),
('CCI_228', 'Paschim Medinipur', 'Motherchak Naboday Kishalay Sangha', 'Vill Gokulpur, PO Bargokulpur, PS Kharagpur Local, Dist Paschim Medinipur', 721301, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/MID(W)/01/02/0149', '2029-05-23', '2028-05-28', 5, '', '', 0),
('CCI_229', 'Paschim Medinipur', 'Motherchak Naboday Kishalay Sangha', 'Vill Gokulpur, PO Bargokulpur, PS Kharagpur Local, Dist Paschim Medinipur', 721301, 'Non-Government Organisation', 2, 'Female', 50, 1, 'WB/JJ/MID(W)/01/02/0125', '2004-01-21', '2031-03-26', 5, '', '', 0),
('CCI_230', 'Paschim Medinipur', 'Vidyasagar Balika Bhavan', 'PO- GOPE, DIST- PASCHIM MEDINIPUR, WB', NULL, 'Government', 1, 'Combined', 10, 1, 'WB/JJ/MID(W)/05/03/001', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_231', 'Paschim Medinipur', 'Vidyasagar Balika Bhavan', 'PO- GOPE, DIST- PASCHIM MEDINIPUR, WB', NULL, 'Government', 1, 'Female', 50, 1, 'JJ/Reg./Gov./003/1', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_232', 'Paschim Medinipur', 'Vidyasagar Balika Bhavan', 'PO- GOPE, DIST- PASCHIM MEDINIPUR, WB', NULL, 'Government', 2, 'Female', 50, 1, 'JJ/Reg./Gov./003/2', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_233', 'Paschim Medinipur', 'Vidyasagar Balika Bhavan', 'PO-GOPE, DIST- PASCHIM MEDINIPUR, WB', NULL, 'Government', 3, 'Female', 50, 1, 'JJ/Reg./Gov./003/3', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_234', 'Paschim Medinipur', 'Vidyasagar Balika Bhavan', 'PO- GOPE, DIST- PASCHIM MEDINIPUR, WB', NULL, 'Government', 4, 'Female', 50, 1, 'JJ/Reg./Gov./003/4', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_235', 'Paschim Medinipur', 'Vidyasagar Balika Bhavan', 'PO-GOPE, DIST- PASCHIM MEDINIPUR, WB', NULL, 'Government', 5, 'Female', 50, 1, 'JJ/Reg./Gov./003/5', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_236', 'Paschim Medinipur', 'Vidyasagar Balika Bhavan', 'PO- GOPE, DIST- PASCHIM MEDINIPUR', NULL, 'Government', 6, 'Female', 50, 1, 'JJ/Reg./Gov./003/6', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_237', 'Paschim Medinipur', 'Vidyasagar Balika Bhavan', 'PO- GOPE, DIST- PASCHIM MEDINIPUR, WB', NULL, 'Government', 7, 'Female', 50, 1, 'JJ/Reg./Gov./003/7', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_238', 'Paschim Medinipur', 'Vidyasagar Balika Bhavan', 'PO- GOPE, DIST- PASCHIM MEDINIPUR. WB', NULL, 'Government', 8, 'Female', 50, 1, 'JJ/Reg./Gov./003/8', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_239', 'Paschim Medinipur', 'Vidyasagar Balika Bhavan', 'PO- GOPE, DIST- PASCHIM MEDINIPUR, WB', NULL, 'Government', 9, 'Female', 50, 1, 'JJ/Reg./Gov./003/9', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_240', 'Purba Bardhaman', 'Asansol Burdwan Seva Kendra', 'Chetana Community Care Centre, Viii- Jhinguti, P.0- Phagupur', 713102, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/BAR(E)/02/03/0040', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_241', 'Purba Bardhaman', 'Asansol Burdwan Seva Kendra, Chetan, Community Care Centre', 'Vill Jhinguti, PO Phagupur, Dist Purba Bardhaman', 713102, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/BAR(E)/01/02/0123', '2026-06-23', '2025-06-28', 5, '', '', 0),
('CCI_242', 'Purba Bardhaman', 'Barendra Paramanda Seva Kendra (Children Home For Boys)', 'Vill. Barenda , P.O. ‚Äì Billeswar, P.S. ‚Äì Ketugram , sub Dividion ‚Äì Katwa, Dist ‚Äì Burdwan, Pin Code - 713150', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, '3611-SW/O/JJA-77/16', '2004-01-16', '2031-03-21', 6, NULL, NULL, NULL),
('CCI_243', 'Purba Bardhaman', 'Children Home For Girls', 'BAMCHANDAIPUR, JOTERAM, PS- SAKTIGARH, PURBA BARDHAMAN, PIN-713104', NULL, 'Government', 1, 'Combined', 10, 1, 'WB/JJ/BAR( E)/05/03/0008/1', '2004-01-22', '2001-04-27', 5, NULL, NULL, 0),
('CCI_244', 'Purba Bardhaman', 'Children Home For Girls', 'BAMCHANDAIPUR, JOTERAM, PS- SAKTIGARH, PURBA BARDHAMAN, PIN-713104', NULL, 'Government', 2, 'Combined', 10, 1, 'WB/JJ/BAR( E)/05/03/0008/2', '2004-01-22', '2001-04-27', 5, NULL, NULL, 0),
('CCI_245', 'Purba Bardhaman', 'Children Home For Girls, Purba Burdwan', 'B L HATI ROAD, WEST OF DHALDIGHI, RADHANAGAR, PO+DIST-PURBA BURDWAN, WB', NULL, 'Government', 1, 'Female', 50, 1, 'JJ/Reg./Gov./019/1', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_246', 'Purba Bardhaman', 'Children Home For Girls, Purba Burdwan', 'B L HATI ROAD, WEST OF DHALDIGHI, RADHANAGAR, PO+DIST-PURBA BURDWAN, WB', NULL, 'Government', 2, 'Female', 50, 1, 'JJ/Reg./Gov./019/2', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_247', 'Purba Bardhaman', 'Society For Mental Health Care Anandaniketan', 'Vill & PO Khajurdihi, PS Katwa, Dist Purba Bardhaman', 713150, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/BAR(E)/01/02/0030/1', '2004-01-22', '2003-01-27', 5, '', '', 0),
('CCI_248', 'Purba Bardhaman', 'Society For Mental Health Care Anandaniketan', 'Vill & PO Khajurdihi, PS Katwa, Dist Purba Bardhaman', 713150, 'Non-Government Organisation', 2, 'Female', 50, 1, 'WB/JJ/BAR(E)/01/02/0030/2', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_249', 'Purba Bardhaman', 'Society For Mental Health Care Anandaniketan', 'Vill & PO Khajurdihi, PS Katwa, Dist Purba Bardhaman', 713150, 'Non-Government Organisation', 3, 'Male', 50, 1, 'WB/JJ/BAR(E)/01/01/0029/1', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_250', 'Purba Bardhaman', 'Society For Mental Health Care Anandaniketan', 'Vill & PO Khajurdihi, PS Katwa, Dist Purba Bardhaman', 713150, 'Non-Government Organisation', 4, 'Male', 50, 1, 'WB/JJ/BAR(E)/01/01/0029/2', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_251', 'Purba Bardhaman', 'Speed (Open Shelter) \"Muktabihanga\"', 'Radhanagarpara, MD Kayem Lane, Purba Bardhaman, Pin-713101', 713101, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/BAR (E)/03/01/107', '2021-06-23', '2025-06-28', 5, NULL, NULL, NULL),
('CCI_252', 'Purba Medinipur', 'Antyodoy Anath Ashram - Snehachhaya Home', 'Vill+PO-Paushi, PS-BHupatinagar, Purba Medinipur, WB', 721444, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/MID(E)/01/02/2023', '2026-06-23', '2025-06-28', 5, '', '', 0),
('CCI_253', 'Purba Medinipur', 'Bodhodaya Home Run By Vivekananda Loksiksha Niketan', 'Vill Faridpur, PO Dakshin Dauki, PS Junput Coastal, Dist Purba Medinipur', 721450, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/MID(E)/01/01/0114', '2006-08-22', '2006-07-27', 5, '', '', 0),
('CCI_254', 'Purba Medinipur', 'Dakshin Gholepukuria Sonali Sangha O Pathagar', 'Vill & PO Gholepukuria, Block Nandigram II, PS Nandigram, Dist Purba Medinipur', 721650, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/MID(E)/01/02/0122', '2004-01-21', '2031-03-26', 5, '', '', 0),
('CCI_255', 'Purba Medinipur', 'Deulpota Seva Samity Home For 50 Boys', 'Vill+PO- Deulpota, PS- mahishadal, PIN-721670', NULL, 'Non-Government Organisation', 1, 'Male', 50, 0, '', NULL, NULL, 4, NULL, NULL, NULL),
('CCI_256', 'Purba Medinipur', 'Nimtouri Tamluk Unnayan Samity (Sishu Greha)', 'Vill. Chalk Srikrishnapur, Po-Kulberia, P.S-Tamluk', 721649, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/MID(E)/02/03/0072', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_257', 'Purba Medinipur', 'Ramnagar Vivekananda Seva Ashram', 'Vill- Dakshin Basulipat, PO+PS-Ramnagar, Dist- Purba Medinipur, PIN- 721441', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, '3558-SW/O/JJA-76/16', '2004-01-16', '2031-03-21', 0, NULL, NULL, NULL),
('CCI_258', 'Purba Medinipur', 'Snehanir Run By Nimtouri Tamluk Unnayan Samity', 'Vill Chaksrikrishnapur, PO Kulberia, PS Tamluk, Dist Purba Medinipur', 721649, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/MID(E)/01/02/0128', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_259', 'Purba Medinipur', 'Swamiji Observation Home Run By Amar Seva Sangha', 'Vill & PO Raine, PS Kolaghat, Dist Purba Medinipur', 721130, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/MID(E)/01/01/0035', '2004-01-22', '2003-01-27', 5, '', '', 0),
('CCI_260', 'Purba Medinipur', 'Tapoban Sishu Abas Run By Kajla Janakalyan Samity', 'Vill & PO Sarada, Via Deulbard, PS Contai, Dist Purba Medinipur', 721427, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/MID(E)/01/01/0007', '2009-01-22', '2031-08-27', 5, '', '', 0),
('CCI_261', 'Purba Medinipur', 'The Sister Nivedita Home For Girls Run By Naba Kishore Sangha', 'Vill & PO Bargodagodar, PS Nandakumar, Dist Purba Medinipur', 721652, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/MID(E)/01/02/0032', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_262', 'Purba Medinipur', 'Unmesh Unit I Run By Haldia Samaj Kalyan Parshad', 'Vill Basudevpur, PO Khanjanchak, PS Durgachak, Dist Purba Medinipur', 721602, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/MID(E)/01/01/0079', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_263', 'Purba Medinipur', 'Unmesh Unit Ii Run By Haldia Samaj Kalyan Parshad', 'Vill Basudevpur, PO Khanjanchak, PS Durgachak, Dist Purba Medinipur', 721602, 'Non-Government Organisation', 2, 'Male', 50, 1, 'WB/JJ/MID(E)/01/01/0080', '2015-03-21', '2014-03-26', 5, '', '', 0),
('CCI_264', 'Purba Medinipur', 'Uttaran Run By Cini Moyna Rural Health Development Centre', 'Vill & PO Paschim Naichanpur, PS Moyna, Dist Purba Medinipur', 721642, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/MID(E)/01/01/0076', '2006-09-22', '2006-08-27', 5, '', '', 0),
('CCI_265', 'Purba Medinipur', 'Vivekananda Loksiksha Niketan (Sneha Kutir)', 'Vill-Faridpur, Po-Dakshin Dauki, Ps-Junput Coastal', 721450, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/MID(E)/02/03/0016/1', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_266', 'Purba Medinipur', 'Vivekananda Loksiksha Niketan (Sneha Kutir)', 'Vill-Faridpur, Po-Dakshin Dauki, Ps-Junput Coastal', 721450, 'Non-Government Organisation', 2, 'Combined', 10, 1, 'WB/JJ/MID(E)/02/03/0016/2', '2004-01-22', '2031-03-27', 5, '', '', 0),
('CCI_267', 'Purba Medinipur', 'Vivekananda Loksiksha Niketan Muktaneer For Boys', 'Dharmadas Barh, Ward no 20, PO+PS- Contai, PIN- 721401', 721401, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/MID(E )/03/01/0136', '2026-06-23', '2025-06-28', 5, NULL, NULL, NULL),
('CCI_268', 'Purulia', 'Anandamath (F)', 'PO-SIMULIA, DIST-PURULIA, WB', NULL, 'Government', 1, 'Combined', 10, 1, 'WB/JJ/PUR/05/03/0002', '2006-06-19', '2006-05-24', 4, NULL, NULL, 0),
('CCI_269', 'Purulia', 'ANANDAMATH HOME (F)', 'PO- SIMILIA, DIST- PURULIA, WB', NULL, 'Government', 1, 'Female', 50, 1, 'JJ/Reg./Gov./004/1', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_270', 'Purulia', 'ANANDAMATH HOME (F)', 'PO- SIMILIA, DIST- PURULIA', NULL, 'Government', 2, 'Female', 50, 1, 'JJ/Reg./Gov./004/2', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_271', 'Purulia', 'Manipur Leprosy Rehabilitation Centre', 'Vill Manipur Colony, PO & PS Adra, Dist Purulia', 723121, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/PUR/01/01/0045', '2004-01-17', '2031-03-22', 0, '', '', 0),
('CCI_272', 'South 24 Parganas', 'Ambedkar Social Welfare Mission (Children Home For Boys)', 'Bidya Roy More, PO. Nimpith, PS. Jaynagar, Dist. South 24 Parganas, Pin-743338', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'PROV/WB/JJ/0082', '2029-12-17', '2028-06-18', 4, NULL, NULL, NULL),
('CCI_273', 'South 24 Parganas', 'Anataralok Unit Of Voice Of The World', 'Vill. Nandabhaga, PO. Kanganberia, PS. Bishnupur Dist. South 24 Parganas, Pin-743503', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'PROV/WB/JJ/0126', '2029-12-17', '2028-06-18', 4, NULL, NULL, NULL),
('CCI_274', 'South 24 Parganas', 'Asha Bhawan Centre', 'Vill Keoradanga, PO Betberia, PS Bishnupur, Dist South 24 Parganas', 743503, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/HOW01/02/0039', '2029-06-23', '2028-06-28', 5, '', '', 0),
('CCI_275', 'South 24 Parganas', 'Baruipur Sitakundu Sneh Kunja Cncp Boys', 'Fultala, Beliaghata, Piyali town, PIN-743387', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/24 PGS (S)/01/01/0112', '2017-06-22', '2016-06-27', 5, NULL, NULL, NULL),
('CCI_276', 'South 24 Parganas', 'Chandpiri Sree Ramkrishna Ashram', 'Vill+PO. Chandpiri, PS. Namkhana, Pin. 743357', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'PROV/WB/JJ/0067', '2029-12-17', '2028-06-18', 4, NULL, NULL, NULL),
('CCI_277', 'South 24 Parganas', 'Digambarpur Angikar', 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', 743349, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/24 PGS (S)/01/01/0130', '2025-07-22', '2024-07-27', 5, '', '', 0),
('CCI_278', 'South 24 Parganas', 'Digambarpur Angikar', 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', 743349, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/ 24 PGS (S)/02/03/0127', '2020-07-22', '2019-07-27', 5, '', '', 0),
('CCI_279', 'South 24 Parganas', 'Digambarpur Angikar', 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', 743349, 'Non-Government Organisation', 2, 'Male', 50, 1, 'WB/JJ/24 PGS (S)/01/01/0129', '2026-07-22', '2025-07-27', 5, '', '', 0),
('CCI_280', 'South 24 Parganas', 'Digambarpur Angikar', 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', 743349, 'Non-Government Organisation', 3, 'Female', 50, 1, 'WB/JJ/24 PGS (S)/01/02/0026', '2029-05-21', '2028-05-26', 5, '', '', 0),
('CCI_281', 'South 24 Parganas', 'Digambarpur Angikar', 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', 743349, 'Non-Government Organisation', 4, 'Female', 50, 1, 'WB/JJ/24 Pgs (S)/01/02/0057', '2029-06-23', '2028-06-28', 5, '', '', 0),
('CCI_282', 'South 24 Parganas', 'Digambarpur Angikar', 'Vill & PO Digambarpur, Via Kashinagar, Block Pathar Pratima, PS Dholahat, Dist South 24 Parganas', 743349, 'Non-Government Organisation', 5, 'Female', 50, 1, 'WB/JJ/24 PGS (S)/01/02/0156', '2030-06-23', '2029-06-28', 5, '', '', 0),
('CCI_283', 'South 24 Parganas', 'Mahima Premamnanda Run By Jatiyo Kristo Prochar Samity', 'Vill- Sajua Sardarpara, Bakhrahat, PIN-743377', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/24 PGS(S)/01/01/0138', '2009-02-22', '2009-01-27', 6, NULL, NULL, NULL),
('CCI_284', 'South 24 Parganas', 'Mahima Upasana Run By Jatiyo Kristo Prochar Samity', 'Vill- Sajua Sardarpara, Bakhrahat, PIN-743377', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/24 PGS(S)/01/02/0137', '2022-08-22', '2021-08-27', 5, NULL, NULL, NULL),
('CCI_285', 'South 24 Parganas', 'Nava Diganta Home, Indian Society For Sponsorship And Adoption', '70, Jugipara Road, Baishali Park, PO Rajpur, PS Sonarpur, Dist South 24 Parganas', 700149, 'Non-Government Organisation', 1, 'Female', 50, 1, 'WB/JJ/24 PGS (S)/01/02/0167', '2004-01-20', '2031-03-25', 5, '', '', 0),
('CCI_286', 'South 24 Parganas', 'New Age Society For All', 'Sitakundu Main Road, PO Sitakundu, PS Baruipur, Dist South 24 Parganas', 700144, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/24 PGS (S)/01/01/0081', '2023-03-21', '2022-03-26', 5, '', '', 0),
('CCI_287', 'South 24 Parganas', 'Noor Ali Memorial Society', 'Vill Sodpukur, PO Ramchandra Nagar, PS Dholahat, Block Kakdwip, Dist South 24 Parganas', 743339, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/24 PGS (S)/01/01/0140', '2026-06-19', '2025-06-24', 4, '', '0', 0),
('CCI_288', 'South 24 Parganas', 'Offer (Anandaghar -Cncp Boys)', 'Jangipara Road, South Gobindapur, PS. Sonarpur, Pin. 700145', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/24 PGS (S)/ 01/01/0087', '2029-06-18', '2028-06-23', 4, NULL, NULL, NULL),
('CCI_289', 'South 24 Parganas', 'Offer (Anandaghar -Cncp Girls)', 'Jugipara Road, South Gobindapur, PS. Sonarpur, Pin. 700145', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/24 PGS (S)/01/02/0095', '2029-06-18', '2028-06-23', 4, NULL, NULL, NULL),
('CCI_290', 'South 24 Parganas', 'Offer -Apanjan (Cwsn - Boys)', 'Jugipara Road, South Gobindapur, PS. Sonarpur, Pin. 700145', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'WB/JJ/24 PGS (S)/01/01/0100', '2029-06-18', '2028-06-23', 4, NULL, NULL, NULL),
('CCI_291', 'South 24 Parganas', 'Offer -Apanjan (Cwsn - Girls)', 'Jugipara Road, South Gobindapur, PS. Sonarpur, Pin. 700145', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/24 PGS (S)/01/02/0096', '2029-06-18', '2028-06-23', 6, NULL, NULL, NULL),
('CCI_292', 'South 24 Parganas', 'Sahara Health & Education Society (Open Shelter For Boys)', 'F4/ 42, Defence Park, Moynagarh, Kolkata-700141', 700141, 'Non-Government Organisation', 1, 'Male', 25, 1, 'WB/JJ/24 PGS(N)/03/02/0055', '2022-06-23', '2021-06-28', 7, NULL, NULL, NULL),
('CCI_293', 'South 24 Parganas', 'Sanlaap', 'Sneha, 52, Nalini Mitra Road, Vill. Elachi, PO. Narendrapur, PS. Sonarpur', 700103, 'Non-Government Organisation', 1, 'Female', 50, 1, 'JJ/Reg./NGO/007', '2030-03-01', '2029-03-06', 4, '', '', 0),
('CCI_294', 'South 24 Parganas', 'Soumyalok Biswaseva Niketan Cncp 50 Girls', 'Katya-yanitala Street, Chakroborty para, Dakshin Jagaddal Rajpur PIN-700151', NULL, 'Non-Government Organisation', 1, 'Female', 50, 0, '', NULL, NULL, 4, NULL, NULL, NULL),
('CCI_295', 'South 24 Parganas', 'Tiljala Shed Children Home For Boys', 'Asra Sadan, Moulimukundo, PS. Bhangar, Dist. South 24 Parganas, Pin-743502', NULL, 'Non-Government Organisation', 1, 'Male', NULL, 0, 'PROV/WB/JJ/0095', '2029-12-17', '2026-06-18', 6, NULL, NULL, NULL),
('CCI_296', 'South 24 Parganas', 'Udaan Run By Ved Vignan Mahavidyapeeth', 'Janpriyapark, Swabhumi, Amgachiya, Pailan, Bisnupur I, PIN-700104', NULL, 'Non-Government Organisation', 1, 'Female', NULL, 0, 'WB/JJ/24 PGS (S)/01/02/0092', '2022-04-22', '2021-04-27', 5, NULL, NULL, NULL),
('CCI_297', 'Uttar Dinajpur', 'Bharat Sevashram Sangha', 'Vill Kunor, PO & PS Kaliyaganj, Dist South 24 Parganas', 733252, 'Non-Government Organisation', 1, 'Male', 50, 1, 'WB/JJ/DIN(N)/01/01/0141', '2021-10-24', '2020-10-29', 5, '', '', 0),
('CCI_298', 'Uttar Dinajpur', 'Purba Netaji Pally Rural Development Society', 'Rabindra Sarani, Raiganj', 733134, 'Non-Government Organisation', 1, 'Combined', 10, 1, 'WB/JJ/UDIN/02/03/0022', '2015-01-24', '2014-01-29', 5, '', '', 0),
('CCI_299', 'Uttar Dinajpur', 'St. John Ambulance Association', 'Vill & PO Debinagar, PS Raiganj, Dist Uttar Dinajpur', 733123, 'Non-Government Organisation', 1, 'Female', 25, 1, 'WB/JJ/DIN(U)/01/02/0183', '2004-01-21', '2031-03-26', 5, '', '', 0),
('CCI_300', 'Uttar Dinajpur', 'St. John Ambulance Association', 'Vill & PO Debinagar, PS Raiganj, Dist Uttar Dinajpur', 733123, 'Non-Government Organisation', 2, 'Male', 50, 1, 'WB/JJ/DIN(N)/01/01/0118', '2004-01-20', '2031-03-25', 5, '', '', 0),
('CCI_301', 'Uttar Dinajpur', 'Suryadaya Children Home For Deaf And Dumb Boys And Girls', 'PO-KARANJORA, PIN-733130, DIST- UTTAR DINAJPUR, WB', NULL, 'Government', 1, 'Male', 50, 1, 'JJ/Reg./Gov./011/1', '2028-01-23', '2027-01-28', 5, NULL, NULL, 0),
('CCI_302', 'Uttar Dinajpur', 'Suryadaya Children Home For Deaf And Dumb Boys And Girls', 'PO- KARANJORA, DIST-UTTAR DINAJPUR, WB, PIN-733130', NULL, 'Government', 2, 'Female', 50, 1, 'JJ/Reg./Gov./011/2', '2028-01-23', '2028-01-28', 5, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cci_management_users`
--

CREATE TABLE `cci_management_users` (
  `id` int(11) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cci_management_users`
--

INSERT INTO `cci_management_users` (`id`, `user_type`, `password`) VALUES
(1, 'Admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `cci_recurring_exp`
--

CREATE TABLE `cci_recurring_exp` (
  `id` varchar(7) NOT NULL,
  `strength` int(2) DEFAULT NULL,
  `category` varchar(27) DEFAULT NULL,
  `maintenance_cost` double(10,2) NOT NULL,
  `bedding_cost` double(10,2) NOT NULL,
  `admin_expenses` double(10,2) NOT NULL,
  `cwsn_equip` double(10,2) NOT NULL,
  `cwsn_addl_grant` double(10,2) NOT NULL,
  `cwsn_medical` double(10,2) NOT NULL,
  `staff_sal` double(10,2) NOT NULL,
  `cwsn_staff_sal` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cci_recurring_exp`
--

INSERT INTO `cci_recurring_exp` (`id`, `strength`, `category`, `maintenance_cost`, `bedding_cost`, `admin_expenses`, `cwsn_equip`, `cwsn_addl_grant`, `cwsn_medical`, `staff_sal`, `cwsn_staff_sal`) VALUES
('CCI_001', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_002', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_003', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_004', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_005', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_006', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_007', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_008', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_009', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_010', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_011', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_012', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_013', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_014', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_015', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_016', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_017', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_018', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_019', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_023', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_025', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_029', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_039', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_040', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_041', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_042', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_043', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_044', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_045', 25, 'Observation Home', 3000.00, 250.00, 150000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_047', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_049', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_050', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_051', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_052', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_053', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_054', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_055', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_056', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_057', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_058', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_059', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_060', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_061', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_062', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_064', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_065', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_066', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_067', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_068', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_069', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_070', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_071', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_072', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_073', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_074', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_075', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_076', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_077', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_078', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_082', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_083', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_084', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_085', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_087', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_094', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_095', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_096', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_097', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_099', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_100', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_101', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_102', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_103', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_104', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_106', 25, 'Children Home', 3000.00, 250.00, 150000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_107', 25, 'Children Home', 3000.00, 250.00, 150000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_108', 25, 'Children Home', 3000.00, 250.00, 150000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_109', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_112', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_113', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_114', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_115', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_116', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_117', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_125', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_126', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_127', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_128', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_132', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_133', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_136', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_140', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_141', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_142', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_143', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_144', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_145', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_146', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_147', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_148', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_149', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_150', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_151', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_152', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_153', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_154', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_155', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_156', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_157', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_158', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_159', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_161', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_162', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_163', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_164', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_165', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_166', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_167', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_168', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_169', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_170', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_171', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_172', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_175', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_177', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_179', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_184', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_186', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_187', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_188', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_189', 25, 'Children Home CWSN', 3000.00, 250.00, 150000.00, 50000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_190', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_192', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_193', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_199', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_204', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_205', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_206', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_207', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_208', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_209', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_210', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_211', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_217', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_218', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_221', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_222', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_223', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_224', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_225', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_226', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_228', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_229', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_230', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_231', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_232', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_233', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_234', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_235', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_236', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_237', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_238', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_239', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_240', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_241', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_243', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_244', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_245', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_246', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_247', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_248', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_249', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_250', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_251', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_252', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_253', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_254', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_256', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_258', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_259', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_260', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_261', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_262', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_263', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_264', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_265', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_266', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_267', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_268', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_269', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_270', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_271', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_274', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_277', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_278', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_279', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_280', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_281', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_282', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_285', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_286', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_287', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_292', 25, 'Open Shelter', 2500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_293', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_297', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_298', 10, 'Specialized Adoption Agency', 2500.00, 0.00, 56250.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_299', 50, 'Children Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_300', 50, 'Observation Home', 3000.00, 250.00, 250000.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('CCI_301', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00),
('CCI_302', 50, 'Children Home CWSN', 3000.00, 250.00, 250000.00, 100000.00, 400.00, 4000.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `cci_reg_file_status`
--

CREATE TABLE `cci_reg_file_status` (
  `id` int(11) NOT NULL,
  `reg_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cci_reg_file_status`
--

INSERT INTO `cci_reg_file_status` (`id`, `reg_status`) VALUES
(1, 'Documents submitted and checking under process at CRT'),
(2, 'Sent to the Department.'),
(3, 'Query raised and sent back to CRT.'),
(4, 'Letter sent/ communicated to district/CCI against the query raised by Dept. & document yet to receive'),
(5, 'Valid Registration'),
(6, 'To close and enquiry report awaited from district authority'),
(7, 'CCI Closed');

-- --------------------------------------------------------

--
-- Table structure for table `cci_staff_positions`
--

CREATE TABLE `cci_staff_positions` (
  `id` varchar(10) NOT NULL,
  `position` varchar(255) NOT NULL,
  `for_cwsn` tinyint(1) NOT NULL,
  `base_remuneration` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cci_staff_positions`
--

INSERT INTO `cci_staff_positions` (`id`, `position`, `for_cwsn`, `base_remuneration`) VALUES
('CPOS_001', 'Officer - in - Charge/ Superintendent', 0, 33100.00),
('CPOS_002', 'Counsellor', 0, 23170.00),
('CPOS_003', 'Probation Officer/ Child Welfare Officer/ Case Worker', 0, 23170.00),
('CPOS_004', 'House Mother/ Father', 0, 14564.00),
('CPOS_005', 'Paramedical Staff', 0, 11916.00),
('CPOS_006', 'Store-keeper cum Accountant', 0, 18536.00),
('CPOS_007', 'Educator', 0, 10000.00),
('CPOS_008', 'Art & Craft cum Music Teacher', 0, 10000.00),
('CPOS_009', 'PT Instructor cum Yoga Trainer', 0, 10000.00),
('CPOS_010', 'Cook', 0, 9930.00),
('CPOS_011', 'Helper cum Night Watchman', 0, 7944.00),
('CPOS_012', 'Housekeeper', 0, 7944.00),
('CPOS_013', 'Special Educator/ Therapist', 1, 23170.00),
('CPOS_014', 'Nurse', 1, 13240.00),
('CPOS_015', 'Care Taker cum Vocational Instructor', 1, 9930.00);

-- --------------------------------------------------------

--
-- Table structure for table `cci_unit_types`
--

CREATE TABLE `cci_unit_types` (
  `id` int(11) NOT NULL DEFAULT 0,
  `category` varchar(255) DEFAULT NULL,
  `type_of_child` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cci_unit_types`
--

INSERT INTO `cci_unit_types` (`id`, `category`, `type_of_child`) VALUES
(1, 'Children Home', 'CNCP'),
(2, 'Children Home CWSN', 'CNCP-CWSN'),
(3, 'Observation Home', 'CCL'),
(4, 'Special Home', 'CCL'),
(5, 'Place of Safety', 'CCL'),
(6, 'After Care Home', 'CNCP-ACH'),
(7, 'Specialized Adoption Agency', 'SAA'),
(8, 'Open Shelter', 'OS');

-- --------------------------------------------------------

--
-- Table structure for table `fund_release`
--

CREATE TABLE `fund_release` (
  `cci_id` varchar(255) NOT NULL,
  `fy_id` varchar(255) NOT NULL,
  `n_months` int(11) NOT NULL,
  `children_days` int(11) NOT NULL,
  `cwsn_child_days` int(11) NOT NULL,
  `maintenance_cost` double(10,2) NOT NULL,
  `bedding_cost` double(10,2) NOT NULL,
  `admin_expenses` double(10,2) NOT NULL,
  `cwsn_equip` double(10,2) NOT NULL,
  `cwsn_addl_grant` double(10,2) NOT NULL,
  `cwsn_medical` double(10,2) NOT NULL,
  `staff_sal` double(10,2) NOT NULL,
  `cwsn_staff_sal` double(10,2) NOT NULL,
  `amnt_adjstmnt` double(10,2) NOT NULL,
  `dist_recommendation` double(10,2) NOT NULL,
  `amnt_released` double(10,2) NOT NULL,
  `init_dt` date NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `at_user` int(11) DEFAULT NULL,
  `verified_by` int(1) DEFAULT NULL,
  `apprvl_dt` date DEFAULT NULL,
  `finalized` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fy_quarter`
--

CREATE TABLE `fy_quarter` (
  `fy_id` varchar(10) NOT NULL,
  `fy` varchar(7) NOT NULL,
  `quarter` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fy_quarter`
--

INSERT INTO `fy_quarter` (`fy_id`, `fy`, `quarter`) VALUES
('2324Q4', '2023-24', 'January 2024 - March 2024'),
('2425Q1', '2024-25', 'April 2024 - June 2024');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `user_type`, `password`) VALUES
(1, 'AO SCPS', '12345'),
(2, 'Treasurer SCPS', '12345'),
(3, 'DD DCRT', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `os_staff_positions`
--

CREATE TABLE `os_staff_positions` (
  `id` varchar(10) NOT NULL,
  `position` varchar(255) NOT NULL,
  `base_remuneration` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `os_staff_positions`
--

INSERT INTO `os_staff_positions` (`id`, `position`, `base_remuneration`) VALUES
('OPOS_001', 'Project Coordinator cum Counsellor', 23170.00),
('OPOS_002', 'Social Worker', 18536.00),
('OPOS_003', 'Care Givers cum Bridge Course Educators', 11916.00),
('OPOS_004', 'Outreach Workers', 10592.00),
('OPOS_005', 'Helpers', 7944.00);

-- --------------------------------------------------------

--
-- Table structure for table `saa_staff_positions`
--

CREATE TABLE `saa_staff_positions` (
  `id` varchar(10) NOT NULL,
  `position` varchar(255) NOT NULL,
  `base_remuneration` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saa_staff_positions`
--

INSERT INTO `saa_staff_positions` (`id`, `position`, `base_remuneration`) VALUES
('SPOS_001', 'Manager/ Coordinator', 23170.00),
('SPOS_002', 'Social Worker-cum-Early Childhood Educator', 18536.00),
('SPOS_003', 'Nurse', 11916.00),
('SPOS_004', 'Doctor (Part time) ', 9930.00),
('SPOS_005', 'Ayahs', 7944.00),
('SPOS_006', 'Chowkidar', 7944.00);

-- --------------------------------------------------------

--
-- Table structure for table `unit_types`
--

CREATE TABLE `unit_types` (
  `id` int(11) NOT NULL,
  `cci_id` varchar(255) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unit_types`
--

INSERT INTO `unit_types` (`id`, `cci_id`, `type_id`) VALUES
(1, 'CCI_005', 1),
(2, 'CCI_006', 1),
(3, 'CCI_010', 2),
(4, 'CCI_011', 2),
(5, 'CCI_014', 1),
(6, 'CCI_015', 1),
(7, 'CCI_016', 3),
(8, 'CCI_018', 1),
(9, 'CCI_019', 1),
(10, 'CCI_039', 1),
(11, 'CCI_041', 1),
(12, 'CCI_042', 1),
(13, 'CCI_068', 1),
(14, 'CCI_070', 1),
(15, 'CCI_072', 1),
(16, 'CCI_073', 1),
(17, 'CCI_074', 1),
(18, 'CCI_075', 1),
(19, 'CCI_076', 3),
(20, 'CCI_082', 1),
(21, 'CCI_083', 3),
(22, 'CCI_152', 1),
(23, 'CCI_153', 1),
(24, 'CCI_155', 3),
(25, 'CCI_156', 3),
(26, 'CCI_162', 1),
(27, 'CCI_161', 1),
(28, 'CCI_163', 1),
(29, 'CCI_165', 1),
(30, 'CCI_166', 1),
(31, 'CCI_167', 1),
(32, 'CCI_168', 3),
(33, 'CCI_169', 1),
(34, 'CCI_170', 1),
(35, 'CCI_192', 3),
(36, 'CCI_193', 3),
(37, 'CCI_204', 1),
(38, 'CCI_205', 1),
(39, 'CCI_217', 1),
(40, 'CCI_218', 1),
(41, 'CCI_231', 1),
(42, 'CCI_232', 1),
(43, 'CCI_233', 1),
(44, 'CCI_234', 1),
(45, 'CCI_235', 1),
(46, 'CCI_236', 1),
(47, 'CCI_237', 1),
(48, 'CCI_238', 1),
(49, 'CCI_239', 1),
(50, 'CCI_245', 1),
(51, 'CCI_246', 1),
(52, 'CCI_269', 1),
(53, 'CCI_270', 1),
(54, 'CCI_301', 2),
(55, 'CCI_302', 2),
(56, 'CCI_029', 1),
(57, 'CCI_230', 7),
(58, 'CCI_013', 7),
(59, 'CCI_040', 7),
(60, 'CCI_001', 7),
(61, 'CCI_069', 7),
(62, 'CCI_071', 7),
(63, 'CCI_084', 7),
(64, 'CCI_243', 7),
(65, 'CCI_244', 7),
(66, 'CCI_268', 7),
(67, 'CCI_252', 1),
(68, 'CCI_185', 1),
(69, 'CCI_002', 2),
(70, 'CCI_003', 2),
(71, 'CCI_043', 1),
(72, 'CCI_044', 1),
(73, 'CCI_047', 2),
(74, 'CCI_049', 1),
(75, 'CCI_054', 2),
(76, 'CCI_055', 2),
(77, 'CCI_057', 3),
(78, 'CCI_058', 2),
(79, 'CCI_059', 2),
(80, 'CCI_060', 2),
(81, 'CCI_064', 1),
(82, 'CCI_065', 1),
(83, 'CCI_078', 1),
(84, 'CCI_085', 1),
(85, 'CCI_094', 1),
(86, 'CCI_095', 1),
(87, 'CCI_096', 1),
(88, 'CCI_117', 1),
(89, 'CCI_159', 2),
(90, 'CCI_171', 1),
(91, 'CCI_172', 3),
(92, 'CCI_175', 2),
(93, 'CCI_187', 2),
(94, 'CCI_188', 2),
(95, 'CCI_209', 1),
(96, 'CCI_210', 1),
(97, 'CCI_222', 2),
(98, 'CCI_223', 1),
(99, 'CCI_226', 2),
(100, 'CCI_228', 2),
(101, 'CCI_229', 2),
(102, 'CCI_224', 3),
(103, 'CCI_225', 1),
(104, 'CCI_247', 2),
(105, 'CCI_248', 2),
(106, 'CCI_249', 2),
(107, 'CCI_250', 2),
(108, 'CCI_241', 2),
(109, 'CCI_259', 3),
(110, 'CCI_264', 1),
(111, 'CCI_254', 2),
(112, 'CCI_262', 2),
(113, 'CCI_263', 2),
(114, 'CCI_260', 1),
(115, 'CCI_261', 1),
(116, 'CCI_258', 2),
(117, 'CCI_253', 2),
(118, 'CCI_271', 1),
(119, 'CCI_274', 2),
(120, 'CCI_277', 1),
(121, 'CCI_279', 2),
(122, 'CCI_280', 2),
(123, 'CCI_281', 1),
(124, 'CCI_282', 1),
(125, 'CCI_285', 1),
(126, 'CCI_286', 2),
(127, 'CCI_287', 1),
(128, 'CCI_297', 1),
(129, 'CCI_299', 1),
(130, 'CCI_300', 3),
(131, 'CCI_056', 2),
(132, 'CCI_109', 1),
(133, 'CCI_106', 1),
(134, 'CCI_066', 7),
(135, 'CCI_007', 1),
(136, 'CCI_008', 2),
(137, 'CCI_025', 1),
(138, 'CCI_107', 1),
(139, 'CCI_108', 1),
(140, 'CCI_190', 1),
(141, 'CCI_189', 2),
(142, 'CCI_087', 7),
(143, 'CCI_293', 1),
(144, 'CCI_164', 7),
(145, 'CCI_045', 3),
(146, 'CCI_035', 8),
(147, 'CCI_028', 1),
(148, 'CCI_081', 2),
(149, 'CCI_130', 1),
(150, 'CCI_129', 1),
(151, 'CCI_139', 1),
(152, 'CCI_178', 1),
(153, 'CCI_180', 1),
(154, 'CCI_215', 1),
(155, 'CCI_242', 1),
(156, 'CCI_021', 1),
(157, 'CCI_022', 1),
(158, 'CCI_024', 1),
(159, 'CCI_026', 1),
(160, 'CCI_027', 1),
(161, 'CCI_030', 1),
(162, 'CCI_031', 1),
(163, 'CCI_032', 1),
(164, 'CCI_033', 1),
(165, 'CCI_034', 1),
(166, 'CCI_036', 1),
(167, 'CCI_037', 1),
(168, 'CCI_038', 1),
(169, 'CCI_046', 2),
(170, 'CCI_063', 1),
(171, 'CCI_079', 2),
(172, 'CCI_080', 2),
(173, 'CCI_088', 1),
(174, 'CCI_089', 1),
(175, 'CCI_091', 1),
(176, 'CCI_090', 1),
(177, 'CCI_092', 1),
(178, 'CCI_110', 1),
(179, 'CCI_111', 1),
(180, 'CCI_119', 1),
(181, 'CCI_120', 1),
(182, 'CCI_118', 1),
(183, 'CCI_121', 1),
(184, 'CCI_131', 1),
(185, 'CCI_134', 1),
(186, 'CCI_135', 1),
(187, 'CCI_137', 2),
(188, 'CCI_173', 1),
(189, 'CCI_182', 1),
(190, 'CCI_181', 1),
(191, 'CCI_183', 1),
(192, 'CCI_191', 1),
(193, 'CCI_196', 1),
(194, 'CCI_201', 1),
(195, 'CCI_202', 1),
(196, 'CCI_203', 1),
(197, 'CCI_212', 1),
(198, 'CCI_213', 1),
(199, 'CCI_214', 1),
(200, 'CCI_216', 1),
(201, 'CCI_219', 1),
(202, 'CCI_220', 1),
(203, 'CCI_272', 1),
(204, 'CCI_273', 1),
(205, 'CCI_276', 1),
(206, 'CCI_288', 1),
(207, 'CCI_289', 1),
(208, 'CCI_290', 2),
(209, 'CCI_291', 2),
(210, 'CCI_295', 1),
(211, 'CCI_122', 1),
(212, 'CCI_105', 1),
(213, 'CCI_174', 1),
(214, 'CCI_227', 1),
(215, 'CCI_086', 1),
(216, 'CCI_093', 1),
(217, 'CCI_176', 1),
(218, 'CCI_160', 1),
(219, 'CCI_197', 1),
(220, 'CCI_048', 8),
(221, 'CCI_138', 1),
(222, 'CCI_098', 1),
(223, 'CCI_200', 2),
(224, 'CCI_198', 8),
(225, 'CCI_255', 1),
(226, 'CCI_294', 1),
(227, 'CCI_020', 8),
(228, 'CCI_195', 2),
(229, 'CCI_194', 2),
(230, 'CCI_123', 1),
(231, 'CCI_124', 1),
(232, 'CCI_296', 1),
(233, 'CCI_275', 1),
(234, 'CCI_284', 1),
(235, 'CCI_283', 1),
(236, 'CCI_257', 1),
(237, 'CCI_004', 7),
(238, 'CCI_009', 7),
(239, 'CCI_012', 7),
(240, 'CCI_017', 7),
(241, 'CCI_050', 7),
(242, 'CCI_126', 7),
(243, 'CCI_127', 7),
(244, 'CCI_141', 7),
(245, 'CCI_144', 7),
(246, 'CCI_145', 7),
(247, 'CCI_146', 7),
(248, 'CCI_147', 7),
(249, 'CCI_142', 7),
(250, 'CCI_143', 7),
(251, 'CCI_154', 7),
(252, 'CCI_157', 7),
(253, 'CCI_158', 7),
(254, 'CCI_177', 7),
(255, 'CCI_206', 7),
(256, 'CCI_221', 7),
(257, 'CCI_240', 7),
(258, 'CCI_256', 7),
(259, 'CCI_265', 7),
(260, 'CCI_266', 7),
(261, 'CCI_278', 7),
(262, 'CCI_298', 7),
(263, 'CCI_023', 8),
(264, 'CCI_051', 8),
(265, 'CCI_052', 8),
(266, 'CCI_061', 8),
(267, 'CCI_062', 8),
(268, 'CCI_067', 8),
(269, 'CCI_077', 8),
(270, 'CCI_097', 8),
(271, 'CCI_099', 8),
(272, 'CCI_100', 8),
(273, 'CCI_101', 8),
(274, 'CCI_103', 8),
(275, 'CCI_104', 8),
(276, 'CCI_112', 8),
(277, 'CCI_113', 8),
(278, 'CCI_114', 8),
(279, 'CCI_116', 8),
(280, 'CCI_125', 8),
(281, 'CCI_128', 8),
(282, 'CCI_132', 8),
(283, 'CCI_136', 8),
(284, 'CCI_140', 8),
(285, 'CCI_115', 8),
(286, 'CCI_149', 8),
(287, 'CCI_150', 8),
(288, 'CCI_151', 8),
(289, 'CCI_179', 8),
(290, 'CCI_184', 8),
(291, 'CCI_186', 8),
(292, 'CCI_199', 8),
(293, 'CCI_207', 8),
(294, 'CCI_208', 8),
(295, 'CCI_211', 8),
(296, 'CCI_251', 8),
(297, 'CCI_267', 8),
(298, 'CCI_292', 8),
(299, 'CCI_133', 8),
(300, 'CCI_148', 8),
(301, 'CCI_102', 8),
(302, 'CCI_053', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cci`
--
ALTER TABLE `cci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cci_management_users`
--
ALTER TABLE `cci_management_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cci_recurring_exp`
--
ALTER TABLE `cci_recurring_exp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cci_reg_file_status`
--
ALTER TABLE `cci_reg_file_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cci_staff_positions`
--
ALTER TABLE `cci_staff_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cci_unit_types`
--
ALTER TABLE `cci_unit_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fund_release`
--
ALTER TABLE `fund_release`
  ADD PRIMARY KEY (`cci_id`,`fy_id`);

--
-- Indexes for table `fy_quarter`
--
ALTER TABLE `fy_quarter`
  ADD PRIMARY KEY (`fy_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `os_staff_positions`
--
ALTER TABLE `os_staff_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saa_staff_positions`
--
ALTER TABLE `saa_staff_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit_types`
--
ALTER TABLE `unit_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `unit_types`
--
ALTER TABLE `unit_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
