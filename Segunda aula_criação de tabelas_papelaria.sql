

USE DB_T04301_VANESSA_CASTRO;
/* COMENTARIOS LONGOS */
-- criando tabela livros
CREATE TABLE tb_livros ( 
id_livro INT AUTO_INCREMENT PRIMARY KEY, 
titulo VARCHAR (100) NOT NULL,
autor VARCHAR (80) NOT NULL, 
ano_publicacao INT,
genero_livro VARCHAR (50)
);
SELECT * from tb_livros
ORDER BY genero_livro ASC;

INSERT INTO tb_livros (titulo, autor, ano_publicacao, genero_livro)
VALUES ('Vidas Secas','Graciliano Ramos', '1938','Drama'),
('Harry Potter e a Pedra Filosofal', 'J.K.Rowling', '1997','Fantasia');

-- CONSULTAR APENAS ALGUNS DADOS DA TABELA
SELECT titulo, autor, ano_publicacao FROM tb_livros
ORDER BY autor ASC; 

-- SELECT COM WHERE, RETORNANDO UM GENERO ESPECIFICO
SELECT * FROM tb_livros
WHERE genero_livro ='Drama'
;
-- UTILIZANDO O COMANDO LIKE COM L NO MEIO
SELECT * FROM tb_livros
WHERE titulo LIKE '%L%'
;
-- UTILIZANDO O COMANDO LIKE COM O C NO INICIO
SELECT * FROM tb_livros
WHERE titulo LIKE 'C%'
;

SELECT * FROM tb_livros
WHERE titulo LIKE '%S__a_%'
;

CREATE TABLE tb_produtos
(
id_produto INT NOT NULL,
quantidade INT NOT NULL,
nome_produto VARCHAR (150) NOT NULL,
preco_produto DECIMAL (10,2) NOT NULL
 );
 INSERT INTO tb_produtos (id_produto, quantidade, nome_produto, preco_produto)
VALUES ('1','5','sulfite', 1.00),
('2','10', 'papel crepom', 1.00),
('3', '20', 'cartolina', 1.00),
('4', '30', 'cola', 2.00 ),
('5', '40', 'fita adesiva', 3.00 );

SELECT* FROM tb_produtos;

CREATE TABLE tb_vendas(
nome_cliente_papelaria VARCHAR (150) NOT NULL,
data_venda_papelaria DATE NOT NULL,
valor_venda_papelaria DECIMAL (10,2) NOT NULL,
nome_itens_papelaria VARCHAR (150) NOT NULL,
quantidade_itens_venda INT NOT NULL
);
INSERT INTO tb_vendas (nome_cliente_papelaria, data_venda_papelaria, valor_venda_papelaria,nome_itens_papelaria, quantidade_itens_venda)
VALUES ('Vanessa', '2026-05-30', 10.00, 'cola', '5'),
('Debora','2026-05-30', 15.00, 'sufilte', '15'),
('Cleide ','2026-05-30', 8.00, 'papel crepom, cola', '6'),
('Claudia', '2026-05-30', 8.00, 'cartolina, fita adesiva', '3
');
SELECT* FROM tb_vendas;
CREATE TABLE tb_fornecedores
(
nome_fornecedor VARCHAR (150) NOT NULL,
data_venda_fornecedor DATE NOT NULL,
nome_produto_venda_fornecedor VARCHAR (150) NOT NULL,
quantidade_itens_venda_fornecedor INT NOT NULL
);

INSERT INTO tb_fornecedores (nome_fornecedor, data_venda_fornecedor, nome_produto_venda_fornecedor, quantidade_itens_venda_fornecedor)
VALUES ('Marques Papelaria','2026-01-30', 'sulfite', '50'),
('Durecola', '2026-01-30', 'cola', '50'), 
('Papeis Mil', '2026-01-30', 'cartolina', '50');

SELECT * FROM tb_produtos; 
SELECT * FROM tb_vendas;
SELECT * FROM tb_fornecedores;
