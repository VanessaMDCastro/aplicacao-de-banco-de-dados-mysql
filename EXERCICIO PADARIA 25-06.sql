
USE DB_T04301_VANESSA_CASTRO;

CREATE TABLE TB_PRODUTOS_PADA
(
codigo_produtos_pada INT auto_increment PRIMARY KEY,
nome_produtos_pada INT NOT NULL,
quantidade_produtos_pada INT NOT NULL,
preco_produtos_pada DECIMAL (10, 2),
data_validade_produto DATE
);
ALTER TABLE TB_PRODUTOS_PADA
modify nome_produtos_pada VARCHAR(100);

describe TB_PRODUTOS_PADA;

INSERT INTO TB_PRODUTOS_PADA (nome_produtos_pada, quantidade_produtos_pada, preco_produtos_pada, data_validade_produto)
VALUES 
('Pão Francês', '120', 0.80, '2026-06-26'),
('Pão de Queijo', '80', 2.50, '2026-06-26'),
('Bolo de Chocolate', '15', 28.90, '2026-06-28'),
('Bolo de Cenoura', '20', 24.50, '2026-06-27'),
('Sonho Recheado', '35', 5.75, '2026-06-26'),
('Croissant Manteiga', '40', 6.20, '2026-06-27'),
('Rosca Doce', '18', 19.90, '2026-06-29'),
('Pão Integral', '25', 7.30, '2026-06-27'),
('Empada de Frango', '30', 6.80, '2026-06-26'),
('Torta de Limão', '12', 32.00, '2026-06-28');

SELECT * FROM TB_PRODUTOS_PADA;

DELETE FROM TB_PRODUTOS_PADA
WHERE codigo_produtos_pada = 8;

