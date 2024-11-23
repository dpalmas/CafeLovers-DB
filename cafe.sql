-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23/11/2024 às 20:27
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cafe`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `cliente_id` int(100) NOT NULL,
  `prod_id` varchar(100) NOT NULL,
  `prod_nome` varchar(100) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `quantidade` int(100) NOT NULL,
  `preco` double NOT NULL,
  `data` date DEFAULT NULL,
  `imagem` varchar(500) NOT NULL,
  `fun_usuario` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id`, `cliente_id`, `prod_id`, `prod_nome`, `tipo`, `quantidade`, `preco`, `data`, `imagem`, `fun_usuario`) VALUES
(2, 1, 'PROD-0001', 'Hamburguer', 'Refeicoes', 1, 10, '2024-11-22', 'C:\\\\Users\\\\david\\\\Documents\\\\Hamburguer.jpg', 'admin'),
(3, 1, 'PROD-0001', 'Hamburguer', 'Refeicoes', 1, 10, '2024-11-22', 'C:\\\\Users\\\\david\\\\Documents\\\\Hamburguer.jpg', 'admin'),
(4, 1, 'PROD-0001', 'Hamburguer', 'Refeicoes', 2, 20, '2024-11-22', 'C:\\\\Users\\\\david\\\\Documents\\\\Hamburguer.jpg', 'admin'),
(5, 1, 'PROD-0001', 'Hamburguer', 'Refeicoes', 1, 10, '2024-11-22', 'C:\\\\Users\\\\david\\\\Documents\\\\Hamburguer.jpg', 'admin'),
(8, 1, 'PROD-0002', 'Cafe', 'Bebidas', 2, 10, '2024-11-22', 'C:\\\\\\\\Users\\\\\\\\david\\\\\\\\Documents\\\\\\\\Cafe.jpg', 'admin'),
(9, 1, 'PROD-0002', 'Cafe', 'Bebidas', 3, 15, '2024-11-22', 'C:\\\\\\\\Users\\\\\\\\david\\\\\\\\Documents\\\\\\\\Cafe.jpg', 'admin'),
(10, 1, 'PROD-0002', 'Cafe', 'Bebidas', 1, 5, '2024-11-23', 'C:\\\\\\\\Users\\\\\\\\david\\\\\\\\Documents\\\\\\\\Cafe.jpg', 'admin'),
(11, 2, 'PROD-0002', 'Cafe', 'Bebidas', 1, 5, '2024-11-23', 'C:\\\\\\\\Users\\\\\\\\david\\\\\\\\Documents\\\\\\\\Cafe.jpg', 'admin'),
(12, 2, 'PROD-0001', 'Hamburguer', 'Refeicoes', 1, 10, '2024-11-23', 'C:\\\\Users\\\\david\\\\Documents\\\\Hamburguer.jpg', 'admin'),
(13, 3, 'PROD-0001', 'Hamburguer', 'Refeicoes', 1, 10, '2024-11-23', 'C:\\\\Users\\\\david\\\\Documents\\\\Hamburguer.jpg', 'admin'),
(14, 3, 'PROD-0002', 'Cafe', 'Bebidas', 1, 5, '2024-11-23', 'C:\\\\\\\\Users\\\\\\\\david\\\\\\\\Documents\\\\\\\\Cafe.jpg', 'admin'),
(15, 4, 'PROD-0001', 'Hamburguer', 'Refeicoes', 1, 10, '2024-11-23', 'C:\\\\Users\\\\david\\\\Documents\\\\Hamburguer.jpg', 'admin'),
(16, 4, 'PROD-0002', 'Cafe', 'Bebidas', 1, 5, '2024-11-23', 'C:\\\\\\\\Users\\\\\\\\david\\\\\\\\Documents\\\\\\\\Cafe.jpg', 'admin'),
(17, 5, 'PROD-0001', 'Hamburguer', 'Refeicoes', 1, 10, '2024-11-23', 'C:\\\\Users\\\\david\\\\Documents\\\\Hamburguer.jpg', 'admin'),
(18, 5, 'PROD-0002', 'Cafe', 'Bebidas', 1, 5, '2024-11-23', 'C:\\\\\\\\Users\\\\\\\\david\\\\\\\\Documents\\\\\\\\Cafe.jpg', 'admin'),
(19, 6, 'PROD-0001', 'Hamburguer', 'Refeicoes', 1, 10, '2024-11-23', 'C:\\\\Users\\\\david\\\\Documents\\\\Hamburguer.jpg', 'admin'),
(20, 6, 'PROD-0002', 'Cafe', 'Bebidas', 1, 5, '2024-11-23', 'C:\\\\\\\\Users\\\\\\\\david\\\\\\\\Documents\\\\\\\\Cafe.jpg', 'admin'),
(21, 6, 'PROD-0003', 'Cafe com leite', 'Bebidas', 1, 8, '2024-11-23', 'C:\\\\Users\\\\david\\\\Documents\\\\CafeLeite.jpg', 'admin'),
(22, 6, 'PROD-0004', 'Panqueca', 'Refeicoes', 1, 9, '2024-11-23', 'C:\\\\Users\\\\david\\\\Documents\\\\Panquecas.jpg', 'admin');

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `questao` varchar(100) NOT NULL,
  `resposta` varchar(100) NOT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionario`
--

INSERT INTO `funcionario` (`id`, `usuario`, `senha`, `questao`, `resposta`, `data`) VALUES
(2, 'tester', 'tester2024', 'Qual sua comida favorita?', 'Feijoada', '2024-11-15'),
(3, 'admin', 'admin2024', 'Qual sua cor favorita?', 'Azul', '2024-11-18');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `prod_id` varchar(100) NOT NULL,
  `prod_nome` varchar(100) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `estoque` int(100) NOT NULL,
  `preco` double NOT NULL,
  `situacao` varchar(100) NOT NULL,
  `imagem` varchar(500) NOT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`id`, `prod_id`, `prod_nome`, `tipo`, `estoque`, `preco`, `situacao`, `imagem`, `data`) VALUES
(4, 'PROD-0001', 'Hamburguer', 'Refeicoes', 986, 10, 'Disponivel', 'C:\\Users\\david\\Documents\\Hamburguer.jpg', '2024-11-21'),
(5, 'PROD-0002', 'Cafe', 'Bebidas', 989, 5, 'Disponivel', 'C:\\\\Users\\\\david\\\\Documents\\\\Cafe.jpg', '2024-11-22'),
(6, 'PROD-0003', 'Cafe com leite', 'Bebidas', 499, 8, 'Disponivel', 'C:\\Users\\david\\Documents\\CafeLeite.jpg', '2024-11-23'),
(7, 'PROD-0004', 'Panqueca', 'Refeicoes', 999, 9, 'Disponivel', 'C:\\Users\\david\\Documents\\Panquecas.jpg', '2024-11-23');

-- --------------------------------------------------------

--
-- Estrutura para tabela `recibo`
--

CREATE TABLE `recibo` (
  `id` int(11) NOT NULL,
  `cliente_id` int(100) NOT NULL,
  `total` double NOT NULL,
  `data` date DEFAULT NULL,
  `fun_usuario` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `recibo`
--

INSERT INTO `recibo` (`id`, `cliente_id`, `total`, `data`, `fun_usuario`) VALUES
(1, 1, 80, '2024-11-23', 'admin'),
(2, 2, 15, '2024-11-23', 'admin'),
(3, 3, 15, '2024-11-23', 'admin'),
(4, 4, 15, '2024-11-23', 'admin'),
(5, 5, 15, '2024-11-23', 'admin'),
(6, 6, 32, '2024-11-23', 'admin');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `recibo`
--
ALTER TABLE `recibo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `recibo`
--
ALTER TABLE `recibo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
