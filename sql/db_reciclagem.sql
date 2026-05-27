-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/05/2026 às 03:04
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
-- Banco de dados: `db_reciclagem`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro_de_peso`
--

CREATE TABLE `cadastro_de_peso` (
  `id` int(11) NOT NULL,
  `peso` decimal(4,2) DEFAULT NULL,
  `id_funcionarios` int(11) DEFAULT NULL,
  `id_material` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cadastro_de_peso`
--

INSERT INTO `cadastro_de_peso` (`id`, `peso`, `id_funcionarios`, `id_material`, `data`) VALUES
(1, 53.00, 1, 1, '2026-05-10'),
(2, 32.00, 1, 1, '2026-05-26');

-- --------------------------------------------------------

--
-- Estrutura para tabela `login_administrador`
--

CREATE TABLE `login_administrador` (
  `id` int(11) NOT NULL,
  `email` varchar(320) DEFAULT NULL,
  `senha` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `login_administrador`
--

INSERT INTO `login_administrador` (`id`, `email`, `senha`) VALUES
(1, 'pedroteste@gmail.com', 'Teste123@');

-- --------------------------------------------------------

--
-- Estrutura para tabela `materiais`
--

CREATE TABLE `materiais` (
  `id_material` int(11) NOT NULL,
  `nome_material` varchar(100) DEFAULT NULL,
  `ativado` enum('Ativo','Desativo') DEFAULT 'Ativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `materiais`
--

INSERT INTO `materiais` (`id_material`, `nome_material`, `ativado`) VALUES
(1, 'Reciclavel', 'Ativo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_funcionarios`
--

CREATE TABLE `tb_funcionarios` (
  `id_funcionario` int(11) NOT NULL,
  `nome_do_funcionario` varchar(255) DEFAULT NULL,
  `ativado` enum('Ativo','Desativo') DEFAULT 'Ativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_funcionarios`
--

INSERT INTO `tb_funcionarios` (`id_funcionario`, `nome_do_funcionario`, `ativado`) VALUES
(1, 'Pedro Augusto', 'Ativo');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cadastro_de_peso`
--
ALTER TABLE `cadastro_de_peso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_funcionarios` (`id_funcionarios`),
  ADD KEY `fk_id_material` (`id_material`);

--
-- Índices de tabela `login_administrador`
--
ALTER TABLE `login_administrador`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `materiais`
--
ALTER TABLE `materiais`
  ADD PRIMARY KEY (`id_material`);

--
-- Índices de tabela `tb_funcionarios`
--
ALTER TABLE `tb_funcionarios`
  ADD PRIMARY KEY (`id_funcionario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro_de_peso`
--
ALTER TABLE `cadastro_de_peso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `login_administrador`
--
ALTER TABLE `login_administrador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `materiais`
--
ALTER TABLE `materiais`
  MODIFY `id_material` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_funcionarios`
--
ALTER TABLE `tb_funcionarios`
  MODIFY `id_funcionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `cadastro_de_peso`
--
ALTER TABLE `cadastro_de_peso`
  ADD CONSTRAINT `cadastro_de_peso_ibfk_1` FOREIGN KEY (`id_funcionarios`) REFERENCES `tb_funcionarios` (`id_funcionario`),
  ADD CONSTRAINT `fk_id_material` FOREIGN KEY (`id_material`) REFERENCES `materiais` (`id_material`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
