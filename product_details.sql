-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 17 Μάη 2019 στις 03:33:31
-- Έκδοση διακομιστή: 10.1.38-MariaDB
-- Έκδοση PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `product_details`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `kartes_grafikwn`
--

CREATE TABLE `kartes_grafikwn` (
  `id` int(2) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_link` varchar(555) NOT NULL,
  `sxolia` varchar(9999) NOT NULL,
  `apothema` int(11) NOT NULL,
  `timi` double NOT NULL,
  `image_link_sxolia` varchar(9999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `kartes_grafikwn`
--

INSERT INTO `kartes_grafikwn` (`id`, `name`, `image`, `image_link`, `sxolia`, `apothema`, `timi`, `image_link_sxolia`) VALUES
(20, 'MSI GeForce RTX 2060 6GB Gaming Z\r\n', 'msi.jpg', 'http://localhost/ShopBasket/msi.php', 'Taxitita mnimis: 14000MHz, Memory Bus: 192bit, Megisti Analisi: 7680x4320 pixels, Interface: PCI Express x16 3.0 , Kataskevastis: MSI', 45, 385.75, 'MSI V375-035R GPU family: NVIDIA GPU: GeForce RTX 2060 Separate graphics memory: 6GB. Graphics card memory type: GDDR6. Memory bus: 192 bit Maximum resolution: 7680 x 4320 pixels DirectX: 12.0 OpenGL Version: 4.5 Interface: PCI Express x16 3.0 Type of cooling: active Number of Fans: 2 Fans'),
(21, 'PNY Quadro NVS 810 4GB (VCNVS810DP-PB)', 'pny.jpg', 'http://localhost/ShopBasket/pny.php', 'Memory Bus: 128bit, Megisti Analisi: 4096x2160 pixels, Interface: PCI Express x16 3.0 , Kataskevastis: PNY', 56, 862.75, '192 NVIDIA CUDA Cores 954MHz Base Clock 1800MHz Memory Clock Low Profile Bracket Included HDMI, DVI-D & VGA Outputs'),
(22, 'Sapphire Radeon RX 590 8GB Nitro+ (11289-05)\r\n', 'radeon.jpg', 'http://localhost/ShopBasket/radeon.php', 'Taxitita Mnimis: 8000MHz, Memory Bus: 256bit, Megisti Analisi: 5120x2880 pixels, Interface: PCI Express x16 3.0 , Kataskevastis: Sapphire', 52, 262.12, 'Technology Power Armor: The custom-made Technology Power Armor represents the power and spirit of esports in the field. Multimode RGB : Multimode RGB can display different light effects, can be easily adjusted and set up a color scheme. Brand New iGame Zone 2: Contains 16 million RGB colors intended for RGB lights. Customers can customize their RGB lights via iGame Zone 2. Dual BIOS Switch Button: Simple and fast. Just press a button to achieve overclocking performance. Large area cooling area: Two nickel plated heatpipes optimize heat transfer in the environment and improve thermal efficiency.'),
(23, 'EVGA GeForce RTX 2070 8GB XC Ultra Gaming (08G-P4-2173-KR)', 'evga.jpg', 'http://localhost/ShopBasket/evga.php', 'Taxtitia Mnimis: 14000MHz, Memory Bus: 256bit, Megisti Analisi: 7680x4320 pixels, Interface: PCI Express x16 3.0 , Kataskevastis: EVGA', 150, 670.32, 'NVIDIA Turing GPU architecture delivers up to 6x faster performance than the previous generation of graphics cards. Experience real-time ray-tracing and artificial intelligence in games Dual HDB fans provide high cooling performance with very low noise. RGB LEDs offer a variety of configurations according to your own preferences Designed for EVGA Precision X1 - EVGA’s new tuning software monitors your graphics card and gives you the opportunity to overclock like a professional!');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `laptop`
--

CREATE TABLE `laptop` (
  `kodikos` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `sxolia` varchar(9999) NOT NULL,
  `apothema` int(11) NOT NULL,
  `timi` double DEFAULT NULL,
  `image_link_sxolia` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `laptop`
--

INSERT INTO `laptop` (`kodikos`, `name`, `image`, `image_link`, `sxolia`, `apothema`, `timi`, `image_link_sxolia`) VALUES
(1, 'Asus Zenbook UX433FA-A5046', 'asus.jpg', 'http://localhost/ShopBasket/asus.php', 'Asus Zenbook UX433FA-A5046 (i5-8265U/8GB/256GB/FHD/W10)', 35, 899, 'The Intel Core i7 processor from Intel offers ultra-mobile performance at all times with Intel Turbo Boost Technology 2.0 up to 4.6GHz, 8MB cache. Features: 14 inch FHD wide-view nanoEdge display, lightweight (1190g) and thin (15.9 mm) metal unibody, ErgoLift tilt hinge, NumberPad in glass touchpad, illuminated keyboard, MIL-STD 810G Battery: Up to 14 hours of battery life (3-cell 50Wh) Warranty: 2 years. For the warranty conditions, see \"Further technical information\". Your statutory warranty rights remain unaffected Box contents: ZenBook 13 UX433FN (UX433FN-A6782T) laptop sleeve'),
(2, 'Lenovo 530S-14IKB ', 'lenovo.jpg', 'http://localhost/ShopBasket/lenovo.php', 'Lenovo 530S-14IKB (Core i7-8550U/16GB/512GB/GeForce MX150//Windows 10)\r\n\r\n', 21, 1000, 'Processor: Intel Pentium 4415U (2.3 GHz/2 MB Smart Cache) Slim and lightweight (19.3 mm and 1.7 kg), Harman stereo speakers and Dolby audio sound optimisation Battery: Up to 12 hours of battery life Manufacturer\'s warranty: 2 year (S) in the event that this product is sold and shipped by Amazon. In the event that this product is sold and dispatched by a private seller The respective seller\'s own terms and conditions apply Box contents: Lenovo IdeaPad 320s 14IKB, 35.6 cm (14 inch) laptops Grey, Screen, mineral Grey, Power supply, documentation'),
(3, 'Acer Aspire A515-51G-87PK', 'acer.jpg', 'http://localhost\\ShopBasket/acer.php', 'Acer Aspire A515-51G-87PK (i7-8550U/8GB/1TB + 128GB/GeForce MX150/FHD/W10)\r\n', 40, 715.99, 'Prozessor: Intel Core i5-8265U (1,6 GH, bis zu 3,9 GHz Turbo-Boost) Besonderheiten: Das leuchtstarke und blickwinkelstabile Display ermöglicht eine Nutzung in jeder Lage und bei allen Lichtverhältnissen. Ideal für Office und Unterwegs mit leistungsstarker Ausstattung und hintergrundbeleuchteter QWERTZ-Tastatur Design: Schickes, schlankes Notebook mit eleganter Textur und edlen, gebürsteten Aluminiumoberflächen sowie einem nur knapp 8mm schmalen Displayrahmen Vielfältige Anschlüsse und Schnittstellen: Bluetooth 4.0, 1x HDMI, 1x USB 3.1 Type-C, 1x USB 3.0 (unterstützt Power-Off USB Charging), 2x USB 2.0, 1x Ethernet (RJ-45), Audio, SD Kartenleser Lieferumfang: Acer Aspire 5, 65W AC-Netzteil 2 Jahre Garantie. Bei Produktregistrierung wird die Garantie auf 3 Jahre erweitert. Die Garantiebedingungen finden Sie unter „Weitere technische Informationen.“'),
(4, 'Apple MacBook Air 13', 'apple.jpg', 'http://localhost/ShopBasket/apple.php', 'Apple MacBook Air 13\" 1.6GHz (i5/8GB/128GB/Retina) (2018)', 80, 1300.99, 'Brilliant Retina Display\r\nDual Core Intel Core i5 processor seventh generation\r\nIntel Iris plus graphics 640\r\nUltra quick SSD\r\nTwo Thunderbolt 3 (USB C) portsv');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `othoni`
--

CREATE TABLE `othoni` (
  `kod` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_link` varchar(555) NOT NULL,
  `sxolia` varchar(9999) NOT NULL,
  `apothema` int(11) NOT NULL,
  `timi` double NOT NULL,
  `image_link_sxolia` varchar(9999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `othoni`
--

INSERT INTO `othoni` (`kod`, `name`, `image`, `image_link`, `sxolia`, `apothema`, `timi`, `image_link_sxolia`) VALUES
(10, 'Samsung LS24D330HSX', 'samsung.jpg', 'http://localhost/ShopBasket/samsungotho.php', '24\", 1920x1080, xronos apokrisis: 1ms, Antithesi: 1000:1, 60Hz, Gaming Monitor , kataskevastis: Samsung', 120, 190, 'Full HD resolution (1920 x 1080 pixels), Screen size: 59,8 cm wide (23.5 inches), Contrast (dynamic): Mega Contrast, Brightness values: 250 cd/m², backlight technology: LED; Aspect Ratio: 16: 9 Eye Saver mode flicker free super slim Panel: with an incredibly slim profile of only 10 mm, as slim as a ball pen, is the panel half as thick as the previous screen models Easy to round stand: a simple round stand complements the slim Panel in elegant and functions Box contents: Samsung S24 °F356 °F 59,8 cm (23.5 inch) monitor black'),
(11, 'AOC G2460VQ6', 'aoc.jpg', 'http://localhost/ShopBasket/aoc.php', '24\", 1920x1080, xronos apokrisis: 1ms, Antithesi: 1000:1, 75Hz, Gaming Monitor , kataskevastis: AOC\r\n\r\n', 90, 130.8, 'Display Type:LED-backlit LCD monitor / TFT active matrix Colour:Black Contrast Ratio:1000:1 / 80000000:1 (dynamic) Viewable Size:24\" Video Bandwidth:165 MHz'),
(12, 'LG 29UM69G-B', 'lg.jpg', 'http://localhost/ShopBasket/lg.php', '29\", 2560x1080, xronos apokrisis: 5ms, 75Hz, Gaming Monitor , kataskevastis: LG', 98, 198, 'The Professional monitor for graphic power users offers a 21: 9 ratio and a curved screen Excellent colour (99% sRGB) and high display quality from any angle without distortion (IPS) When you play the synchronisation of monitors with the output of the video card thanks to the AMD Freesync technology Welcome Available even the popular black Stabilizer for better visibility in dark areas The height and of the tilt angle of the monitor can be adjusted to suit your head position thus making stay productive longer'),
(13, 'Asus VP28UQG\r\n', 'asus_othoni.jpg', 'http://localhost/ShopBasket/asusoth.php', '28\", 3840x2160, xronosapokrisi: 1ms, Antithesi: 1000:1, 60Hz, Gaming Monitor , kataskevastis: Asus', 65, 270.65, '27 inch 2 K WQHD (2560 x 1440) gaming monitor 165Hz, 1 millisecond reaction time, G sync technology Ultra low Blue Light, Flicker Free, game plus, game visual Manufacturer\'s guarantee: 3 years when fulfilled by Amazon. In the event that this product is sold and dispatched by a private seller The respective seller\'s own terms and conditions apply Box contents: ASUS ROG Swift PG278QR 68,68 cm (27 inches) gaming monitor, Power supply, DisplayPort cable, USB 3.0 cable, quick start guide, support CD, Warranty Card');

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `kartes_grafikwn`
--
ALTER TABLE `kartes_grafikwn`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `laptop`
--
ALTER TABLE `laptop`
  ADD PRIMARY KEY (`kodikos`);

--
-- Ευρετήρια για πίνακα `othoni`
--
ALTER TABLE `othoni`
  ADD PRIMARY KEY (`kod`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `kartes_grafikwn`
--
ALTER TABLE `kartes_grafikwn`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT για πίνακα `laptop`
--
ALTER TABLE `laptop`
  MODIFY `kodikos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT για πίνακα `othoni`
--
ALTER TABLE `othoni`
  MODIFY `kod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
