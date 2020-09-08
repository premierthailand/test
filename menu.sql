-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2020 at 10:09 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `menu`
--

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `food_id` int(255) NOT NULL,
  `food_name_th` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `food_name_eng` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `food_price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `food_detail_th` text COLLATE utf8mb4_unicode_ci,
  `food_detail_eng` text COLLATE utf8mb4_unicode_ci,
  `type_id` int(10) NOT NULL,
  `update_time` datetime NOT NULL,
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`food_id`, `food_name_th`, `food_name_eng`, `food_price`, `food_detail_th`, `food_detail_eng`, `type_id`, `update_time`, `insert_time`) VALUES
(1, 'ต้มยำกุ้ง', 'Tom Yum Kung', '299', 'สไป๊ซิ ชริ๊มพ ซูป\r\nซุปกุ้งรสจัดจ้าน', 'Spicy Shrimp Soup', 1, '2020-09-08 09:41:00', '2020-09-08 02:51:39'),
(2, 'ข้าวผัด\r\n', 'Khao Pad', '99', '(ฟรายดึ ไรซ)\r\nข้าวผัด', 'Fried Rice ', 1, '2020-09-08 00:00:00', '2020-09-08 02:51:45'),
(3, 'ข้าวมันไก่', 'Khao Man Kai ', '129', 'ไฮนานนี๊ส ชิ๊เคิน ไรซ\r\nข้าวไก่ไหหลำ', 'Hainanese chicken rice ', 1, '2020-09-08 00:00:00', '2020-09-08 02:54:15'),
(4, 'แกงเขียวหวานไก่', 'Gaeng Keow Wan Kai', '89', '(กรีน ชิ๊เคิน เค๊อะริ)\r\nแกงไก่เขียว', 'Green Chicken Curry', 1, '2020-09-08 00:00:00', '2020-09-08 02:54:15'),
(6, 'ต้มข่าไก่', 'Tom Kha Kai ', '', '(ชิ๊คเคิน อิน โค๊โคนัท ซูป)\r\nไก่ในน้ำกะทิมะพร้าว', 'Chicken in Coconut Soup ', 1, '2020-09-08 00:00:00', '2020-09-08 03:01:35'),
(7, 'ซูชิ', 'Sushi', '159', 'ข้าวปั้น อาหารยอดฮิตตลอดการสำหรับนักชิมชาวไทย ซูชิ เป็น 1 ในเมนูยอดนิยมที่สุดของอาหารญี่ปุ่น ซึ่งเป็นอาหารประจำชาติของญี่ปุ่นเลยก็ว่าได้ หากใครที่ไปเที่ยวญี่ปุ่นมาแล้วจะรู้ได้เลยว่า เป็นเมนูที่หากินได้ง่ายมากๆ ไม่ว่าจะเป็นตามร้านสะดวกซื้อทั่วไป หรือร้านหรูหรา ในโรงแรม 5 ดาวก็มีเมนูซูชิให้เลือกอร่อยเช่นกัน ซึ่งจะมีหน้าต่างๆ มากมาย และเนื่องจากซูชิมีการพัฒนาจากเชฟในยุคต่างๆ มาโดยตลอด ทำให้มีความอร่อยและหลากหลายมากขึ้นอย่างต่อเนื่องมาตั้งแต่สมัยยุคเฮอัน ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2, '2020-09-08 00:00:00', '2020-09-08 06:11:18'),
(8, 'ราเมน', 'Ramen', '169', 'ราเมนเป็นหนึ่งในอาหารที่นิยมมากที่สุดในญี่ปุ่น ราเมนถือว่าเป็นอาหารจานด่วนที่มีคุณค่าทางอาหารครบถ้วน เราจึงสามารถเห็นร้านราเมนที่ประเทศญี่ปุ่นอยู่บ่อยๆ โดยแต่ละแห่งจะมีสูตรน้ำซุปประจำร้านเป็นของตัวเอง ซึ่งการทำราเมนให้อร่อยกลมกล่อมนั้นต้องใช้เวลาในการเคี่ยวน้ำซุปจากกระดูกเป็นชั่วโมงๆ บางสูตรใช้เวลาในการเคี่ยวกว่า 8 ชม. เลยทีเดียว บ่งบอกได้ถึงความพิถีพิถันและความเอาใจใส่ของเชฟชาวญี่ปุ่น', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 2, '2020-09-08 00:00:00', '2020-09-08 06:11:18'),
(9, 'อูนางิ', 'Unagi', '129', ' อูนางิ หรือ ปลาไหลญี่ปุ่น มีลำตัวยาวประมาณ 1 เมตร ตากลมโต ผิวเคลือบด้วยเมือก มีลำตัวสีดำ ช่วงท้องมีขาว ในสมัยเอโดะปลาไหลถูกจับได้เป็นจำนวนมากเพราะการบุกเบิกที่ดินริมชายฝั่งอ่าวเอโดะ (อ่าวโตเกียว) จึงทำให้ปลาไหลเป็นอาหารยอดนิยมตั้งแต่สมัยนั้น ซึ่งในสมัยนั้น นิยมนำปลาไหลมาหั่นเป็นท่อนแล้วเสียบไม้ย่าง โดยไม่ปรุงรสใดๆ ต่อมาได้มีการปรุงรสเพิ่มโดยซีอิ้วดำหรือโชยุแบบเข้มข้น และมีการประยุกต์ปรุงแต่งรสชาติให้อร่อยยิ่งขึ้นจนถึงปัจจุบันนี้', '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."', 2, '2020-09-08 00:00:00', '2020-09-08 06:12:57'),
(10, 'เทมปุระ', 'Tempura', '149', 'เทมปุระ คือ อาหารประเภทที่ชุบแป้งทอดสไตล์ญี่ปุ่น ส่วนใหญ่จะใช้กุ้งเป็นหลัก และมีผักหลากหลายชนิดมาชุบแป้งทอดเป็นเครื่องเคียง ทานคู่กับซอสเทนทสึยุ (ซอสเทมปุระ) ที่มีขิงขูดละเอียดโรยอยู่ หรือใช้หัวไชเท้าขูดโรย จะทำให้ความอร่อยเพิ่มยิ่งขึ้น', 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.', 2, '2020-09-08 00:00:00', '2020-09-08 06:12:57'),
(11, 'เต้าหู้ผัดทรงเครื่อง ', 'Má pó dòu fu ', '99', 'เต้าหู้ผัดทรงเครื่อง  ผัดเผ็ดเต้าหู้สไตล์เสฉวน ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 3, '2020-09-08 00:00:00', '2020-09-08 06:43:53');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(10) NOT NULL,
  `type_name_th` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_name_eng` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_time` datetime NOT NULL,
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name_th`, `type_name_eng`, `update_time`, `insert_time`) VALUES
(1, 'อาหารไทย', 'thai food', '2020-09-08 00:00:00', '2020-09-08 02:51:08'),
(2, 'อาหารญี่ปุ่น', 'Japanese food\n', '0000-00-00 00:00:00', '2020-09-08 03:00:01'),
(3, 'อาหารจีน', 'Chinese food', '2020-09-08 00:00:00', '2020-09-08 06:41:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`food_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `food_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type` (`type_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
