-- IAgentics — Seleção Técnica: Setup do banco para Trilha SQL
-- Uso: sqlite3 pedidos.db < setup.sql
-- Entregue o arquivo pedidos.db ao candidato no início da Parte 2

PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS fornecedores (
  id        INTEGER PRIMARY KEY,
  nome      TEXT NOT NULL,
  categoria TEXT NOT NULL CHECK(categoria IN ('insumo','servico','equipamento'))
);

CREATE TABLE IF NOT EXISTS pedidos (
  id            INTEGER PRIMARY KEY,
  fornecedor_id INTEGER NOT NULL REFERENCES fornecedores(id),
  valor         REAL NOT NULL,
  status        TEXT NOT NULL CHECK(status IN ('aprovado','pendente','cancelado')),
  criado_em     TEXT NOT NULL
);

INSERT INTO fornecedores VALUES
(1,'Alpha Tecnologia','equipamento'),
(2,'Beta Suprimentos','insumo'),
(3,'Gamma Consulting','servico'),
(4,'Delta Components','equipamento'),
(5,'Epsilon Software','servico');

INSERT INTO pedidos VALUES
(1,  1, 15000.00, 'aprovado',  '2024-01-15'),
(2,  1,  8500.00, 'aprovado',  '2024-02-20'),
(3,  1, 22000.00, 'pendente',  '2024-03-10'),
(4,  2,  3200.00, 'aprovado',  '2024-01-05'),
(5,  2,  4100.00, 'pendente',  '2024-02-14'),
(6,  2,  2800.00, 'pendente',  '2024-03-22'),
(7,  2,  5500.00, 'cancelado', '2024-04-01'),
(8,  3, 18000.00, 'aprovado',  '2024-01-30'),
(9,  3, 12500.00, 'aprovado',  '2024-02-28'),
(10, 3,  9800.00, 'pendente',  '2024-03-15'),
(11, 3,  7200.00, 'pendente',  '2024-04-10'),
(12, 3, 14500.00, 'pendente',  '2024-05-05'),
(13, 4, 31000.00, 'aprovado',  '2024-01-22'),
(14, 4, 27500.00, 'aprovado',  '2024-02-08'),
(15, 4, 19200.00, 'cancelado', '2024-03-30'),
(16, 5,  6500.00, 'aprovado',  '2024-04-15'),
(17, 5,  8900.00, 'pendente',  '2024-04-20'),
(18, 1, 11000.00, 'aprovado',  '2024-05-10'),
(19, 2,  3800.00, 'pendente',  '2024-05-18'),
(20, 4, 42000.00, 'aprovado',  '2024-06-02');

-- Gabarito das queries esperadas (para o avaliador)
-- Q1: Total aprovado por categoria (decrescente)
-- SELECT f.categoria, SUM(p.valor) AS total_gasto
-- FROM pedidos p JOIN fornecedores f ON p.fornecedor_id = f.id
-- WHERE p.status = 'aprovado'
-- GROUP BY f.categoria ORDER BY total_gasto DESC;
-- Resultado esperado: equipamento > servico > insumo

-- Q2: Fornecedores com mais de 2 pedidos pendentes
-- SELECT f.nome, COUNT(*) AS pendentes
-- FROM pedidos p JOIN fornecedores f ON p.fornecedor_id = f.id
-- WHERE p.status = 'pendente'
-- GROUP BY f.nome HAVING COUNT(*) > 2;
-- Resultado esperado: Beta Suprimentos (3), Gamma Consulting (3)

-- Q3: Média de valor por mês em 2024
-- SELECT strftime('%m', criado_em) AS mes, AVG(valor) AS media_valor
-- FROM pedidos WHERE criado_em LIKE '2024-%'
-- GROUP BY mes ORDER BY mes;
