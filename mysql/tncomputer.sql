-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 21, 2017 at 01:30 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tncomputer`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `catid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `catname` varchar(50) NOT NULL,
  `parent` tinyint(4) NOT NULL,
  `haschild` tinyint(1) NOT NULL,
  `orderitem` tinyint(4) NOT NULL,
  `public` tinyint(1) NOT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catid`, `catname`, `parent`, `haschild`, `orderitem`, `public`) VALUES
(1, 'Apple', 0, 1, 1, 1),
(2, 'Dell', 0, 1, 2, 1),
(3, 'Lenovo', 0, 1, 3, 1),
(4, 'HP', 0, 1, 4, 1),
(5, 'Asus', 0, 1, 5, 1),
(6, 'Macbook Pro', 1, 0, 1, 1),
(7, 'Macbook Air', 1, 0, 2, 1),
(8, 'Dell Inspiron', 2, 0, 1, 1),
(9, 'Dell Vostro', 2, 0, 2, 1),
(10, 'Dell Latitude', 2, 0, 3, 1),
(11, 'Dell XPS', 2, 0, 4, 1),
(12, 'Dell Alienware', 2, 0, 5, 1),
(13, 'Lenovo Yoga', 3, 0, 1, 1),
(14, 'Lenovo Ideapad', 3, 0, 2, 1),
(15, 'Lenovo Thinkpad', 3, 0, 3, 1),
(16, 'HP Probook', 4, 0, 1, 1),
(17, 'HP Elitebook', 4, 0, 2, 1),
(18, 'HP Envy', 4, 0, 3, 1),
(19, 'Asus Zenbook', 5, 0, 1, 1),
(20, 'Asus Vivobook', 5, 0, 2, 1),
(21, 'Asus ROG', 5, 0, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
CREATE TABLE IF NOT EXISTS `module` (
  `idmodule` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `position` varchar(10) NOT NULL,
  `orderitem` tinyint(4) NOT NULL,
  `public` tinyint(1) NOT NULL,
  PRIMARY KEY (`idmodule`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`idmodule`, `name`, `position`, `orderitem`, `public`) VALUES
(1, 'map', 'right', 1, 1),
(2, 'quangcao', 'right', 2, 1),
(3, 'quangcaoyoutube', 'bottom', 1, 1),
(4, 'tygia', 'bottom', 2, 1),
(5, 'productmenu', 'left', 1, 1),
(6, 'slideshow', 'top', 1, 1),
(7, 'newsmenu', 'left', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `newsid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `newsname` varchar(50) NOT NULL,
  `parent` tinyint(4) NOT NULL,
  `haschild` tinyint(1) NOT NULL,
  `newsitem` tinyint(4) NOT NULL,
  `public` tinyint(1) NOT NULL,
  PRIMARY KEY (`newsid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`newsid`, `newsname`, `parent`, `haschild`, `newsitem`, `public`) VALUES
(1, 'Văn Hóa', 0, 0, 1, 1),
(2, 'Xã Hội', 0, 0, 2, 1),
(3, 'Kỹ Thuật', 0, 0, 3, 1),
(4, 'Sự Kiện', 0, 0, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `catid` tinyint(4) NOT NULL,
  `productid` varchar(30) NOT NULL,
  `productname` varchar(50) NOT NULL,
  `detail` text NOT NULL,
  `image` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `saleprice` int(11) NOT NULL,
  `date` date NOT NULL,
  `views` int(11) NOT NULL,
  `public` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `catid`, `productid`, `productname`, `detail`, `image`, `price`, `saleprice`, `date`, `views`, `public`) VALUES
(1, 6, 'MPXQ2 ', 'Macbook Pro 2017 MPXQ2 ( grey )', '2.3 GHz Intel Core i5 Dual-Core\r\n8GB of 2133 MHz RAM | 128GB PCIe SSD\r\n13.3″ 2560 x 1600 Retina Display\r\nIntegrated Intel Iris Plus Graphics 640\r\n802.11ac Wi-Fi | Bluetooth 4.2\r\n2 x Thunderbolt 3 (USB Type-C) Ports\r\n3.5mm Headphone Jack | Stereo Speakers\r\nForce Touch Trackpad\r\nmacOS Sierra\r\nBẢO HÀNH 2 NĂM.', 'macbookpro1.jpg', 31000000, 29000000, '2017-11-01', 0, 1),
(2, 6, 'MPXR2 ', 'Macbook Pro 2017 MPXR2 (Silver)', '2.3 GHz Intel Core i5 Dual-Core\r\n8GB of 2133 MHz RAM | 128GB PCIe SSD\r\n13.3″ 2560 x 1600 Retina Display\r\nIntegrated Intel Iris Plus Graphics 640\r\n802.11ac Wi-Fi | Bluetooth 4.2\r\n2 x Thunderbolt 3 (USB Type-C) Ports\r\n3.5mm Headphone Jack | Stereo Speakers\r\nForce Touch Trackpad\r\nmacOS Sierra\r\nBẢO HÀNH 2 NĂM.\r\n', 'macbookpro2.jpg', 31000000, 29000000, '2017-11-01', 0, 1),
(3, 6, 'MPXT2 ', 'Macbook Pro 2017 MPXT2 ( grey )', '2.3 GHz Intel Core i5 Dual-Core\r\n8GB of 2133 MHz RAM | 256GB PCIe SSD\r\n13.3″ 2560 x 1600 Retina Display\r\nIntegrated Intel Iris Plus Graphics 640\r\n802.11ac Wi-Fi | Bluetooth 4.2\r\n2 x Thunderbolt 3 (USB Type-C) Ports\r\n3.5mm Headphone Jack | Stereo Speakers\r\nForce Touch Trackpad\r\nmacOS Sierra\r\nBẢO HÀNH 2 NĂM.', 'macbookpro3.jpg', 35000000, 33000000, '2017-11-01', 0, 1),
(4, 6, 'MPXU2', 'Macbook Pro 2017 MPXU2 (Silver)', '2.3 GHz Intel Core i5 Dual-Core\r\n8GB of 2133 MHz RAM | 256GB PCIe SSD\r\n13.3″ 2560 x 1600 Retina Display\r\nIntegrated Intel Iris Plus Graphics 640\r\n802.11ac Wi-Fi | Bluetooth 4.2\r\n2 x Thunderbolt 3 (USB Type-C) Ports\r\n3.5mm Headphone Jack | Stereo Speakers\r\nForce Touch Trackpad\r\nmacOS Sierra\r\nBẢO HÀNH 2 NĂM.', 'macbookpro4.jpg', 35000000, 33000000, '2017-11-01', 0, 1),
(5, 6, 'MPXV2 ', 'Macbook Pro 2017 MPXV2 (Space Gray)', '3.1 GHz Intel Core i5 Dual-Core\r\n8GB of 2133 MHz RAM | 256GB SSD\r\n13.3″ 2560 x 1600 Retina Display\r\nIntegrated Intel Iris Plus Graphics 650\r\n802.11ac Wi-Fi | Bluetooth 4.2\r\nTouch Bar | Touch ID Sensor\r\n4 x Thunderbolt 3 (USB Type-C) Ports\r\n3.5mm Headphone Jack | Stereo Speakers\r\nForce Touch Trackpad\r\nmacOS Sierra\r\nBẢO HÀNH 2 NĂM.', 'macbookpro5.jpg', 40500000, 38500000, '2017-11-01', 0, 1),
(6, 6, 'MPXX2 ', 'Macbook Pro 2017 MPXX2 (Silver)', '3.1 GHz Intel Core i5 Dual-Core\r\n8GB of 2133 MHz RAM | 256GB SSD\r\n13.3″ 2560 x 1600 Retina Display\r\nIntegrated Intel Iris Plus Graphics 650\r\n802.11ac Wi-Fi | Bluetooth 4.2\r\nTouch Bar | Touch ID Sensor\r\n4 x Thunderbolt 3 (USB Type-C) Ports\r\n3.5mm Headphone Jack | Stereo Speakers\r\nForce Touch Trackpad\r\nmacOS Sierra\r\nBẢO HÀNH 2 NĂM.', 'macbookpro6.jpg', 40500000, 38500000, '2017-11-01', 0, 1),
(7, 6, 'MPXW2', 'Macbook Pro 2017 MPXW2 (Space Gray)', '3.1 GHz Intel Core i5 Dual-Core\r\n8GB of 2133 MHz RAM | 512GB SSD\r\n13.3″ 2560 x 1600 Retina Display\r\nIntegrated Intel Iris Plus Graphics 650\r\n802.11ac Wi-Fi | Bluetooth 4.2\r\nTouch Bar | Touch ID Sensor\r\n4 x Thunderbolt 3 (USB Type-C) Ports\r\n3.5mm Headphone Jack | Stereo Speakers\r\nForce Touch Trackpad\r\nmacOS Sierra\r\nBẢO HÀNH 2 NĂM.', 'macbookpro7.jpg', 44500000, 42500000, '2017-11-01', 0, 1),
(8, 6, 'MPXY2', 'Macbook Pro 2017 MPXY2 (Silver)', '3.1 GHz Intel Core i5 Dual-Core\r\n8GB of 2133 MHz RAM | 512GB SSD\r\n13.3″ 2560 x 1600 Retina Display\r\nIntegrated Intel Iris Plus Graphics 650\r\n802.11ac Wi-Fi | Bluetooth 4.2\r\nTouch Bar | Touch ID Sensor\r\n4 x Thunderbolt 3 (USB Type-C) Ports\r\n3.5mm Headphone Jack | Stereo Speakers\r\nForce Touch Trackpad\r\nmacOS Sierra\r\nBẢO HÀNH 2 NĂM.', 'macbookpro8.jpg', 44500000, 42500000, '2017-11-01', 0, 1),
(9, 6, 'MQ002', 'Macbook Pro 2017 MQ002 (Space Gray)', '3.5GHz Intel Core i7 Quad Core\r\nUp to 4.0GHz Turbo Boost processing\r\n16GB RAM | 1TB SSD\r\n13.3″ 2560 x 1600 Retina Display\r\nIntegrated Intel Iris Plus Graphics 650\r\n802.11ac Wi-Fi | Bluetooth 4.2\r\nTouch Bar | Touch ID Sensor\r\n4 x Thunderbolt 3 (USB Type-C) Ports\r\n3.5mm Headphone Jack | Stereo Speakers\r\nForce Touch Trackpad\r\nmacOS Sierra\r\nBẢO HÀNH 2 NĂM.', 'macbookpro9.jpg', 70900000, 68900000, '2017-11-01', 0, 1),
(10, 6, 'MQ012', 'Macbook Pro 2017 MQ012 (silver)', '3.5GHz Intel Core i7 Quad Core\r\nUp to 4.0GHz Turbo Boost processing\r\n16GB RAM | 1TB SSD\r\n13.3″ 2560 x 1600 Retina Display\r\nIntegrated Intel Iris Plus Graphics 650\r\n802.11ac Wi-Fi | Bluetooth 4.2\r\nTouch Bar | Touch ID Sensor\r\n4 x Thunderbolt 3 (USB Type-C) Ports\r\n3.5mm Headphone Jack | Stereo Speakers\r\nForce Touch Trackpad\r\nmacOS Sierra\r\nBẢO HÀNH 2 NĂM.', 'macbookpro10.jpg', 70900000, 68900000, '2017-11-01', 0, 1),
(11, 6, 'MPTR2', 'Macbook Pro 2017 MPTR2 (Space Gray)', '2.8 GHz Intel Core i7 Quad-Core\r\n16GB of 2133 MHz RAM | 256GB SSD\r\n15.4″ 2880 x 1800 Retina Display\r\nAMD Radeon Pro 555 Graphics (2GB GGDR5)\r\n802.11ac Wi-Fi | Bluetooth 4.2\r\nTouch Bar | Touch ID Sensor\r\n4 x Thunderbolt 3 (USB Type-C) Ports\r\n3.5mm Headphone Jack | Stereo Speakers\r\nForce Touch Trackpad\r\nmacOS Sierra\r\nBẢO HÀNH 2 NĂM.', 'macbookpro11.jpg', 51500000, 49500000, '2017-11-01', 0, 1),
(12, 6, 'MPTU2', 'Macbook Pro 2017 MPTU2 (Silver)', '2.8 GHz Intel Core i7 Quad-Core\r\n16GB of 2133 MHz RAM | 256GB SSD\r\n15.4″ 2880 x 1800 Retina Display\r\nAMD Radeon Pro 555 Graphics (2GB GGDR5)\r\n802.11ac Wi-Fi | Bluetooth 4.2\r\nTouch Bar | Touch ID Sensor\r\n4 x Thunderbolt 3 (USB Type-C) Ports\r\n3.5mm Headphone Jack | Stereo Speakers\r\nForce Touch Trackpad\r\nmacOS Sierra\r\nBẢO HÀNH 2 NĂM.', 'macbookpro12.jpg', 51500000, 49500000, '2017-11-01', 0, 1),
(13, 6, 'MPTT2', 'Macbook Pro 2017 MPTT2 (Space Gray)', '2.9 GHz Intel Core i7 Quad-Core\r\n16GB of 2133 MHz RAM | 512GB SSD\r\n15.4″ 2880 x 1800 Retina Display\r\nAMD Radeon Pro 560 Graphics (4GB GGDR5)\r\n802.11ac Wi-Fi | Bluetooth 4.2\r\nTouch Bar | Touch ID Sensor\r\n4 x Thunderbolt 3 (USB Type-C) Ports\r\n3.5mm Headphone Jack | Stereo Speakers\r\nForce Touch Trackpad\r\nmacOS Sierra\r\nBẢO HÀNH 2 NĂM.', 'macbookpro13.jpg', 61000000, 59000000, '2017-11-01', 0, 1),
(14, 6, 'MPTV2', 'Macbook Pro 2017 MPTV2 (Silver)', '2.9 GHz Intel Core i7 Quad-Core\r\n16GB of 2133 MHz RAM | 512GB SSD\r\n15.4″ 2880 x 1800 Retina Display\r\nAMD Radeon Pro 560 Graphics (4GB GGDR5)\r\n802.11ac Wi-Fi | Bluetooth 4.2\r\nTouch Bar | Touch ID Sensor\r\n4 x Thunderbolt 3 (USB Type-C) Ports\r\n3.5mm Headphone Jack | Stereo Speakers\r\nForce Touch Trackpad\r\nmacOS Sierra\r\nBẢO HÀNH 2 NĂM.', 'macbookpro14.jpg', 61000000, 59000000, '2017-11-01', 0, 1),
(15, 6, 'MPTW2', 'Macbook Pro 2017 MPTW2 (Silver)', '3.1 GHz Intel Core i7 Quad-Core\r\n16GB of 2133 MHz RAM | 1TB SSD\r\n15.4″ 2880 x 1800 Retina Display\r\nAMD Radeon Pro 560 Graphics (4GB GGDR5)\r\n802.11ac Wi-Fi | Bluetooth 4.2\r\nTouch Bar | Touch ID Sensor\r\n4 x Thunderbolt 3 (USB Type-C) Ports\r\n3.5mm Headphone Jack | Stereo Speakers\r\nForce Touch Trackpad\r\nmacOS Sierra\r\nBẢO HÀNH 2 NĂM.', 'macbookpro15.jpg', 85000000, 83000000, '2017-11-01', 0, 1),
(16, 6, 'MPTX2', 'Macbook Pro 2017 MPTX2 (Space Gray)', '3.1 GHz Intel Core i7 Quad-Core\r\n16GB of 2133 MHz RAM | 1TB SSD\r\n15.4″ 2880 x 1800 Retina Display\r\nAMD Radeon Pro 560 Graphics (4GB GGDR5)\r\n802.11ac Wi-Fi | Bluetooth 4.2\r\nTouch Bar | Touch ID Sensor\r\n4 x Thunderbolt 3 (USB Type-C) Ports\r\n3.5mm Headphone Jack | Stereo Speakers\r\nForce Touch Trackpad\r\nmacOS Sierra\r\nBẢO HÀNH 2 NĂM.', 'macbookpro16.jpg', 85000000, 83000000, '2017-11-01', 0, 1),
(17, 7, 'MQD32', 'Macbook Air MQD32', '1.8 GHz Intel Core i5 Dual-Core\r\n8GB of 1600 MHz LPDDR3 RAM | 128GB SSD\r\nIntegrated Intel HD Graphics 6000\r\n13.3″ 1440 x 900 Glossy Display\r\n802.11ac Wi-Fi | Bluetooth 4.0\r\nThunderbolt 2 | USB 3.0\r\n720p FaceTime HD Camera | SDXC Card Slot\r\nStereo Speakers | Dual Built-In Mics\r\nSlim, Lightweight Design\r\nmacOS Sierra\r\nBẢO HÀNH 2 NĂM.', 'macbookair1.jpg', 22500000, 20500000, '2017-11-01', 0, 1),
(18, 7, 'MQD42', 'Macbook Air MQD42', '1.8 GHz Intel Core i5 Dual-Core\r\n8GB of 1600 MHz LPDDR3 RAM | 256GB SSD\r\nIntegrated Intel HD Graphics 6000\r\n13.3″ 1440 x 900 Glossy Display\r\n802.11ac Wi-Fi | Bluetooth 4.0\r\nThunderbolt 2 | USB 3.0\r\n720p FaceTime HD Camera | SDXC Card Slot\r\nStereo Speakers | Dual Built-In Mics\r\nSlim, Lightweight Design\r\nmacOS Sierra\r\nBẢO HÀNH 2 NĂM.', 'macbookair2.jpg', 26800000, 24800000, '2017-11-01', 0, 1),
(20, 9, '077M53', 'Dell Vostro 5568-077M53', 'Model	Dell Vostro 5568-077M53\r\nCPU	Intel® Core™ i5-7200U (2.5GHz upto 3.1 GHz, 2Cores, 4Threads, 3MB Cache, FSB 4GT/s)\r\nRAM	4GB 2133MHz DDR4 (1x4GB), 2 Slot RAM\r\nỔ cứng	1TB HDD 5400rpm + 1 Slot SSD M.2 Sata\r\nCD/DVD	None\r\nCard VGA	NVIDIA GeForce® GT 940MX 2GB GDDR5 + Intel® HD Graphics 620\r\nMàn hình	15.6-inch HD (1366x768)\r\nKết nối	1000Mbps / WLan 802.11b,g,n / Bluetooth\r\nTích hợp	Reader 8-in-1 / webcam 1.3Mpx / DVI / USB 3.0 / eSata / backlit\r\nTrọng lượng	2.4 Kg\r\nPin	trên 3giờ sử dụng\r\nHệ điều hành	Free Dos', 'dellvostro1.jpg', 16900000, 16050000, '2017-11-01', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `webinfo`
--

DROP TABLE IF EXISTS `webinfo`;
CREATE TABLE IF NOT EXISTS `webinfo` (
  `idwebinfo` tinyint(4) NOT NULL AUTO_INCREMENT,
  `sitename` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `phone` varchar(25) NOT NULL,
  PRIMARY KEY (`idwebinfo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webinfo`
--

INSERT INTO `webinfo` (`idwebinfo`, `sitename`, `email`, `logo`, `phone`) VALUES
(1, 'TN-COMPUTER', 'cskh@TN-COMPUTER.com', 'tn-logo.jpg', '0186.796.2017');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
