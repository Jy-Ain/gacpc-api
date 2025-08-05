-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 20 Juin 2025 à 14:33
-- Version du serveur :  10.1.21-MariaDB
-- Version de PHP :  7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gacpc`
--

-- --------------------------------------------------------

--
-- Structure de la table `activites`
--

CREATE TABLE `activites` (
  `ID` int(10) NOT NULL,
  `type_activites` varchar(100) NOT NULL,
  `annee` year(4) NOT NULL,
  `duree` varchar(50) DEFAULT NULL,
  `intitule` varchar(150) NOT NULL,
  `id_institution` int(10) DEFAULT NULL,
  `departement` varchar(200) DEFAULT NULL,
  `id_chercheur` int(10) NOT NULL,
  `thematique` varchar(150) DEFAULT NULL,
  `objectifs_global` varchar(250) DEFAULT NULL,
  `id_partenaires` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `activites`
--

INSERT INTO `activites` (`ID`, `type_activites`, `annee`, `duree`, `intitule`, `id_institution`, `departement`, `id_chercheur`, `thematique`, `objectifs_global`, `id_partenaires`) VALUES
(1, 'PR', 2020, '?', 'Traitement des eaux usées industrielles et études d’impact environnemental', 8, 'DEPARTEMENT CHIMIE', 2, 'Environnement', 'Contribuer à la protection de l’environnement', 3),
(2, 'PR', 2020, '?,', 'Contrôle et analyses chimiques', 8, 'DEPARTEMENT CHIMIE', 4, 'Environnement', 'Contribuer à la protection de l’environnement', 4),
(3, 'PR', 2020, '?', 'Production intégrée de bioéthanol à partir de  toaka gasy , canne à sucre bagasse', 6, 'DEPARTEMENT CHIMIE', 3, 'Environnement', 'Optimiser les résultats de recherche sur le Jatropha de Madagascar pour un développement intégré du monde rural', 4),
(7, 'PR', 2010, '11 mois', 'sfqffsdqfsqdf', 7, 'DEPARTEMENT CHIMIE', 5, 'fsfssdf', 'fqsfsdffqfqf', 9),
(10, 'dsfqsdf', 1999, '7', 'sfsdfqsd', 12, 'sdfsqdf', 3, 'fsdfsdf', 'sfdsqf', 9),
(11, 'SDFDFMJ', 0000, '6', 'DFSDF', 5, 'SDFSDQFSD', 3, 'FSDFQ', 'DSFSQDF', 8),
(12, 'jkjmlk', 2000, '6', 'sdfqsdf', 12, 'sdfsqf', 5, 'fqsf', 'dsfqsdf', 9),
(13, 'jkljlkm', 1995, '6', 'dfdsf', 5, 'ssfqf', 2, 'sdfdsqf', 'fsdfq', 9),
(14, 'sdfqsdf', 1992, '66', 'fqsfd', 6, 'sdfsdfsqf', 2, 'fsdfqsdf', 'fqsdfsf', 4),
(15, 'sdfsdqf', 1999, '56', 'sdfsqdf', 8, 'dfsdqfsdf', 23, 'fsqdfs', 'sdfsqdf', 9),
(17, 'dsfqsdf', 2000, '99', 'sdfsdff', 8, 'sdfsdf', 2, 'dsfsqdfsdq', 'sdfsqdf', 8);

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) NOT NULL,
  `type_article` varchar(100) NOT NULL,
  `annee` varchar(50) NOT NULL,
  `titre` varchar(200) NOT NULL,
  `id_chercheur` varchar(10) NOT NULL,
  `date_enregistrement` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`id`, `type_article`, `annee`, `titre`, `id_chercheur`, `date_enregistrement`) VALUES
(1, 'Publication', '2014', 'A novel approach to tackle biodiversity and climate change issues, with a focus on rice stem borers and white grubs in Madagascar. 3rd annual ESA (Entomological Society of America) International Branc', '7', '2020-02-01'),
(2, 'dfqsdfsdf', '2001', 'sdfsqdfsqdfsf', '3', '2005-02-01');

-- --------------------------------------------------------

--
-- Structure de la table `chercheurs`
--

CREATE TABLE `chercheurs` (
  `id` int(10) NOT NULL,
  `nom` varchar(150) NOT NULL,
  `photo` varchar(250) NOT NULL,
  `sexe` varchar(45) NOT NULL,
  `annee_de_naissance` date NOT NULL,
  `lieu_de_naissance` varchar(80) NOT NULL,
  `diplome` varchar(150) NOT NULL,
  `specialite` varchar(150) NOT NULL,
  `id_institution` int(10) DEFAULT NULL,
  `date_entre_administration` date NOT NULL,
  `matricule` varchar(15) NOT NULL,
  `adresse_mail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `chercheurs`
--

INSERT INTO `chercheurs` (`id`, `nom`, `photo`, `sexe`, `annee_de_naissance`, `lieu_de_naissance`, `diplome`, `specialite`, `id_institution`, `date_entre_administration`, `matricule`, `adresse_mail`) VALUES
(2, 'ANDRIAMAMONJISOA DIMBINIALA', 'public/images/chercheurs/chercheur_6835aa722962c4.25778981.jpg', 'Masculin', '1969-07-21', 'Ranohira', 'DEA', 'Sciences Biologiques appliquées, Option Biochimie', 5, '2004-06-01', '290694', 'andimbiniala@yahoo.com'),
(3, 'ANDRIANJAKANIAINA Mahefarivo', 'public/images/chercheurs/chercheur_6835abd44b10a2.70402216.jpg', 'Féminin', '1980-10-18', 'Ampanga Ambohitramo', 'Doctorat', 'Chimie appliquée', 5, '2012-09-12', '342050', 'mhfrvo@gmail.com'),
(4, 'IHANITRINIALA Angelina Rome', 'public/images/chercheurs/chercheur_6835aca619d541.22748617.jpg', 'Femme', '1973-06-10', 'Mahanoro', 'DEA', 'Sciences naturelles, Biodiversité et Environnement, Option Biologie végétale', 5, '2017-05-24', '408422', 'angeniala@vahoo.fr'),
(5, 'RAFIDISON Rigobert', 'public/images/chercheurs/chercheur_6835ad66749ae6.10877852.jpg', 'M', '1960-12-26', 'Antananarivo', 'DEA', 'Agronomie, Options Agriculture, Eaux et Fôrets', 5, '1989-03-14', '220165', 'rigobertrafidison@gmail.com'),
(6, 'RAKOTOARISOA Falitiana Marrino', 'public/images/chercheurs/chercheur_6835ae408a7487.82500174.jpg', 'M', '1986-06-29', 'Toamasina', 'DEA', 'Biologie et Ecologie végétales appliquées', 5, '2017-03-06', '406461', 'rino2r@hotmail.fr'),
(7, 'RAKOTOARISOA Mbolatiana Abigaila', 'public/images/chercheurs/chercheur_6835af075cf734.82164478.jpg', 'F', '1983-08-12', 'Antananarivo', 'Master', 'Biotechnologie, Pharmacologie et Industrie pharmaceutique', 5, '2012-08-03', '342051', 'abiartiana@yahoo.fr'),
(8, 'RAKOTOARIVELO Henintsoa', 'public/images/chercheurs/chercheur_6835afae569882.09529921.jpg', 'F', '1985-10-20', 'Antsirabe I', 'Master', 'Chimie des produits naturels', 5, '2017-10-03', '?', 'rhennientsou@yahoo.fr'),
(17, 'sdqfsdf', 'public/images/chercheurs/chercheur_6853f389712e47.22111137.jpg', 'Féminin', '2001-02-01', 'dsfqs', 'sdfqsdf', 'fsdfdqsf', 5, '1987-05-02', '12523', 'mahefasoa@gmail.com'),
(23, 'aaab', 'public/images/chercheurs/chercheur_6855094e891bc9.09615535.jpg', 'Féminin', '2000-02-01', 'sdfqfd', 'sdfqfd', 'fsdfqfd', 4, '2005-06-03', '15211', 'mahefasoa@gmail.com'),
(25, 'aaa', 'public/images/chercheurs/chercheur_68551301422737.34399440.jpg', 'Masculin', '2000-01-02', 'dfsqf', 'sfqdf', 'sfqf', 12, '2000-05-02', 'jkjkjk', 'mahefasoa@gmail.com'),
(27, 'aaaa', 'public/images/chercheurs/chercheur_68554b99eb7a51.95617283.jpg', 'Féminin', '2000-02-02', 'dfqsdf', 'dsfqsdf', 'dfdsfqdf', 4, '2003-06-05', '121212', 'sqfdfqfsd@gmail.com'),
(28, 'jkjljfj', 'public/images/chercheurs/chercheur_68554d834e28e1.77433203.jpg', 'Féminin', '2000-02-02', 'dsfqsdf', 'sfqsdf', 'sdfqsdf', 5, '2000-02-02', 'jkljlkj', 'ramaromanana@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

CREATE TABLE `historique` (
  `id` int(10) NOT NULL,
  `periode` varchar(150) NOT NULL,
  `annee_debut` varchar(50) NOT NULL,
  `annee_fin` varchar(50) NOT NULL,
  `nom_structure` varchar(100) NOT NULL,
  `dirigeant_structure` varchar(100) NOT NULL,
  `dirigeant_pays` varchar(100) NOT NULL,
  `regime` varchar(200) NOT NULL,
  `histo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `historique`
--

INSERT INTO `historique` (`id`, `periode`, `annee_debut`, `annee_fin`, `nom_structure`, `dirigeant_structure`, `dirigeant_pays`, `regime`, `histo`) VALUES
(5, 'Avant l\'independance', '1865', '?', 'Famille Grandidier', 'Alfred Grandidier', '?', 'Naturaliste et Explorateur français', 'Il s\'est consacré dès lors à l\'étude de l\'île et y fait de fréquents séjours avec le soutien du Muséum National d\'Histoire Naturelle de Paris et de la Société de Géographie. \r\nFaisant partie des hommes de description et d\'inventaire, il entreprenait avec méthode, ténacité et passion de faire connaître les paysages, les hommes, la faune et la flore de Madagascar.  Jusqu\'à la fin du XIXè siècle, la recherche à Madagascar était surtout consacrée aux inventaires. \r\nDurant cette période d’inventaires, de nombreuses explorations et observations géodésiques ont été entreprises par Alfred Grandidier. Ses travaux ont abouti à la publication de nombreux articles tant sur la géologie que sur la zoologie, ainsi que sur les peuples autochtones malgaches. Il a réalisé un vaste projet d’une quarantaine de volumes sur l\'histoire physique, naturelle et politique de Madagascar. \r\nLes résultats de ces travaux ont servi à l’installation de la France à Madagascar.'),
(6, 'Avant l\'independance', '1898', '?', 'Academy Malagasy', '?', '?', '?', 'Dès sa prise de fonction, en 1896, le Général Joseph Gallieni, le premier Gouverneur Général de Madagascar, est confronté à deux problèmes de santé graves nécessitant une solution urgente : la variole et la rage. \r\nEn 1898, il a décidé de créer un Institut vaccinogène et antirabique à Tananarive. La mission de cet Institut est de fabriquer sur place les vaccins nécessaires. Six mois après l’arrivée du premier directeur de l’Institut, A. Thiroux, un jeune médecin de la marine, en janvier 1899, les premiers lots de vaccins ont été produits. Les grandes campagnes de vaccination a commencé en 1917 et Madagascar est le premier pays au monde à éradiquer la variole. \r\nAprès quelques années d\'existence, l’Institut vaccinogène et antirabique à Tananarive a été transformé en Institut Pasteur de Tananarive. Les activités de cet Institut se diversifient vite. Le 1er janvier 1927, l\'Institut Pasteur de Tananarive devient une filiale de l\'Institut Pasteur de Paris, sous le nom d\'Institut Pasteur de '),
(7, 'Avant l\'independance', '1902', '?', 'Academy Malagasy', '?', '?', '?', 'L’Académie Malagasy est créée le 23 janvier 1902 par le Général Gallieni, premier gouverneur général de Madagascar, par arrêté du 23 janvier 1902. \r\nGalliéni définissait comme objectifs à l\'Académie : « l\'étude approfondie, méthodique et raisonnée de la linguistique, de l\'ethnologie et de la sociologie malgache ». \r\nL\'arrêté constitutif désignait 12 membres dont deux malgaches, Rahesihanaka et Rasanjy (secrétaire général du gouvernement malgache lors de la conquête de l\'île, devenu responsable des services indigènes du gouvernement général), un Anglais, le pasteur Baron, de la London Missionary Society, le pasteur Jakobsen, de la Mission norvégienne. Les sept autres membres étaient français : les R.P. Callet et Malzac, le pasteur Vernier, le docteur Villette, l\'architecte Jully, les administrateurs Berthier et Julien. \r\nLors de la troisième séance, les réunions ont eu pour cadre le Tranovola, ancienne résidence de Radama 1er au Rova, sur la colline dominant Antananarivo. \r\nUn arrêté du'),
(8, 'Avant l\'independance', '1925', '?', 'Parc Botanique et Zoologique de Tsimbazaza', 'PBZT', 'Andry Rajoelina', '?', 'L’origine du Parc Botanique et Zoologique de Tsimbazaza remonte à l’année 1925. A cette date fut créé, dans la vallée de Tsimbazaza, un jardin Botanique rattaché au service des Parcs et Jardins de Tananarive. La vallée est dotée d’un relief varié offrant des conditions favorables pour la culture des végétaux de toutes sortes. Un lac, au fond de la vallée, permet au jardin de rassembler et de multiplier les spécimens de la flore malgache et également d’y introduire des espèces étrangères. \r\nAu temps d’Andrianampoinimerina, la vallée de Tsimbazaza fut un lieu réservé pour faire le TAMPO-MASOANDRO c’est à dire un lieu de sacrifice pour les bœufs destinés à être immolés à l’occasion de grandes cérémonies ou les funérailles royales. Le lac fut créé sur les ordres de RADAMA I, par l’agrandissement d’une cuvette d’eau naturelle dont il fit une piscine militaire : il y envoyait se baigner ses troupes avant de les passer au revue. Après sa mort, RANAVALONA I utilisa le lac pour faire périr par '),
(9, 'Avant l\'independance', '1906', '?', 'Institut Malgache des Vaccins Vétérinaires', 'IMVAVET', 'Dr MAMINIAINA Olivier Fridolin', '?', 'L’IMVAVET a été créé par décret n° 95-278 du 11 avril 1995.\r\nLes activités de l\'IMVAVET ou Institut Malgache de Vaccins Vétérinaires sont héritées du premier laboratoire vétérinaire de Madagascar dirigé en 1906 par le Docteur Joseph CAROUGEAU dans un local de l\'Institut Pasteur à Ambatofotsikely.\r\nLe Centre National de Recherche IMVAVET est un patrimoine laissé par le Laboratoire Central de l’élevage (LCE) de 1954, hérité par l’Institut d’Elevage et de Médecine Vétérinaire Tropicale (IEMVT) de 1961 et laissé au Centre National de Recherche Appliquée au Développement Rural (CENRADERU ou FOFIFA) de 1974. Le LCE est parmi les premières Institutions de recherche créées après la période coloniale. L’IEMVT, avec 6 autres instituts français de recherche agronomique, constitue une structure d’héritage pour le Centre National de la Recherche Appliquée au Développement rural ou FOFIFA en 1974. De même année l’activité de production des vaccins vétérinaires est intégrée au sein du Département de '),
(10, 'Avant l\'independance', '1946', 'Institut de Recherche Scientifique de Madagascar', 'IRSM', '?', '?', '?', 'En 1943, il a été créé, par la loi française du 11 octobre 1943, l’Office de la Recherche Scientifique Coloniale (ORSC) qui a comme objectif d’orienter, de coordonner et de contrôler les recherches scientifiques outremer.\r\nIl aura pour mission d’étudier la création de centres de recherche dans les territoires d\'outre-mer.\r\nL\'Office poursuit, dès 1946, une politique dynamique d\'implantation d\'instituts scientifiques outre-mer à vocation territoriale ou disciplinaire déterminée. \r\nEn 1947, l’ORSC s’est implanté à Madagascar sous la dénomination de l’Institut de Recherche Scientifique de Madagascar (IRSM) qui avait son siège dans une partie non publique à Tsimbazaza sur des terrains expropriés et cédés à l’institut pour son installation. \r\nA partir de l’année 1947, le Jardin botanique et zoologique créé à Tsimbazaza fut intégré à l’Institut.\r\nC’est avec la création de l’IRSM que la recherche au sens moderne s’est donc installée à Madagascar.\r\nLe directeur de l’Institut, Renaud Paulian, éc'),
(11, 'Après l\'independance', '1963', '1973', 'Office de la Recherche Scientifique et Technique Outre-MerOffice de la Recherche Scientifique et Tec', 'Patrice Roederer', '?', '?', 'En 1943, il a été créé en France, par la loi française du 11 octobre 1943, l’Office de la Recherche Scientifique Coloniale (ORSC) qui a comme objectif d’orienter, de coordonner et de contrôler les recherches scientifiques outremer.\r\nIl aura pour mission d’étudier la création de centres de recherche dans les territoires d\'outre-mer.\r\nCette création a permis l’institutionnalisation de la recherche sur et dans les pays en développement pour mener une recherche outre-mer, puis une recherche pour le développement en coopération. Des chercheurs spécialistes sont arrivés à Madagascar pour remplacer les savants explorateurs, voyageurs, militaires ou administrateurs qui jusque-là avaient apporté les connaissances sur ces pays lointains.\r\nEn 1947, l’ORSC s’est implanté à Madagascar sous la dénomination de l’Institut de Recherche Scientifique de Madagascar (IRSM) qui avait son siège dans une partie non publique à Tsimbazaza sur des terrains expropriés et cédés à l’institut pour son installation. '),
(12, 'Après l\'independance', '1960', '?', 'Academy Malagasy', 'Docteur Paul Radaody-Ralarosy', 'Philibert Tsiranana', '?', '?'),
(13, 'Après l\'independance', '1963', '1970', 'Secrétariat Général du Comité de la Recherche Scientifique et Technique', 'Gabriel Ramalanjaona, SG,  Ingénieur chimiste', 'Philibert Tsiranana', '?', 'Après la déclaration officielle de l’indépendance de Madagascar en 1960, la recherche scientifique était sous la tutelle technique et scientifique franco-malgache. En effet, à partir de cette année, des transferts de compétences ont été progressivement effectués jusqu\'en juin 1963, période jugée pertinente par le régime à l’époque pour ériger le Secrétariat Général du Comité de la Recherche Scientifique et Technique (SGCRST). Cette structure, placée sous l’autorité directe du Vice-président du Gouvernement, a été créée pour assurer la planification et la coordination de la recherche à Madagascar. Son rôle a été de discuter avec les responsables des Instituts français, de l’opportunité de leurs programmes de recherche, compte tenu de la politique de développement du Gouvernement, et des moyens que les deux Etats français et malgache peuvent mettre pour leur réalisation. La coordination a été surtout axée sur le choix des programmes jugés nécessaires pour appuyer les opérations qui sont '),
(14, 'Après l\'independance', '1970', '1972', 'Secrétariat Général du Comité de la Recherche Scientifique et Technique', 'Justin Manambelona, SG,  Professeur spécialisé dans le domaine biomédical', 'Philibert Tsiranana', '?', 'De 1970 à 1972, la recherche est placée sous la responsabilité de Justin Manambelona, Professeur spécialisé dans le domaine biomédical. Cellui-ci occupait en même temps le poste de ministre de l\'éducation nationale et des Affaires culturelles (Menac). Le SGCRST a fonctionné jusqu\'en septembre 1972.\",\"SGCRST\",\"17/12/2021\",NULL\r\n\"11\",\"HIS011\",\"Après l\'indépendance\",\"1972\",\"1976\",\"Direction de la Recherche Scientifique et Technique\",\"DRST\",\"Etienne Rakotomaria, Directeur, Professeur de chimie\",\"Première République\",\"Gabriel Ramanantsoa \",\"Cette période a été très marquante pour la recherche malgache. Les événements politiques et les changements des contextes socioéconomiques et culturels qui prévalaient à l’époque ont conduit le régime à placer la recherche sous la tutelle de la Direction de la recherche scientifique technique (DRST) créée en 1972 et ayant comme directeur Etienne Rakotomaria, professeur de chimie.\r\nAprès la dénonciation de l’accord de coopération, en 1973, qui fait suite '),
(15, 'Après l\'independance', '1976', '1977', 'Ministère des Recherches Scientifiques', 'Rémy Tiandraza, Ministre, Docteur en médecine', 'Didier Ratsiraka', '?', 'Ce n’est qu’en janvier 1976 que la recherche scientifique malgache est placée sous la tutelle directe d’un ministère à part entière dénommé Ministère des Recherches Scientifiques (MRS), ayant pour mission de coordonner la recherche scientifique malgache. Le docteur en médecine Rémy Tiandraza a été Ministre des Recherches Scientifiques, de 1976 à 1977.\r\nC’est ce Ministère qui a jeté les bases d’une structure nationale de la recherche, par le début de la réorganisation du FOFIFA et la création du CNRO et du CNRP.'),
(16, 'Après l\'independance', '1977', '1983', 'Ministère de l\'Enseignement Supérieur et de la Recherche Scientifique', 'Dr Ignace Rakoto, Ministre, Juriste et historien', 'Didier Ratsiraka', '?', 'MESRS, 1977-1983, Dr Ignace Rakoto (Ministre, Juriste et historien), Deuxième République (Didier Ratsiraka):\r\nLe Gouvernement a pensé qu’il serait plus judicieux d’intégrer la structure chargée de la recherche scientifique dans celle de l’Enseignement Supérieur de manière à stimuler la production et la valorisation des connaissances scientifiques tant du côté de la Recherche que celui de l’Université, tout en respectant le principe qui veut qu’il n’y ait pas une Recherche valable en dehors de l’Université. D’où la création du Ministère de l’Enseignement Supérieur et de la Recherche Scientifique en septembre 1977. Cependant, les problèmes posés par le développement de l’Université et de l’Enseignement Supérieur d’une manière générale, ont accaparé presque la totalité des moyens disponibles de sorte que la Recherche a été reléguée en dernière priorité.\r\nFace à cette situation, le Ministère de l’Agriculture a récupéré en Janvier 1982 le FOFIFA, en vue d’épauler efficacement la réalisation'),
(18, 'Avant l\'independance', '2010', '2022', 'Secrétariat Général du Comité de la Recherche Scientifique et Technique', '?', 'Philibert Tsiranana', 'Naturaliste et Explorateur français', 'BBBBBBBBBB'),
(21, 'Avant l\'independance', '1900', '2015', 'sfdffq', 'fsqfsf', 'dfqsdfq', 'sdfsqf', 'sdfsdfqf'),
(23, 'jjkjmkj', '1987', '1999', 'fsdfq', 'fsqdfqsdf', 'sfsdfsds', 'fdsqfsdf', 'fsdqfsdf');

-- --------------------------------------------------------

--
-- Structure de la table `inscrire`
--

CREATE TABLE `inscrire` (
  `id` int(10) NOT NULL,
  `nom` varchar(150) NOT NULL,
  `utilisateur` varchar(150) NOT NULL,
  `role` enum('simple','admin') NOT NULL DEFAULT 'simple',
  `mtpasse` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `inscrire`
--

INSERT INTO `inscrire` (`id`, `nom`, `utilisateur`, `role`, `mtpasse`) VALUES
(1, 'Randriamahefa', 'randriamahefa@gmail.com', 'simple', '$2y$10$6tYaRcD09bL9WUq8Nb/eae9biKt1CKHD/BAxib1ZWfUuxc5kH0oUW'),
(2, 'Tahinasoa Miandrilaza', 'tahinasoa@gmail.com', 'simple', '$2y$10$Emq6SoAWQLRoX3/TseKiZuW5unufD2vSup7.ss8EHBxl19JX.DUnG'),
(3, 'Ramaromanana Stephano', 'steph@gmail.com', 'simple', '$2y$10$/7b//SP/pf3717lJX1hArenSp7IzrIq8tTBsYThuRSY/WmgBJrBbC'),
(6, 'Fitahiana clémence', 'fitahianasoa@gmail.com', 'admin', '$2y$10$HpWAHJagHs8KGr7wAjQDkeW1fNvef47YfdeK8Qm8uihPzKuwVYd5y'),
(7, 'Tefiniaina Justin', 'tefy@gmail.com', 'admin', '$2y$10$T4iKW1.OXaO6S9DRsuaF8eMR1xp/LLV.juXJbrebF6H4d0gN1N26.'),
(8, 'Rindrasoa Lydia', 'lydia@gmail.com', 'simple', '$2y$10$Uq64CWxsZhC.SiNdJ5KaLuWwrx34SVh/5Rxva5OWVxg/SwiS20uVq'),
(9, 'Linda Phiona', 'phiona@gmail.com', 'admin', '$2y$10$bmG8hXzA/t5uJWmcsqHJ.uNBxY1jpvginIsfU46PEAf35oDSUlcRS');

-- --------------------------------------------------------

--
-- Structure de la table `institutions`
--

CREATE TABLE `institutions` (
  `idPrimaire` int(10) NOT NULL,
  `nom` varchar(150) NOT NULL,
  `statut` varchar(100) NOT NULL,
  `annee_de_creation` varchar(50) NOT NULL,
  `sigle` varchar(100) NOT NULL,
  `id_text` int(10) DEFAULT NULL,
  `responsable` varchar(150) NOT NULL,
  `fonction` varchar(150) NOT NULL,
  `domaines` varchar(200) NOT NULL,
  `adresse` varchar(85) NOT NULL,
  `telephone` varchar(45) NOT NULL,
  `email` varchar(150) NOT NULL,
  `site_web` varchar(150) NOT NULL,
  `id_historique` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `institutions`
--

INSERT INTO `institutions` (`idPrimaire`, `nom`, `statut`, `annee_de_creation`, `sigle`, `id_text`, `responsable`, `fonction`, `domaines`, `adresse`, `telephone`, `email`, `site_web`, `id_historique`) VALUES
(4, 'Foibem-pirenena momba ny Fikarohana ampiharina amin\'ny Fampandrosoana ny eny Ambanivohitra', 'EPIC', '1974', 'FOFIFA', 15, 'RAZAFINJARA Lala Aimé', 'Directeur Géneral', 'Agronomie/Production agricole/Développement rural/Production végétale/Production animale/Production piscicole/Foresterie/Socio-économie/Transformation agro-alimentaire/Technologie agricole', 'BP : 1690/Route d’Andraisoro Ampandrianomby, Antananarivo 101', '0341495002/0341495001/0341495011', 'drg@fofifa.mg', 'https://www.fofifa.mg', 8),
(5, 'Centre National d\'Application des Recherches Pharmaceutiques', 'EPIC', '1976', 'CNARP', 43, 'RAKOTOSAONA Rianasoambolanoro', 'Directeur', 'Plantes médicinales/Santé publique', 'BP : 702/Rue R.P Rahajarizafy Antoine, Ambodivoanjo-Ambohijatovo,  Antananarivo 101', '020 22 539 78', 'ircnarp@moov.mg', 'http://cnarp.recherches.gov.mg', 10),
(6, 'Centre National de Recherches Océanographiques', 'EPIC', '1977', 'CNRO', 64, 'ABDOUHOURI ALY Bachiry', 'Directeur', 'Océanographie/Environnement/Biodiversité', 'BP : 68/Nosy-Be Hell Ville, 201', '020 86 925 85', 'cnro-antananarivo@yahoo.fr', 'http://.........', 10),
(7, 'Centre d\'Information et documentation Scientifique et Technique', 'EPIC', '1987', 'CIDST', 48, 'NALY Cindy Vermeille', 'Directeur Géneral', 'Sciences de l\'information/Informations scientifiques et techniques', 'BP. : 6224/21 rue Kasanga, Andoharano Tsimbazaza, Antananarivo 101', '020 22 566 37', 'cidst@cidst.mg', 'http://cidst.recherches.gov.mg', 7),
(8, 'Centre National de Recherches Industrielle et Techologique', 'EPIC', '1987', 'CNRIT', 65, 'RANDRIANIRAINY Huchard Paul Bertin', 'Directeur', 'Technologies adaptées et appropriées/Energies renouvelables/Chimie/Matériaux de construction/Electronique/Informatique/Energétique/Métallurgie', 'BP : 6294/38, Rue Rasamimanana Fiadanana Tsimbazaza, Antananarivo 101', '034 12 399 89/034 62 284 63 ', 'cnritdocumentation@yahoo.com', 'http://cnrit.recherches.gov.mg', 10),
(9, 'Centre National de Recherches sur l’Environnement', 'EPIC', '1988', 'CNRE', 49, 'MONG Yves Jean Michel', 'Directeur', 'Environnement/Biodiversité', 'BP : 1739/39, rue Rasamimanana-Fiadanana-Antananarivo 101', '020 22 264 69', 'nre2013@gmail.com', 'http://.........', 10),
(11, 'Institut National des Sciences et Techniques Nucléaires', 'EPIC', '1992', 'INSTN', 68, 'RAJAOBELISON Joël', 'Directeur Géneral', 'Directeur Général\",\"Environnement/Pollution de l\'air/Energies nucléaires/Technologie', 'BP : 4279/Campus universitaire Ambohitsaina, Antananarivo', '020 24 714 03', 'nstn@moov.mg', 'http://instn.recherches.gov.mg', 11),
(12, 'Institut Malgache des Vaccins Vétérinaires', 'EPIC', '1995', 'IMVAVET', 69, 'MAMINIAINA Olivier Fridolin\",\"Directeur\",\"Vaccins vétérinaires\",\"BP: 04/Rue Farafaty Ampandrianomby, Antananarivo\",\"020 22 412 34\",\"imvavet@imvavet.mg', 'Directeur', 'Vaccins vétérinaires', 'BP: 04/Rue Farafaty Ampandrianomby, Antananarivo', '020 22 412 34', 'imvavet@imvavet.mg', 'http://www.imvavet.mg', 11),
(13, 'jkjlkjm', 'kjkljklj', '2000', 'jkljlkjm', 40, 'sdfqsdf', 'dsfqsdf', 'dsfqsdf', 'sdfsqdf', 'sdfqsqdf', 'faliniainasylvio@gmail.com', 'http://localhost:3000/vues/institutions.php', 13);

-- --------------------------------------------------------

--
-- Structure de la table `manifestations`
--

CREATE TABLE `manifestations` (
  `id` int(10) NOT NULL,
  `theme` varchar(200) NOT NULL,
  `type_manifestations` varchar(150) NOT NULL,
  `intitule` varchar(150) NOT NULL,
  `lieu` varchar(85) NOT NULL,
  `organisateur` varchar(85) NOT NULL,
  `id_partenaires` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `manifestations`
--

INSERT INTO `manifestations` (`id`, `theme`, `type_manifestations`, `intitule`, `lieu`, `organisateur`, `id_partenaires`) VALUES
(1, 'Transfert de technologie', 'Séminaire', 'Séminaire sur le transfert de technologie', 'Antananarivo', 'MRSTD', '8'),
(2, '?', 'Forum', 'Hall de la Recherche Nationale (HARENA)', 'Antsiranana', '?', '4'),
(3, '?', 'Forum', 'Hall de la Recherche Nationale (HARENA)', 'Mahajanga', 'Ministère de la Recherche Scientifique (MRS)', '7'),
(4, '?', 'Forum', 'Forum de la Recherche 2003', '?', 'Ministère de l’Enseignement Supérieur et de la Recherche Scientifique', '4');

-- --------------------------------------------------------

--
-- Structure de la table `partenaires`
--

CREATE TABLE `partenaires` (
  `id` int(10) NOT NULL,
  `nom` varchar(150) NOT NULL,
  `type_partenaires` varchar(85) NOT NULL,
  `annee` varchar(50) NOT NULL,
  `pays_origine` varchar(100) NOT NULL,
  `adresse` varchar(85) NOT NULL,
  `telephone` varchar(45) NOT NULL,
  `email` varchar(85) NOT NULL,
  `domaine` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `partenaires`
--

INSERT INTO `partenaires` (`id`, `nom`, `type_partenaires`, `annee`, `pays_origine`, `adresse`, `telephone`, `email`, `domaine`) VALUES
(1, 'Bureau National de Gestion des Risques et des Catastrophes', 'Partenaire Technique', '2000', 'Madagascar', 'Route du Mausolée Antanimora', '034 05 480 68', 'bngrc@bngrc.mg', 'Materiaux et Genie Civile'),
(2, 'Organismes Internationaux', 'Partenaire Technique', '2010', 'Madagascar', '?', '?', 'aaaa@g.com', 'Materiaux et Genie Civile'),
(3, 'Grandes Industries', 'Partenaire Technique', '2010', 'Madagascar', '?', '?', 'aaaa@g.com', 'Materiaux et Genie civile'),
(4, 'Ecole Supérieure Polytechnique d\'Antananarivo', 'Partenaire Technique', '2010', 'Madagascar', '?', '020 22 326 39', 'espa.tana@gmail.com', 'Matériaux et Génie Civile'),
(5, 'Ecole Supérieure Polytechnique d\'Antananarivo', 'Partenaire Technique', '2010', 'Madagascar', 'Vontovorona', '020 22 326 39', 'espa.tana@gmail.com', 'Materiaux et Genie civile'),
(6, 'World Wide Fund', 'Partenaire Technique', '2010', 'France', 'Lot II M 85 Ter Antsakaviro Antananarivo', '020 22 348 85', 'mrasamoelina@wwf.mg', 'Materiaux et Genie civile'),
(7, 'MCM', 'Partenaire Technique', '2010', '?', '?', '?', 'aaaa@g.com', 'Materiaux et Genie civile'),
(8, 'Cultivateurs de fraise', 'Partenaire Technique', '2010', '??', '?', '?', 'aaaa@g.com', 'Materiaux et Genie civile'),
(9, 'Cultivateurs de fraise', 'Partenaire Technique', '2010', 'Madagascar', 'Anosy', '034 25 024 22', 'faliniainasylvio@gmail.com', 'Materiaux et Genie civile');

-- --------------------------------------------------------

--
-- Structure de la table `resultats`
--

CREATE TABLE `resultats` (
  `id` int(10) NOT NULL,
  `type_resultats` varchar(150) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `id_activites` varchar(10) NOT NULL,
  `annee_realisation` varchar(50) NOT NULL,
  `date_demande_brevet` date NOT NULL,
  `ref_brevet` varchar(150) NOT NULL,
  `id_chercheur` varchar(10) NOT NULL,
  `utilisation` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `resultats`
--

INSERT INTO `resultats` (`id`, `type_resultats`, `designation`, `id_activites`, `annee_realisation`, `date_demande_brevet`, `ref_brevet`, `id_chercheur`, `utilisation`) VALUES
(1, 'RF', 'Procédé chimique amélioré de production de sodium', '2', '2013', '1994-03-31', '001 du 09/01/95', '6', 'Savonnerie, détergent, verrerie, industrie agroalimentaire'),
(2, 'babla', 'sqff', '3', '2025', '2001-05-01', 'fsqsfqf', '3', 'fqfdsqf'),
(3, 'RF', 'sqfsqfsfqfdfq', '3', '2000', '2015-02-01', '454465456', '2', 'sdfqdfqfqfdf');

-- --------------------------------------------------------

--
-- Structure de la table `textes`
--

CREATE TABLE `textes` (
  `id` int(10) NOT NULL,
  `type_text` varchar(150) NOT NULL,
  `num_text` varchar(80) NOT NULL,
  `date_text` date NOT NULL,
  `titre` varchar(200) NOT NULL,
  `entites` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `textes`
--

INSERT INTO `textes` (`id`, `type_text`, `num_text`, `date_text`, `titre`, `entites`) VALUES
(2, 'Décret', '61-650', '1961-12-07', 'Décret n° 61-650 portant création d\'un Comité de la Recherche Scientifique et Technique de Madagascar', 'Comité de la Recherche Scientifique et Technique (CRST)'),
(3, 'Décret', '61-275', '1963-05-15', 'Décret n° 63-275 portant création d\'un Comité de la Recherche Scientifique et Technique.', 'Comité de la Recherche Scientifique et Technique (CRST)'),
(4, 'Décret', '74-180', '1974-06-10', 'Décret n° 74-180 abrogeant et remplaçant le Décret n°63-275 du 15 mai 1963 portant création d\'un Comité de la Recherche Scientifique et Technique', '?'),
(5, 'Décret', '74-181', '1974-06-10', 'Décret n° 74-181 portant définition de la mission, du rôle de la Direction de la Recherche Scientifique et Technique\",\"Direction de la Recherche Scientifique et Technique (DRST)', '?'),
(6, 'Décret', '76-033', '1976-02-03', 'Décret n° 76-033 fixant les attributions du Ministre de la Recherche Scientifique et l’organisation générale de son Ministère', 'Ministère des Recherches Scientifiques (MRS)'),
(7, 'Décret', '77-262', '1977-08-25', 'Décret n° 77-262 fixant à titre transitoire les attributions du Ministère de l\'Enseignement Supérieur et de la Recherche Scientifique et du Ministère de l\'Enseignement Secondaire et de l\'Education de ', 'Ministère de l\'Enseignement Supérieur et de la Recherche Scientifique'),
(8, 'Décret', '77-405', '1977-11-21', 'Décret n° 77-405 fixant les attributions du Ministre de l’Enseignement Supérieur et de la Recherche Scientifique ainsi que l’organisation générale de son Ministère', 'Ministère de l’Enseignement Supérieur et de la Recherche Scientifique'),
(9, 'Décret', '77-456', '1977-12-22', 'Décret n° 77-456 fixant les attributions du Ministre de l’Enseignement Supérieur et de la Recherche Scientifique ainsi que l’organisation générale de son Ministère', 'Ministère de l’Enseignement Supérieur et de la Recherche Scientifique'),
(10, 'Décret', '84-074', '1984-02-15', 'Décret n° 84-074 fixant les attributions du Ministre de la Recherche Scientifique et Technologique pour le Développement ainsi que l\'organisation générale de son ministère', 'Ministère de la Recherche Scientifique et Technologique pour le Développement (MRSTD)'),
(11, 'Décret', '88-359', '1988-09-21', 'Décret n° 88-359 portant modification des dispositions de l\'article 2 du Décret n°84-074 du 15/02/84 fixant les attributions du Ministre de la Recherche Scientifique et Technologique pour le Développe', 'Ministère de la Recherche Scientifique et Technologique pour le Développement (MRSTD)'),
(12, 'Décret', '89-133', '1989-05-31', 'Décret n° 89-133 fixant les attributions du Ministre de la Recherche Scientifique et Technologique pour le Développement ainsi que l’organisation générale de son Ministère', '\"Ministère de la Recherche Scientifique et Technologique pour le Développement (MRSTD)'),
(13, 'Décret', '92-063', '1992-01-15', 'Décret n° 92-063 fixant les attributions du Ministre de la Recherche Scientifique  ainsi que l’organisation générale de son Ministère', 'Ministère de la Recherche Scientifique (MRS)'),
(14, 'Décret', '93-525', '1993-09-15', 'Décret n° 93-525 fixant les attributions du Ministre de la Recherche Appliquée au Développement ainsi que l’organisation générale de son Ministère', 'Ministère de la Recherche Appliquée au Développement (MRAD)a'),
(15, 'Décret', '74-184', '1974-06-10', 'écret n° 74-184 portant création et organisation d\'un Centre National de la Recherche Appliquée au Développement Rural', 'Ministère du Développement Rural'),
(16, 'Décret', '34-647', '1994-10-11', 'Décret n° 94-647 portant modification du Décret n° 93-525 du 15 septembre 1993 fixant les attributions du Ministre de la Recherche Appliquée au Développement ainsi que l’organisation générale de son M', 'Ministère de la Recherche Appliquée au Développement (MRAD)'),
(17, 'Décret', '97-211', '1997-03-25', 'Décret n° 97-211 fixant les attributions du Ministre de la Recherche Scientifique ainsi que l’organisation générale de son Ministère', 'Ministère de la Recherche Scientifique (MRS)'),
(18, 'Décret', '98-724', '1998-09-09', 'Décret n° 98-724 fixant les attributions du Ministre de la Recherche Scientifique ainsi que l\'organisation générale de son Ministère', 'Ministère de la Recherche Scientifique (MRS)'),
(19, 'Décret', '2002-264', '2002-05-27', 'Décret n° 2002-264 fixant les attributions du Ministre de la Recherche Scientifique pour le Développement ainsi que l\'organisation générale de son ministère', 'Ministère de la Recherche Scientifique pour le Développement (MRSD)'),
(20, 'Décret', '2002-784', '2002-08-07', 'Décret n° 2002-784 modifiant le décret n° 2002-271 du 21 mai 2002 fixant les attributions du Ministre de l’Enseignement Supérieur ainsi que l’organisation générale de son Ministère', 'Ministère de l’Enseignement Supérieur'),
(21, 'Décret', '2002-786', '2002-08-07', 'Décret n° 2002-786 modifiant le décret n°2002-264 du 27 Mai 2002 fixant les attributions du Ministre de la Recherche Scientifique pour le Développement, ainsi que l\'organisation générale de son Minist', 'Ministère de la Recherche Scientifique pour le Développement (MRSD)'),
(22, 'Décret', '2003-097', '2003-02-11', 'Décret n° 2003-097 fixant les attributions du Ministre de l’Enseignement Supérieur et de la Recherche Scientifique ainsi que l’organisation générale de son Ministère', 'Ministère de l’Enseignement Supérieur et de la Recherche Scientifique'),
(23, 'Décret', '2004-028', '2004-01-13', 'Décret n° 2004-028 fixant les attributions du Ministre de l’Education Nationale et de la Recherche Scientifique ainsi que l’organisation générale de son Ministère', 'Ministère de l’Education Nationale et de la Recherche Scientifique (MENRS)'),
(24, 'Décret', '2005-840', '2005-12-06', 'Décret n° 2005-840 portant modification du décret n° 2004-028 du 13 janvier 2004 fixant les attributions du Ministre de l’Education Nationale et de la Recherche Scientifique ainsi que l’organisation g', 'Ministère de l’Education Nationale et de la Recherche Scientifique (MENRS)'),
(25, 'Décret', '2007-087', '2007-02-12', 'Décret n° 2007-087 fixant les attributions du Ministre de l’Education Nationale et de la Recherche Scientifique ainsi que l’organisation générale de son Ministère', 'Ministère de l’Education Nationale et de la Recherche Scientifique (MENRS)'),
(26, 'Décret', '2007-506', '2007-05-04', 'Décret n° 2007-506 modifiant certaines dispositions du décret n° 2007-087  du 12 février 2007 fixant les attributions du Ministre de l’Education Nationale et de la Recherche Scientifique ainsi que l’o', 'Ministère de l’Education Nationale et de la Recherche Scientifique (MENRS)'),
(27, 'Décret', '2007-969', '2007-11-12', 'Décret n° 2007-969 portant modification du décret n°2007-087  du 12 février 2007 fixant les attributions du Ministre de l’Education Nationale et de la Recherche Scientifique ainsi que l’organisation g', 'Ministère de l’Education Nationale et de la Recherche Scientifique (MENRS)'),
(28, 'Décret', '2008-028', '2008-01-06', 'Décret n° 2008-028 fixant les attributions du Ministre de l\'Education Nationale et de la Recherche Scientifique ainsi que l\'organisation générale de son Ministère', 'Ministère de l’Education Nationale et de la Recherche Scientifique (MENRS)'),
(29, 'Décret', '2009-574', '2009-05-08', 'Décret n° 2009-574 fixant les attributions du Ministre de l\'Enseignement Supérieur et de la Recherche Scientifique ainsi que l\'organisation générale de son Ministère', 'Ministère de l\'Enseignement Supérieur et de la Recherche Scientifique (MESRS)'),
(30, 'Décret', '2010-194', '2010-04-08', 'Décret n° 2010-194 complétant certaines dispositions du décret n°2009-574 du 08 mai 2009 fixant les attributions du Ministre de l\'Enseignement Supérieur et de la Recherche Scientifique ainsi que l\'org', 'Ministère de l\'Enseignement Supérieur et de la Recherche Scientifique (MESRS)'),
(31, 'Décret', '2012-825', '2012-09-18', 'Décret n° 2012-825 modifiant et complétant certaines dispositions du décret n°2009-574 du 08 mai 2009 completé par le décret n° 2010-194 du 08 avril 2010 fixant les attributions du Ministre de l\'Ensei', 'Ministère de l\'Enseignement Supérieur et de la Recherche Scientifique (MESRS)'),
(32, 'Décret', '2013-837', '2013-11-19', 'Décret n° 2013-837 instituant la Stratégie Nationale de la Recherche Scientifique à Madagascar', 'Ministère de l\'Enseignement Supérieur et de la Recherche Scientifique'),
(33, 'Décret', '2014-634', '2014-06-03', 'Décret n° 2014-634 fixant les attributions du Ministre de l\'Enseignement Supérieur et de la Recherche Scientifique ainsi que l\'organisation générale de son Ministère', 'Ministère de l\'Enseignement Supérieur et de la Recherche Scientifique (MEsupReS)'),
(34, 'Décret', '2018-687', '2018-07-10', 'Décret n° 2018-687 modifiant et complétant certaines dispositions du décret n° 2014-634 du 03 juin 2014 fixant les attributions du Ministre de l\'Enseignement Supérieur et de la Recherche Scientifique ', 'Ministère de l\'Enseignement Supérieur et de la Recherche Scientifique (MEsupReS)'),
(35, 'Décret', '2019-073', '2019-02-06', 'Décret n° 2019-073 fixant les attributions du Ministre de l\'Enseignement Supérieur et de la Recherche Scientifique ainsi que l\'organisation générale de son Ministère', 'Ministère de l\'Enseignement Supérieur et de la Recherche Scientifique (MEsupReS)'),
(36, 'Décret', '82-016', '1982-01-21', 'Décret n° 82-016  rattachant le Centre de la Recherche Appliquée au Développement Rural (CENRADERU) au Ministère du Développement Rural', 'Ministère du Développement Rural'),
(37, 'Décret', '83-411', '1983-11-30', 'Décret n° 83-411 rattachant le Centre de la Recherche Appliquée au Développement Rural (CENRADERU) au Ministère de la Recherche Scientifique et Technologique pour le Développement', 'Ministère auprès de la Présidence chargé de l\'Agriculture et de l\'Elevage (MPAE)/Ministère de l\'Enseignement Supérieur et de la Recherche Scientifique et Technologique pour le Développement'),
(38, 'Décret', '83-423', '1983-12-05', 'portant création et organisation du Centre National de la Recherche Appliquée au Développement Rural (CENRADERU/FOFIFA)', 'Ministère de la Recherche Scientifique et Technologique pour le Développement'),
(39, 'Décret', '90-317', '1990-07-10', 'Décret n° 90-317 portant création et organisation du Centre National de la Recherche Appliquée au Développement Rural (CENRADERU/FOFIFA)', 'Ministère de la Recherche Scientifique et Technologique pour le Développement'),
(40, 'Décret', '2567-96', '1996-05-13', 'Arrêté n° 2567-96 portant création des Centres Régionaux et des Stations de Recherche du CENRADERU/FOFIFA', 'Ministère de la Recherche Appliquée au Développement'),
(41, 'Décret', '2008-177', '2008-02-15', 'Décret n° 2008-177 rattachant le Centre National de Recherche Appliquée au Développement Rural (CENRADERU/FOFIFA) au Ministère de l\'Agriculture, de l\'Elevage et de la Pêche.', 'Ministère de l\'Agriculture, de l\'Elevage et de la Pêche/Ministère de l\'Education Nationale et de la Recherche Scientifique'),
(42, 'Décret', '2015-1166', '2015-08-04', 'Décret n° 2015-1166 portant création et organisation du Centre National de la Recherche Appliquée au Développement Rural Foibem-pirenena momba ny Fikaroana ampiarina amin\'ny Fampandrosoana ny eny Amba', 'Ministère de l\'Enseignement Supérieur et de la Recherche Scientifique et Ministère de l\'Agriculture'),
(43, 'Décret', '76-334', '1976-10-01', 'Décret n° 76-334 portant création  d\'un Centre National de Recherches Pharmaceutiques (CNRP)', 'Ministère des Recherches Scientifiques'),
(44, 'Décret', '92-468', '1992-04-22', 'Décret n° 92-468 modifiant certaines dispositions du Décret n° 76-334 du 1er octobre 1976 portant création  et organisation du Centre National de Recherches Pharmaceutiques (CNRP) et portant création ', 'Ministère de la Recherche Scientifique'),
(45, 'Décret', '2015-1199', '2015-08-11', 'Décret n° 2015-1199 portant création  du Centre National d\'Application de Recherches Pharmaceutiques (CNARP)', 'Ministère de l\'Enseignement Supérieur et de la Recherche Scientifique'),
(46, 'Décret', '87-145', '1987-05-05', 'Décret n° 87-145 portant réorganisation d\'un Centre d\'Information et de Documentation Scientifique et Technique (CIDST)', 'Ministère de la Recherche Scientifique et Technologique pour le Développement'),
(47, 'Décret', '92-661', '1992-07-08', 'Décret n° 92-661 modifiant certaines dispositions du Décret n° 87-145 du 05 mai 1987 portant création et organisation du Centre d\'Information et de Documentation Scientifique et Technique (CIDST)', 'Ministère de la Recherche Scientifique'),
(48, 'Décret', '2015-1402', '2015-10-20', 'Décret n° 2015-1402 portant réorganisation du Centre d\'Information et de Documentation Scientifique et Technique (CIDST)', 'Ministère de l\'Enseignement Supérieur et de la Recherche Scientifique'),
(49, 'Décret', '88-183', '1988-05-03', 'Décret n° 88-183 portant  création et organisation d\'un Centre National de Recherche sur l\'Environnement (CNRE)', 'Ministère de la Recherche Scientifique et Technologique pour le Développement'),
(50, 'Décret', '92-471', '1992-04-22', 'Modification certaines dispositions du Décret n° 88-183 du 03 mai 1988 portant  création et organisation du Centre National de Recherche sur l\'Environnement (CNRE)', 'Ministère de la Recherche Scientifique'),
(51, 'Décret', '93-747', '1993-11-02', 'Décret n° 93-747 modifiant certaines dispositions du Décret n° 88-183 du 03 mai 1988 modifié par le décret n° 92-471 du 22 août 1992 portant  création et organisation du Centre National de Recherche s', 'Ministère de la Recherche Appliquée au Développement'),
(52, 'Décret', '2016-612', '2016-05-25', 'Décret n° 2016-612 portant réorganisation du Centre National de Recherche sur l\'Environnement (CNRE)', 'Ministère de l\'Enseignement Supérieur et de la Recherche Scientifique'),
(53, 'Décret', '61-656', '1961-12-07', 'Décret n° 61-656 portant création du Comité National de Recherche Océanographique', '?'),
(54, 'Décret', '62-072', '1962-02-14', 'Décret n° 62-072 portant additif au décret n° 61-656 du 07 décembre 1961 portant création du Comité National de Recherche Océanographique', '?'),
(55, 'Décret', '65-803', '1965-12-14', 'Décet n° 65-803 portant modificatif au décret n°61-656 du 07 décembre 1961 portant  Comité National de Recherche Océanographique', '?'),
(56, 'Décret', '77-081', '1977-04-04', 'Décret n° 77-081 portant création et organisation du Centre National de Recherches Océanographiques (CNRO)', 'Ministère des Recherches Scientifiques'),
(57, 'Décret', '78-322', '1978-12-06', 'Décret n° 78-322 portant modification des articles 11 et 14 du décret n° 77-081 du 06 avril 1977 portant création et organisation d\'un Centre National de Recherches Océanographiques (CNRO)', 'Ministère de l’Enseignement Supérieur et de la Recherche Scientifique'),
(58, 'Décret', '79-242', '1979-09-18', 'Décret n° 79-242 modifiant le décret n° 77-081 du 04 avril 1977 portant  création et organisation d\'un Centre National de de Recherches Océanographiques (CNRO)', 'Ministère de l’Enseignement Supérieur et de la Recherche Scientifique '),
(59, 'Arreté', '3027-80', '1980-07-31', 'Arrêté n° 3027-80 fixant les missions et la structure du Centre National de Recherches Océanographiques (CNRO)', 'Ministère de l’Enseignement Supérieur et de la Recherche Scientifique'),
(60, 'Arreté', '5473-80', '1980-12-26', 'Arrêté n° 5473-80 modifiant l\'arrêté n°2027/80-MESup-RES du 31 juillet 1980 fixant les missions et la structure du Centre National de Recherches Océanographiques (CNRO)', 'Ministère de l’Enseignement Supérieur et de la Recherche Scientifique'),
(61, 'Arreté', '5479-80', '1980-12-26', 'Arrêté n° 5479-80 modifiant le tableau des emplois de l\'arrêté n°3027/80-MESUP/RES du 31 juillet 1980 fixant les missions et la structure du Centre National de Recherches Océanographiques (CNRO)', 'Ministère de l\'Enseignement Supérieur et de la Recherche Scientifique'),
(62, 'Décret', '92-470', '1979-09-18', 'Décret n° 92-470 modifiant certaines dispositions du décret n° 77-081 du 04 avril 1977 portant  création et organisation du Centre National de Recherches Océanographiques (CNRO)', 'Ministère de l’Enseignement Supérieur et de la Recherche Scientifique '),
(63, 'Arreté', '30960-2014', '2014-10-16', 'Arrêté n° 30960-2014 portant ouverture de la Station de Recherche Océanographique de Vangaindrano (SROV)', 'Ministère de l’Enseignement Supérieur et de la Recherche Scientifique'),
(64, 'Décret', '2016-613', '2016-05-25', 'Décret n° 2016-613 portant réorganisation du Centre National de Recherches Océanographiques (CNRO)', 'Ministère de l\'Enseignement Supérieur et de la Recherche Scientifique (MEsupReS)'),
(65, 'Décret', '87-288', '1987-07-28', 'Décret n° 87-288 portant création et organisation d\'un Centre National de Recherche Industrielle et Technologique (CNRIT)', 'Ministère de la Recherche Scientifique et Technologique pour le Développement'),
(66, 'Décret', '92-469', '1992-04-22', 'Décret n° 92-469 modifiant certaines dispositions du décret n° 87-288 du 28 juillet 1987 portant création et organisation d\'un Centre National de Recherche Industrielle et Technologique (CNRIT)', 'Ministère de la Recherche Scientifique'),
(67, 'Décret', '2016-614', '2016-05-25', 'Décret n° 2016-614 portant réorganisation du Centre National de Recherches Industrielle et Technologique (CNRIT)', 'Ministère de l\'Enseignement Supérieur et de la Recherche Scientifique'),
(68, 'Décret', '92-869', '1992-09-30', 'Décret n° 92-869 portant création de l\'Institut National des Sciences et Techniques Nucléaires et organisation de cet Institut (INSTN)', 'Ministère des Universités'),
(69, 'Décret', '95-278', '1995-04-11', 'Décret n° 95-278 portant création et organisation d\'un Institut Malgache des Vaccins Vétérinaires (IMVAVET)', 'Ministère de la Recherche Appliquée au Développement'),
(70, 'Décret', '90-426', '1990-09-18', 'Décret n° 90-426 portant création et fixant les satatuts du Parc Botanique et Zoologique de Tsimbazaza (PBZT)', '?'),
(71, 'Décret', '93-162', '1993-03-13', 'Décret n° 93-162 portant refonte du décret n° 90-426 du 18 septembre 1990 portant création et fixant les statuts du Parc Botanique et Zoologique de Tsimbazaza (PBZT)', 'Ministère des Universités'),
(72, 'Loi', '550', '1943-10-11', 'Loi n° 550 portant création de l\'Office de la Recherche Scientifique et Technique Outre-Mer (O.R.S.T.O.M.)', 'Office de la Recherche Scientifique et Technique Outre-Mer'),
(73, 'Décret', '45-1367', '1945-06-20', 'Portant statut du personnel de l\'office de la recherche scientifique coloniale', '?'),
(74, 'Arreté', '1778-52', '1952-08-18', 'Arrêté n° 1778-52 instituant l\'agrément préalable des travaux de recherches scientifiques et techniques', '?'),
(75, 'Décret', '53-1127', '1953-11-17', 'Décret n° 53-1127 portant réorganisation de la recherche scientifique et technique outre-mer.', '?'),
(76, 'Décret', '55-892', '1955-06-30', 'Décret n° 55-892 portant règlement d\'administration publique et relatif au fonds commun de la recherche scientifique et technique Outre-mer', 'Office de la Recherche Scientifique et Technique Outre-Mer'),
(77, 'Décret', '55-1172', '1955-09-03', 'Décret n° 55-1172 organisant le régime administratif et financier de l\'office de la recherche scientifique et technique Outre-mer', 'Office de la Recherche Scientifique et Technique Outre-Mer'),
(78, 'Décret', '2252253  klsfklskfù', '2000-02-01', 'Décret n°61-650 portant création d\'un Comité de la Recherche Scientifique et Technique de Madagascar', 'Comité de la Recherche Scientifique et Technique (CRT)');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `activites`
--
ALTER TABLE `activites`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `chercheurs`
--
ALTER TABLE `chercheurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `historique`
--
ALTER TABLE `historique`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `inscrire`
--
ALTER TABLE `inscrire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `institutions`
--
ALTER TABLE `institutions`
  ADD PRIMARY KEY (`idPrimaire`);

--
-- Index pour la table `manifestations`
--
ALTER TABLE `manifestations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `partenaires`
--
ALTER TABLE `partenaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `resultats`
--
ALTER TABLE `resultats`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `textes`
--
ALTER TABLE `textes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `activites`
--
ALTER TABLE `activites`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `chercheurs`
--
ALTER TABLE `chercheurs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT pour la table `historique`
--
ALTER TABLE `historique`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT pour la table `inscrire`
--
ALTER TABLE `inscrire`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `institutions`
--
ALTER TABLE `institutions`
  MODIFY `idPrimaire` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `manifestations`
--
ALTER TABLE `manifestations`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `partenaires`
--
ALTER TABLE `partenaires`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `resultats`
--
ALTER TABLE `resultats`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `textes`
--
ALTER TABLE `textes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
