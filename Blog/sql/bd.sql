-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 22 jan. 2018 à 01:28
-- Version du serveur :  10.1.29-MariaDB
-- Version de PHP :  7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `nfactoryblog`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_articles`
--

CREATE TABLE `t_articles` (
  `ID_ARTICLE` int(11) NOT NULL,
  `ARTTITRE` varchar(45) NOT NULL,
  `ARTCHAPO` varchar(45) DEFAULT NULL,
  `ARTCONTENU` text NOT NULL,
  `ARTDATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_articles`
--

INSERT INTO `t_articles` (`ID_ARTICLE`, `ARTTITRE`, `ARTCHAPO`, `ARTCONTENU`, `ARTDATE`) VALUES
(9, 'Qu\'est-ce que le Lorem Ipsum ?', 'Les nouvelles tech', '&lt;p&gt;La techno est la mise en page avant impression. est le faux texte standard de l\'imprimerie depuis les ann&amp;eacute;es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour r&amp;eacute;aliser un livre&amp;nbsp; sp&amp;eacute;cimen de polices de texte. Il n\'a pas fait que survivre cinq si&amp;egrave;cles, mais s\'est aussi adapt&amp;eacute; &amp;agrave; la bureautique informatique, sans que son contenu n\'en soit modifi&amp;eacute;. Il a &amp;eacute;t&amp;eacute; popularis&amp;eacute; dans les ann&amp;eacute;es 1960 gr&amp;acirc;ce &amp;agrave; la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus r&amp;eacute;cemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.&lt;/p&gt;', '2018-01-21 00:03:08'),
(10, 'Qu\'est-ce que le Lorem Ipsum?', 'Le Lorem Ipsum', '&lt;p&gt;Le Lorem Ipsum est simplement du faux texte employ&amp;eacute; dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les ann&amp;eacute;es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour r&amp;eacute;aliser un livre sp&amp;eacute;cimen de polices de texte. Il n\'a pas fait que survivre cinq si&amp;egrave;cles, mais s\'est aussi adapt&amp;eacute; &amp;agrave; la bureautique informatique, sans que son contenu n\'en soit modifi&amp;eacute;. Il a &amp;eacute;t&amp;eacute; popularis&amp;eacute; dans les ann&amp;eacute;es 1960 gr&amp;acirc;ce &amp;agrave; la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus r&amp;eacute;cemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.&lt;/p&gt;', '2018-01-17 22:03:08'),
(11, 'Pourquoi l\'utiliser?', 'aaazz', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: \'Open Sans\', Arial, sans-serif; vertical-align: baseline; text-align: justify;&quot;&gt;t amet, consectetur adipiscing elit. Phasellus et augue velit. Suspendisse interdum facilisis nulla, a dapibus felis convallis eget. Aliquam nec purus placerat, molestie sapien non, feugiat ex. Maecenas interdum lectus sed mi maximus, at tincidunt orci suscipit. Phasellus eget semper eros, pellentesque suscipit arcu. Proin turpis metus, volutpat a sagittis sit amet, posuere vitae ex. Mauris maximus urna ac justo mattis consectetur in ut arcu. Phasellus euismod nisl a neque cursus sagittis. Suspendisse aliquam condimentum erat ut tempor. Sed fermentum urna quis gravida sollicitudin.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: \'Open Sans\', Arial, sans-serif; vertical-align: baseline; text-align: justify;&quot;&gt;Maecenas metus enim, euismod non neque vitae, ornare varius ex. Morbi blandit velit eu magna aliquam venenatis. Vivamus aliquam risus velit, in vestibulum orci finibus vel. Donec commodo urna dui, et euismod dui iaculis id. Aenean pharetra ultrices nibh, id fringilla libero tempus eu. Proin tincidunt odio in interdum pulvinar. Mauris quis ex lorem. Maecenas imperdiet tempor nisl, vitae sollicitudin neque semper ut. Aliquam sit amet purus vel diam condimentum euismod. Sed eleifend elementum convallis. Nunc sit amet lorem aliquet, mattis ante ac, ornare elit. Cras eros arcu, ullamcorper consectetur felis ut, posuere cursus nisl. Aenean ullamcorper elit urna, quis molestie purus lacinia quis. Nam quis consequat est. Nulla facilisi.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: \'Open Sans\', Arial, sans-serif; vertical-align: baseline; text-align: justify;&quot;&gt;Aliquam aliquam tellus quis eros molestie, sed efficitur nisl ultricies. Nullam vitae lectus diam. Sed id tortor&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; font-weight: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;&quot;&gt;tempor&lt;/span&gt;, placerat dolor sed, hendrerit urna. Aenean consectetur pretium porta. Integer ipsum ex, consequat eu odio in, cursus gravida ante. Proin sed leo elementum mi semper pellentesque. Donec sit amet mollis orci. Integer sit amet ante nec dolor condimentum cursus vel at ipsum. Mauris consectetur imperdiet arcu, non tempor justo pellentesque ac. Vestibulum tincidunt eros sem, nec maximus libero efficitur vel. Nunc tincidunt tellus sapien, condimentum feugiat magna pharetra vel. Proin mi massa, hendrerit eu risus nec, suscipit iaculis libero. Etiam laoreet tincidunt orci, laoreet cursus odio molestie id. Suspendisse sit amet lorem sapien. Aenean ut eros urna. Vestibulum elementum faucibus nunc ac interdum.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: \'Open Sans\', Arial, sans-serif; vertical-align: baseline; text-align: justify;&quot;&gt;Ut sollicitudin libero non sapien accumsan consequat. Nulla consectetur, orci in vehicula pulvinar, quam augue scelerisque lorem, a porta odio tellus eu tellus. Proin vitae porta ex. Vivamus sit amet facilisis nisl, at vulputate ex. Integer quis ullamcorper dui. Donec et est ornare, maximus ligula quis, pharetra nisl. Vivamus hendrerit mi id scelerisque aliquam.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: \'Open Sans\', Arial, sans-serif; vertical-align: baseline; text-align: justify;&quot;&gt;Fusce commodo cursus sapien vitae finibus. Sed semper venenatis risus. Phasellus vitae quam ornare enim venenatis tempus. Sed hendrerit mauris cursus egestas fermentum. Aliquam a enim odio. Nam blandit blandit justo at commodo. Maecenas lorem orci, scelerisque at dui in, rhoncus ultrices massa. Ut rutrum faucibus augue et cursus. Integer a convallis ligula. Vestibulum diam magna, accumsan quis quam sed, rhoncus euismod arcu. Vivamus euismod porta est a venenatis. Praesent lobortis nisl vitae ullamcorper viverra. Morbi sagittis, sem a luctus sollicitudin, erat nibh gravida arcu, a efficitur orci dolor id nisl.&lt;/p&gt;', '2018-01-22 00:13:56'),
(13, 'D\'oÃ¹ vient-il?', 'Lipsum', '&lt;p&gt;Contrairement &amp;agrave; une opinion r&amp;eacute;pandue, le Lorem Ipsum n\'est pas simplement du texte al&amp;eacute;atoire. Il trouve ses racines dans une oeuvre de la litt&amp;eacute;rature latine classique datant de 45 av. J.-C., le rendant vieux de 2000 ans. Un professeur du Hampden-Sydney College, en Virginie, s\'est int&amp;eacute;ress&amp;eacute; &amp;agrave; un des mots latins les plus obscurs, consectetur, extrait d\'un passage du Lorem Ipsum, et en &amp;eacute;tudiant tous les usages de ce mot dans la litt&amp;eacute;rature classique, d&amp;eacute;couvrit la source incontestable du Lorem Ipsum. Il provient en fait des sections 1.10.32 et 1.10.33 du &quot;De Finibus Bonorum et Malorum&quot; (Des Supr&amp;ecirc;mes Biens et des Supr&amp;ecirc;mes Maux) de Cic&amp;eacute;ron. Cet ouvrage, tr&amp;egrave;s populaire pendant la Renaissance, est un trait&amp;eacute; sur la th&amp;eacute;orie de l\'&amp;eacute;thique. Les premi&amp;egrave;res lignes du Lorem Ipsum, &quot;Lorem ipsum dolor sit amet...&quot;, proviennent de la section 1.10.32.&lt;/p&gt;', '2018-01-17 16:03:09'),
(14, 'D\'oÃ¹ vient-il?', 'Lipsum', '&lt;p&gt;Contrairement &amp;agrave; une opinion r&amp;eacute;pandue, le Lorem Ipsum n\'est pas simplement du texte al&amp;eacute;atoire. Il trouve ses racines dans une oeuvre de la litt&amp;eacute;rature latine classique datant de 45 av. J.-C., le rendant vieux de 2000 ans. Un professeur du Hampden-Sydney College, en Virginie, s\'est int&amp;eacute;ress&amp;eacute; &amp;agrave; un des mots latins les plus obscurs, consectetur, extrait d\'un passage du Lorem Ipsum, et en &amp;eacute;tudiant tous les usages de ce mot dans la litt&amp;eacute;rature classique, d&amp;eacute;couvrit la source incontestable du Lorem Ipsum. Il provient en fait des sections 1.10.32 et 1.10.33 du &quot;De Finibus Bonorum et Malorum&quot; (Des Supr&amp;ecirc;mes Biens et des Supr&amp;ecirc;mes Maux) de Cic&amp;eacute;ron. Cet ouvrage, tr&amp;egrave;s populaire pendant la Renaissance, est un trait&amp;eacute; sur la th&amp;eacute;orie de l\'&amp;eacute;thique. Les premi&amp;egrave;res lignes du Lorem Ipsum, &quot;Lorem ipsum dolor sit amet...&quot;, proviennent de la section 1.10.32.&lt;/p&gt;', '2018-01-21 22:14:13'),
(15, 'D\'oÃ¹ vient-il?', 'Lipsum', '&lt;p&gt;Contrairement &amp;agrave; une opinion r&amp;eacute;pandue, le Lorem Ipsum n\'est pas simplement du texte al&amp;eacute;atoire. Il trouve ses racines dans une oeuvre de la litt&amp;eacute;rature latine classique datant de 45 av. J.-C., le rendant vieux de 2000 ans. Un professeur du Hampden-Sydney College, en Virginie, s\'est int&amp;eacute;ress&amp;eacute; &amp;agrave; un des mots latins les plus obscurs, consectetur, extrait d\'un passage du Lorem Ipsum, et en &amp;eacute;tudiant tous les usages de ce mot dans la litt&amp;eacute;rature classique, d&amp;eacute;couvrit la source incontestable du Lorem Ipsum. Il provient en fait des sections 1.10.32 et 1.10.33 du &quot;De Finibus Bonorum et Malorum&quot; (Des Supr&amp;ecirc;mes Biens et des Supr&amp;ecirc;mes Maux) de Cic&amp;eacute;ron. Cet ouvrage, tr&amp;egrave;s populaire pendant la Renaissance, est un trait&amp;eacute; sur la th&amp;eacute;orie de l\'&amp;eacute;thique. Les premi&amp;egrave;res lignes du Lorem Ipsum, &quot;Lorem ipsum dolor sit amet...&quot;, proviennent de la section 1.10.32.&lt;/p&gt;', '2018-01-21 21:50:22'),
(16, 'D\'oÃ¹ vient-il?', 'Lipsum', '&lt;p&gt;Contrairement &amp;agrave; une opinion r&amp;eacute;pandue, le Lorem Ipsum n\'est pas simplement du texte al&amp;eacute;atoire. Il trouve ses racines dans une oeuvre de la litt&amp;eacute;rature latine classique datant de 45 av. J.-C., le rendant vieux de 2000 ans. Un professeur du Hampden-Sydney College, en Virginie, s\'est int&amp;eacute;ress&amp;eacute; &amp;agrave; un des mots latins les plus obscurs, consectetur, extrait d\'un passage du Lorem Ipsum, et en &amp;eacute;tudiant tous les usages de ce mot dans la litt&amp;eacute;rature classique, d&amp;eacute;couvrit la source incontestable du Lorem Ipsum. Il provient en fait des sections 1.10.32 et 1.10.33 du &quot;De Finibus Bonorum et Malorum&quot; (Des Supr&amp;ecirc;mes Biens et des Supr&amp;ecirc;mes Maux) de Cic&amp;eacute;ron. Cet ouvrage, tr&amp;egrave;s populaire pendant la Renaissance, est un trait&amp;eacute; sur la th&amp;eacute;orie de l\'&amp;eacute;thique. Les premi&amp;egrave;res lignes du Lorem Ipsum, &quot;Lorem ipsum dolor sit amet...&quot;, proviennent de la section 1.10.32.&lt;/p&gt;', '2018-01-17 16:03:30'),
(17, 'D\'oÃ¹ vient-il?', 'Lipsum', '&lt;p&gt;Contrairement &amp;agrave; une opinion r&amp;eacute;pandue, le Lorem Ipsum n\'est pas simplement du texte al&amp;eacute;atoire. Il trouve ses racines dans une oeuvre de la litt&amp;eacute;rature latine classique datant de 45 av. J.-C., le rendant vieux de 2000 ans. Un professeur du Hampden-Sydney College, en Virginie, s\'est int&amp;eacute;ress&amp;eacute; &amp;agrave; un des mots latins les plus obscurs, consectetur, extrait d\'un passage du Lorem Ipsum, et en &amp;eacute;tudiant tous les usages de ce mot dans la litt&amp;eacute;rature classique, d&amp;eacute;couvrit la source incontestable du Lorem Ipsum. Il provient en fait des sections 1.10.32 et 1.10.33 du &quot;De Finibus Bonorum et Malorum&quot; (Des Supr&amp;ecirc;mes Biens et des Supr&amp;ecirc;mes Maux) de Cic&amp;eacute;ron. Cet ouvrage, tr&amp;egrave;s populaire pendant la Renaissance, est un trait&amp;eacute; sur la th&amp;eacute;orie de l\'&amp;eacute;thique. Les premi&amp;egrave;res lignes du Lorem Ipsum, &quot;Lorem ipsum dolor sit amet...&quot;, proviennent de la section 1.10.32.&lt;/p&gt;', '2018-01-21 21:50:05'),
(18, 'D\'oÃ¹ vient-il?', 'Lipsum', '&lt;p&gt;Contrairement &amp;agrave; une opinion r&amp;eacute;pandue, le Lorem Ipsum n\'est pas simplement du texte al&amp;eacute;atoire. Il trouve ses racines dans une oeuvre de la litt&amp;eacute;rature latine classique datant de 45 av. J.-C., le rendant vieux de 2000 ans. Un professeur du Hampden-Sydney College, en Virginie, s\'est int&amp;eacute;ress&amp;eacute; &amp;agrave; un des mots latins les plus obscurs, consectetur, extrait d\'un passage du Lorem Ipsum, et en &amp;eacute;tudiant tous les usages de ce mot dans la litt&amp;eacute;rature classique, d&amp;eacute;couvrit la source incontestable du Lorem Ipsum. Il provient en fait des sections 1.10.32 et 1.10.33 du &quot;De Finibus Bonorum et Malorum&quot; (Des Supr&amp;ecirc;mes Biens et des Supr&amp;ecirc;mes Maux) de Cic&amp;eacute;ron. Cet ouvrage, tr&amp;egrave;s populaire pendant la Renaissance, est un trait&amp;eacute; sur la th&amp;eacute;orie de l\'&amp;eacute;thique. Les premi&amp;egrave;res lignes du Lorem Ipsum, &quot;Lorem ipsum dolor sit amet...&quot;, proviennent de la section 1.10.32.&lt;/p&gt;', '2018-01-21 21:50:36'),
(19, 'test', 'test', '&lt;p style=&quot;text-align: left;&quot;&gt;&lt;span style=&quot;color: #ffffff; font-family: \'Times New Roman\'; font-size: 22px; text-align: justify; background-color: #000000;&quot;&gt;&lt;em&gt;&lt;strong&gt;Le Lorem Ipsum&lt;/strong&gt; &lt;/em&gt;est simplement du faux texte employ&amp;eacute; dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les ann&amp;eacute;es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour r&amp;eacute;aliser un livre sp&amp;eacute;cimen de polices de texte. Il n\'a pas fait que survivre cinq si&amp;egrave;cles, mais s\'est aussi adapt&amp;eacute; &amp;agrave; la bureautique informatique, sans que son contenu n\'en soit modifi&amp;eacute;. Il a &amp;eacute;t&amp;eacute; popularis&amp;eacute; dans les ann&amp;eacute;es 1960 gr&amp;acirc;ce &amp;agrave; la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus r&amp;eacute;cemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.&lt;/span&gt;&lt;/p&gt;', '2018-01-21 21:50:51'),
(28, 'Lorem Ipsum', '', '&lt;p style=&quot;margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;&quot;&gt;t amet, consectetur adipiscing elit. Phasellus et augue velit. Suspendisse interdum facilisis nulla, a dapibus felis convallis eget. Aliquam nec purus placerat, molestie sapien non, feugiat ex. Maecenas interdum lectus sed mi maximus, at tincidunt orci suscipit. Phasellus eget semper eros, pellentesque suscipit arcu. Proin turpis metus, volutpat a sagittis sit amet, posuere vitae ex. Mauris maximus urna ac justo mattis consectetur in ut arcu. Phasellus euismod nisl a neque cursus sagittis. Suspendisse aliquam condimentum erat ut tempor. Sed fermentum urna quis gravida sollicitudin.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;&quot;&gt;Maecenas metus enim, euismod non neque vitae, ornare varius ex. Morbi blandit velit eu magna aliquam venenatis. Vivamus aliquam risus velit, in vestibulum orci finibus vel. Donec commodo urna dui, et euismod dui iaculis id. Aenean pharetra ultrices nibh, id fringilla libero tempus eu. Proin tincidunt odio in interdum pulvinar. Mauris quis ex lorem. Maecenas imperdiet tempor nisl, vitae sollicitudin neque semper ut. Aliquam sit amet purus vel diam condimentum euismod. Sed eleifend elementum convallis. Nunc sit amet lorem aliquet, mattis ante ac, ornare elit. Cras eros arcu, ullamcorper consectetur felis ut, posuere cursus nisl. Aenean ullamcorper elit urna, quis molestie purus lacinia quis. Nam quis consequat est. Nulla facilisi.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;&quot;&gt;Aliquam aliquam tellus quis eros molestie, sed efficitur nisl ultricies. Nullam vitae lectus diam. Sed id tortor &lt;strong&gt;tempor&lt;/strong&gt;, placerat dolor sed, hendrerit urna. Aenean consectetur pretium porta. Integer ipsum ex, consequat eu odio in, cursus gravida ante. Proin sed leo elementum mi semper pellentesque. Donec sit amet mollis orci. Integer sit amet ante nec dolor condimentum cursus vel at ipsum. Mauris consectetur imperdiet arcu, non tempor justo pellentesque ac. Vestibulum tincidunt eros sem, nec maximus libero efficitur vel. Nunc tincidunt tellus sapien, condimentum feugiat magna pharetra vel. Proin mi massa, hendrerit eu risus nec, suscipit iaculis libero. Etiam laoreet tincidunt orci, laoreet cursus odio molestie id. Suspendisse sit amet lorem sapien. Aenean ut eros urna. Vestibulum elementum faucibus nunc ac interdum.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;&quot;&gt;Ut sollicitudin libero non sapien accumsan consequat. Nulla consectetur, orci in vehicula pulvinar, quam augue scelerisque lorem, a porta odio tellus eu tellus. Proin vitae porta ex. Vivamus sit amet facilisis nisl, at vulputate ex. Integer quis ullamcorper dui. Donec et est ornare, maximus ligula quis, pharetra nisl. Vivamus hendrerit mi id scelerisque aliquam.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;&quot;&gt;Fusce commodo cursus sapien vitae finibus. Sed semper venenatis risus. Phasellus vitae quam ornare enim venenatis tempus. Sed hendrerit mauris cursus egestas fermentum. Aliquam a enim odio. Nam blandit blandit justo at commodo. Maecenas lorem orci, scelerisque at dui in, rhoncus ultrices massa. Ut rutrum faucibus augue et cursus. Integer a convallis ligula. Vestibulum diam magna, accumsan quis quam sed, rhoncus euismod arcu. Vivamus euismod porta est a venenatis. Praesent lobortis nisl vitae ullamcorper viverra. Morbi sagittis, sem a luctus sollicitudin, erat nibh gravida arcu, a efficitur orci dolor id nisl.&lt;/p&gt;', '2018-01-21 23:22:02'),
(29, 'Lipsum', 'Le Lorem Ipsum', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: \'Open Sans\', Arial, sans-serif; vertical-align: baseline; text-align: justify;&quot;&gt;t amet, consectetur adipiscing elit. Phasellus et augue velit. Suspendisse interdum facilisis nulla, a dapibus felis convallis eget. Aliquam nec purus placerat, molestie sapien non, feugiat ex. Maecenas interdum lectus sed mi maximus, at tincidunt orci suscipit. Phasellus eget semper eros, pellentesque suscipit arcu. Proin turpis metus, volutpat a sagittis sit amet, posuere vitae ex. Mauris maximus urna ac justo mattis consectetur in ut arcu. Phasellus euismod nisl a neque cursus sagittis. Suspendisse aliquam condimentum erat ut tempor. Sed fermentum urna quis gravida sollicitudin.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: \'Open Sans\', Arial, sans-serif; vertical-align: baseline; text-align: justify;&quot;&gt;Maecenas metus enim, euismod non neque vitae, ornare varius ex. Morbi blandit velit eu magna aliquam venenatis. Vivamus aliquam risus velit, in vestibulum orci finibus vel. Donec commodo urna dui, et euismod dui iaculis id. Aenean pharetra ultrices nibh, id fringilla libero tempus eu. Proin tincidunt odio in interdum pulvinar. Mauris quis ex lorem. Maecenas imperdiet tempor nisl, vitae sollicitudin neque semper ut. Aliquam sit amet purus vel diam condimentum euismod. Sed eleifend elementum convallis. Nunc sit amet lorem aliquet, mattis ante ac, ornare elit. Cras eros arcu, ullamcorper consectetur felis ut, posuere cursus nisl. Aenean ullamcorper elit urna, quis molestie purus lacinia quis. Nam quis consequat est. Nulla facilisi.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: \'Open Sans\', Arial, sans-serif; vertical-align: baseline; text-align: justify;&quot;&gt;Aliquam aliquam tellus quis eros molestie, sed efficitur nisl ultricies. Nullam vitae lectus diam. Sed id tortor&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; font-weight: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;&quot;&gt;tempor&lt;/span&gt;, placerat dolor sed, hendrerit urna. Aenean consectetur pretium porta. Integer ipsum ex, consequat eu odio in, cursus gravida ante. Proin sed leo elementum mi semper pellentesque. Donec sit amet mollis orci. Integer sit amet ante nec dolor condimentum cursus vel at ipsum. Mauris consectetur imperdiet arcu, non tempor justo pellentesque ac. Vestibulum tincidunt eros sem, nec maximus libero efficitur vel. Nunc tincidunt tellus sapien, condimentum feugiat magna pharetra vel. Proin mi massa, hendrerit eu risus nec, suscipit iaculis libero. Etiam laoreet tincidunt orci, laoreet cursus odio molestie id. Suspendisse sit amet lorem sapien. Aenean ut eros urna. Vestibulum elementum faucibus nunc ac interdum.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: \'Open Sans\', Arial, sans-serif; vertical-align: baseline; text-align: justify;&quot;&gt;Ut sollicitudin libero non sapien accumsan consequat. Nulla consectetur, orci in vehicula pulvinar, quam augue scelerisque lorem, a porta odio tellus eu tellus. Proin vitae porta ex. Vivamus sit amet facilisis nisl, at vulputate ex. Integer quis ullamcorper dui. Donec et est ornare, maximus ligula quis, pharetra nisl. Vivamus hendrerit mi id scelerisque aliquam.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: \'Open Sans\', Arial, sans-serif; vertical-align: baseline; text-align: justify;&quot;&gt;Fusce commodo cursus sapien vitae finibus. Sed semper venenatis risus. Phasellus vitae quam ornare enim venenatis tempus. Sed hendrerit mauris cursus egestas fermentum. Aliquam a enim odio. Nam blandit blandit justo at commodo. Maecenas lorem orci, scelerisque at dui in, rhoncus ultrices massa. Ut rutrum faucibus augue et cursus. Integer a convallis ligula. Vestibulum diam magna, accumsan quis quam sed, rhoncus euismod arcu. Vivamus euismod porta est a venenatis. Praesent lobortis nisl vitae ullamcorper viverra. Morbi sagittis, sem a luctus sollicitudin, erat nibh gravida arcu, a efficitur orci dolor id nisl.&lt;/p&gt;', '2018-01-21 23:32:22'),
(30, 'Lipsum', 'Le lorem ipsum', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: \'Open Sans\', Arial, sans-serif; vertical-align: baseline; text-align: justify;&quot;&gt;t amet, consectetur adipiscing elit. Phasellus et augue velit. Suspendisse interdum facilisis nulla, a dapibus felis convallis eget. Aliquam nec purus placerat, molestie sapien non, feugiat ex. Maecenas interdum lectus sed mi maximus, at tincidunt orci suscipit. Phasellus eget semper eros, pellentesque suscipit arcu. Proin turpis metus, volutpat a sagittis sit amet, posuere vitae ex. Mauris maximus urna ac justo mattis consectetur in ut arcu. Phasellus euismod nisl a neque cursus sagittis. Suspendisse aliquam condimentum erat ut tempor. Sed fermentum urna quis gravida sollicitudin.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: \'Open Sans\', Arial, sans-serif; vertical-align: baseline; text-align: justify;&quot;&gt;Maecenas metus enim, euismod non neque vitae, ornare varius ex. Morbi blandit velit eu magna aliquam venenatis. Vivamus aliquam risus velit, in vestibulum orci finibus vel. Donec commodo urna dui, et euismod dui iaculis id. Aenean pharetra ultrices nibh, id fringilla libero tempus eu. Proin tincidunt odio in interdum pulvinar. Mauris quis ex lorem. Maecenas imperdiet tempor nisl, vitae sollicitudin neque semper ut. Aliquam sit amet purus vel diam condimentum euismod. Sed eleifend elementum convallis. Nunc sit amet lorem aliquet, mattis ante ac, ornare elit. Cras eros arcu, ullamcorper consectetur felis ut, posuere cursus nisl. Aenean ullamcorper elit urna, quis molestie purus lacinia quis. Nam quis consequat est. Nulla facilisi.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: \'Open Sans\', Arial, sans-serif; vertical-align: baseline; text-align: justify;&quot;&gt;Aliquam aliquam tellus quis eros molestie, sed efficitur nisl ultricies. Nullam vitae lectus diam. Sed id tortor&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;&quot;&gt;tempor&lt;/span&gt;, placerat dolor sed, hendrerit urna. Aenean consectetur pretium porta. Integer ipsum ex, consequat eu odio in, cursus gravida ante. Proin sed leo elementum mi semper pellentesque. Donec sit amet mollis orci. Integer sit amet ante nec dolor condimentum cursus vel at ipsum. Mauris consectetur imperdiet arcu, non tempor justo pellentesque ac. Vestibulum tincidunt eros sem, nec maximus libero efficitur vel. Nunc tincidunt tellus sapien, condimentum feugiat magna pharetra vel. Proin mi massa, hendrerit eu risus nec, suscipit iaculis libero. Etiam laoreet tincidunt orci, laoreet cursus odio molestie id. Suspendisse sit amet lorem sapien. Aenean ut eros urna. Vestibulum elementum faucibus nunc ac interdum.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: \'Open Sans\', Arial, sans-serif; vertical-align: baseline; text-align: justify;&quot;&gt;Ut sollicitudin libero non sapien accumsan consequat. Nulla consectetur, orci in vehicula pulvinar, quam augue scelerisque lorem, a porta odio tellus eu tellus. Proin vitae porta ex. Vivamus sit amet facilisis nisl, at vulputate ex. Integer quis ullamcorper dui. Donec et est ornare, maximus ligula quis, pharetra nisl. Vivamus hendrerit mi id scelerisque aliquam.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: \'Open Sans\', Arial, sans-serif; vertical-align: baseline; text-align: justify;&quot;&gt;Fusce commodo cursus sapien vitae finibus. Sed semper venenatis risus. Phasellus vitae quam ornare enim venenatis tempus. Sed hendrerit mauris cursus egestas fermentum. Aliquam a enim odio. Nam blandit blandit justo at commodo. Maecenas lorem orci, scelerisque at dui in, rhoncus ultrices massa. Ut rutrum faucibus augue et cursus. Integer a convallis ligula. Vestibulum diam magna, accumsan quis quam sed, rhoncus euismod arcu. Vivamus euismod porta est a venenatis. Praesent lobortis nisl vitae ullamcorper viverra. Morbi sagittis, sem a luctus sollicitudin, erat nibh gravida arcu, a efficitur orci dolor id nisl.&lt;/p&gt;', '2018-01-22 00:01:59');

-- --------------------------------------------------------

--
-- Structure de la table `t_articles_has_t_users`
--

CREATE TABLE `t_articles_has_t_users` (
  `T_ARTICLES_ID_ARTICLE` int(11) NOT NULL,
  `T_USERS_ID_USER` int(11) NOT NULL,
  `T_USERS_T_ROLES_ID_ROLE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_articles_has_t_users`
--

INSERT INTO `t_articles_has_t_users` (`T_ARTICLES_ID_ARTICLE`, `T_USERS_ID_USER`, `T_USERS_T_ROLES_ID_ROLE`) VALUES
(9, 31, 5),
(9, 32, 5),
(10, 31, 5),
(11, 31, 5),
(13, 35, 5),
(14, 31, 5),
(14, 33, 5),
(15, 31, 5),
(15, 36, 5),
(16, 32, 5),
(17, 31, 5),
(17, 32, 5),
(18, 31, 5),
(18, 33, 5),
(19, 31, 5),
(19, 36, 5),
(28, 31, 5),
(29, 31, 5),
(30, 31, 5);

-- --------------------------------------------------------

--
-- Structure de la table `t_categories`
--

CREATE TABLE `t_categories` (
  `ID_CATEGORIE` int(11) NOT NULL,
  `CATLIBELLE` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_categories`
--

INSERT INTO `t_categories` (`ID_CATEGORIE`, `CATLIBELLE`) VALUES
(1, 'SPORT'),
(2, 'TECHNO'),
(3, 'SANTE'),
(4, 'VOYAGE');

-- --------------------------------------------------------

--
-- Structure de la table `t_categories_has_t_articles`
--

CREATE TABLE `t_categories_has_t_articles` (
  `T_CATEGORIES_ID_CATEGORIE` int(11) NOT NULL,
  `T_ARTICLES_ID_ARTICLE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_categories_has_t_articles`
--

INSERT INTO `t_categories_has_t_articles` (`T_CATEGORIES_ID_CATEGORIE`, `T_ARTICLES_ID_ARTICLE`) VALUES
(1, 9),
(1, 10),
(1, 11),
(1, 14),
(1, 15),
(1, 16),
(1, 19),
(1, 28),
(2, 9),
(2, 13),
(2, 16),
(2, 19),
(2, 28),
(2, 29),
(3, 10),
(3, 11),
(3, 13),
(3, 14),
(3, 19),
(3, 29),
(4, 9),
(4, 14),
(4, 16);

-- --------------------------------------------------------

--
-- Structure de la table `t_roles`
--

CREATE TABLE `t_roles` (
  `ID_ROLE` int(11) NOT NULL,
  `ROLEDESI` varchar(45) NOT NULL,
  `ROLEDEF` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_roles`
--

INSERT INTO `t_roles` (`ID_ROLE`, `ROLEDESI`, `ROLEDEF`) VALUES
(1, 'ROLE_SUPERADMIN', NULL),
(2, 'ROLE_ADMIN', NULL),
(3, 'ROLE_MODERATEUR', NULL),
(4, 'ROLE_REDACTEUR', NULL),
(5, 'ROLE_UTILISATEUR', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `t_users`
--

CREATE TABLE `t_users` (
  `ID_USER` int(11) NOT NULL,
  `USERNAME` varchar(45) NOT NULL,
  `USERFNAME` varchar(45) DEFAULT NULL,
  `PSEUDO` varchar(255) NOT NULL,
  `USERMAIL` varchar(255) NOT NULL,
  `USERPASSWORD` char(40) NOT NULL,
  `USERDATEINS` datetime DEFAULT NULL,
  `T_ROLES_ID_ROLE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_users`
--

INSERT INTO `t_users` (`ID_USER`, `USERNAME`, `USERFNAME`, `PSEUDO`, `USERMAIL`, `USERPASSWORD`, `USERDATEINS`, `T_ROLES_ID_ROLE`) VALUES
(31, 'aze', 'aze', 'aze', 'aze@aze.fr', 'de271790913ea81742b7d31a70d85f50a3d3e5ae', '2018-01-11 23:01:43', 5),
(32, 'alili', 'hocine', 'alilihoc', 'hocine.alili@gmail.com', '9e0ef5325e76ab778bbd0865b8ed891ddecda57c', '2018-01-11 23:01:38', 5),
(33, 'ali', 'kj', 'ij', 'ij@j.com', '4cfa380a7a05ae26270f5ea888009520ab54b677', '2018-01-12 13:01:54', 5),
(34, 'tre', 'tre', 'tre', 'tre@t.fr', '46fd535bbf9187b13dbcf7c26328c9b8479612d4', '2018-01-12 19:01:15', 5),
(35, 'a', 'aze', 'azert', 'az@azazz.fr', '6dab20c0f365dbcea9c4d26f7396f70fc5196bac', '2018-01-12 19:01:53', 5),
(36, 'tez', 'ze', 'ze', 'ze@ze.fr', '90283840d90de49b8e7984bd99b47fee0d4bd50d', '2018-01-12 23:01:20', 5),
(40, '', NULL, 'JC', 'jc@gmail.com', 'f9ae8604de015e6fc12a1ebdbe72f262b981a2f6', '2018-01-21 18:01:28', 2),
(52, 'alili', 'hocine', 'alilihoc', 'hocine.alili@gmail.com', '', '2018-01-21 20:01:53', 5),
(64, 'aze', 'aze', 'aze', 'aze@aze.fr', '', '2018-01-21 20:01:57', 2),
(65, 'aze', 'aze', 'aze', 'aze@aze.fr', '', '2018-01-21 20:01:58', 1),
(80, 'aze', 'aze', 'aze', 'aze@aze.fr', '', '2018-01-21 21:01:34', 3),
(82, 'a', 'aze', 'azert', 'az@azazz.fr', '', '2018-01-21 22:01:11', 4);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_articles`
--
ALTER TABLE `t_articles`
  ADD PRIMARY KEY (`ID_ARTICLE`);

--
-- Index pour la table `t_articles_has_t_users`
--
ALTER TABLE `t_articles_has_t_users`
  ADD PRIMARY KEY (`T_ARTICLES_ID_ARTICLE`,`T_USERS_ID_USER`,`T_USERS_T_ROLES_ID_ROLE`),
  ADD KEY `fk_T_ARTICLES_has_T_USERS_T_USERS1_idx` (`T_USERS_ID_USER`,`T_USERS_T_ROLES_ID_ROLE`),
  ADD KEY `fk_T_ARTICLES_has_T_USERS_T_ARTICLES1_idx` (`T_ARTICLES_ID_ARTICLE`);

--
-- Index pour la table `t_categories`
--
ALTER TABLE `t_categories`
  ADD PRIMARY KEY (`ID_CATEGORIE`);

--
-- Index pour la table `t_categories_has_t_articles`
--
ALTER TABLE `t_categories_has_t_articles`
  ADD PRIMARY KEY (`T_CATEGORIES_ID_CATEGORIE`,`T_ARTICLES_ID_ARTICLE`),
  ADD KEY `fk_T_CATEGORIES_has_T_ARTICLES_T_ARTICLES1_idx` (`T_ARTICLES_ID_ARTICLE`),
  ADD KEY `fk_T_CATEGORIES_has_T_ARTICLES_T_CATEGORIES1_idx` (`T_CATEGORIES_ID_CATEGORIE`);

--
-- Index pour la table `t_roles`
--
ALTER TABLE `t_roles`
  ADD PRIMARY KEY (`ID_ROLE`);

--
-- Index pour la table `t_users`
--
ALTER TABLE `t_users`
  ADD PRIMARY KEY (`ID_USER`,`T_ROLES_ID_ROLE`),
  ADD KEY `fk_T_USERS_T_ROLES_idx` (`T_ROLES_ID_ROLE`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_articles`
--
ALTER TABLE `t_articles`
  MODIFY `ID_ARTICLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `t_categories`
--
ALTER TABLE `t_categories`
  MODIFY `ID_CATEGORIE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `t_roles`
--
ALTER TABLE `t_roles`
  MODIFY `ID_ROLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `t_users`
--
ALTER TABLE `t_users`
  MODIFY `ID_USER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `t_articles_has_t_users`
--
ALTER TABLE `t_articles_has_t_users`
  ADD CONSTRAINT `fk_T_ARTICLES_has_T_USERS_T_ARTICLES1` FOREIGN KEY (`T_ARTICLES_ID_ARTICLE`) REFERENCES `t_articles` (`ID_ARTICLE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_T_ARTICLES_has_T_USERS_T_USERS1` FOREIGN KEY (`T_USERS_ID_USER`,`T_USERS_T_ROLES_ID_ROLE`) REFERENCES `t_users` (`ID_USER`, `T_ROLES_ID_ROLE`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `t_categories_has_t_articles`
--
ALTER TABLE `t_categories_has_t_articles`
  ADD CONSTRAINT `fk_T_CATEGORIES_has_T_ARTICLES_T_ARTICLES1` FOREIGN KEY (`T_ARTICLES_ID_ARTICLE`) REFERENCES `t_articles` (`ID_ARTICLE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_T_CATEGORIES_has_T_ARTICLES_T_CATEGORIES1` FOREIGN KEY (`T_CATEGORIES_ID_CATEGORIE`) REFERENCES `t_categories` (`ID_CATEGORIE`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `t_users`
--
ALTER TABLE `t_users`
  ADD CONSTRAINT `fk_T_USERS_T_ROLES` FOREIGN KEY (`T_ROLES_ID_ROLE`) REFERENCES `t_roles` (`ID_ROLE`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
