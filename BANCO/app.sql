-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 19-Ago-2019 às 00:49
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
-- Estrutura da tabela `mensagens`
--

CREATE TABLE `mensagens` (
  `mensagem` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `dataMsg` datetime NOT NULL,
  `avatar` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mensagens`
--

INSERT INTO `mensagens` (`mensagem`, `nome`, `dataMsg`, `avatar`) VALUES
('Teste', 'Teste', '2019-08-14 09:46:14', ''),
('Teste', 'Cristian', '2019-08-18 18:57:39', '');

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
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`titulo`, `info`, `nome`, `avatar`, `imagem`, `id`) VALUES
('1Ã‚Âº Post', 'Este ÃƒÂ© o primeiro post do D-M', 'Teste', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSDtcZZoolUHT2_OoEKXqAn006-fGBvWEenEpwOaNViaqVoH1LO', 'https://i.imgur.com/idDIw42.png', 31);

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
('Cristian', 'carolroluz@hotmail.com', '742a90d6f000d65dda5433aedbd9524c112d8371', 1, 'https://image.freepik.com/vetores-gratis/modelo-de-plano-de-fundo-branco-infografico-hexagonal_1017-19276.jpg', 'https://i.imgur.com/vKSf7z5.png'),
('Lucas', 'lucasguidotthi@hotmal.com', 'fe703d258c7ef5f50b71e06565a65aa07194907f', 2, 'https://i.imgur.com/nNyr7SO.png', 'https://i.imgur.com/E9Gk0e2.png'),
('Cristian', 'contato@cristiancunha.me', '80d616a7b726e7b08c12194e789ea87f8ee09b37', 3, 'https://image.freepik.com/vetores-gratis/modelo-de-plano-de-fundo-branco-infografico-hexagonal_1017-19276.jpg', 'https://i.imgur.com/vKSf7z5.png'),
('Teste', 'teste@teste.com', '6ba19813d8fe1145922b11ba580e477f6ea0dfb7', 11, 'https://image.freepik.com/vetores-gratis/modelo-de-plano-de-fundo-branco-infografico-hexagonal_1017-19276.jpg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSDtcZZoolUHT2_OoEKXqAn006-fGBvWEenEpwOaNViaqVoH1LO');

--
-- Índices para tabelas despejadas
--

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
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
