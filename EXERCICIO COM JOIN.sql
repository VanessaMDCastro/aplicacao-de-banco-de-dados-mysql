-- Criar tabela de fornecedores
CREATE TABLE fornecedores (
    fornecedor_id INT PRIMARY KEY,
    nome_fornecedor VARCHAR(100) NOT NULL,
    cidade VARCHAR(50)
);

-- Criar tabela de produtos
CREATE TABLE produtos (
    produto_id INT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    fornecedor_id INT,
    FOREIGN KEY (fornecedor_id) REFERENCES fornecedores(fornecedor_id)
);

-- Criar tabela de vendas
CREATE TABLE vendas (
    venda_id INT PRIMARY KEY,
    produto_id INT,
    quantidade INT NOT NULL,
    data_venda DATE NOT NULL,
    FOREIGN KEY (produto_id) REFERENCES produtos(produto_id)
);
 
 INSERT INTO fornecedores (fornecedor_id, nome_fornecedor, cidade) VALUES
(1, 'Café do Brasil', 'São Paulo'),
(2, 'Sabor Mineiro Alimentos', 'Belo Horizonte'),
(3, 'Grãos Gourmet', 'Curitiba'),
(4, 'Delícias da Serra', 'Porto Alegre');

-- Inserir produtos

INSERT INTO produtos (produto_id, nome_produto, preco, estoque, fornecedor_id) VALUES
(1, 'Café Espresso Premium 250g', 29.90, 20, 1),
(2, 'Pão de Queijo Congelado 1kg', 39.90, 45, 2),
(3, 'Chá Verde Orgânico 100g', 24.90, 25, 3),
(4, 'Doce de Leite Artesanal 500g', 19.90, 15, 2),
(5, 'Bolo de Cenoura com Cobertura', 49.90, 30, 4),
(6, 'Café Moído Reserva Especial 500g', 54.90, 10, 1),
(7, 'Cookies de Chocolate 200g', 14.90, 35, 4);

INSERT INTO vendas (venda_id, produto_id, quantidade, data_venda) VALUES
(1, 1, 2, '2025-08-01'),
(2, 2, 1, '2025-08-01'),
(3, 3, 3, '2025-08-02'),
(4, 4, 1, '2025-08-02'),
(5, 5, 2, '2025-08-03'),
(6, 6, 1, '2025-08-03'),
(7, 1, 1, '2025-08-04'),
(8, 2, 2, '2025-08-04'),
(9, 3, 1, '2025-08-05'),
(10, 4, 2, '2025-08-05'),
(11, 5, 3, '2025-08-06'),
(12, 7, 4, '2025-08-06'),
(13, 6, 1, '2025-08-07'),
(14, 3, 2, '2025-08-07'),
(15, 1, 1, '2025-08-08'),
(16, 2, 1, '2025-08-08'),
(17, 5, 2, '2025-08-09'),
(18, 7, 3, '2025-08-09'),
(19, 4, 1, '2025-08-10'),
(20, 6, 1, '2025-08-10');

SELECT * FROM fornecedores;
SELECT * FROM produtos;
SELECT * FROM vendas;
 
-- Exercicio 03
SELECT  V.venda_id AS id_venda,
P.Nome_produto AS Produto,
F.nome_fornecedor AS Fornecedor,
V.data_venda AS Data_venda,
P.preco * V.quantidade AS Valor_Total_Venda
FROM vendas AS V
INNER JOIN produtos AS P
ON V.produto_id = P.produto_id
INNER JOIN fornecedores AS F
ON P.fornecedor_id = F.fornecedor_id;
-- RESPOSTA EXERCICIO 4
SELECT P.nome_produto AS Produto,
F.nome_fornecedor AS Fornecedor,
P.estoque
 FROM produtos AS P
INNER JOIN fornecedores AS F
ON P.fornecedor_id = F.fornecedor_id
WHERE P.estoque <30
ORDER BY P.estoque ASC;
-- EXEMPLO CRIANDO VIEW
CREATE VIEW VW_PRODUTOS_ESTOQUE_BAIXO AS 
SELECT P.nome_produto AS Produto,
F.nome_fornecedor AS Fornecedor,
P.estoque
 FROM produtos AS P
INNER JOIN fornecedores AS F
ON P.fornecedor_id = F.fornecedor_id
WHERE P.estoque <30
ORDER BY P.estoque ASC;

SELECT * FROM VW_PRODUTOS_ESTOQUE_BAIXO;