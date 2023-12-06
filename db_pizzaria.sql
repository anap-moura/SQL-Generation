CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT,
    tipo VARCHAR(50) NOT NULL,
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tipo, descricao) 
VALUES ('Pizzas tradicionais', 'Pizzas salgadas com diversos sabores'), 
('Pizzas premium', 'Pizzas com ingredientes premium'),
('Pizzas vegetarianas', 'Pizzas sem carne!'),
('Opção sem glúten', 'Pizzas com ingredientes glúten free'),
('Pizzas doces', 'Pizzas doces deliciosas!');  

SELECT * FROM tb_categorias;
       
CREATE TABLE tb_pizzas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    sabor VARCHAR(100) NOT NULL,
    valor DECIMAL(5, 2) NOT NULL,
    ingredientes TEXT,
    categoria_id INT NOT NULL, 
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (sabor, valor, ingredientes, categoria_id) 
VALUES 
    ('Portuguesa', 50.00, 'Molho de tomate especial da casa, presunto, queijo muçarela, ovos, ervilhas e cebola', 1),
    ('Calabresa', 40.00, 'Molho de tomate especial da casa, calabresa em rodelas, cebola e muçarela', 1),
    ('Frango com Catupiry', 48.00, 'Molho de tomate, frango desfiado temperado com catupiry', 1),
    ('Frango com Cream Cheese', 52.00, 'Molho de tomate, frango desfiado temperado e Cream Cheese  Philadelphia', 2),
    ('Margherita', 35.00, 'Molho de tomate, muçarela e manjericão', 3),
    ('15 Queijos', 55.00, 'Molho de tomate, muçarela, gorgonzola, catupiry, parmesão, provolone, cheddar, brie, camembert, queijo montanhês, grana padano, mistura preparada de 10 queijos que não estão na lista', 3),
    ('Vegetariana', 55.00, 'Molho de tomate, muçarela, pimentão, champignon, ovos de codorna e cebola', 3),
    ('Brigadeiro', 45.00, 'Pizza com recheio de brigadeiro com granulado', 5),
    ('Doce de leite com banana', 45.00, 'Pizza com recheio de doce de leite, banana picada e canela', 5);


SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

-- SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome
SELECT * FROM tb_pizzas WHERE sabor LIKE '%m%';

-- SELECT utilizando INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias
SELECT tb_pizzas.sabor, tb_pizzas.valor, tb_pizzas.ingredientes, tb_categorias.tipo
FROM tb_pizzas 
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = 'Pizzas doces';
