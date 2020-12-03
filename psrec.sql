-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2020 at 10:37 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `psrec`
--

-- --------------------------------------------------------

--
-- Table structure for table `claviers`
--

CREATE TABLE IF NOT EXISTS `claviers` (
  `clavref` varchar(5) NOT NULL,
  `clavnom` varchar(20) NOT NULL,
  `clavdesc` varchar(200) NOT NULL,
  `prix` float NOT NULL,
  PRIMARY KEY (`clavref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `claviers`
--

INSERT INTO `claviers` (`clavref`, `clavnom`, `clavdesc`, `prix`) VALUES
('c1', 'Clavier Gamer Mécani', 'Clavier Gamer Mécanique REDRAGON Kumara - Connectivité: Filaire - Interface: USB - Clavier mécanique QWERTY - commutateurs personnalisés (équivalent Cherry MX Blue) - 87 touches mécaniques - 12 touche', 150),
('c10', 'Clavier Gaming CORSA', 'Clavier mécanique Gaming CORSAIR Strafe Cherry MX Rétro-éclairé - Type de toucher: Switch Cherry MX Red - 104 Touches personnalisables (Entièrement programmable ) - Norme du clavier: AZERTY - Technolo', 500),
('c11', 'Clavier Gamer Mécani', 'Clavier Gamer Mécanique REDRAGON K530 Draconic - Connectivité: Filiare / Sans Fil (Bluetooth v5.0) - Clavier mécanique: QWERTY - Capacité de batterie longue durée de 2400mAh - 13 modes d''éclairage pré', 199),
('c12', 'Clavier Gamer Mécani', 'Clavier Gamer Mécanique REDRAGON Brahma - Connectivité: Filaire - Interface: USB  2.0 - Clavier mécanique QWERTY de 104 touches rétroéclairées - Commutateurs à clé: commutateurs bleus optiques OUTEMU ', 199),
('c13', 'Clavier Gamer REDRAG', 'Clavier Gamer REDRAGON K580 VATA - Connectivité: Filaire - Clavier mécanique AZERTY de 104 touches - 5 touches de macro programmables - 12 touches multimédias - 18 modèles de rétroéclairage - Fonction', 189),
('c2', 'Clavier Gamer HYPERX', 'Clavier Gamer HYPERX Alloy Core - Technologie de Connectivité: Filaire -  Interface avec l''ordinateur: USB - Norme du clavier: AZERTY - RGB (personnalisation multicolore sur 5 Zones) - 6 modes LED et ', 179),
('c3', 'Clavier Gamer SPIRIT', 'Clavier Mécanique SPIRIT OF GAMER XPERT K700 - Technologie de Connectivité: Filaire - Interface avec l''ordinateur: USB - Norme du clavier: AZERTY - Rétro-éclairage: LED - Clavier Gamer avec touches mé', 169),
('c4', 'Clavier ASUS TUF Gam', 'Clavier ASUS TUF Gaming K5 - Rétro-éclairé (Cinq zones d''éclairage ASUS Aura Sync RGB - Technologie de Connectivité: Filaire - Interface de Connetivité: USB - Norme de Clavier: AZERTY - Interrupteurs ', 269),
('c5', 'Clavier Gamer Mécani', 'Clavier Gamer Mécanique ESHARK - Technologie de Connectivité: Filaire - Interface avec l''ordinateur: USB - Anti-Ghosting: 87 boutons - Longueur de câble: 2m Détachable - Matériel: PU - Contre-jour: RV', 260),
('c6', 'Clavier KONIX Drakka', 'Clavier mécanique AZERTY Standard de 150 Touche -  Rétro-éclairage de l''intérieur des touches  avec 7 couleurs ,10 effets de lumiére - Verrouillage touche Windows et Application - compatible avec wind', 350),
('c7', 'Clavier Gamer Mécani', 'Clavier Gamer Mécanique SHARKOON Skiller Mech - Connectivité: Filaire - Clavier mécanique AZERTY standard de 107 touches - Une prise en main instantanée pour les pros du gaming - Éclairage RVB - Diffé', 200),
('c8', 'Clavier Gamer RAZER ', 'Clavier Gamer RAZER Blackwidow Tournament Chroma V2 - Norme de Clavier: QWERTY - Connectivité: Filaire - Interface avec l''ordinateur: USB - Clavier mécanique Razer™ - Conception compacte sans clavier ', 250),
('c9', 'Clavier Gamer RAZER ', 'Clavier Gamer BlackWidow X Chroma - Norme de Clavier: AZERTY - Connectivité: Filaire - Interface avec l''ordinateur: USB - Type de Touches: touches mécaniques à Switch Razer Green - Chassis en métal de', 360);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE IF NOT EXISTS `notes` (
  `refu` varchar(60) NOT NULL DEFAULT '',
  `refp` varchar(5) NOT NULL DEFAULT '',
  `note` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`refu`,`refp`,`note`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`refu`, `refp`, `note`) VALUES
('ayoub', 'c1', 10),
('ayoub', 'PC1', 4),
('ayoub', 'sp3', 5),
('fadhel', 'PC9', 2),
('rihab', 'c1', 6),
('rihab', 'c10', 9),
('rihab', 'PC9', 9),
('rihab', 'sp3', 7),
('rihab', 'sp8', 1),
('yassine', 'PC1', 6);

-- --------------------------------------------------------

--
-- Table structure for table `ordinateur`
--

CREATE TABLE IF NOT EXISTS `ordinateur` (
  `refpc` varchar(20) NOT NULL,
  `nompc` varchar(50) NOT NULL,
  `descriptionpc` varchar(200) NOT NULL,
  `prix` float NOT NULL,
  PRIMARY KEY (`refpc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordinateur`
--

INSERT INTO `ordinateur` (`refpc`, `nompc`, `descriptionpc`, `prix`) VALUES
('PC1', 'Pc de Bureau PARASITE i3 9è Gén 8Go 240 Go SSD ', 'Processeur: Intel Core i3-9100F 9 ème Génération (3.6 GHz up to 4.20 GHz, 6 Mo de mémoire cache, Quad-core) - Système D''exploitation: FreeDos - Mémoire RAM: 8 Go DDR4 - Disque Dur: 240 Go SSD - Carte ', 1000),
('PC10', 'PC Portable Gamer MSI GF63 i5 10è Gén 16Go 512 Go ', 'Ecran 15.6" FULL HD - Processeur: Intel Core i5-10300H (2.5 GHz up to 4.5 GHz, 8 Mo de mémoire cache, Quad-Core) - FreeDos - Mémoire RAM: 16 Go DDR4 - Disque dur: 512 Go SSD - Carte graphique: NVIDIA ', 2000),
('PC11', 'Pc Portable ASUS ROG STRIX G531GT i7 9é Gén 16Go 5', 'Ecran 15.6" Full HD - Processeur:  Intel Core i7-9750HQ (2.6 Ghz up to 4.5 Ghz, 12Mo de mémoire cache, Hexa-Core) - Windows 10 - Mémoire RAM: 16 Go DDR4 - Disque Dur: 512 Go SSD - Carte Graphique: Nvi', 2000),
('PC12', 'Pc Portable MSI GF75 THIN 9RCX i7 8Go 512Go SSD (G', 'Ecran 17.3" FULL HD - Processeur: Intel Core i7-9750H (2.6 GHz up to 4.5 GHz, 12 Mo de mémoire cache, Hexa-Core) - FreeDos - Mémoire RAM: 8 Go DDR4 2666 MHz - Disque dur: 512 Go SSD - Carte graphique ', 3000),
('PC13', 'Pc de Bureau MSI Gamer AEGIS TI3 8RD i7 8è Gén 32G', 'Processeur: Intel Core i7-8700k 8 ème Génération (3.70 GHz up to 4.70 Ghz, 12Mo cache, Hexa-Core) - Système D''exploitation: Windows 10 Home - Mémoire RAM: 32 Go - Disque Dur: 2 To + 256 Go SSD - Carte', 9000),
('PC14', 'Pc de Bureau Gamer Spirit Clone 2 i5 9è Gén 16Go 1', 'Processeur: Intel Core i5-9400 9 ème Génération (2.9 GHz up to 4.10 GHz, 9 Mo de mémoire cache, Hexa-core) - Système D''exploitation: FreeDos - Mémoire RAM: 16 Go DDR4 2400 MHz - Disque Dur: 1 To + 120', 3000),
('PC2', 'Pc de Bureau Gamer ADVANCE i5 9è Gén 8Go 240 Go SS', 'Processeur: Intel Core i5-9400F 9ème Génération (2.9 GHz up to 4.1 GHz, 9 Mo de mémoire cache, Hexa-core) - Système D''exploitation: FreeDos - Mémoire RAM: 8 Go - Disque Dur: 240 Go SSD - Carte graphiq', 1000),
('PC3', 'Pc de Bureau Gamer Spirit Deathmatch 7 i5 9è Gén 8', 'Processeur: Intel Core i5-9400F 9 ème Génération (2.9 GHz up to 4.10 GHz, 9 Mo de mémoire cache, Hexa-core) - Système D''exploitation: FreeDOS - Mémoire RAM: 8 Go DDR4 2400 MHz - Disque Dur: 1 To + 120', 1000),
('PC4', 'Pc de Bureau Gamer Spirit Deathmatch 5 i5 9è Gén 8', 'Processeur: Intel Core i5-9400 9 ème Génération (2.9 GHz up to 4.10 GHz, 9 Mo de mémoire cache, Hexa-core) - Système D''exploitation: FreeDos  - Mémoire RAM: 8 Go DDR4 2400 MHz - Disque Dur: 1 To + 120', 2000),
('PC5', 'Pc de Bureau Gamer SHARKOON i5 9è Gén 8Go 240Go SS', 'Processeur: i5-9400F 9ème Génération (2.9 GHz up to 4.1 GHz, 9 Mo de mémoire cache, Quad-core) - Système D''exploitation: FreeDos - Mémoire RAM: 8 Go DDR4 2666 Mhz - Disque Dur: 240 Go SSD - Carte grap', 2000),
('PC6', 'Pc de Bureau Gamer SPIRIT OF GAMER GHOST ONE i5 9è', 'Processeur: Intel Core i5-9400F 9ème Génération (2.9 GHz up to 4.1 GHz, 9 Mo de mémoire cache, Hexa-core) - Système D''exploitation: FreeDos - Mémoire RAM: 8 Go - Disque Dur: 1To + 120 Go SSD - Carte g', 2000),
('PC7', 'Pc Portable Gamer LENOVO L340 i5 9é Gén 8Go 2To - ', 'Ecran 15.6" FULL HD - Processeur: Intel Core i5-9300H (2.4 GHz up to 4.1 GHz, 8 Mo de mémoire cache, Quad-Core) - FreeDos - Mémoire RAM: 8 Go DDR4 - Disque dur: 2 To - Carte graphique: NVIDIA GeForce ', 2000),
('PC8', 'Pc Portable ASUS ROG Zephyrus GA502 AMD Ryzen 8Go ', 'Ecran 15.6" Full HD 120 Hz - Processeur: AMD RYZEN R7-3750H (2.3 Ghz up to 4.0 Ghz, 4 Mo de mémoire cache, Quad-Core) - Mémoire RAM: 8 Go DDR4 - Disque Dur: 512 Go SSD - Carte Graphique: NVIDIA GeForc', 2000),
('PC9', 'PC Portable HP Gaming Pavilion 15-ec0004nk AMD Ryz', 'Ecran 15.6'''' IPS FHD - Processeur: AMD RYZEN 5-3550H (2.1 Ghz up to 3.7 Ghz, 4 Mo de mémoire cache, Quad-Core) - Windows 10 Home - Mémoire RAM: 8Go DDR4 - Disque Dur: 512 Go SSD - Carte Graphique: NVI', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `smartphones`
--

CREATE TABLE IF NOT EXISTS `smartphones` (
  `refsp` varchar(5) NOT NULL,
  `nomsp` varchar(50) NOT NULL,
  `descsp` varchar(200) NOT NULL,
  `prix` float NOT NULL,
  PRIMARY KEY (`refsp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smartphones`
--

INSERT INTO `smartphones` (`refsp`, `nomsp`, `descsp`, `prix`) VALUES
('sp1', 'Smartphone LENOVO B A2016 4G Gold', 'Smartphone Lenovo B A2016 - Taille d''écran 4.5 Pouces WVGA TFT - Résolution d''écran: 854 x 480 pixels - Processeur Quad-Core 1.3GHz -  Systéme d''exploitation: Android 5.0 Lollipop - Mémoire RAM: 1 Go ', 149),
('sp10', 'Smartphone OPPO A12 - Bleu', 'Ecran 5.22" LCD IPS (700x 1630Pixels) - Ecran  Gorilla Glass 3 - Processeur: M765 quad-Core ( Cortex-A53 4x2,40 GHz et Cortex-A53 4x1,8 GHz) - Systéme d''exploitation: Android 8.0 (', 420),
('sp11', 'Smartphone HUAWEI Y6s 2019 - Noir', 'Ecran 6.09" IPS LCD (1560 x 720 Pixels) - Processeur: Octa-core (4x2.3 GHz Cortex-A53 & 4x1.8 GHz Cortex-A53) - Systéme d''exploitation: Android 9.0 Pie (EMUI 9) - Mémoire RAM: 3 Go - Stockage:  64 Go ', 430),
('sp12', 'Smartphone SAMSUNG Galaxy A10s Rouge (SM-A107F-RED', 'Ecran Infinity-V 6.2" HD+ Tactile - Résolution: (720 x 1520) - Systéme d''exploitation:  Android 9.0 - Processeur: Octa core (2.0 + 1.5 GHz) - Mémoire RAM: 2 Go - Stockage: 32 Go,  MicroSD jusqu''à 512 ', 474),
('sp13', 'Smartphone ALCATEL 3X 2019 - Noir (ALCATEL-3X-BLAC', 'Ecran: 6.52" IPS LCD - Résolution: 720 x 1600 pixels - Processeur: Mediatek MT6763V Helio P23 Octa core (4x2.0 GHz Cortex-A53 & 4x1.5 GHz Cortex-A53) - Système d''exploitation: Android 9.0 Pie - Mémoir', 569),
('sp14', 'Smartphone ALCATEL 3X 2019 - Vert (ALCATEL-3X-GREE', 'Ecran: 5.2"  Résolution: 840 x 1780 pixels - Processeur: M763V Hio P23 quad core (4x2.0 GHz Cortex-A53 & 4x1.5 GHz Cortex-A53) - Système : Android 8.0 Pie - Mémoir', 569),
('sp2', 'Smartphone IKU Y2 - Noir', 'Écran 5.0" - Processeur: Quad Core 1.3 GHz - Systéme d''exploitation: Android 8.1 - Mémoire RAM: 1 Go - Stockage: 8 Go - Appareil Photo Arriére: 5.0 MégaPixels - Appareil Photo Avant: 2.0 MégaPixels - ', 169),
('sp3', 'Smartphone IPRO L50 3G+ - Gold', 'Taille d''écran 5.0" - Processeur: Quad-Core - Systéme d''exploitation: Android 6.0 - Mémoire RAM: 1 Go - Stockage: 8 Go Extensible Jusqu''à 32 Go - Appareil Photo Arriére: 8.0 MégaPixels Led Flash light', 189),
('sp4', 'Smartphone IKU Y3 - Gold (IKU-Y3-GOLD)', 'Ecran: 5.5" HD - Processeur: Quad core - Système d''exploitation: Android - Mémoire RAM: 1 Go - Stockage: 16 Go - Appareil Photo Arriére: 5 MP + 2 MP - Appareil Photo Frontale: 5 MP - Capacité de Batte', 189),
('sp5', 'Smartphone EVERTEK M10 3G Bleu', 'Ecran: 5.45" TN FWVGA+ (480 x 960 pixels ) - Processeur: SC7731E Quad core 1.3GHz - Système d''exploitation: Android Go - Mémoire RAM: 1Go - Stockage: 16 Go - Appareil Photo Arriére 5.0 MP , Appareil P', 219),
('sp6', 'Smartphone EVERTEK M10 3G Rouge', 'Ecran: 6.45" TN FWA+ (820x 1605pixels ) - Processeur: SC77 Quad core 2.3GHz - Système d''exploitation: Android Go - Mémoire RAM: 1Go - Stockage: 16 Go - Appareil Photo 5.0 MP , Appareil P', 219),
('sp7', 'Smartphone NOKIA 2.3 Vert', 'Ecran 6,2” HD+ (720 x 1520 pixels) avec encoche à selfies - Processeur: MediaTek Helio A22 Quad-Core 2.0 GHz - Systéme d''exploitation: Android 9.0 Pie upgrade to Android 10.0; Android One - Mémoire RA', 350),
('sp8', 'Smartphone NOKIA 2.3 Gris', 'Ecran 5,2”  (830x 1650pixels) - Processeur: Helio A22 Octa-Core 2.0 GHz - Systéme d''exploitation: Android 9.0 Pie upgrade to Android 10.0; Android One - Mémoire RAM :8 GB', 369),
('sp9', 'Smartphone OPPO A12 - Noir', 'Ecran 6.22" LCD IPS (750 x 1520 Pixels) - Ecran Corning Gorilla Glass 3 - Processeur: Mediatek MT6765 Octa-Core ( Cortex-A53 4x2,35 GHz et Cortex-A53 4x1,8 GHz) - Systéme d''exploitation: Android 9.0 (', 450);

-- --------------------------------------------------------

--
-- Table structure for table `utilisateurs`
--

CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `username` varchar(60) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utilisateurs`
--

INSERT INTO `utilisateurs` (`username`, `password`) VALUES
('ayoub', 'ayoub'),
('fadhel', 'fadhel'),
('rihab', 'rihab'),
('yassine', 'yassine');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `FKu` FOREIGN KEY (`refu`) REFERENCES `utilisateurs` (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
