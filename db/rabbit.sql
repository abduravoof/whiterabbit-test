-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2021 at 07:57 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rabbit`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `code` varchar(30) NOT NULL,
  `title` varchar(5000) NOT NULL,
  `price` double NOT NULL,
  `image` varchar(1000) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `title`, `price`, `image`, `created_on`) VALUES
(1, 'B07ZT82V83', 'SHYLOC 18 Inches Big LED Ring Light for Photo and Video with Tripod Stand Compatible with Camera and Smartphones', 1099, 'https://m.media-amazon.com/images/I/61rTusujVWL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(2, 'B08HJ1ST92', 'MOBILIFE 3-in-1 Multifunctional Extendable Bluetooth Selfie Stick Tripod with Detachable Wireless Remote Compatible with iPhone/Samsung/Oppo/Vivo/MI and All Smartphones (Black)', 869, 'https://m.media-amazon.com/images/I/61V57aIphRL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(3, 'B071Z8M4KX', 'boAt Bassheads 100 in Ear Wired Earphones with Mic(Black)', 379, 'https://m.media-amazon.com/images/I/719elVA3FvL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(4, 'B07C2VJXP4', 'boAt Rockerz 255 Sports in-Ear Bluetooth Neckband Earphone with Mic (Active Black)', 1399, 'https://m.media-amazon.com/images/I/61ku39qVEzL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(5, 'B086CSGV2N', 'OnePlus Bullets Wireless Z in-Ear Bluetooth Earphones with Mic (Black)', 1999, 'https://m.media-amazon.com/images/I/616bhfyXimL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(6, 'B08HLTFB33', 'OnePlus Bullets Wireless Z Bass Edition (Reverb Red)', 1999, 'https://m.media-amazon.com/images/I/61DKcGr12OL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(7, 'B08GXC2NTX', 'Mi Smart Band 5-1.1” AMOLED Color Display, 2 Weeks Battery Life, 5ATM Water Resistant', 2499, 'https://m.media-amazon.com/images/I/719ZywAmvOL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(8, 'B08697N43N', 'Redmi 9 (Sky Blue, 4GB RAM, 64GB Storage)', 8999, 'https://m.media-amazon.com/images/I/71A9Vo1BatL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(9, 'B08JQN8DGZ', 'boAt Airdopes 121v2 TWS Earbuds with Bluetooth V5.0, Immersive Audio, Up to 14H Total Playback, Instant Voice Assistant, Easy Access Controls with Mic and Dual Tone Ergonomic Design(Active Black)', 1299, 'https://m.media-amazon.com/images/I/71ByNT34bfL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(10, 'B07WSHWNH8', 'pTron Bassbuds in-Ear True Wireless Bluetooth 5.0 Headphones with Hi-Fi Deep Bass, 20Hrs Playtime with Case, Ergonomic Sweatproof Earbuds, Noise Isolation, Voice Assistance &amp; Built-in Mic - (Black)', 1099, 'https://m.media-amazon.com/images/I/61HSxuSHiKL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(11, 'B089MS8XQ3', 'Redmi 9 Power (Blazing Blue, 4GB RAM, 64GB Storage) - 6000mAh Battery | 48MP Quad Camera', 10999, 'https://m.media-amazon.com/images/I/71hEzQGO5qL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(12, 'B085J1D8BH', 'Samsung Galaxy M31 Prime Edition (Space Black, 6GB RAM, 128GB Storage)', 16499, 'https://m.media-amazon.com/images/I/71Sinqbw35L._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(13, 'B01DEWVZ2C', 'JBL C100SI In-Ear Deep Bass Headphones with Mic (Black)', 599, 'https://m.media-amazon.com/images/I/61ptzNC8r8L._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(14, 'B07XMFDHSG', 'realme Buds 2 with Mic for Android Smartphones (Black)', 599, 'https://m.media-amazon.com/images/I/51F5+NiGOxL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(15, 'B08K8QSBLT', 'Sounce Protective Carrying Case for AirPods Pro Case with Hybrid Frame and Keychain', 569, 'https://m.media-amazon.com/images/I/61sf621kqyL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(16, 'B08RSBS9BH', 'Ring Light with Stand 18&#34; inch Professional Big LED Ring Light with 9 Feet Tripod Stand | 3 Color Modes Dimmable Lighting | for YouTube | Photo-Shoot | Video Shoot | Live Stream | Makeup &amp; Vlogging', 949, 'https://m.media-amazon.com/images/I/71fLRKTmdWL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(17, 'B086978F2L', 'Redmi 9A (Sea Blue, 2GB Ram, 32GB Storage)', 6999, 'https://m.media-amazon.com/images/I/71hDPUM7VPL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(18, 'B005FYNT3G', 'SanDisk Cruzer Blade 32GB USB Flash Drive', 349, 'https://m.media-amazon.com/images/I/61pHXsALAOL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(19, 'B08697N43M', 'Redmi 9A (Nature Green, 3GB Ram, 32GB Storage)', 7499, 'https://m.media-amazon.com/images/I/71hDPUM7VPL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(20, 'B077Q7GW9V', 'Redmi Note 9 Pro (Aurora Blue, 4GB RAM, 64GB Storage) - Latest 8nm Snapdragon 720G &amp; Alexa Hands-Free', 12999, 'https://m.media-amazon.com/images/I/811axeBSeRL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(21, 'B08HV83HL3', 'Mi Power Bank 3i 20000mAh (Sandstone Black) Triple Output and Dual Input Port | 18W Fast Charging | Power Delivery', 1498, 'https://m.media-amazon.com/images/I/71lVwl3q-kL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(22, 'B085W8CFLH', 'pTron Tangent Lite Bluetooth 5.0 Wireless Headphones with Hi-Fi Stereo Sound, 6Hrs Playtime, Lightweight Ergonomic Neckband, Sweat-Resistant Magnetic Earbuds, Voice Assistant &amp; Mic - (Black)', 649, 'https://m.media-amazon.com/images/I/51WMTgHR3tL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(23, 'B07XY541GH', 'OnePlus Buds Z (White)', 2999, 'https://m.media-amazon.com/images/I/51vwQzwM+ZL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(24, 'B077PWJRFH', 'Redmi Note 9 Pro Max (Aurora Blue, 6GB RAM, 64GB Storage)- 64MP Quad Camera &amp; Alexa Hands-Free', 0, 'https://m.media-amazon.com/images/I/71XpBd7i1SL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(25, 'B08696XB4B', 'Redmi 9A (Nature Green, 2GB Ram, 32GB Storage)', 6999, 'https://m.media-amazon.com/images/I/71hDPUM7VPL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(26, 'B082VS5H3Y', 'boAt Rockerz 255 Pro in-Ear Bluetooth Neckband Earphone with Mic(Navy Blue)', 1499, 'https://m.media-amazon.com/images/I/61fkjbrjnUL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(27, 'B089MS7D8F', 'Redmi 9 Power (Mighty Black 4GB RAM 64GB Storage) - 6000mAh Battery | 48MP Quad Camera', 10999, 'https://m.media-amazon.com/images/I/71hEzQGO5qL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(28, 'B08RSY2653', 'Samsung Galaxy M02s (Blue,4GB RAM, 64GB Storage) | 5000 mAh | Triple Camera', 9999, 'https://m.media-amazon.com/images/I/71wkpcIfqdL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(29, 'B08VDBBMH7', 'Energy Type C 3.1 Amp Fast Charging Data and Sync Cable Extra Tough Quick Charge Compatible (3.3ft/1m) - White', 199, 'https://m.media-amazon.com/images/I/51azOgpv-QL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(30, 'B08VGNT9TL', 'ENeRGY Micro USB 2.4 Amp Fast Charging Data and Sync Cable Extra Tough Quick Charge 18W Compatible (3.3ft/1m) - White', 89, 'https://m.media-amazon.com/images/I/61EM1JugF8L._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(31, 'B07ZT82V83', 'SHYLOC 18 Inches Big LED Ring Light for Photo and Video with Tripod Stand Compatible with Camera and Smartphones', 1099, 'https://m.media-amazon.com/images/I/61rTusujVWL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(32, 'B08BYB1VJN', 'Isoelite Television Remote Compatible for Sony LED LCD HD Tv Remote Control Model No :- RM-GA025', 279, 'https://m.media-amazon.com/images/I/31HHX3gdK7L._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(33, 'B07ZZW86G4', 'All-new Fire TV Stick Lite with Alexa Voice Remote Lite | Stream HD Quality Video | No power and volume buttons | 2020 release', 2999, 'https://m.media-amazon.com/images/I/51ISBkuNWZL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(34, 'B07S9S86BF', 'boAt Bassheads 242 in Ear Wired Earphones with Mic(Active Black)', 499, 'https://m.media-amazon.com/images/I/61+tzvHZi+L._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(35, 'B08RSWTH32', 'Samsung Galaxy M02s (Blue,3GB RAM, 32GB Storage) | 5000 mAh | Triple Camera', 8999, 'https://m.media-amazon.com/images/I/71wkpcIfqdL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(36, 'B08JQLB5CG', 'boAt Airdopes 121v2 TWS Earbuds with Bluetooth V5.0, Immersive Audio, Up to 14H Total Playback, Instant Voice Assistant, Easy Access Controls with Mic and Dual Tone Ergonomic Design(Midnight Blue)', 1299, 'https://m.media-amazon.com/images/I/71255RhSmoL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(37, 'B086WM3RB8', 'boAt Airdopes 441 TWS Ear-Buds with IWP Technology, Immersive Audio, Up to 30H Total Playback, IPX7 Water Resistance, Super Touch Controls, Secure Sports Fit &amp; Type-C Port(Active Black)', 2499, 'https://m.media-amazon.com/images/I/61-1B-m03bL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(38, 'B07T8GQV54', 'boAt Rockerz 255 Sports in-Ear Bluetooth Neckband Earphone with Mic(Ocean Blue)', 1399, 'https://m.media-amazon.com/images/I/61N1qHNeeSL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(39, 'B08697N43G', 'Redmi 9A (Midnight Black, 2GB RAM, 32GB Storage)', 6999, 'https://m.media-amazon.com/images/I/71hDPUM7VPL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(40, 'B01M9C51T9', 'boAt Bassheads 225 in Ear Wired Earphones with Mic(Black)', 499, 'https://m.media-amazon.com/images/I/61iSV4o+X-L._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(41, 'B01N6LU1VF', 'SanDisk Ultra Dual 64GB USB 3.0 OTG Pen Drive', 670, 'https://m.media-amazon.com/images/I/71bV203ASmL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(42, 'B0746JGVDS', 'ELV Car Mount Adjustable Car Phone Holder Universal Long Arm, Windshield for Smartphones - Black', 349, 'https://m.media-amazon.com/images/I/61sCL37xvlL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(43, 'B077PWBC78', 'Redmi Note 9 Pro (Interstellar Black, 4GB RAM, 64GB Storage)- Latest 8nm Snapdragon 720G &amp; Alexa Hands-Free', 12999, 'https://m.media-amazon.com/images/I/811axeBSeRL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(44, 'B07YY1BY5B', 'Noise Colorfit Pro 2 Full Touch Control Smart Watch Jet Black', 2999, 'https://m.media-amazon.com/images/I/6113mS+xhyL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(45, 'B08K8QSBLT', 'Sounce Protective Carrying Case for AirPods Pro Case with Hybrid Frame and Keychain', 569, 'https://m.media-amazon.com/images/I/61sf621kqyL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(46, 'B08RSBS9BH', 'Ring Light with Stand 18&#34; inch Professional Big LED Ring Light with 9 Feet Tripod Stand | 3 Color Modes Dimmable Lighting | for YouTube | Photo-Shoot | Video Shoot | Live Stream | Makeup &amp; Vlogging', 949, 'https://m.media-amazon.com/images/I/71fLRKTmdWL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(47, 'B07HGJJ559', 'Samsung Galaxy M21 (Midnight Blue, 4GB RAM, 64GB Storage)', 13999, 'https://m.media-amazon.com/images/I/71dujTTJDZL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(48, 'B07S8PSW59', 'boAt Bassheads 102 in Ear Wired Earphones with Mic(Charcoal Black)', 399, 'https://m.media-amazon.com/images/I/51fMwaNRSJL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(49, 'B01J0XWYKQ', 'Logitech B170 Wireless Mouse, 2.4 GHz with USB Nano Receiver, Optical Tracking, 12-Months Battery Life, Ambidextrous, PC/Mac/Laptop - Black', 599, 'https://m.media-amazon.com/images/I/51kdFjyPRAL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(50, 'B07YYNX5X6', 'Nokia 105 Single SIM (Black)', 1158, 'https://m.media-amazon.com/images/I/31Z2ee9oYQL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(51, 'B089MS8HPF', 'Redmi 9 Power (Electric Green, 4GB RAM, 64GB Storage) - 6000mAh Battery | 48MP Quad Camera', 10999, 'https://m.media-amazon.com/images/I/71hEzQGO5qL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(52, 'B086985T6R', 'Redmi 9 (Carbon Black, 4GB RAM, 64GB Storage)', 8999, 'https://m.media-amazon.com/images/I/71A9Vo1BatL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(53, 'B07GPXXNNG', 'boAt Bassheads 100 in Ear Wired Earphones with Mic(Taffy Pink)', 379, 'https://m.media-amazon.com/images/I/719sf-DtkvL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(54, 'B08HLSW3Y9', 'OnePlus Bullets Wireless Z Bass Edition (Bass Blue)', 1994, 'https://m.media-amazon.com/images/I/61FIXrKNH5L._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(55, 'B0789LZTCJ', 'boAt Rugged v3 Extra Tough Unbreakable Braided Micro USB Cable 1.5 Meter (Black)', 299, 'https://m.media-amazon.com/images/I/61b91WUDxmL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(56, 'B08RSWQ6YZ', 'Samsung Galaxy M02s (Black,3GB RAM, 32GB Storage) | 5000 mAh | Triple Camera', 8999, 'https://m.media-amazon.com/images/I/71IkA3T7hIL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(57, 'B084DS51NC', 'boAt Airdopes 441 TWS Ear-Buds with IWP Technology, Immersive Audio, Up to 30H Total Playback, IPX7 Water Resistance, Super Touch Controls, Secure Sports Fit &amp; Type-C Port(Raging Red)', 1999, 'https://m.media-amazon.com/images/I/61rlb0IYNuL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(58, 'B077PWJ8RS', 'Redmi Note 9 Pro Max (Interstellar Black, 6GB RAM, 64GB Storage) - 64MP Quad Camera &amp; Alexa Hands-Free', 14999, 'https://m.media-amazon.com/images/I/71XpBd7i1SL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(59, 'B08VGNT9TL', 'ENeRGY Micro USB 2.4 Amp Fast Charging Data and Sync Cable Extra Tough Quick Charge 18W Compatible (3.3ft/1m) - White', 89, 'https://m.media-amazon.com/images/I/61EM1JugF8L._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(60, 'B08B421R4N', 'LOHAYA Air Conditioner Remote Compatible for Voltas Smart Split Ac Remote Control with WiFi Function (Please Match The Image with Your Old Remote)', 499, 'https://m.media-amazon.com/images/I/61HC-JPhCrL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(61, 'B07ZT82V83', 'SHYLOC 18 Inches Big LED Ring Light for Photo and Video with Tripod Stand Compatible with Camera and Smartphones', 1099, 'https://m.media-amazon.com/images/I/61rTusujVWL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(62, 'B08HJ1ST92', 'MOBILIFE 3-in-1 Multifunctional Extendable Bluetooth Selfie Stick Tripod with Detachable Wireless Remote Compatible with iPhone/Samsung/Oppo/Vivo/MI and All Smartphones (Black)', 869, 'https://m.media-amazon.com/images/I/61V57aIphRL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(63, 'B074ZF7PVZ', 'boAt Bassheads 900 On Ear Wired Headphones(Carbon Black)', 759, 'https://m.media-amazon.com/images/I/61xeIT6UHrL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(64, 'B08RSXPPFY', 'Samsung Galaxy M02s (Black,4GB RAM, 64GB Storage) | 5000 mAh | Triple Camera', 9999, 'https://m.media-amazon.com/images/I/71IkA3T7hIL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(65, 'B0856H13TW', 'boAt Airdopes 201 Bluetooth Truly Wireless Earbuds with Mic(Raging Red)', 1949, 'https://m.media-amazon.com/images/I/61lvvJhXFQL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(66, 'B07XY9BZPM', 'OnePlus Band : Smart Everywear : 1.1” AMOLED Display, Dual-Color Band Design, Continuous Blood Oxygen Saturation Monitoring (Sp02), 5ATM + IP68 Water &amp; Dust Resistant', 2499, 'https://m.media-amazon.com/images/I/61XPTRJZcCL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(67, 'B076B8G5D8', 'Boya BYM1 Omnidirectional Lavalier Condenser Microphone with 20ft Audio Cable (Black)', 793, 'https://m.media-amazon.com/images/I/41UYenF+lnL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(68, 'B08RSWHMZ6', 'Samsung Galaxy M02s (Red,3GB RAM, 32GB Storage) | 5000 mAh | Triple Camera', 8999, 'https://m.media-amazon.com/images/I/71tI3JEgeeL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(69, 'B08HVL8QN3', 'Mi 10000mAH Li-Polymer Power Bank 3i with 18W Fast Charging (Midnight Black)', 899, 'https://m.media-amazon.com/images/I/71Rcb9pnbEL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(70, 'B08444S68L', 'Oppo A31 (Mystery Black, 6GB RAM, 128GB Storage) with No Cost EMI/Additional Exchange Offers', 11990, 'https://m.media-amazon.com/images/I/71KCwNV6MuL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(71, 'B0762JYGDP', 'ELV Desktop Cell Phone Stand Tablet Stand, Aluminum Stand Holder for Mobile Phone (All Size) and Tablet (Up to 10.1 inch) - Black', 149, 'https://m.media-amazon.com/images/I/61ALO0BDcJL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(72, 'B08NB1YRW2', 'WeCool Moonwalk Mini TWS Bluetooth Earphones or True Wireless Earbuds with Magnetic Charging Case, IPX5 Wireless Earphones with Digital Battery Indicator for Crisp and Clear Sound, Secure Sports Fit', 699, 'https://m.media-amazon.com/images/I/61kMZ0w6WOL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(73, 'B0869855B8', 'OnePlus Nord 5G (Blue Marble, 12GB RAM, 256GB Storage)', 29999, 'https://m.media-amazon.com/images/I/71Lx9l3NivL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(74, 'B08444SXZ6', 'Oppo A31 (Fantasy White, 6GB RAM, 128GB Storage) with No Cost EMI/Additional Exchange Offers', 11990, 'https://m.media-amazon.com/images/I/61CnyJ-IbML._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(75, 'B08K8QSBLT', 'Sounce Protective Carrying Case for AirPods Pro Case with Hybrid Frame and Keychain', 569, 'https://m.media-amazon.com/images/I/61sf621kqyL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(76, 'B08RSBS9BH', 'Ring Light with Stand 18&#34; inch Professional Big LED Ring Light with 9 Feet Tripod Stand | 3 Color Modes Dimmable Lighting | for YouTube | Photo-Shoot | Video Shoot | Live Stream | Makeup &amp; Vlogging', 949, 'https://m.media-amazon.com/images/I/71fLRKTmdWL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(77, 'B08697MJDK', 'Redmi 9 Prime (Mint Green, 4GB RAM, 64GB Storage)- Full HD+ Display &amp; AI Quad Camera', 9499, 'https://m.media-amazon.com/images/I/71TwXw2LQRL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(78, 'B07HGH8D2R', 'Samsung Galaxy M21 (Raven Black, 4GB RAM, 64GB Storage)', 13999, 'https://m.media-amazon.com/images/I/71QLvGIAq5L._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(79, 'B07PR1CL3S', 'boAt Rockerz 450 Bluetooth On-Ear Headphone with Mic(Luscious Black)', 1399, 'https://m.media-amazon.com/images/I/61ihz46SLOL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(80, 'B07GQD4K6L', 'boAt Bassheads 100 in Ear Wired Earphones with Mic(Furious Red)', 379, 'https://m.media-amazon.com/images/I/61l+14s5QVL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(81, 'B08HLVKCKC', 'OnePlus Buds Z (Gray)', 2990, 'https://m.media-amazon.com/images/I/51lTzQUZDEL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(82, 'B014AKZMNK', 'HP 680 Original Ink Advantage Cartridge (Black)', 755, 'https://m.media-amazon.com/images/I/71kSLhL3NDL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(83, 'B07HGLC2CG', 'Redmi Note 9 Pro Max (Aurora Blue, 6GB RAM, 128GB Storage) - 64MP Quad Camera &amp; Latest 8nm Snapdragon 720G &amp; Alexa Hands-Free', 17499, 'https://m.media-amazon.com/images/I/71XpBd7i1SL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(84, 'B085J1J32G', 'Samsung Galaxy M51 (Electric Blue, 6GB RAM, 128GB Storage)', 22999, 'https://m.media-amazon.com/images/I/710weRkP-nL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(85, 'B06XSK3XL6', 'boAt Dual Port Rapid Car Charger (Qualcomm Certified) with Quick Charge 3.0 + Free Micro USB Cable - (Black)', 449, 'https://m.media-amazon.com/images/I/61vb6LHsqpL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(86, 'B08697WT6D', 'OnePlus Nord 5G (Gray Onyx, 12GB RAM, 256GB Storage)', 0, 'https://m.media-amazon.com/images/I/71zlbKfhFsL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(87, 'B081QXQVFM', 'pTron Bassbuds Lite V2 In-Ear True Wireless Bluetooth 5.0 Headphones with HiFi Deep Bass, Total 20Hrs Playtime, Ergonomic Sweatproof Earbuds, Noise Isolation, Voice Assistance &amp; Built-in Mic - (Black)', 999, 'https://m.media-amazon.com/images/I/51YMl+OstqL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(88, 'B07GVR9TG7', 'TP-Link Archer C6 Gigabit MU-MIMO Wireless Router, Dual Band 1200 Mbps Wi-Fi Speed, 5 Gigabit Ports, 4 External Antennas and 1 Internal Antenna WiFi Coverage with Access Point Mode, Qualcomm Chipset', 2499, 'https://m.media-amazon.com/images/I/51NOjinGjrL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(89, 'B08VDBBMH7', 'Energy Type C 3.1 Amp Fast Charging Data and Sync Cable Extra Tough Quick Charge Compatible (3.3ft/1m) - White', 199, 'https://m.media-amazon.com/images/I/51azOgpv-QL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(90, 'B08VGNT9TL', 'ENeRGY Micro USB 2.4 Amp Fast Charging Data and Sync Cable Extra Tough Quick Charge 18W Compatible (3.3ft/1m) - White', 89, 'https://m.media-amazon.com/images/I/61EM1JugF8L._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(91, 'B07ZT82V83', 'SHYLOC 18 Inches Big LED Ring Light for Photo and Video with Tripod Stand Compatible with Camera and Smartphones', 1099, 'https://m.media-amazon.com/images/I/61rTusujVWL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(92, 'B08HJ1ST92', 'MOBILIFE 3-in-1 Multifunctional Extendable Bluetooth Selfie Stick Tripod with Detachable Wireless Remote Compatible with iPhone/Samsung/Oppo/Vivo/MI and All Smartphones (Black)', 869, 'https://m.media-amazon.com/images/I/61V57aIphRL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(93, 'B009VCGPSY', 'HP X1000 Wired Mouse (Black/Grey)', 349, 'https://m.media-amazon.com/images/I/61mucoT+ifL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(94, 'B088YDXJV1', 'Boult Audio BassBuds Storm-X in-Ear Wired Earphones with Mic and Full Metal Body for Extra Bass &amp; HD Sound with Passive Noise Cancellation (Grey)', 349, 'https://m.media-amazon.com/images/I/71WPsX6PIQL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(95, 'B08H8Q5KLK', 'Noise Air Buds Truly Wireless Bluetooth Earbuds with Mic for Crystal Clear Calls &amp; Music, 20 Hour Playtime &amp; Smart Touch Control - ICY White', 2279, 'https://m.media-amazon.com/images/I/61QEtif9zRL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(96, 'B086KCDGTQ', 'Samsung Galaxy M01 (Blue, 3GB RAM, 32GB Storage) with No Cost EMI/Additional Exchange Offers', 7499, 'https://m.media-amazon.com/images/I/81o1rDu5FZL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(97, 'B082MDMW3X', 'Infinity (JBL) Glide 120 Metal in-Ear Wireless Flex Neckband with Bluetooth 5.0 and IPX5 Sweatproof (Black and Yellow)', 1099, 'https://m.media-amazon.com/images/I/61D+CNKWRTL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(98, 'B082VSJPD6', 'boAt Rockerz 255 Pro in-Ear Bluetooth Neckband Earphone with Mic(Teal Green)', 1400, 'https://m.media-amazon.com/images/I/61bPTboEr+L._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(99, 'B08D75R3Z1', 'pTron Boom Ultima 4D Dual Driver, in-Ear Gaming Wired Headphones with in-line Mic, Volume Control &amp; Passive Noise Cancelling Boom 3 Earphones - (Dark Blue)', 599, 'https://m.media-amazon.com/images/I/61qpkPzbEEL._AC_UY218_.jpg', '2021-02-07 19:40:37'),
(100, 'B08BY1G7N3', 'WeCool Moonwalk M1 True Wireless Earbuds (TWS) IPX 5 and Digital Display Charging Case, Bluetooth Earphones with Mic for Calls and HD Stereo Music', 799, 'https://m.media-amazon.com/images/I/61DmRvjZCIL._AC_UY218_.jpg', '2021-02-07 19:40:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
