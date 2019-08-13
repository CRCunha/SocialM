-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 13/08/2019 às 13:40
-- Versão do servidor: 10.3.15-MariaDB
-- Versão do PHP: 7.3.6

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
-- Estrutura para tabela `mensagens`
--

CREATE TABLE `mensagens` (
  `mensagem` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `dataMsg` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
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
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`nome`, `email`, `senha`, `id`, `background`, `avatar`) VALUES
('Carol', 'carolroluz@hotmail.com', '742a90d6f000d65dda5433aedbd9524c112d8371', 1, 'https://images.pexels.com/photos/2722990/pexels-photo-2722990.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'https://i.imgur.com/nbXuzbx.jpg'),
('Lucas', 'lucasguidotthi@hotmal.com', 'fe703d258c7ef5f50b71e06565a65aa07194907f', 2, 'https://i.imgur.com/nNyr7SO.png', 'https://i.imgur.com/E9Gk0e2.png'),
('Cristian', 'contato@cristiancunha.me', '80d616a7b726e7b08c12194e789ea87f8ee09b37', 3, 'https://images.pexels.com/photos/414171/pexels-photo-414171.jpeg?cs=srgb&dl=adventure-calm-clouds-414171.jpg&fm=jpg', 'https://png.pngtree.com/element_our/png/20181214/mountain-logo-graphic-design-template-vector-illustration-png_269527.jpg');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
