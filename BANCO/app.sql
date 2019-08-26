-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 26-Ago-2019 às 11:54
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
  `data` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `doacoes`
--

INSERT INTO `doacoes` (`id`, `nome`, `valor`, `data`) VALUES
(1, 'DEDSEC', 2.25, '2019-08-25 13:05:35'),
(2, 'DEDSEC', 2.25, '2019-08-25 13:07:51'),
(3, 'DEDSEC', 2.25, '2019-08-25 19:25:24');

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
('Teste do Ngrok no Local Host', 'DEDSEC', '2019-08-25 18:19:56', 'https://steamuserimages-a.akamaihd.net/ugc/934958816105287547/2FC9488F01BC75B2D1485CE5258F4C998CB44838/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true', 15);

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
  `prioridade` varchar(255) NOT NULL DEFAULT 'baixa'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`titulo`, `info`, `nome`, `avatar`, `imagem`, `id`, `dataPost`, `prioridade`) VALUES
('1Ã‚Âº Post', 'Este ÃƒÂ© o primeiro post do D-M', 'DEDSEC', 'https://steamuserimages-a.akamaihd.net/ugc/934958816105287547/2FC9488F01BC75B2D1485CE5258F4C998CB44838/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true', 'https://c.wallhere.com/photos/f1/42/Watch_Dogs_Watch_Dogs_2_DEDSEC_hacking-1141065.jpg!d', 32, '2019-08-18', 'baixa'),
('2Ã‚Âº Dia !', 'Post teste do 2Ã‚Âº dia', 'DEDSEC', 'https://steamuserimages-a.akamaihd.net/ugc/934958816105287547/2FC9488F01BC75B2D1485CE5258F4C998CB44838/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true', 'https://wallup.net/wp-content/uploads/2017/11/23/510023-Watch_Dogs-Watch_Dogs_2-DEDSEC-hacking-748x421.jpg', 34, '2019-08-19', 'baixa'),
('3Ã‚Âº Dia !!', 'FunÃƒÂ§ÃƒÂ£o excluir post criada', 'DEDSEC', 'https://steamuserimages-a.akamaihd.net/ugc/934958816105287547/2FC9488F01BC75B2D1485CE5258F4C998CB44838/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true', 'http://www.mariacenoura.pt/ptpictures/f/137/1371264_watch-dogs-2-dedsec-wallpaper.png', 40, '2019-08-20', 'baixa'),
('Day 4', 'Lets go again', 'DEDSEC', 'https://steamuserimages-a.akamaihd.net/ugc/934958816105287547/2FC9488F01BC75B2D1485CE5258F4C998CB44838/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true', 'https://i.imgur.com/ruOPeVJ_d.jpg?maxwidth=640&shape=thumb&fidelity=medium', 52, '2019-08-21', 'baixa'),
('Day 5?', 'I do not know how to do', 'DEDSEC', 'https://steamuserimages-a.akamaihd.net/ugc/934958816105287547/2FC9488F01BC75B2D1485CE5258F4C998CB44838/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true', 'https://i.imgur.com/UqmgnIP.jpg', 53, '2019-08-22', 'baixa'),
(' lets study larvel', 'PHP : ) kappa', 'DEDSEC', 'https://steamuserimages-a.akamaihd.net/ugc/934958816105287547/2FC9488F01BC75B2D1485CE5258F4C998CB44838/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true', 'http://arquivo.devmedia.com.br/marketing/img/guia-laravel-38191.png', 57, '2019-08-25', 'alta'),
('Ngrok', 'Future solution maybe?', 'DEDSEC', 'https://steamuserimages-a.akamaihd.net/ugc/934958816105287547/2FC9488F01BC75B2D1485CE5258F4C998CB44838/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true', 'https://content.nanobox.io/content/images/2017/05/ngrok-banner.png', 58, '2019-08-25', 'alta');

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
('DEDSEC', 'teste@teste.com', '6ba19813d8fe1145922b11ba580e477f6ea0dfb7', 11, 'https://fsb.zobj.net/crop.php?r=lADaoyWnoVNrmrmnZ_XzU7VKHLPPADJt-olHVBNuN1Szw4W1kPrQgsNppNZKRxBKqcAy9kpk60C4Z539o7u1S7qmgeNXRxe-MJc7OIwXEIgJy_zprrvItcz5-nMM9IzIKr6tvhGQ8Ff09nyCn44csU4GDDfHYe2oZQkUfL8EfbGUiVDIbR703An0MrA', 'https://steamuserimages-a.akamaihd.net/ugc/934958816105287547/2FC9488F01BC75B2D1485CE5258F4C998CB44838/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `mensagens`
--
ALTER TABLE `mensagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
