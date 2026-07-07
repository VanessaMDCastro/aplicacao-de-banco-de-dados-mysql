USE DB_T04301_VANESSA_CASTRO;

-- CRIANDO A TABELA DEPART
CREATE TABLE tb_departamentos_exer3 (
    id_departamento INT PRIMARY KEY,
    nome_departamento VARCHAR(100)
);

-- CRIANDO A TABELA FUNCIONARIO
CREATE TABLE tb_funcionarios_exer3 (
    id_funcionario INT PRIMARY KEY,
    nome_funcionario VARCHAR(100),
    salario DECIMAL(10,2),
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES tb_departamentos(id_departamento)
);

-- CRIANDO A TABELA FAIXA SALARIAL
CREATE TABLE tb_faixa_salarial_exer3 (
    id_faixa INT PRIMARY KEY,
    nivel VARCHAR(50),
    salario_min DECIMAL(10,2),
    salario_max DECIMAL(10,2)
);
-- Departamentos
INSERT INTO tb_departamentos_exer3 (id_departamento, nome_departamento) VALUES
(1, 'Financeiro'),
(2, 'RH'),
(3, 'TI'),
(4, 'Vendas'),
(5, 'Inovação');
-- Funcionários
INSERT INTO tb_funcionarios_exer3 (id_funcionario, nome_funcionario, salario, id_departamento) VALUES
(1, 'Ana', 1800.00, 1),
(2, 'Bruno', 2500.00, 4), -- Vendas (Pleno)
(3, 'Carlos', 3200.00, 2),
(4, 'Daniela', 4500.00, 4), -- Vendas (Pleno)
(5, 'Eduardo', 5200.00, 3),
(6, 'Fernanda', 7000.00, 4);

-- Faixas salariais
INSERT INTO tb_faixa_salarial_exer3 (id_faixa, nivel, salario_min, salario_max) VALUES
(1, 'Junior', 0, 2000),
(2, 'Pleno', 2001, 5000),
(3, 'Senior', 5001, 99999);
SELECT * FROM tb_departamentos_exer3;
SELECT * FROM tb_funcionarios_exer3;
SELECT * FROM tb_faixa_salarial_exer3;

SELECT F.nome_funcionario AS Nome,
FS.nivel AS Nivel,
D.nome_departamento AS Departamento,
FS.nivel AS Nivel
FROM tb_funcionarios_exer3 AS F
INNER JOIN tb_departamentos_exer3 AS D
 ON F.id_departamento = D.id_departamento
INNER JOIN tb_faixa_salarial_exer3 AS FS
ON F.salario BETWEEN FS.salario_min AND FS.salario_max
WHERE D.nome_departamento = 'Vendas' AND FS.nivel = 'Pleno';
