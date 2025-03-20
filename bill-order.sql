-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 09, 2025 lúc 08:46 SA
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- DATABASE: `bill-order`
--

-- --------------------------------------------------------

--
--  `data_info_user`
--

CREATE TABLE `data_info_user` (
  `id` int(11) NOT NULL,
  `last_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `phone1` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
--  `data_info_user`
--

INSERT INTO `data_info_user` (`id`, `last_name`, `address`, `city`, `state`, `zip`, `phone1`, `email`) VALUES
(1, 'Adkin', '4 Kohler Memorial Dr', 'Boston', 'MA', '02108', '718-201-3751', 'badkin@hotmail.com'),
(2, 'Amyot', '49 N Mays St', 'Boston', 'MA', '02108', '337-515-1438', 'jamyot@hotmail.com'),
(3, 'Fredicks', '42754 S Ash Ave', 'Boston', 'MA', '02108', '716-752-4114', 'helga_fredicks@yahoo.com'),
(4, 'Goldammer', '170 Wyoming Ave', 'Boston', 'MA', '02108', '952-334-9408', 'cgoldammer@cox.net'),
(5, 'Birkner', '7061 N 2nd St', 'Boston', 'MA', '02108', '952-702-7993', 'qbirkner@aol.com'),
(6, 'Brachle', '3829 Ventura Blvd', 'Boston', 'MA', '02108', '406-318-1515', 'raina.brachle@brachle.org'),
(7, 'Delasancha', '38773 Gravois Ave', 'Boston', 'MA', '02108', '307-403-1488', 'mdelasancha@hotmail.com'),
(8, 'Klimek', '137 Pioneer Way', 'Boston', 'MA', '02108', '312-303-5453', 'vklimek@klimek.org'),
(9, 'Cookey', '9 Murfreesboro Rd', 'Boston', 'MA', '02108', '773-494-4195', 'ccookey@cookey.org'),
(10, 'Nievas', '45 E Acacia Ct', 'Boston', 'MA', '02108', '773-704-9903', 'erick_nievas@aol.com'),
(11, 'Toelkes', '4284 Dorigo Ln', 'Boston', 'MA', '02108', '773-446-5569', 'viva.toelkes@gmail.com'),
(12, 'Meteer', '72 Beechwood Ter', 'Boston', 'MA', '02108', '773-225-9985', 'nichelle_meteer@meteer.com'),
(13, 'Vonasek', '2845 Boulder Crescent St', 'Boston', 'MA', '02108', '216-923-3715', 'kattie@vonasek.org'),
(14, 'Nabours', '80 Pittsford Victor Rd #9', 'Boston', 'MA', '02108', '216-230-4892', 'adelina_nabours@gmail.com'),
(15, 'Raymo', '9 Vanowen St', 'Boston', 'MA', '02108', '979-718-8968', 'mraymo@yahoo.com'),
(16, 'Bachman', '721 Interstate 45 S', 'Boston', 'MA', '02108', '719-853-3600', 'jaclyn@aol.com'),
(17, 'Saras', '8 Us Highway 22', 'Boston', 'MA', '02108', '719-669-1664', 'sherita.saras@cox.net'),
(18, 'Farrar', '6882 Torresdale Ave', 'Boston', 'MA', '02108', '803-352-5387', 'jade.farrar@yahoo.com'),
(19, 'Figeroa', '386 9th Ave N', 'Boston', 'MA', '02108', '936-336-3951', 'bfigeroa@aol.com'),
(20, 'Modzelewski', '77132 Coon Rapids Blvd Nw', 'Boston', 'MA', '02108', '936-264-9294', 'tracey@hotmail.com'),
(21, 'Castros', '80312 W 32nd St', 'Boston', 'MA', '02108', '936-751-7961', 'annmarie_castros@gmail.com'),
(22, 'Rauser', '8728 S Broad St', 'Boston', 'MA', '02108', '631-443-4710', 'krauser@cox.net'),
(23, 'Blunk', '99586 Main St', 'Boston', 'MA', '02108', '214-428-2285', 'frederica_blunk@gmail.com'),
(24, 'Grenet', '2167 Sierra Rd', 'Boston', 'MA', '02108', '517-499-2322', 'kenneth.grenet@grenet.org'),
(25, 'Ehmann', '92899 Kalakaua Ave', 'Boston', 'MA', '02108', '915-452-1290', 'kristel.ehmann@aol.com'),
(26, 'Breland', '35 E Main St #43', 'Boston', 'MA', '02108', '847-519-5906', 'joni_breland@cox.net'),
(27, 'Hudnall', '17 Jersey Ave', 'Boston', 'MA', '02108', '303-402-1940', 'mitzie_hudnall@yahoo.com'),
(28, 'Rowling', '1 N San Saba', 'Boston', 'MA', '02108', '814-865-8113', 'jacqueline.rowling@yahoo.com'),
(29, 'Munns', '461 Prospect Pl #316', 'Boston', 'MA', '02108', '817-914-7518', 'mmunns@cox.net'),
(30, 'Gato', '37 Alabama Ave', 'Boston', 'MA', '02108', '847-728-7286', 'lai.gato@gato.org'),
(31, 'Campain', '1048 Main St', 'Boston', 'MA', '02108', '907-231-4722', 'roxane@hotmail.com'),
(32, 'Ferencz', '20 S Babcock St', 'Boston', 'MA', '02108', '907-741-1044', 'erick.ferencz@aol.com'),
(33, 'Hengel', '87 Imperial Ct #79', 'Boston', 'MA', '02108', '701-898-2154', 'lavonda@cox.net'),
(34, 'Tomasulo', '2 S 15th St', 'Boston', 'MA', '02108', '817-526-4408', 'whitley.tomasulo@aol.com'),
(35, 'Berlanga', '79 S Howell Ave', 'Boston', 'MA', '02108', '616-737-3085', 'vberlanga@berlanga.com'),
(36, 'Keneipp', '33 N Michigan Ave', 'Boston', 'MA', '02108', '920-353-6377', 'kate_keneipp@yahoo.com'),
(37, 'Angalich', '2 W Beverly Blvd', 'Boston', 'MA', '02108', '717-528-8996', 'ahmed.angalich@angalich.com'),
(38, 'Duenas', '8100 Jacksonville Rd #7', 'Boston', 'MA', '02108', '785-629-8542', 'kimberlie_duenas@yahoo.com'),
(39, 'Dickerson', '69 Marquette Ave', 'Boston', 'MA', '02108', '510-993-3758', 'dominque.dickerson@dickerson.org'),
(40, 'Schnitzler', '38 Pleasant Hill Rd', 'Boston', 'MA', '02108', '510-686-3407', 'gschnitzler@gmail.com'),
(41, 'Jacobos', '2184 Worth St', 'Boston', 'MA', '02108', '510-974-8671', 'refugia.jacobos@jacobos.com'),
(42, 'Ketelsen', '2 Flynn Rd', 'Boston', 'MA', '02108', '516-847-4418', 'dean_ketelsen@gmail.com'),
(43, 'Dinos', '18 Waterloo Geneva Rd', 'Boston', 'MA', '02108', '847-233-3075', 'daron_dinos@cox.net'),
(44, 'Saylors', '2 Lighthouse Ave', 'Boston', 'MA', '02108', '952-768-2416', 'fsaylors@saylors.org'),
(45, 'Gudroe', '6651 Municipal Rd', 'Boston', 'MA', '02108', '985-890-7262', 'larae_gudroe@gmail.com'),
(46, 'Gellinger', '4 Bloomfield Ave', 'Boston', 'MA', '02108', '972-934-6914', 'gearldine_gellinger@gellinger.com'),
(47, 'Kolmetz', '618 W Yakima Ave', 'Boston', 'MA', '02108', '972-303-9197', 'willard@hotmail.com'),
(48, 'Threets', '2 A Kelley Dr', 'Boston', 'MA', '02108', '914-861-9748', 'leslie@cox.net'),
(49, 'Andreason', '4 Cowesett Ave', 'Boston', 'MA', '02108', '201-920-9002', 'tasia_andreason@yahoo.com'),
(50, 'Toyama', '4252 N Washington Ave #9', 'Boston', 'MA', '02108', '817-765-5781', 'barrett.toyama@toyama.org'),
(51, 'Keener', '3424 29th St Se', 'Boston', 'MA', '02108', '830-258-2769', 'ruthann@hotmail.com'),
(52, 'Lace', '43 Huey P Long Ave', 'Boston', 'MA', '02108', '337-740-9323', 'kayleigh.lace@yahoo.com'),
(53, 'Reiber', '206 Main St #2804', 'Boston', 'MA', '02108', '517-906-1108', 'lreiber@cox.net'),
(54, 'Albares', '56 E Morehead St', 'Boston', 'MA', '02108', '956-537-6195', 'calbares@gmail.com'),
(55, 'Deleo', '1844 Southern Blvd', 'Boston', 'MA', '02108', '501-308-1040', 'cdeleo@deleo.com'),
(56, 'Lindall', '2664 Lewis Rd', 'Boston', 'MA', '02108', '303-724-7371', 'carmelina_lindall@lindall.com'),
(57, 'Louissant', '97 E 3rd St #9', 'Boston', 'MA', '02108', '718-976-8610', 'sheron@aol.com'),
(58, 'Tawil', '3882 W Congress St #799', 'Boston', 'MA', '02108', '323-765-2528', 'ftawil@hotmail.com'),
(59, 'Samara', '4119 Metropolitan Dr', 'Boston', 'MA', '02108', '213-975-8026', 'cristal@cox.net'),
(60, 'Caldarera', '25 E 75th St #69', 'Boston', 'MA', '02108', '310-498-5651', 'kiley.caldarera@aol.com'),
(61, 'Beech', '598 43rd St', 'Boston', 'MA', '02108', '310-820-2117', 'louvenia.beech@beech.com'),
(62, 'Kitzman', '429 Tiger Ln', 'Boston', 'MA', '02108', '310-560-8022', 'chau@gmail.com'),
(63, 'Barfield', '47154 Whipple Ave Nw', 'Boston', 'MA', '02108', '310-774-7643', 'stephaine@barfield.com'),
(64, 'Skursky', '47939 Porter Ave', 'Boston', 'MA', '02108', '310-579-2907', 'benton.skursky@aol.com'),
(65, 'Seewald', '4 Otis St', 'Boston', 'MA', '02108', '818-423-4007', 'shenika@gmail.com'),
(66, 'Frankel', '87 Sierra Rd', 'Boston', 'MA', '02108', '626-636-4117', 'tfrankel@aol.com'),
(67, 'Dilello', '52777 Leaders Heights Rd', 'Boston', 'MA', '02108', '909-639-9887', 'lindsey.dilello@hotmail.com'),
(68, 'Gibes', '83649 W Belmont Ave', 'Boston', 'MA', '02108', '626-572-1096', 'cory.gibes@gmail.com'),
(69, 'Upthegrove', '4 E Colonial Dr', 'Boston', 'MA', '02108', '619-509-5282', 'rupthegrove@yahoo.com'),
(70, 'Mccullan', '87895 Concord Rd', 'Boston', 'MA', '02108', '619-461-9984', 'brett.mccullan@mccullan.com'),
(71, 'Sturiale', '9 N 14th St', 'Boston', 'MA', '02108', '619-608-1763', 'peggie@cox.net'),
(72, 'Zepp', '395 S 6th St #2', 'Boston', 'MA', '02108', '619-603-5125', 'vzepp@gmail.com'),
(73, 'Lother', '3989 Portage Tr', 'Boston', 'MA', '02108', '760-971-4322', 'cristy@lother.com'),
(74, 'Korando', '7 W Pinhook Rd', 'Boston', 'MA', '02108', '516-509-2347', 'ckorando@hotmail.com'),
(75, 'Bowley', '762 S Main St', 'Boston', 'MA', '02108', '608-336-7444', 'emerson.bowley@bowley.org'),
(76, 'Gabisi', '40 Cambridge Ave', 'Boston', 'MA', '02108', '608-967-7194', 'jgabisi@hotmail.com'),
(77, 'Colaizzo', '4 Nw 12th St #3849', 'Boston', 'MA', '02108', '608-382-4541', 'cecilia_colaizzo@colaizzo.com'),
(78, 'Frey', '54169 N Main St', 'Boston', 'MA', '02108', '516-948-5768', 'theola_frey@frey.com'),
(79, 'Paa', '1 S Pine St', 'Boston', 'MA', '02108', '901-412-4381', 'linn_paa@paa.com'),
(80, 'Rodefer', '2 W Grand Ave', 'Boston', 'MA', '02108', '901-901-4726', 'bernardine_rodefer@yahoo.com'),
(81, 'Kownacki', '2 Se 3rd Ave', 'Boston', 'MA', '02108', '972-666-3413', 'sue@aol.com'),
(82, 'Perigo', '596 Santa Maria Ave #7913', 'Boston', 'MA', '02108', '972-419-7946', 'amie.perigo@yahoo.com'),
(83, 'Shinko', '426 Wolf St', 'Boston', 'MA', '02108', '504-979-9175', 'solange@shinko.com'),
(84, 'Maclead', '37275 St  Rt 17m M', 'Boston', 'MA', '02108', '631-335-3414', 'amaclead@gmail.com'),
(85, 'Slusarski', '3273 State St', 'Boston', 'MA', '02108', '732-658-3154', 'alisha@slusarski.com'),
(86, 'Swayze', '278 Bayview Ave', 'Boston', 'MA', '02108', '734-561-6170', 'quentin_swayze@yahoo.com'),
(87, 'Rim', '322 New Horizon Blvd', 'Boston', 'MA', '02108', '414-661-9598', 'gladys.rim@rim.org'),
(88, 'Kalafatis', '1950 5th Ave', 'Boston', 'MA', '02108', '414-263-5287', 'noah.kalafatis@aol.com'),
(89, 'Yglesias', '59 Shady Ln #53', 'Boston', 'MA', '02108', '414-748-1374', 'maurine_yglesias@yglesias.com'),
(90, 'Weirather', '9 N College Ave #3', 'Boston', 'MA', '02108', '414-959-2540', 'dweirather@aol.com'),
(91, 'Tegarden', '755 Harbor Way', 'Boston', 'MA', '02108', '414-214-8697', 'virgina_tegarden@tegarden.com'),
(92, 'Fillingim', '25 Minters Chapel Rd #9', 'Boston', 'MA', '02108', '612-508-2655', 'skye_fillingim@yahoo.com'),
(93, 'Brucato', '201 Ridgewood Rd', 'Boston', 'MA', '02108', '208-252-4552', 'winfred_brucato@hotmail.com'),
(94, 'Wrinkles', '6 Van Buren St', 'Boston', 'MA', '02108', '914-855-2115', 'nana@aol.com'),
(95, 'Maile', '2094 Montour Blvd', 'Boston', 'MA', '02108', '231-467-9978', 'sharee_maile@aol.com'),
(96, 'Kohnert', '134 Lewis Rd', 'Boston', 'MA', '02108', '615-406-7854', 'audra@kohnert.com'),
(97, 'Good', '5221 Bear Valley Rd', 'Boston', 'MA', '02108', '615-390-2251', 'casie.good@aol.com'),
(98, 'Suell', '90177 N 55th Ave', 'Boston', 'MA', '02108', '615-246-1824', 'caprice@aol.com'),
(99, 'Klusman', '3 Secor Rd', 'Boston', 'MA', '02108', '504-710-5840', 'arlene_klusman@gmail.com'),
(100, 'Butt', '6649 N Blue Gum St', 'Boston', 'MA', '02108', '504-621-8927', 'jbutt@gmail.com'),
(101, 'Rodeigues', '3718 S Main St', 'Boston', 'MA', '02108', '504-463-4384', 'terrilyn.rodeigues@cox.net'),
(102, 'Kusko', '90991 Thorburn Ave', 'Boston', 'MA', '02108', '212-582-4976', 'wkusko@yahoo.com'),
(103, 'Stockham', '128 Bransten Rd', 'Boston', 'MA', '02108', '212-675-8570', 'jose@yahoo.com'),
(104, 'Springe', '229 N Forty Driv', 'Boston', 'MA', '02108', '212-260-3151', 'layla.springe@cox.net'),
(105, 'Shealy', '8 Industry Ln', 'Boston', 'MA', '02108', '212-332-8435', 'oshealy@hotmail.com'),
(106, 'Bolognia', '4486 W O St #1', 'Boston', 'MA', '02108', '212-402-9216', 'bbolognia@yahoo.com'),
(107, 'Mallett', '7 S San Marcos Rd', 'Boston', 'MA', '02108', '212-870-1286', 'mirta_mallett@gmail.com'),
(108, 'Buvens', '3305 Nabell Ave #679', 'Boston', 'MA', '02108', '212-674-9610', 'tawna@gmail.com'),
(109, 'Sergi', '2742 Distribution Way', 'Boston', 'MA', '02108', '212-860-1579', 'asergi@gmail.com'),
(110, 'Agramonte', '5 Harrison Rd', 'Boston', 'MA', '02108', '212-313-1783', 'fausto_agramonte@yahoo.com'),
(111, 'Mugnolo', '38062 E Main St', 'Boston', 'MA', '02108', '212-304-9225', 'jmugnolo@yahoo.com'),
(112, 'Aquas', '8977 Connecticut Ave Nw #3', 'Boston', 'MA', '02108', '269-756-7222', 'jaquas@aquas.com'),
(113, 'Butzen', '41 Steel Ct', 'Boston', 'MA', '02108', '507-210-3510', 'rodolfo@hotmail.com'),
(114, 'Kardas', '21575 S Apple Creek Rd', 'Boston', 'MA', '02108', '402-896-5943', 'colette.kardas@yahoo.com'),
(115, 'Oldroyd', '7219 Woodfield Rd', 'Boston', 'MA', '02108', '913-413-4604', 'doldroyd@aol.com'),
(116, 'Acey', '7 West Ave #1', 'Boston', 'MA', '02108', '847-222-1734', 'geoffrey@gmail.com'),
(117, 'Frerking', '8429 Miller Rd', 'Boston', 'MA', '02108', '914-868-5965', 'mireya.frerking@hotmail.com'),
(118, 'Shire', '90131 J St', 'Boston', 'MA', '02108', '908-409-2890', 'van.shire@shire.com'),
(119, 'Berganza', '3 Railway Ave #75', 'Boston', 'MA', '02108', '973-936-5095', 'heike@gmail.com'),
(120, 'Saulter', '3958 S Dupont Hwy #7', 'Boston', 'MA', '02108', '201-474-4924', 'eladia@saulter.com'),
(121, 'Francescon', '2726 Charcot Ave', 'Boston', 'MA', '02108', '973-649-2922', 'rolland@cox.net'),
(122, 'Smith', '4646 Kaahumanu St', 'Boston', 'MA', '02108', '201-672-1553', 'tsmith@aol.com'),
(123, 'Farrow', '28 S 7th St #2824', 'Boston', 'MA', '02108', '201-238-5688', 'arthur.farrow@yahoo.com'),
(124, 'Sawchuk', '3 State Route 35 S', 'Boston', 'MA', '02108', '201-971-1638', 'nelida@gmail.com'),
(125, 'Stenseth', '45 E Liberty St', 'Boston', 'MA', '02108', '201-709-6245', 'ernie_stenseth@aol.com'),
(126, 'Rentfro', '7163 W Clark Rd', 'Boston', 'MA', '02108', '732-605-4781', 'vrentfro@cox.net'),
(127, 'Gleich', '78 Maryland Dr #146', 'Boston', 'MA', '02108', '973-210-3994', 'catarina_gleich@hotmail.com'),
(128, 'Madarang', '798 Lund Farm Way', 'Boston', 'MA', '02108', '973-310-1634', 'kimbery_madarang@cox.net'),
(129, 'Wolfgramm', '9745 W Main St', 'Boston', 'MA', '02108', '973-545-7355', 'irma.wolfgramm@hotmail.com'),
(130, 'Lipkin', '65 Mountain View Dr', 'Boston', 'MA', '02108', '973-654-1561', 'adell.lipkin@lipkin.com'),
(131, 'Stem', '501 N 19th Ave', 'Boston', 'MA', '02108', '856-487-5412', 'lizette.stem@aol.com'),
(132, 'Palaia', '43496 Commercial Dr #29', 'Boston', 'MA', '02108', '856-312-2629', 'alpha@yahoo.com'),
(133, 'Venere', '8 W Cerritos Ave #54', 'Boston', 'MA', '02108', '856-636-8749', 'art@venere.org'),
(134, 'Harnos', '13 Gunnison St', 'Boston', 'MA', '02108', '972-558-1665', 'ryan@cox.net'),
(135, 'Ventura', '53 W Carey St', 'Boston', 'MA', '02108', '845-823-8877', 'cventura@yahoo.com'),
(136, 'Burnard', '66697 Park Pl #3224', 'Boston', 'MA', '02108', '307-342-7795', 'lburnard@burnard.com'),
(137, 'Labreche', '9581 E Arapahoe Rd', 'Boston', 'MA', '02108', '248-357-8718', 'dulce_labreche@yahoo.com'),
(138, 'Fern', '7140 University Ave', 'Boston', 'MA', '02108', '307-704-8713', 'natalie.fern@hotmail.com'),
(139, 'Flosi', '394 Manchester Blvd', 'Boston', 'MA', '02108', '815-828-2147', 'fletcher.flosi@yahoo.com'),
(140, 'Wildfong', '26849 Jefferson Hwy', 'Boston', 'MA', '02108', '847-633-3216', 'cassi.wildfong@aol.com'),
(141, 'Tolfree', '81 Norris Ave #525', 'Boston', 'MA', '02108', '631-957-7624', 'latrice.tolfree@hotmail.com'),
(142, 'Devreese', '1953 Telegraph Rd', 'Boston', 'MA', '02108', '816-557-9673', 'diane@cox.net'),
(143, 'Semidey', '369 Latham St #500', 'Boston', 'MA', '02108', '314-732-9131', 'kasandra_semidey@semidey.com'),
(144, 'Sama', '4923 Carey Ave', 'Boston', 'MA', '02108', '314-787-1588', 'bsama@cox.net'),
(145, 'Maynerich', '2023 Greg St', 'Boston', 'MA', '02108', '651-591-2583', 'chantell@yahoo.com'),
(146, 'Weglarz', '51120 State Route 18', 'Boston', 'MA', '02108', '801-293-9853', 'lonny_weglarz@gmail.com'),
(147, 'Neither', '636 Commerce Dr #42', 'Boston', 'MA', '02108', '952-651-7597', 'mneither@yahoo.com'),
(148, 'Caudy', '86 Nw 66th St #8673', 'Boston', 'MA', '02108', '913-388-2079', 'chanel.caudy@caudy.org'),
(149, 'Wieser', '5 Boston Ave #88', 'Boston', 'MA', '02108', '605-414-2147', 'sage_wieser@cox.net'),
(150, 'Sweigard', '61304 N French Rd', 'Boston', 'MA', '02108', '732-941-2621', 'csweigard@sweigard.com'),
(151, 'Corbley', '406 Main St', 'Boston', 'MA', '02108', '908-275-8357', 'candida_corbley@hotmail.com'),
(152, 'Mulqueen', '44 W 4th St', 'Boston', 'MA', '02108', '718-332-6527', 'timothy_mulqueen@mulqueen.org'),
(153, 'Lukasik', '89 20th St E #779', 'Boston', 'MA', '02108', '586-970-7380', 'markus@yahoo.com'),
(154, 'Iturbide', '1 Central Ave', 'Boston', 'MA', '02108', '715-662-6764', 'allene_iturbide@cox.net'),
(155, 'Bourbon', '62 W Austin St', 'Boston', 'MA', '02108', '516-816-1541', 'sbourbon@yahoo.com'),
(156, 'Luczki', '422 E 21st St', 'Boston', 'MA', '02108', '315-304-4759', 'yolando@cox.net'),
(157, 'Loader', '37 N Elm St #916', 'Boston', 'MA', '02108', '253-660-7821', 'alex@loader.com'),
(158, 'Whobrey', '1 State Route 27', 'Boston', 'MA', '02108', '313-288-7937', 'yuki_whobrey@aol.com'),
(159, 'Demesa', '9 Norristown Rd', 'Boston', 'MA', '02108', '518-497-2940', 'hdemesa@cox.net'),
(160, 'Nestle', '39 S 7th St', 'Boston', 'MA', '02108', '931-875-6644', 'lnestle@hotmail.com'),
(161, 'Shin', '2239 Shawnee Mission Pky', 'Boston', 'MA', '02108', '931-273-8709', 'jshin@shin.com'),
(162, 'Ryser', '649 Tulane Ave', 'Boston', 'MA', '02108', '918-644-9555', 'sylvie@aol.com'),
(163, 'Mclaird', '6 Sunrise Ave', 'Boston', 'MA', '02108', '315-818-2638', 'emclaird@mclaird.com'),
(164, 'Schirpke', '34 Saint George Ave #2', 'Braintree', 'MA', '02184', '207-295-7569', 'goldie.schirpke@yahoo.com'),
(165, 'Samu', '64 Lakeview Ave', 'Braintree', 'MA', '02184', '608-976-7199', 'estrella@aol.com'),
(166, 'Latzke', '70 Euclid Ave #722', 'Braintree', 'MA', '02184', '631-748-6479', 'lemuel.latzke@gmail.com'),
(167, 'Hidvegi', '9635 S Main St', 'Braintree', 'MA', '02184', '208-649-2373', 'dhidvegi@yahoo.com'),
(168, 'Mondella', '74 W College St', 'Braintree', 'MA', '02184', '208-862-5339', 'vmondella@mondella.com'),
(169, 'Gillaspie', '67 Rv Cent', 'Braintree', 'MA', '02184', '208-709-1235', 'bgillaspie@gillaspie.com'),
(170, 'Buemi', '4 Webbs Chapel Rd', 'Braintree', 'MA', '02184', '303-301-4946', 'alease@buemi.com'),
(171, 'Isaacs', '6 Gilson St', 'Braintree', 'MA', '02184', '718-809-3762', 'bok.isaacs@aol.com'),
(172, 'Buzick', '64 Newman Springs Rd E', 'Braintree', 'MA', '02184', '718-478-8504', 'france.buzick@yahoo.com'),
(173, 'Shadrick', '61047 Mayfield Ave', 'Braintree', 'MA', '02184', '718-232-2337', 'shalon@cox.net'),
(174, 'Aredondo', '25657 Live Oak St', 'Braintree', 'MA', '02184', '718-560-9537', 'rhea_aredondo@cox.net'),
(175, 'Sweely', '22 Bridle Ln', 'Cambridge', 'MA', '02238', '314-359-9566', 'tresa_sweely@hotmail.com'),
(176, 'Herritt', '88 15th Ave Ne', 'Cambridge', 'MA', '02238', '607-407-3716', 'kirk.herritt@aol.com'),
(177, 'Padilla', '8927 Vandever Ave', 'Cambridge', 'MA', '02238', '254-463-4368', 'bulah_padilla@hotmail.com'),
(178, 'Bruschke', '840 15th Ave', 'Cambridge', 'MA', '02238', '254-782-8569', 'danica_bruschke@gmail.com'),
(179, 'Lietz', '40 9th Ave Sw #91', 'Cambridge', 'MA', '02238', '248-980-6904', 'cherry@lietz.com'),
(180, 'Parlato', '74989 Brandon St', 'Cambridge', 'MA', '02238', '585-866-8313', 'moon@yahoo.com'),
(181, 'Wenner', '4545 Courthouse Rd', 'Cambridge', 'MA', '02238', '516-968-6051', 'twenner@aol.com'),
(182, 'Fallick', '44 58th St', 'Cambridge', 'MA', '02238', '847-979-9545', 'jfallick@yahoo.com'),
(183, 'Bubash', '6535 Joyce St', 'Cambridge', 'MA', '02238', '940-276-7922', 'alecia@aol.com'),
(184, 'Munis', '2094 Ne 36th Ave', 'Cambridge', 'MA', '02238', '508-456-4907', 'levi.munis@gmail.com'),
(185, 'Boord', '523 Marquette Ave', 'Cambridge', 'MA', '02238', '978-697-6263', 'annabelle.boord@cox.net'),
(186, 'Tollner', '7 Eads St', 'Framingham', 'MA', '01701', '773-573-6914', 'mitsue_tollner@yahoo.com'),
(187, 'Maybury', '4 Warehouse Point Rd #7', 'Framingham', 'MA', '01701', '773-775-4522', 'marti.maybury@yahoo.com'),
(188, 'Suffield', '3270 Dequindre Rd', 'Milton', 'MA', '02186', '631-258-6558', 'gwenn_suffield@suffield.org'),
(189, 'Fortino', '669 Packerland Dr #1438', 'Milton', 'MA', '02186', '303-404-2210', 'pamella@fortino.com'),
(190, 'Kiel', '76598 Rd  I 95 #1', 'Milton', 'MA', '02186', '303-776-7548', 'vkiel@hotmail.com'),
(191, 'Paulas', '866 34th Ave', 'Milton', 'MA', '02186', '303-623-4241', 'hpaulas@gmail.com'),
(192, 'Berray', '29 Cherry St #7073', 'Milton', 'MA', '02186', '515-370-7348', 'gberray@gmail.com'),
(193, 'Polidori', '5 Little River Tpke', 'Newton', 'MA', '02458', '978-626-2978', 'katina_polidori@aol.com'),
(194, 'Briddick', '38938 Park Blvd', 'Newton', 'MA', '02458', '617-399-5124', 'jina_briddick@briddick.com'),
(195, 'Jurney', '25 Se 176th Pl', 'Newton', 'MA', '02458', '617-365-2134', 'ljurney@hotmail.com'),
(196, 'Menter', '8 County Center Dr #647', 'Newton', 'MA', '02458', '617-418-5043', 'oretha_menter@yahoo.com'),
(197, 'Kines', '3 Aspen St', 'Newton', 'MA', '02458', '508-429-8576', 'dkines@hotmail.com'),
(198, 'Treston', '57254 Brickell Ave #372', 'Newton', 'MA', '02458', '508-769-5250', 'lucy@cox.net'),
(199, 'Rulapaugh', '6980 Dorsett Rd', 'Quincy', 'MA', '02169', '785-463-7829', 'kati.rulapaugh@hotmail.com'),
(200, 'Scriven', '33 State St', 'Quincy', 'MA', '02169', '325-631-1560', 'lilli@aol.com'),
(201, 'Schieler', '5 E Truman Rd', 'Quincy', 'MA', '02169', '325-869-2649', 'glory@yahoo.com'),
(202, 'Royster', '74 S Westgate St', 'Quincy', 'MA', '02169', '518-966-7987', 'mroyster@royster.com'),
(203, 'Bookamer', '89992 E 15th St', 'Quincy', 'MA', '02169', '308-726-2182', 'flo.bookamer@cox.net'),
(204, 'Pontoriero', '812 S Haven St', 'Quincy', 'MA', '02169', '806-703-1435', 'cathrine.pontoriero@pontoriero.com'),
(205, 'Paprocki', '639 Main St', 'Quincy', 'MA', '02169', '907-385-4412', 'lpaprocki@hotmail.com'),
(206, 'Giguere', '1747 Calle Amanecer #2', 'Quincy', 'MA', '02169', '907-870-5536', 'wilda@cox.net'),
(207, 'Kitty', '735 Crawford Dr', 'Quincy', 'MA', '02169', '907-435-9166', 'gail@kitty.com'),
(208, 'Weight', '18 Fountain St', 'Quincy', 'MA', '02169', '907-797-9628', 'penney_weight@aol.com'),
(209, 'Turinetti', '70099 E North Ave', 'Quincy', 'MA', '02169', '817-213-8851', 'kristeen@gmail.com'),
(210, 'Acuff', '73 W Barstow Ave', 'Quincy', 'MA', '02169', '847-353-2156', 'wacuff@gmail.com'),
(211, 'Rhoden', '92 Broadway', 'Quincy', 'MA', '02169', '718-228-5894', 'jrhoden@yahoo.com'),
(212, 'Candlish', '45 2nd Ave #9759', 'Quincy', 'MA', '02169', '770-732-1194', 'sarah.candlish@gmail.com'),
(213, 'Monterrubio', '26 Montgomery St', 'Quincy', 'MA', '02169', '770-679-4752', 'renea@hotmail.com'),
(214, 'Ferrario', '48 Stratford Ave', 'Salem', 'MA', '01970', '909-993-3242', 'jferrario@hotmail.com'),
(215, 'Bergesen', '7667 S Hulen St #42', 'Stoughton', 'MA', '02072', '914-300-9193', 'alaine_bergesen@cox.net'),
(216, 'Hauenstein', '8573 Lincoln Blvd', 'Stoughton', 'MA', '02072', '717-809-3119', 'fabiola.hauenstein@hauenstein.org'),
(217, 'Hollack', '59 N Groesbeck Hwy', 'Worcester', 'MA', '01436', '512-486-3817', 'cecily@hollack.org'),
(218, 'Bilden', '3125 Packer Ave #9851', 'Worcester', 'MA', '01436', '512-223-4791', 'mariann.bilden@aol.com'),
(219, 'Gesick', '2026 N Plankinton Ave #3', 'Worcester', 'MA', '01436', '512-213-8574', 'rgesick@gesick.org'),
(220, 'Hanafan', '37855 Nolan Rd', 'Worcester', 'MA', '01436', '207-458-9196', 'jhanafan@gmail.com'),
(221, 'Smart', '110 Celtics Way', 'Boston', 'MA', '02111', '5551112211', 'marsmart222@gmail.com');

-- --------------------------------------------------------

--
--  `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
--  `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(1, 1, 31, 1, '12.00'),
(2, 1, 32, 1, '9.00'),
(3, 2, 9, 12, '7.00'),
(4, 3, 10, 1, '4.50'),
(5, 3, 11, 1, '4.50');

-- --------------------------------------------------------

--
--  `order_list`
--

CREATE TABLE `order_list` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
--  `order_list`
--

INSERT INTO `order_list` (`order_id`, `user_id`, `total_price`, `order_date`) VALUES
(1, 203, '21.00', '2025-03-09 07:21:41'),
(2, 194, '84.00', '2025-03-09 07:40:50'),
(3, 109, '9.00', '2025-03-09 07:46:24');

-- --------------------------------------------------------

--
--  `price_list_product`
--

CREATE TABLE `price_list_product` (
  `id` int(11) NOT NULL,
  `items` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
--  `price_list_product`
--

INSERT INTO `price_list_product` (`id`, `items`, `price`) VALUES
(1, 'ball gown', '12'),
(2, 'baseball cap', '3.5'),
(3, 'bathing suit', '6'),
(4, 'beret', '4.5'),
(5, 'Bermuda shorts', '7'),
(6, 'bikini', '7'),
(7, 'blazer', '24'),
(8, 'blouse', '13'),
(9, 'bow tie', '7'),
(10, 'boxer shorts', '4.5'),
(11, 'boxers', '4.5'),
(12, 'bra', '4.5'),
(13, 'briefs', '4.5'),
(14, 'button-down shirt', '12'),
(15, 'camisole', '7'),
(16, 'cardigan', '17'),
(17, 'coveralls', '32'),
(18, 'dinner jacket', '45'),
(19, 'dress', '32'),
(20, 'dress shirt', '19'),
(21, 'evening gown', '44'),
(22, 'fatigues', '66'),
(23, 'flannel nightgown', '19'),
(24, 'flannel shirt', '19.5'),
(25, 'fur coat', '60'),
(26, 'gloves', '15'),
(27, 'gown', '25'),
(28, 'hoodie', '12.5'),
(29, 'housecoat', '12.5'),
(30, 'jacket', '45'),
(31, 'jeans', '12'),
(32, 'jersey', '9');

--
-- SHOW TABLE
--

--
-- show `data_info_user`
--
ALTER TABLE `data_info_user`
  ADD PRIMARY KEY (`id`);

--
-- show `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- show `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- show `price_list_product`
--
ALTER TABLE `price_list_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT 
--

--
-- AUTO_INCREMENT `data_info_user`
--
ALTER TABLE `data_info_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;
--
-- AUTO_INCREMENT `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT `order_list`
--
ALTER TABLE `order_list`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT `price_list_product`
--
ALTER TABLE `price_list_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- 
--

--
--  `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`order_id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `price_list_product` (`id`);

--
--  `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `data_info_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
