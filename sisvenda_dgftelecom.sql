-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 18, 2018 at 10:06 AM
-- Server version: 5.6.39-83.1
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisvenda_dgftelecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `planos`
--

CREATE TABLE `planos` (
  `id` int(11) NOT NULL,
  `nomeplano` varchar(90) NOT NULL COMMENT 'nome do plano',
  `diasVencimento` varchar(90) DEFAULT NULL COMMENT 'dias de vencimento ',
  `portabilidade` enum('Sim','Não') DEFAULT NULL,
  `pontos` enum('Sim','Não') NOT NULL,
  `degustacao` enum('Sim','Não') NOT NULL,
  `migracao` enum('Sim','Não') NOT NULL,
  `datacreate` date NOT NULL COMMENT 'data de registro',
  `datamodify` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'data da ultima modificação'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='tabela responsável por armazenar os planos';

--
-- Dumping data for table `planos`
--

INSERT INTO `planos` (`id`, `nomeplano`, `diasVencimento`, `portabilidade`, `pontos`, `degustacao`, `migracao`, `datacreate`, `datamodify`) VALUES
(59, 'Claro Tv Livre', 'Avista,No Cartão, Receber no Local,10,Crediario , CPFL , Cheque', NULL, '', '', '', '2013-11-29', '2013-11-29 23:26:22'),
(54, 'Antena Claro Tv ( Pos pago)', '05,12,15', NULL, '', '', '', '2013-10-29', '2013-10-29 15:16:46'),
(73, 'Antena Claro Tv PRE PAGO', '00,01,10,20', NULL, 'Sim', 'Sim', 'Sim', '2014-07-05', '2014-07-05 12:45:46'),
(74, 'Ordem de Serviço', 'Cortesia,Avista,01,05,10,15,20,25', NULL, 'Sim', 'Sim', 'Sim', '2014-07-06', '2014-07-06 15:04:44'),
(65, 'HughesNet', '02,05,08,15,20,25', NULL, 'Sim', 'Sim', 'Sim', '2014-03-13', '2014-03-14 01:22:14'),
(60, 'Telefone Fixo', '01,04,05,06,08', NULL, '', '', '', '0000-00-00', '2014-03-14 01:39:08'),
(72, 'ByteWeb', 'Avista,05,10,15,20,25', NULL, 'Sim', 'Sim', 'Sim', '2014-06-02', '2014-06-02 18:04:12'),
(75, 'Produtos', 'Avista', NULL, 'Sim', 'Sim', 'Sim', '2014-07-06', '2014-07-06 15:19:56'),
(82, 'Instalação Claro / SKY ( Varejo)', 'Avista ,Cartão Credito', NULL, 'Sim', 'Sim', 'Sim', '2015-06-17', '2015-06-18 00:35:26'),
(78, 'Purificador Agua', '10,20,30', NULL, 'Sim', 'Sim', 'Sim', '2015-03-31', '2015-03-31 16:43:57'),
(77, 'Porto Seguro', '10,16,22,28', NULL, 'Sim', 'Sim', 'Sim', '2015-02-19', '2015-02-19 22:39:51'),
(83, 'J J Radio', '01,05,10,15,20,25,30', NULL, 'Sim', 'Sim', 'Sim', '2016-02-18', '2016-02-18 22:26:15'),
(84, 'Antena Sky Pre', '10,20,30', NULL, 'Sim', 'Sim', 'Sim', '2016-02-18', '2016-02-18 22:27:30'),
(85, 'Antena Parabolica', '10,20,30', NULL, 'Sim', 'Sim', 'Sim', '2016-02-18', '2016-02-18 22:27:45'),
(86, 'Antena Oi Tv Livre HD', '10,20,30', NULL, 'Sim', 'Sim', 'Sim', '2016-02-18', '2016-02-18 22:28:02'),
(87, 'NET', '10,20,30', NULL, 'Sim', 'Sim', 'Sim', '2016-02-18', '2016-02-18 22:47:28'),
(88, 'SKY Pos ', '10,20,30', NULL, 'Sim', 'Sim', 'Sim', '2017-06-05', '2017-06-05 13:33:49'),
(89, 'Algar TV', '10,20,30', NULL, 'Sim', 'Sim', 'Sim', '2017-06-06', '2017-06-06 11:32:54'),
(90, 'Internet Fibra', '01,05,10,15,20,25', NULL, 'Sim', 'Sim', 'Sim', '2017-06-08', '2017-06-08 14:14:40'),
(91, 'Fibra Americana', '05,10,15,20,25,30', NULL, 'Sim', 'Sim', 'Sim', '2017-07-13', '2017-07-13 18:54:35'),
(92, 'Atenção', '01', NULL, 'Sim', 'Sim', 'Sim', '2017-09-01', '2017-09-01 21:27:13'),
(93, 'GSTN Internet', '10', NULL, 'Sim', 'Sim', 'Sim', '2017-12-21', '2017-12-21 17:26:23'),
(94, 'Smart Web', '1,10,20', NULL, 'Sim', 'Sim', 'Sim', '2018-04-07', '2018-04-07 14:27:46'),
(95, 'Tv Perfeita ', '00', NULL, 'Sim', 'Sim', 'Sim', '2018-06-29', '2018-06-29 21:54:16');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(90) NOT NULL,
  `login` varchar(90) NOT NULL,
  `senha` varchar(128) NOT NULL,
  `email` varchar(120) NOT NULL,
  `funcao` int(1) DEFAULT NULL,
  `hor_entrada` time DEFAULT NULL COMMENT 'Horário de entrada',
  `hor_saida` time DEFAULT NULL COMMENT 'Horário de saída',
  `data_create` date NOT NULL,
  `data_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dias_acesso` varchar(32) DEFAULT NULL COMMENT 'dias para acesso em array (mon,sun) date(''D'')',
  `permissoes` varchar(50) NOT NULL COMMENT 'permissões de acesso,array',
  `dias_trab` varchar(60) DEFAULT NULL COMMENT 'dias de acesso ao sistema',
  `status` tinyint(1) DEFAULT '1',
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `login`, `senha`, `email`, `funcao`, `hor_entrada`, `hor_saida`, `data_create`, `data_update`, `dias_acesso`, `permissoes`, `dias_trab`, `status`, `id_user`) VALUES
(2, 'MARCOS  TEOTÔNIO', 'marcos', '89794b621a313bb59eed0d9f0f4e8205', 'professormarcos2@gmail.com', 1, '08:00:00', '18:00:00', '2013-09-28', '2016-01-25 16:30:23', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 1, 21),
(3, 'MÁRCIO', 'Marcio', '303be80c796c7593f708e5bfe029d405', 'marcio@dgftelecom.com.br', 1, '01:00:00', '24:00:00', '2013-09-28', '2018-05-30 13:52:43', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 1, 33),
(8, 'GABRIELA ESPANHOL RIBEIRO', 'gabriela', '827ccb0eea8a706c4c34a16891f84e7b', 'Gabriella.espanhol@hotmail.com', 8, '08:00:00', '23:00:00', '2013-11-29', '2015-02-07 16:13:02', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 0, 2),
(9, 'MONICA  CIA', 'monica', '1c8219c28541ac443fc8972b2771516f', 'monicaraquel.cia@gmail.com', 1, '08:00:00', '19:00:00', '2013-11-29', '2016-06-09 14:03:29', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 1, 3),
(10, 'ISABELA ESPANHOL', 'isabela', '827ccb0eea8a706c4c34a16891f84e7b', 'isaespanhol@live.com', 14, '08:00:00', '23:59:00', '2013-11-29', '2015-06-08 00:55:27', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 0, 4),
(11, 'WILLIAN ALEX DURANTI', 'willian', '827ccb0eea8a706c4c34a16891f84e7b', 'will_skylines10@hotmaIL.COM', 5, NULL, NULL, '2013-12-02', '2014-02-01 18:21:41', NULL, '', NULL, 0, 5),
(12, 'MARCELO FRANCISCO', 'marcelo', '827ccb0eea8a706c4c34a16891f84e7b', 'marceloinstalacoes@hotmail.com', 5, '01:00:00', '24:00:00', '2013-12-02', '2015-08-24 12:18:07', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 0, 6),
(13, 'TARCISIO  NASCIMENTO', 'tarcisio', '9a14e03a2bbd11431feae233b0f4eed5', 'tarcisio@gmail.com', 5, '01:00:00', '02:00:00', '2013-12-02', '2015-06-08 00:55:00', NULL, '', 'Sun', 0, 7),
(14, 'GERALDO TOSINI FILHO', 'geraldo', '827ccb0eea8a706c4c34a16891f84e7b', 'geraldo@hotmail.com', 5, NULL, NULL, '2013-12-02', '2014-02-17 12:19:49', NULL, '', NULL, 0, 8),
(15, 'JOHNATAN TOSINI', 'johnatan', '827ccb0eea8a706c4c34a16891f84e7b', 'johnatantosini@hotmail.com', 5, NULL, NULL, '2013-12-02', '2014-02-17 12:19:40', NULL, '', NULL, 0, 9),
(16, 'MARCOS JOSE', 'marcosjose', '2effe252571cb0290b05db33972f0c78', 'marcosjosedasilva@outlok.com.br', 10, '01:00:00', '24:00:00', '2013-12-02', '2018-02-14 21:03:28', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 1, 10),
(17, 'LUANA CARLA DE OLIVEIRA GUIMARAES', 'luanacarla', '827ccb0eea8a706c4c34a16891f84e7b', 'miaeusou@hotmail.com', 7, '08:00:00', '18:30:00', '2013-12-05', '2014-02-13 17:10:21', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 11),
(18, 'MARIANE RUFINO PEREIRA', 'mariane', '8781eba6b2631a210de5e363c2834d83', 'mary_maryjane@hotmail.com', 6, '08:55:00', '15:40:00', '2013-12-05', '2014-03-07 03:34:58', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 12),
(20, 'HENRIQUE AUGUSTO FEITOZA DA SILVA', 'henrique', '4c68da7df3e0aa6467d00c73314ebeb0', 'i@ig.com.br', 10, NULL, NULL, '2014-01-03', '2014-01-11 12:10:07', NULL, '', NULL, 0, 14),
(21, 'HENRIQUE AUGUSTO FEITOZA DA SILVA', 'henrique', '4311cdd14f4045b39a6aae7cda2b7b6a', 'marcio@dgftelecom.com.br', 10, '01:00:00', '24:00:00', '0000-00-00', '2014-09-23 00:15:43', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 0, NULL),
(22, 'ANTENAS EDISAT', 'antenasedisatsumare', '827ccb0eea8a706c4c34a16891f84e7b', 'antenasedisat@gmail.com', 9, '08:00:00', '18:30:00', '2014-01-09', '2014-05-30 23:41:16', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 1017),
(23, 'OUTROS (VENDEDORES)', 'outrosvendedores', '6e4b54e716044dea93312041ee1826f1', 'outrosvendedores@gmail.com', 7, '01:00:00', '24:00:00', '2014-01-11', '2014-06-03 01:28:04', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 0, 15),
(24, 'IEDA LEIDIANE', 'Ieda Leidiane', '6f897da458b20705436eed217ffb5835', 'ieda_leydiane@hotmail.com', 10, '08:00:00', '18:30:00', '2014-01-16', '2016-12-01 12:39:44', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 16),
(25, 'FERNANDA DE SOUZA BARRETO', 'fernandabarreto', '827ccb0eea8a706c4c34a16891f84e7b', 'feertoop123@hotmail.com', 6, '08:00:00', '18:00:00', '2014-01-23', '2017-05-22 17:50:31', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 17),
(26, 'ROSEMEIRE SILVESTRINI', 'rosemeiresilvestrini', '0f5aaaf14d9a2d371853e46119abba27', 'rosy-1304@hotmail.com', 6, '08:55:00', '15:30:00', '2014-01-24', '2014-04-13 22:53:34', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 18),
(27, 'GISELE VIEIRA FRANCISCO', 'giselefrancisco', 'c8da9dd6b0a53dadd48c2970c9e89541', 'gisele__morena@hotmail.com', 6, '08:55:00', '15:40:00', '2014-01-29', '2014-02-05 12:11:01', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 19),
(28, 'EMANUELA ESPANHOL RIBEIRO', 'emanuelaespanhol', '827ccb0eea8a706c4c34a16891f84e7b', 'manukita5@hotmail.com', 8, '12:00:00', '18:30:00', '2014-01-31', '2014-02-07 15:40:26', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 20),
(29, 'RAFAELA CAROLINA ESPANHOR', 'rafaelaespanhol', '827ccb0eea8a706c4c34a16891f84e7b', 'rafaela@gmail.com', 8, '01:00:00', '18:30:00', '2014-01-31', '2014-02-07 15:40:10', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 21),
(30, 'LUCIANO SANTOS  CRUZ', 'lucianocruz', '827ccb0eea8a706c4c34a16891f84e7b', 'illuminushar@gmail.com', 6, '08:50:00', '15:30:00', '2014-01-31', '2014-02-17 11:45:58', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 22),
(31, 'MICHELE CRISTINA DA SILVA', 'michelesilva', '827ccb0eea8a706c4c34a16891f84e7b', 'miih_sb0@hotmail.com', 6, '08:50:00', '15:40:00', '2014-02-03', '2014-02-10 11:15:03', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 23),
(32, 'ROSANGELA ALVES DOS PERICO', 'rosangelaperico', '827ccb0eea8a706c4c34a16891f84e7b', 'rose-santos78@hotmail.com', 6, '08:50:00', '15:40:00', '2014-02-07', '2014-02-17 12:19:10', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 24),
(33, 'VALTER FELIX', 'Valterfelix', 'e10adc3949ba59abbe56e057f20f883e', 'sbovalt@yahoo.com.br', 9, '07:00:00', '24:00:00', '2014-03-12', '2014-05-30 23:41:25', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 0, 1018),
(34, 'PAULA  ESPANHOL', 'PaulaEspanhol', '71febc8496faa933f0abbd332833856c', 'paula@dgftelecom.com.br', 1, '24:00:00', '23:59:00', '2014-03-29', '2014-09-23 00:20:35', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 1, 25),
(35, 'PROGRESSO', 'progressosbo', '827ccb0eea8a706c4c34a16891f84e7b', 'edison_representacoes@hotmail.com', 9, '24:00:00', '23:59:00', '2014-04-24', '2014-07-06 02:19:18', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 1019),
(36, 'CLEVIO ALVES DOS SANTOS', 'clevio', '827ccb0eea8a706c4c34a16891f84e7b', 'joyce_clevio@hotmail.com', 5, '24:00:00', '01:00:00', '2014-04-29', '2014-05-15 22:30:11', NULL, '', 'Mon', 0, 26),
(37, 'DENIS GUILHERME FERREIRA ESPANHOL', 'denisespanhol', '827ccb0eea8a706c4c34a16891f84e7b', 'admdgfespanhol@gmail.com', 10, '07:30:00', '18:30:00', '2014-05-05', '2015-11-12 19:30:35', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 27),
(38, 'MARCELO SATIRO DOS SANTOS', 'marcelosatiro', '827ccb0eea8a706c4c34a16891f84e7b', 'marcelosantinodossanto@r7.com', 5, NULL, NULL, '2014-05-05', '2014-05-05 20:36:40', NULL, '', NULL, 0, 28),
(39, 'BYTEWEB', 'byteweb', '827ccb0eea8a706c4c34a16891f84e7b', 'elaine@byteweb.com.br', 11, '01:00:00', '23:00:00', '0000-00-00', '2018-02-07 17:37:18', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 1, NULL),
(40, 'LUCIANO HENRIQUE SOUZA CARIOCA ', '000', 'c6f057b86584942e415435ffb1fa93d4', 'luciano23claro@gmail.com', 5, NULL, NULL, '2014-06-23', '2014-06-23 12:26:47', NULL, '', NULL, 0, 29),
(41, 'TIAGO NASCIMENTO', 'tiagonascimento', '827ccb0eea8a706c4c34a16891f84e7b', 'tiago.nascimento.cristo@hotmail.com', 5, '00:00:00', '01:00:00', '2014-06-25', '2014-10-30 15:53:55', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 30),
(42, 'DOUGLAS HENRIQUE DE SOUZA CAMARGO', 'douglascamargo', '827ccb0eea8a706c4c34a16891f84e7b', 'douglasstln@gmail.com', 10, '00:00:00', '23:59:00', '2014-06-26', '2018-05-10 14:40:31', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 1, 31),
(43, 'LEANDRO APARECIDO DOS SANTOS ALVES', 'leandro', '827ccb0eea8a706c4c34a16891f84e7b', 'leandroitv@gmail.com', 5, NULL, NULL, '2014-06-30', '2014-08-07 16:45:26', NULL, '', NULL, 0, 32),
(44, 'R. S. COMERCIO DE PRODUTOS AGROPECUARIOS LTDA - ME', 'rsagropecuaria', '827ccb0eea8a706c4c34a16891f84e7b', 'agromais@superig.com.br', 9, '00:00:01', '24:00:00', '2014-08-25', '2015-03-05 23:13:49', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 0, 1020),
(45, 'RAFAELA MARTINS DE BRITO', 'Rafaela Brito', '827ccb0eea8a706c4c34a16891f84e7b', 'RAFAELAMARTINS.BRITO@HOTMAIL.COM', 12, '07:00:00', '19:00:00', '2014-09-17', '2015-02-07 16:13:13', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 34),
(46, 'DENIS GUILHERME FERREIRA ESPANHOL', 'denis', 'b38cc7f928fb4942ae321fe47b1fa1e0', 'DENISGFESPANHOL@GMAIL.COM.BR', 7, NULL, NULL, '2014-11-24', '2014-11-24 13:19:59', NULL, '', NULL, 0, 35),
(47, 'FABRICIO DIAS DE LIMA', 'fabricio', 'dcddb75469b4b4875094e14561e573d8', 'instalador@hotmail.com', 5, NULL, NULL, '2014-12-09', '2015-03-06 02:54:12', NULL, '', NULL, 0, 36),
(48, 'VERSATIL', 'Versatil', '827ccb0eea8a706c4c34a16891f84e7b', 'lojasversatils@ig.com.br', 7, '06:00:00', '20:00:00', '2014-12-17', '2017-08-24 20:42:03', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 1, 1021),
(49, 'TATIANE CAMILO', 'Tatiane Camilo', '10f7df2451ae3f3c02d31cbd1ee825f8', 'anabela.tati@hotmail.com', 8, '01:00:00', '23:59:00', '2014-12-24', '2015-06-18 21:52:57', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 0, 37),
(50, 'THIAGO DE ALMEIDA LIMA', 'thiagolima', 'ffcda792e9cf98819caf142a417dc000', 'thiagoodassa@gmail.com', 6, '01:00:00', '23:00:00', '2015-01-07', '2015-06-03 20:18:53', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 0, 38),
(51, 'ROGERIO DOS SANTOS OLIVEIRA', 'Rogerio Oliveira', '827ccb0eea8a706c4c34a16891f84e7b', 'rogerionathan@hotmail.com', 5, NULL, NULL, '2015-01-31', '2015-06-08 00:54:16', NULL, '', NULL, 0, 39),
(52, 'DEBORA APARECIDA DA SILVA', 'deborasilva', '25f9e794323b453885f5181f1b624d0b', 'deboraasaranha@gmail.com', 6, '08:00:00', '15:30:00', '2015-02-07', '2015-02-12 20:22:37', NULL, '', 'Mon,Tue,Wed,Fri,Sat', 0, 40),
(53, 'VANESSA GOMES DE ALMEIDA', 'vanessaalmeida', '827ccb0eea8a706c4c34a16891f84e7b', 'vanessa.gomes-alm@outlook.com', 6, '01:00:00', '18:00:00', '2015-02-19', '2015-04-17 16:14:12', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 0, 41),
(54, 'PORTO SEGURO (HENRIQUE CARDOSO )', 'Porto Seguro', '54621b46c1664db5ba7127d8f22aff00', 'henrique.corretorseguros@ig.com.br', 13, '01:00:00', '23:59:00', '2015-02-21', '2016-01-01 18:40:27', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 0, 42),
(55, 'DURVAL RODRIGUES VIEIRA', 'durval', '827ccb0eea8a706c4c34a16891f84e7b', 'durvalr.vieira@gamail.com', 5, NULL, NULL, '2015-03-24', '2015-03-24 20:15:26', NULL, '', NULL, 0, 43),
(56, 'POWER SOM', 'Power Som', '827ccb0eea8a706c4c34a16891f84e7b', 'pawersom@gmail.com', 9, '01:00:00', '23:00:00', '2015-04-16', '2015-12-31 11:28:31', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 1, 1022),
(57, 'RAFAEL DA SILVA GERMANO', 'rafaelgermano', '827ccb0eea8a706c4c34a16891f84e7b', 'rafaelgermano@gmail.com', 7, '07:00:00', '20:00:00', '2015-04-23', '2018-07-11 15:09:25', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 1, 44),
(58, 'MICHELLE DOS SANTOS DE SOUSA', 'michelle sousa', '827ccb0eea8a706c4c34a16891f84e7b', 'michelledossantosdesousa@gmail.com', 14, '08:00:00', '18:00:00', '2015-05-15', '2015-06-03 20:18:21', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 45),
(59, 'JOSELI OLIVEIRA DE ARAUJO', 'joseli araujo', 'e7add81030f33dd2b6cc356e309a4480', 'joseli@gmail.com.br', 6, '08:58:00', '16:30:00', '2015-05-15', '2015-06-15 17:54:55', NULL, '', 'Mon,Tue,Wed,Thu,Fri', 0, 46),
(60, 'STEFFANY LEDES MONTEIRO', 'Steffany Ledes', '827ccb0eea8a706c4c34a16891f84e7b', 'steffany@gmail.com.br', 6, '08:58:00', '16:30:00', '2015-05-15', '2015-06-03 12:38:45', NULL, '', 'Mon,Tue,Wed,Thu,Fri', 0, 47),
(61, 'NATALIA DIAS GARCIA', 'Natalia Garcia', '62b53d6d0b2add3ed71b6ed4cb68d579', 'natalia@gmail.com', 6, '08:58:00', '16:30:00', '2015-05-15', '2015-05-26 19:52:03', NULL, '', 'Mon,Tue,Wed,Thu,Fri', 0, 48),
(62, 'CLEIDE APARECIDA SOARES DE CARVALHO', 'Cleide Carvalho', '2f1a578b5ffd0aa668b732b9bd27828b', 'cleide@gmail.com.br', 6, '08:58:00', '16:30:00', '2015-05-16', '2015-05-20 12:45:08', NULL, '', 'Mon,Tue,Wed,Thu,Fri', 0, 49),
(63, 'JESSICA BORGES DOS SANTOS', 'Jessica Santos', '4771f0174ee257cb4aae677ed91003c6', 'jessica.borges15@yahoo.com.br', 6, '09:00:00', '16:30:00', '2015-05-20', '2015-05-22 01:53:31', NULL, '', 'Mon,Tue,Wed,Thu,Fri', 0, 50),
(64, 'FLAVIA MENEZES DA SILVA', 'flavia', 'ac029f072468dd8c97c15f0a9fa96f00', 'flavinha.menezes@outlook.com', 10, '01:00:00', '23:59:00', '2015-05-21', '2018-01-22 19:13:38', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 0, 51),
(65, 'RAQUEL LAMENHA DA SILVA', 'Raquel Lamenha', 'ece37b4f21e061df28152d903dd8817a', 'raquel.lamenha@hotmail.com', 8, '07:40:00', '20:00:00', '2015-05-22', '2015-05-26 19:51:44', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 52),
(66, 'IZABELA CRISTINA GUARINO VICENTE', 'Izabela Guarino', '62f52446f05035469f148678e04caf1d', 'isabelaguarino@hotmail.com', 8, '08:00:00', '18:30:00', '2015-05-30', '2015-06-08 00:54:01', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 53),
(67, 'VALDIRENE FELIX', 'valdirene felix', 'ef076d42a5bdbd3f61a8ecc94d1132cc', 'FELIX.VALDIRENE@YAHOO.COM.BR', 10, '08:00:00', '18:30:00', '2015-06-01', '2017-01-16 20:56:17', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 54),
(68, 'FERNANDA OLIVEIRA DE ARAUJO', 'fernandaaraujo', '827ccb0eea8a706c4c34a16891f84e7b', 'fernandanaotememail@hotmail.com', 6, '08:50:00', '18:00:00', '2015-06-01', '2015-06-30 20:55:48', NULL, '', 'Mon,Tue,Wed,Thu,Fri', 0, 55),
(69, 'DANIEL ELIAS THOMAZ', 'danielthomaz', '827ccb0eea8a706c4c34a16891f84e7b', 'THOMAZ.DANIEL@OUTLOOK.COM', 6, '08:50:00', '23:00:00', '2015-06-01', '2017-06-05 15:38:56', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 56),
(70, 'THALITA DE OLIVEIRA RODRIGUES BORGES', 'Thalita Borges', '303d30f5cb2bb89a5d7a2b291935757a', 'thalitadeoliveiraborges@hotmail.com', 7, '11:00:00', '11:01:00', '2015-06-18', '2015-07-29 19:33:35', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 57),
(71, 'THIAGO AUGUSTO RIBEIRO RODRIGUES', 'thiago augusto', 'a73cfef501ccc47b6c953a91ef290940', 'thiagoarr@yahoo.com.br', 10, NULL, NULL, '2015-08-06', '2015-08-18 19:43:14', NULL, '', NULL, 0, 58),
(72, 'DANILO EMANOEL SAIA', 'danilosaia', '827ccb0eea8a706c4c34a16891f84e7b', 'danilo@gmail.com', 10, '07:00:00', '24:00:00', '2015-09-25', '2016-01-01 18:39:37', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 0, 59),
(73, 'S.J ANTENAS', 'S J antenas', '827ccb0eea8a706c4c34a16891f84e7b', 'sjantenas@gmail.com', 9, NULL, NULL, '2016-01-28', '2016-01-28 11:28:32', NULL, '', NULL, 1, 1023),
(74, 'JJ NET', '..', '827ccb0eea8a706c4c34a16891f84e7b', 'marcio@dgftelecom.com.br', 11, '08:00:00', '19:00:00', '0000-00-00', '2016-02-02 16:23:59', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, NULL),
(75, 'JJ RADIO', 'jjradio', '827ccb0eea8a706c4c34a16891f84e7b', 'marcio@dgftelecom.com.br', 15, '07:00:00', '20:00:00', '0000-00-00', '2016-02-18 23:08:07', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 1, NULL),
(76, 'SKY', 'sky', '827ccb0eea8a706c4c34a16891f84e7b', 'marcio@dgftelecom.com.br', 16, '07:00:00', '20:00:00', '0000-00-00', '2016-02-18 23:08:43', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 1, NULL),
(77, 'BOM PASTOR', 'bompastor', '827ccb0eea8a706c4c34a16891f84e7b', 'marcio@dgftelecom.com.br', 17, '07:00:00', '20:00:00', '0000-00-00', '2016-02-18 23:09:20', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 1, NULL),
(78, 'CARTÃO DE TODOS', 'cartaodetodos', '827ccb0eea8a706c4c34a16891f84e7b', 'marcio@dgftelecom.com.br', 18, '07:00:00', '20:00:00', '0000-00-00', '2016-02-18 23:10:14', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 1, NULL),
(79, 'BIANCA CRISTINA BUDOIA', 'biancabudoia', '827ccb0eea8a706c4c34a16891f84e7b', 'bianca_bw@live.com', 7, '08:00:00', '19:00:00', '2016-03-16', '2016-04-30 19:27:27', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 60),
(80, 'IURI SILVA DE OLIVEIRA', 'iuri oliveira', '827ccb0eea8a706c4c34a16891f84e7b', 'iuri_silva_@hotmail.com', 7, '08:00:00', '19:00:00', '2016-04-18', '2016-05-24 11:56:15', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 61),
(81, 'IGOR SILVA DE OLIVEIRA', 'Igor Silva', 'd7cb65f88e8353c81499f0497fe0f888', 'iuri_silva_@hotmail.com', 7, '08:00:00', '19:00:00', '2016-04-18', '2016-07-12 19:14:10', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 62),
(82, 'RAFAEL BRITO SILVA', 'rafael brito', '2b7c0d0891bf1c139efafe87f225abc1', 'marcio@dgftelecom.com.br', 7, '07:00:00', '19:00:00', '2016-05-06', '2016-09-06 21:29:54', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 63),
(83, 'LUNA BEATRIZ JULIANI DE LIMA', 'Luna', 'a283c2fa682d70aae6928ffd73c13363', 'lunabeatrizdelima@hotmail.com', 8, '08:00:00', '19:00:00', '2016-07-18', '2018-01-22 19:13:47', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 64),
(84, 'GUTIERRE DE ARAUJO RAMOS', 'Gutierre', '827ccb0eea8a706c4c34a16891f84e7b', 'gutierre.cleisiane@hotmail.com', 5, '08:00:00', '18:00:00', '2016-07-26', '2018-01-12 18:22:38', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 1, 65),
(85, 'TANIA MARA DE SOUZA VERONEZ', 'taniaveronez', 'bfbf0d60e98aac2237144414dcb116ed', 'taniasouza@gmail.com', 7, '08:00:00', '19:00:00', '2016-08-29', '2016-09-01 15:33:33', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 66),
(86, 'TECNICOS AUTONOMOS', 'tecnicos', '827ccb0eea8a706c4c34a16891f84e7b', 'marcio@dgftelecom.com.br', 9, NULL, NULL, '2016-09-27', '2016-09-27 20:49:45', NULL, '', NULL, 1, 1024),
(87, 'REI DAS ANTENAS', 'Rei Antenas', '827ccb0eea8a706c4c34a16891f84e7b', 'reidasantenassbo@hotmail.com', 7, '05:00:00', '06:00:00', '2016-12-01', '2017-10-02 21:55:52', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 0, 67),
(88, 'YHASMIN ESPANHOL DA SILVA', 'yhasmin', '0f7d880a848accb75228ccde43daae6a', 'yhasmin@gmail.com', 7, '08:00:00', '23:00:00', '2017-01-16', '2017-09-25 23:16:29', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 0, 68),
(89, 'FIBRA SBO', 'FibraSBO', '827ccb0eea8a706c4c34a16891f84e7b', 'atendimento@jjnetweb.com.br', 19, '07:00:00', '20:00:00', '0000-00-00', '2017-08-04 18:12:37', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 1, NULL),
(90, 'WEBNET', 'webnet', '827ccb0eea8a706c4c34a16891f84e7b', 'atedimento@jjnetweb.com.br', 19, '07:00:00', '20:00:00', '0000-00-00', '2017-06-10 15:22:01', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 1, NULL),
(91, 'MICHAEL STIVE MONARO', 'michael monaro', 'c393ff5eb0ca0c31ee7b9014afc0b0b0', 'micksbo@gmail.com', 7, '07:00:00', '20:00:00', '2017-07-17', '2017-07-27 14:49:01', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 0, 69),
(92, 'FIBRAAMERICANA', 'FibraAmericana', '61ed87e730d7e900fa20e8c6f82b29ea', 'marcio@dgftelecom.com.br', 20, '07:00:00', '20:00:00', '0000-00-00', '2018-02-19 14:04:28', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 1, NULL),
(93, 'CECILIO', 'cecilio', '827ccb0eea8a706c4c34a16891f84e7b', 'marcio@dgftelecom.com.br', 10, '06:00:00', '23:00:00', '0000-00-00', '2017-08-30 21:27:55', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 0, NULL),
(94, 'CECILIO', 'cecilio', '827ccb0eea8a706c4c34a16891f84e7b', 'marcio@dgftelecom.com.br', 7, '05:00:00', '23:59:00', '2017-08-30', '2017-09-30 17:58:34', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 0, 70),
(95, 'VLADEMIR GARCIA RODRIGUES', 'Vlademir Garcia', '827ccb0eea8a706c4c34a16891f84e7b', 'vladspecotesaopaulo@gmail.com', 10, '06:00:00', '11:00:00', '2017-08-31', '2018-02-20 19:43:33', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 0, 71),
(96, 'ALEXANDRE DA SILVA GERMANO', 'alexradre', '827ccb0eea8a706c4c34a16891f84e7b', 'marcio@dgftelecom.com.br', 5, NULL, NULL, '2017-09-11', '2017-09-11 11:28:17', NULL, '', NULL, 1, 72),
(97, 'VANDERLEY OLIVEIRA DA SILVA', 'Vanderlei Oliveira', '827ccb0eea8a706c4c34a16891f84e7b', 'marcio@dgftelecom.com.br', 10, '06:00:00', '21:00:00', '2017-09-13', '2017-11-09 17:52:06', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 0, 73),
(98, 'JEFERSON ANDRE DA SILVA', 'jeferson andre da silva', '827ccb0eea8a706c4c34a16891f84e7b', 'marcio@dgftelecom.com.br', 5, NULL, NULL, '2017-09-16', '2017-12-01 12:08:10', NULL, '', NULL, 0, 74),
(99, 'EZEQUIEL BAPTISTA', 'Ezequiel Baptista', '827ccb0eea8a706c4c34a16891f84e7b', 'marcio@dgftelecom.com.br', 10, '06:00:00', '23:00:00', '2017-09-28', '2017-10-10 11:41:25', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 0, 75),
(100, 'MARCIO DOS SANTOS BEZERRA', 'MarcioBezerra', '827ccb0eea8a706c4c34a16891f84e7b', 'marcosm2cell@hotamail.com', 10, '06:00:00', '23:00:00', '2017-09-29', '2017-12-28 18:33:22', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 0, 76),
(101, 'LUIZ FERNANDO ALVES DE LIMA', 'fernando', '827ccb0eea8a706c4c34a16891f84e7b', 'nandoluis10@hotmail.com', 5, '09:00:00', '17:00:00', '2017-11-25', '2018-03-03 16:03:25', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 0, 77),
(102, 'MILENE CRISTINA DA SILVA TEOTONIO', 'mileneteotonio', '447f476912c0d9eebaa1c1121a81b6c3', 'milenecristinasilva@gmail.com', 7, '07:00:00', '19:00:00', '2017-11-30', '2018-04-09 15:52:44', NULL, '', 'Mon,Tue,Wed,Thu,Fri,Sat', 1, 78),
(103, 'CARIVALDO MORELLO DUARTE', 'Caco', '93279e3308bdbbeed946fc965017f67a', 'caco.morello@gmail.com', 10, '06:00:00', '20:00:00', '2017-12-06', '2018-03-23 11:47:10', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 0, 79),
(104, 'GUSTAVO DE OLIVEIRA COSTA', 'Gustavo oliveira', '827ccb0eea8a706c4c34a16891f84e7b', 'marcio@dgftelecom.com.br', 5, '06:00:00', '20:00:00', '2017-12-15', '2018-03-24 15:57:36', NULL, '', 'Mon', 0, 80),
(105, 'GSTN INTERNET', 'gstn', '827ccb0eea8a706c4c34a16891f84e7b', 'contato@gstn.com.br', 21, '01:00:00', '23:00:00', '0000-00-00', '2017-12-21 18:13:16', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 1, NULL),
(106, 'MARLON ESTEPHAN DIAS', 'marlondias', '23d10f3ec3333d3c8823770ee6a9fbc5', 'marlondias2017@gmail.com', 10, '06:00:00', '23:00:00', '2018-01-10', '2018-04-21 12:11:28', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 0, 81),
(107, 'VALTER FELIX', 'valterfelix', 'dcddb75469b4b4875094e14561e573d8', 'm@gmail.com', 10, '01:00:00', '23:00:00', '2018-06-30', '2018-06-30 17:19:17', NULL, '', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat', 1, 82);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `planos`
--
ALTER TABLE `planos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `planos`
--
ALTER TABLE `planos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
