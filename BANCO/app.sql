-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 03-Set-2019 às 11:27
-- Versão do servidor: 10.4.6-MariaDB
-- versão do PHP: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `app`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `doacoes`
--

CREATE TABLE `doacoes` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `valor` float NOT NULL,
  `dataDoacao` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `doacoes`
--

INSERT INTO `doacoes` (`id`, `nome`, `valor`, `dataDoacao`) VALUES
(8, 'DEDSEC', 10, '2019-08-26 17:17:57'),
(9, 'Tales de Minas', 25, '2019-08-26 17:20:21'),
(10, 'DEDSEC', 10, '2019-08-27 06:23:21');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagens`
--

CREATE TABLE `mensagens` (
  `mensagem` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `dataMsg` datetime NOT NULL,
  `avatar` varchar(2000) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mensagens`
--

INSERT INTO `mensagens` (`mensagem`, `nome`, `dataMsg`, `avatar`, `id`) VALUES
('Hello', 'DEDSEC', '2019-08-18 21:05:44', 'https://pm1.narvii.com/6347/d3689f83b05f3ef84d7602e2bc078a4f3f0671b0_00.jpg', 6),
('Mensagem enviada no segundo dia', 'DEDSEC', '2019-08-19 11:31:39', 'https://pm1.narvii.com/6347/d3689f83b05f3ef84d7602e2bc078a4f3f0671b0_00.jpg', 8),
('Hey', 'DEDSEC', '2019-08-19 15:30:49', 'https://pm1.narvii.com/6347/d3689f83b05f3ef84d7602e2bc078a4f3f0671b0_00.jpg', 10),
('Dia 3!', 'DEDSEC', '2019-08-20 08:54:36', 'https://pm1.narvii.com/6347/d3689f83b05f3ef84d7602e2bc078a4f3f0671b0_00.jpg', 11),
('*.*', 'DEDSEC', '2019-08-20 09:03:35', 'https://pm1.narvii.com/6347/d3689f83b05f3ef84d7602e2bc078a4f3f0671b0_00.jpg', 12),
('...', 'DEDSEC', '2019-08-20 15:20:58', 'https://pm1.narvii.com/6347/d3689f83b05f3ef84d7602e2bc078a4f3f0671b0_00.jpg', 13),
('Teste do Ngrok', 'Cristian', '2019-08-25 18:19:42', 'https://i.imgur.com/vKSf7z5.png', 14),
('Teste do Ngrok no Local Host', 'DEDSEC', '2019-08-25 18:19:56', 'https://steamuserimages-a.akamaihd.net/ugc/934958816105287547/2FC9488F01BC75B2D1485CE5258F4C998CB44838/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true', 15),
('Opa', 'Tales de Minas', '2019-08-26 17:20:36', 'https://i.imgur.com/E9Gk0e2.png', 16),
('E aÃƒÂ­ galera de cawboy', 'Tales de Minas', '2019-08-26 17:26:38', 'https://memeworld.funnyjunk.com/thumbnails/comments/Darling+is+that+you+_7dbf9ce3e943dfd26e8d023b033b2d66.jpg', 17),
('Teste', 'PROPAGANDA', '2019-08-28 14:57:24', 'https://avatars.slack-edge.com/2015-12-17/16957173431_30721f31797e3ebc8cde_512.png', 18);

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `titulo` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `avatar` varchar(2000) NOT NULL,
  `imagem` varchar(2000) NOT NULL,
  `id` int(11) NOT NULL,
  `dataPost` date NOT NULL DEFAULT current_timestamp(),
  `prioridade` varchar(255) NOT NULL DEFAULT 'baixa',
  `likeP` int(11) NOT NULL DEFAULT 0,
  `starP` int(11) NOT NULL DEFAULT 0,
  `nivel` varchar(25) NOT NULL DEFAULT 'baixo'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`titulo`, `info`, `nome`, `avatar`, `imagem`, `id`, `dataPost`, `prioridade`, `likeP`, `starP`, `nivel`) VALUES
('1Ã‚Âº Post', 'Este ÃƒÂ© o primeiro post do D-M', 'DEDSEC', 'https://steamuserimages-a.akamaihd.net/ugc/934958816105287547/2FC9488F01BC75B2D1485CE5258F4C998CB44838/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true', 'https://c.wallhere.com/photos/f1/42/Watch_Dogs_Watch_Dogs_2_DEDSEC_hacking-1141065.jpg!d', 32, '2019-08-18', 'baixa', 1, 0, 'baixo'),
(' lets study larvel', 'PHP : ) kappa', 'DEDSEC', 'https://steamuserimages-a.akamaihd.net/ugc/934958816105287547/2FC9488F01BC75B2D1485CE5258F4C998CB44838/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true', 'http://arquivo.devmedia.com.br/marketing/img/guia-laravel-38191.png', 57, '2019-08-25', 'baixa', 1, 0, 'baixo'),
('Ngrok', 'Future solution maybe?', 'DEDSEC', 'https://steamuserimages-a.akamaihd.net/ugc/934958816105287547/2FC9488F01BC75B2D1485CE5258F4C998CB44838/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true', 'https://content.nanobox.io/content/images/2017/05/ngrok-banner.png', 58, '2019-08-25', 'baixa', 1, 0, 'baixo'),
('GitHub / Git', 'I Love This ', 'DEDSEC', 'https://steamuserimages-a.akamaihd.net/ugc/934958816105287547/2FC9488F01BC75B2D1485CE5258F4C998CB44838/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true', 'https://miro.medium.com/max/2625/1*l2nF8iuvoXq88G4Bqn0rew.jpeg', 65, '2019-08-26', 'baixa', 1, 0, 'baixo'),
('Post Fixo', 'Teste de post fixo', 'ANÚNCIOS', 'https://avatars.slack-edge.com/2015-12-17/16957173431_30721f31797e3ebc8cde_512.png', 'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png', 75, '2019-08-27', 'baixa', 1, 0, 'baixo'),
('D-Chat', 'Under reformulation', 'DEDSEC', 'https://steamuserimages-a.akamaihd.net/ugc/934958816105287547/2FC9488F01BC75B2D1485CE5258F4C998CB44838/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true', 'https://engcode.net/wp-content/uploads/2018/12/Social-Media-Marketing-Services-Engcode.gif', 81, '2019-08-28', 'baixa', 2, 0, 'baixo'),
('Like!', 'Evaluation system under construction', 'ANUNCIOS', 'https://avatars.slack-edge.com/2015-12-17/16957173431_30721f31797e3ebc8cde_512.png', 'https://gotvantage.com/wp-content/uploads/2017/09/digital.gif.pagespeed.ce_.8PXNegYm3_.gif', 82, '2019-08-28', 'baixa', 4, 2, 'baixo'),
('Vaquinha', 'O sistema de vaquinha esta em pleno funcionamento. EstarÃƒÂ¡ disponÃƒÂ­vel entre 10:30 e 13:00 horas.', 'ANUNCIOS', 'https://avatars.slack-edge.com/2015-12-17/16957173431_30721f31797e3ebc8cde_512.png', 'https://i.pinimg.com/originals/75/f5/a4/75f5a4bf815ae6c8f9d79da0e3655594.gif', 84, '2019-08-28', 'baixa', 4, 2, 'medio'),
('Monitoria', 'Vagas abertas para monitoria de atendimento educacional especializado', 'ANUNCIOS', 'https://avatars.slack-edge.com/2015-12-17/16957173431_30721f31797e3ebc8cde_512.png', 'https://imarticus.org/wp-content/uploads/2019/06/cara.gif', 88, '2019-08-30', 'alta', 1, 3, 'alto'),
('Rebranding', 'New Name?!', 'ANUNCIOS', 'https://avatars.slack-edge.com/2015-12-17/16957173431_30721f31797e3ebc8cde_512.png', 'https://i.imgur.com/aUpty9O.png', 91, '2019-08-31', 'alta', 1, 1, 'medio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `background` varchar(2000) NOT NULL DEFAULT 'https://i.imgur.com/nNyr7SO.png',
  `avatar` varchar(255) NOT NULL DEFAULT 'https://i.imgur.com/E9Gk0e2.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`nome`, `email`, `senha`, `id`, `background`, `avatar`) VALUES
('Carol', 'carolroluz@hotmail.com', '742a90d6f000d65dda5433aedbd9524c112d8371', 1, 'https://images.pexels.com/photos/34676/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'https://i.imgur.com/nbXuzbx.jpg'),
('Cristian', 'contato@cristiancunha.me', '80d616a7b726e7b08c12194e789ea87f8ee09b37', 3, 'https://images.pexels.com/photos/34676/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'https://i.imgur.com/vKSf7z5.png'),
('DEDSEC', 'teste@teste.com', '6ba19813d8fe1145922b11ba580e477f6ea0dfb7', 11, 'https://fsb.zobj.net/crop.php?r=lADaoyWnoVNrmrmnZ_XzU7VKHLPPADJt-olHVBNuN1Szw4W1kPrQgsNppNZKRxBKqcAy9kpk60C4Z539o7u1S7qmgeNXRxe-MJc7OIwXEIgJy_zprrvItcz5-nMM9IzIKr6tvhGQ8Ff09nyCn44csU4GDDfHYe2oZQkUfL8EfbGUiVDIbR703An0MrA', 'https://steamuserimages-a.akamaihd.net/ugc/934958816105287547/2FC9488F01BC75B2D1485CE5258F4C998CB44838/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true'),
('Tales de Minas', 'tales@minas.mg', 'adcd7048512e64b48da55b027577886ee5a36350', 12, 'https://memeworld.funnyjunk.com/thumbnails/comments/Darling+is+that+you+_7dbf9ce3e943dfd26e8d023b033b2d66.jpg', 'https://memeworld.funnyjunk.com/thumbnails/comments/Darling+is+that+you+_7dbf9ce3e943dfd26e8d023b033b2d66.jpg'),
('ANUNCIOS', 'anuncios@teste.com', '6ba19813d8fe1145922b11ba580e477f6ea0dfb7', 13, 'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png', 'https://avatars.slack-edge.com/2015-12-17/16957173431_30721f31797e3ebc8cde_512.png');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `doacoes`
--
ALTER TABLE `doacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mensagens`
--
ALTER TABLE `mensagens`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `doacoes`
--
ALTER TABLE `doacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `mensagens`
--
ALTER TABLE `mensagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
