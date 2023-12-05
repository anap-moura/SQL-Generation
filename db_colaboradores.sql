-- Criando o banco de dados
CREATE DATABASE db_colaboradores;
USE db_colaboradores;

-- Criando a tabela de colaboradores
CREATE TABLE tb_colaboradores (
    id INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    salario DECIMAL(10, 2),
    dataNascimento DATE,
    PRIMARY KEY (id)
);

-- Inserindo os dados na tabela
INSERT INTO tb_colaboradores (Nome, Cargo, Salario, dataNascimento) 
VALUES ('Ana Paula M', 'Desenvolvedor', 2500.00, '1992-12-21'),
('Silvana Oliveira', 'Analista de RH', 1800.00, '1966-07-01'),
('Luiz Ricardo', 'Gerente de Vendas', 3000.00, '1969-11-17'),
('Severina Moura', 'Assistente Administrativo', 1900.00, '1970-05-06'),
('Kevin Roberto', 'Analista Financeiro', 2200.00, '2000-06-13');

-- SELECT para retornar todos os colaboradores com salário maior que 2000
SELECT * FROM tb_colaboradores WHERE Salario > 2000;

-- SELECT para retornar todos os colaboradores com salário menor que 2000
SELECT * FROM tb_colaboradores WHERE Salario < 2000;

-- UPDATE: para atualizar um atributo de um colaborador (exemplo: aumentar o salário de Silvana)
UPDATE tb_colaboradores SET salario = 2500.00 WHERE id = 2;

-- SELECT para verificar se a atualização foi realizada corretamente
SELECT * FROM tb_colaboradores WHERE Nome = 'Silvana Oliveira';