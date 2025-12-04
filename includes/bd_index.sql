-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04/12/2025 às 14:31
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
-- Banco de dados: `bd_index`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `img_livros`
--

CREATE TABLE `img_livros` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `idLivro` int(11) DEFAULT NULL,
  `caminho` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `livro`
--

CREATE TABLE `livro` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `foto` varchar(100) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `autor` varchar(100) NOT NULL,
  `editora` varchar(100) NOT NULL,
  `ano_publicacao` int(11) NOT NULL,
  `genero` varchar(100) NOT NULL,
  `descricao` varchar(300) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `reserva`
--

CREATE TABLE `reserva` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `idCliente` int(11) NOT NULL,
  `idLivro` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(16) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `email`, `telefone`, `senha`, `tipo`) VALUES
(4, 'Adm', 'adm@gmail.com', '(00) 00000-0000', '25d55ad283aa400af464c76d713c07ad', 'administrador'),
(5, 'Usuario', 'usuario@gmail.com', '(00) 00000-0000', '25f9e794323b453885f5181f1b624d0b', 'usuario');

INSERT INTO `livro` (`foto`, `titulo`, `autor`, `editora`, `ano_publicacao`, `genero`, `descricao`, `status`) VALUES
('1984.jpg', '1984', 'George Orwell', 'Secker & Warburg', 1949, 'Ficção política', 'Uma sociedade totalitária controla tudo e todos através da vigilância absoluta.', 'disponivel'),
('revolucao.jpg', 'Revolução dos Bichos', 'George Orwell', 'Secker & Warburg', 1945, 'Sátira Política', 'Animais lideram uma rebelião que logo se transforma em nova tirania.', 'disponivel'),
('sociedade.jpg', 'O Senhor dos Anéis: A Sociedade do Anel', 'J. R. R. Tolkien', 'George Allen & Unwin', 1954, 'Fantasia', 'Um grupo improvável parte para destruir um artefato maligno.', 'indisponivel'),
('hobbit.jpg', 'O Hobbit', 'J. R. R. Tolkien', 'George Allen & Unwin', 1954, 'Fantasia', 'A aventura de Bilbo com anões em busca de um tesouro guardado por um dragão.', 'indisponivel'),
('casmurro.jpg', 'Dom Casmurro', 'Machado de Assis', 'Livraria Garnier', 1899, 'Romance', 'Bentinho revive sua história marcada pelo ciúme e pela dúvida sobre Capitu.', 'indisponivel'),
('memorias.jpg', 'Memórias Póstumas de Brás Cubas', 'Machado de Assis', 'Tipografia Nacional', 1881, 'Romance', 'Um defunto narra sua vida com ironia e filosofia.', 'disponivel'),
('principe.jpg', 'O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 'Reynal & Hitchcock', 1943, 'Fábula', 'Um piloto encontra um príncipe de outro planeta e aprende sobre amor e sabedoria.', 'disponivel'),
('pedra.jpg', 'Harry Potter e a Pedra Filosofal', 'J. K. Rowling', 'Bloomsbury', 1997, 'Fantasia', 'A jornada de Harry Potter no mundo bruxo começa.', 'disponivel'),
('vinci.jpg', 'O Código Da Vinci', 'Dan Brown', 'Doubleday', 2003, 'Thriller', 'Segredos religiosos e simbologias ocultas guiam uma investigação perigosa.', 'disponivel'),
('vento.jpg', 'O Nome do Vento', 'Patrick Rothfuss', 'DAW Books', 2007, 'Fantasia', 'Kvothe narra sua vida extraordinária desde a infância até virar lenda.', 'disponivel'),
('capaGenerica.png', 'O Sol da Meia-Noite', 'Carlos Silva', 'Editora Alpha', 2020, 'Romance', 'Uma emocionante história de amor e superação.', 'disponivel'),
('capaGenerica.png', 'Mistérios da Lua', 'Ana Pereira', 'Editora Beta', 2018, 'Mistério', 'Investigações e segredos sob a luz da lua.', 'disponivel'),
('capaGenerica.png', 'Código Secreto', 'Marcos Lima', 'Editora Gamma', 2021, 'Suspense', 'Um thriller de espionagem com reviravoltas inesperadas.', 'disponivel'),
('capaGenerica.png', 'Aventuras no Espaço', 'Paula Costa', 'Editora Delta', 2019, 'Ficção Científica', 'Explorações espaciais e encontros com o desconhecido.', 'disponivel'),
('capaGenerica.png', 'O Jardim das Flores', 'Luiza Fernandes', 'Editora Epsilon', 2022, 'Romance', 'História encantadora ambientada em jardins secretos.', 'disponivel'),
('capaGenerica.png', 'Segredos do Tempo', 'Roberto Alves', 'Editora Zeta', 2017, 'Fantasia', 'Viagens no tempo e mundos mágicos.', 'disponivel'),
('capaGenerica.png', 'Cidade Sombria', 'Fernanda Rocha', 'Editora Eta', 2020, 'Mistério', 'Crimes e intrigas em uma cidade enigmática.', 'disponivel'),
('capaGenerica.png', 'O Último Guardião', 'Thiago Santos', 'Editora Theta', 2021, 'Aventura', 'Uma jornada épica de coragem e amizade.', 'disponivel'),
('capaGenerica.png', 'Entre Mundos', 'Mariana Alves', 'Editora Iota', 2019, 'Fantasia', 'Portais mágicos e mundos paralelos.', 'disponivel'),
('capaGenerica.png', 'Ventos do Destino', 'Paulo Martins', 'Editora Kappa', 2018, 'Romance', 'História de vidas cruzadas pelo destino.', 'disponivel'),
('capaGenerica.png', 'Sombras do Passado', 'Carla Mendes', 'Editora Lambda', 2022, 'Suspense', 'Segredos antigos ameaçam o presente.', 'disponivel'),
('capaGenerica.png', 'A Chave Mágica', 'Rafael Lima', 'Editora Mu', 2021, 'Fantasia', 'Uma chave que abre portas para aventuras incríveis.', 'disponivel'),
('capaGenerica.png', 'Noite de Mistérios', 'Juliana Costa', 'Editora Nu', 2019, 'Mistério', 'Enigmas e pistas em uma noite sombria.', 'disponivel'),
('capaGenerica.png', 'Horizonte Perdido', 'Diego Santos', 'Editora Xi', 2020, 'Aventura', 'Expedições perigosas em terras desconhecidas.', 'disponivel'),
('capaGenerica.png', 'Coração de Fogo', 'Letícia Rocha', 'Editora Omicron', 2018, 'Romance', 'Paixão intensa e desafios emocionais.', 'disponivel'),
('capaGenerica.png', 'Planeta Sombrio', 'Vitor Almeida', 'Editora Pi', 2021, 'Ficção Científica', 'Sobrevivência e conflitos em outro planeta.', 'disponivel'),
('capaGenerica.png', 'O Labirinto', 'Beatriz Fernandes', 'Editora Rho', 2022, 'Suspense', 'Mistérios que precisam ser desvendados.', 'disponivel'),
('capaGenerica.png', 'Marés do Destino', 'Gabriel Costa', 'Editora Sigma', 2019, 'Romance', 'Encontros e despedidas na costa litorânea.', 'disponivel'),
('capaGenerica.png', 'Vórtice', 'Larissa Souza', 'Editora Tau', 2020, 'Ficção Científica', 'Explorações em dimensões paralelas.', 'disponivel'),
('capaGenerica.png', 'O Segredo do Bosque', 'Eduardo Martins', 'Editora Upsilon', 2017, 'Fantasia', 'Segredos escondidos entre árvores antigas.', 'disponivel'),
('capaGenerica.png', 'A Última Esperança', 'Amanda Lima', 'Editora Phi', 2022, 'Aventura', 'Heróis enfrentam desafios finais.', 'disponivel'),
('capaGenerica.png', 'Rastro de Sangue', 'Bruno Rocha', 'Editora Chi', 2021, 'Suspense', 'Um detetive em busca de respostas.', 'disponivel'),
('capaGenerica.png', 'Luz e Sombra', 'Isabela Santos', 'Editora Psi', 2020, 'Romance', 'Amor e conflitos em tempos de guerra.', 'disponivel'),
('capaGenerica.png', 'O Enigma', 'Felipe Costa', 'Editora Omega', 2019, 'Mistério', 'Resolver enigmas é questão de sobrevivência.', 'disponivel'),
('capaGenerica.png', 'Viagem ao Desconhecido', 'Camila Alves', 'Editora Alpha', 2021, 'Aventura', 'Exploração de lugares nunca antes vistos.', 'disponivel'),
('capaGenerica.png', 'Chamas do Passado', 'Gustavo Lima', 'Editora Beta', 2018, 'Romance', 'Segredos antigos reacendem paixões.', 'disponivel'),
('capaGenerica.png', 'Sussurros da Noite', 'Patrícia Santos', 'Editora Gamma', 2022, 'Mistério', 'Mistérios que se escondem no silêncio.', 'disponivel'),
('capaGenerica.png', 'Planeta Azul', 'Rodrigo Martins', 'Editora Delta', 2019, 'Ficção Científica', 'Descobertas em um planeta desconhecido.', 'disponivel'),
('capaGenerica.png', 'O Guardião da Floresta', 'Renata Fernandes', 'Editora Epsilon', 2020, 'Fantasia', 'Protegendo seres mágicos do mal.', 'disponivel'),
('capaGenerica.png', 'Entre Sombras', 'Leonardo Rocha', 'Editora Zeta', 2018, 'Suspense', 'Segredos que podem mudar vidas.', 'disponivel');

-- Inserindo 2 imagens complementares para cada livro na tabela `img_livros`

INSERT INTO `img_livros` (`idLivro`, `caminho`) VALUES
-- livro 1
(1, 'complementarGenerico.png'),
(1, 'complementarGenerico.png'),
-- livro 2
(2, 'complementarGenerico.png'),
(2, 'complementarGenerico.png'),
-- livro 3
(3, 'complementarGenerico.png'),
(3, 'complementarGenerico.png'),
-- livro 4
(4, 'complementarGenerico.png'),
(4, 'complementarGenerico.png'),
-- livro 5
(5, 'complementarGenerico.png'),
(5, 'complementarGenerico.png'),
-- livro 6
(6, 'complementarGenerico.png'),
(6, 'complementarGenerico.png'),
-- livro 7
(7, 'complementarGenerico.png'),
(7, 'complementarGenerico.png'),
-- livro 8
(8, 'complementarGenerico.png'),
(8, 'complementarGenerico.png'),
-- livro 9
(9, 'complementarGenerico.png'),
(9, 'complementarGenerico.png'),
-- livro 10
(10, 'complementarGenerico.png'),
(10, 'complementarGenerico.png'),
-- livro 11
(11, 'complementarGenerico.png'),
(11, 'complementarGenerico.png'),
-- livro 12
(12, 'complementarGenerico.png'),
(12, 'complementarGenerico.png'),
-- livro 13
(13, 'complementarGenerico.png'),
(13, 'complementarGenerico.png'),
-- livro 14
(14, 'complementarGenerico.png'),
(14, 'complementarGenerico.png'),
-- livro 15
(15, 'complementarGenerico.png'),
(15, 'complementarGenerico.png'),
-- livro 16
(16, 'complementarGenerico.png'),
(16, 'complementarGenerico.png'),
-- livro 17
(17, 'complementarGenerico.png'),
(17, 'complementarGenerico.png'),
-- livro 18
(18, 'complementarGenerico.png'),
(18, 'complementarGenerico.png'),
-- livro 19
(19, 'complementarGenerico.png'),
(19, 'complementarGenerico.png'),
-- livro 20
(20, 'complementarGenerico.png'),
(20, 'complementarGenerico.png'),
-- livro 21
(21, 'complementarGenerico.png'),
(21, 'complementarGenerico.png'),
-- livro 22
(22, 'complementarGenerico.png'),
(22, 'complementarGenerico.png'),
-- livro 23
(23, 'complementarGenerico.png'),
(23, 'complementarGenerico.png'),
-- livro 24
(24, 'complementarGenerico.png'),
(24, 'complementarGenerico.png'),
-- livro 25
(25, 'complementarGenerico.png'),
(25, 'complementarGenerico.png'),
-- livro 26
(26, 'complementarGenerico.png'),
(26, 'complementarGenerico.png'),
-- livro 27
(27, 'complementarGenerico.png'),
(27, 'complementarGenerico.png'),
-- livro 28
(28, 'complementarGenerico.png'),
(28, 'complementarGenerico.png'),
-- livro 29
(29, 'complementarGenerico.png'),
(29, 'complementarGenerico.png'),
-- livro 30
(30, 'complementarGenerico.png'),
(30, 'complementarGenerico.png');

INSERT INTO `reserva` (`idCliente`, `idLivro`, `data`) VALUES
(4, 1, '2023-02-15'),
(5, 2, '2023-03-22'),
(4, 3, '2023-05-10'),
(5, 4, '2023-06-01'),
(4, 5, '2023-07-18'),
(5, 6, '2023-08-05'),
(4, 7, '2023-09-12'),
(5, 8, '2023-10-23'),
(4, 9, '2023-11-30'),
(5, 10, '2023-12-14'),
(4, 11, '2024-01-08'),
(5, 12, '2024-02-19'),
(4, 13, '2024-03-25'),
(5, 14, '2024-04-10'),
(4, 15, '2024-05-16'),
(5, 16, '2024-06-20'),
(4, 17, '2024-07-05'),
(5, 18, '2024-08-14'),
(4, 19, '2024-09-22'),
(5, 20, '2024-10-29'),
(4, 21, '2024-11-11'),
(5, 22, '2024-12-03'),
(4, 23, '2025-01-15'),
(5, 24, '2025-02-28'),
(4, 25, '2025-03-18'),
(5, 26, '2025-04-07'),
(4, 27, '2025-05-21'),
(5, 28, '2025-06-12'),
(4, 29, '2025-07-30'),
(5, 30, '2025-08-16');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `img_livros`
--
ALTER TABLE `img_livros`
  ADD KEY `idLivro` (`idLivro`);

--
-- Índices de tabela `livro`
--


--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `img_livros`
--
ALTER TABLE `img_livros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `img_livros`
--
ALTER TABLE `img_livros`
  ADD CONSTRAINT `img_livros_ibfk_1` FOREIGN KEY (`idLivro`) REFERENCES `livro` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
