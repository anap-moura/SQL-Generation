CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255),
    PRIMARY KEY (id_categoria)
);

INSERT INTO tb_categorias (nome, descricao) 
VALUES('Medicação', 'Medicamentos e produtos para tratamento em geral'),
('Cosméticos', 'Cosméticos e Dermocosméticos'),
('Higiene Pessoal', 'Produtos para sua higiene pessoal'),
('Saúde Bucal', 'Produtos para os cuidados da sua saúde bucal'),
('Outros', 'Perfumaria, alimentos, bebidas entre outros...');

CREATE TABLE tb_produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(5, 2) NOT NULL,
    descricao TEXT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

-- Inserir dados na tabela tb_produtos
INSERT INTO tb_produtos (nome_produto, preco, descricao, id_categoria) 
VALUES
    ('Paracetamol', 12.50, 'Analgésico para alívio de dor e febre', 1),
    ('Shampoo Anticaspa', 18.00, 'Shampoo para controle da caspa', 2),
    ('Protetor Solar FPS 50', 30.00, 'Proteção solar contra raios UVA e UVB', 3),
    ('Vitaminas C', 25.50, 'Suplemento de vitamina C para fortalecimento imunológico', 4),
    ('Creme Hidratante Facial', 45.00, 'Hidratação profunda para a pele do rosto', 3),
    ('Kit Kat', 2.00, 'Chocolate Kit Kat', 5),
    ('Soro Fisiológico', 8.50, 'Solução salina para limpeza nasal e ocular', 4),
    ('Água Cristal 1l', 8.00, 'Água mineral sem gás Cristal', 5);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome_produto LIKE '%c%';

SELECT tb_produtos.nome_produto, tb_produtos.preco, tb_produtos.descricao, tb_categorias.nome
FROM tb_produtos 
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT tb_produtos.nome_produto, tb_produtos.preco, tb_produtos.descricao, tb_categorias.nome
FROM tb_produtos 
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome = 'Cosméticos';