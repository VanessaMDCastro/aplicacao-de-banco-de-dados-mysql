USE DB_T04301_VANESSA_CASTRO;

-- CRIANDO A TABELA
CREATE TABLE TB_PRODUTOS_PADOCA (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(5,2),
    estoque INT
);

-- INSERT PARA RESOLVER OS EXERCICIOS
INSERT INTO TB_PRODUTOS_PADOCA (nome, preco, estoque) VALUES
-- Pães
('Pão Francês', 1.00, 50),
('Pão de Queijo', 2.50, 15),
('Pão Integral', 6.00, 18),
('Pão Australiano', 8.50, 12),

-- Bolos
('Bolo de Chocolate', 8.00, 10),
('Bolo de Cenoura', 6.50, 25),
('Bolo Gelado', 11.00, 5),
('Bolo de Fubá', 5.00, 22),
('Mini Bolo de Morango', 7.50, 8),

-- Salgados
('Coxinha', 4.50, 30),
('Esfiha', 3.00, 28),
('Quibe', 3.50, 35),
('Empada', 6.00, 14),
('Croissant', 7.00, 40),
('Croissant de Chocolate', 9.50, 20),

-- Bebidas
('Café', 3.50, 30),
('Café Expresso', 5.00, 18),
('Suco Natural', 4.00, 18),
('Suco de Laranja', 6.50, 10),
('Refrigerante', 5.50, 22),
('Água Mineral', 2.00, 60),

-- Extras
('Sanduíche Natural', 9.00, 12),
('Sanduíche de Frango', 10.00, 9),
('Torrada', 2.50, 25);
-- CONSULTA TABELA
SELECT * FROM TB_PRODUTOS_PADOCA;
-- QUAIS PRODUTOS TEM PRECO ACIMA DE 5.00
SELECT * FROM TB_PRODUTOS_PADOCA
WHERE preco > 5.00;
-- QUAIS PRODUTOS POSSUEM A PALAVRA BOLO NO NOME
SELECT * FROM TB_PRODUTOS_PADOCA
WHERE nome LIKE '%BOLO%';
-- QUAIS PRODUTOS TEM MENOS DE 20 UNIDADES NO ESTOQUE
SELECT * FROM TB_PRODUTOS_PADOCA
WHERE estoque < 20;
-- QUAIS PRODUTOS CUSTAM ENTRE 3.00 E 10.00
SELECT * FROM TB_PRODUTOS_PADOCA
WHERE preco >= 3.00 AND preco <= 10.00;
-- QUAIS PRODUTOS TEM NOME QUE COMEÇA COM 'PAO'
SELECT * FROM TB_PRODUTOS_PADOCA
WHERE nome LIKE 'Pão%';
-- QUAL É O COMANDO PARA ENCONTRAR PRODUTOS COM NOME ' Croissant' E QUE TENHAM MAIS DE 30 UNIDADES EM ESTOQUE
SELECT * FROM TB_PRODUTOS_PADOCA
WHERE nome LIKE '%Croissant%' AND estoque > 30;