-- DML
-- INSERT
-- SELECT
-- UPDATE
-- DELETE

-- INSERT
INSERT INTO tb_usuario
VALUES
(1, 'Leticia Zimerer', 'leticiazimer@yahoo.com.br', '134652', 'Rua Camaraje'),
(2,  'Cleiton Ferreira', 'cleitonmoraes1709@gmail.com', '134652', 'Rua Tariana, 133 - SP'),
(3, 'Arthur Zimerer', 'arthur@gmail.com', '134652', 'Rua dos Cocais, 397 - SP')

INSERT INTO tb_produtos
VALUES
(1, 'Cilios Posticos', 'Cilios Postiços Magneticos', 29.90),
(2, 'Mascara Descartavel', 'Mascara Descartavel protege Covid', 10.00),
(3, 'Sabonete Pos Maquiagem', 'Shampoo para uso Adulto Humano', 7.50)

INSERT INTO tb_vendas
VALUES
(1, 3, 'Beleza', 29.90,'Cilios Posticos'),
(2, 10, 'Beleza', 10.00, 'Mascara Descartavel'),
(3, 90, 'Saude', 7.50, 'Sabonete Pos Maquiagem' )

INSERT INTO tb_entrega
VALUES
(1, 20),
(2, 20),
(3, 2)

SELECT * FROM tb_usuario
WHERE Endereco LIKE '%Rua Camara%'

SELECT * FROM tb_produtos
WHERE Preco BETWEEN 10 AND 30

UPDATE tb_usuario
SET Nome = 'Leticia Zimerer Fornarolo'
WHERE Id = 1

--INNER JOIN TUDO DE USUARIO + MEDIA DOS VALORES
SELECT * FROM tb_usuario  AS Nome,
AVG(tb_produtos.valor) AS Preço
INNER JOIN tb_vendas ON tb_usuario.FK_venda = tb_vendas.FK_venda
INNER JOIN tb_usuario ON tb_produtos.FK_usuario = tb_usuario.FK_usuario
INNER JOIN tb_produtos ON tb_vendas.FK_produtos = tb_produtos.FK_produtos

--INNER JOIN TUDO DE USUARIO + SOMA DOS VALORES
SELECT * FROM tb_usuario  AS Nome,
SUM(tb_produtos.valor) AS Preço
INNER JOIN tb_vendas ON tb_usuario.FK_venda = tb_vendas.FK_venda
INNER JOIN tb_usuario ON tb_produtos.FK_usuario = tb_usuario.FK_usuario
INNER JOIN tb_produtos ON tb_vendas.FK_produtos = tb_produtos.FK_produtos
WHERE tb_usuarios.nome LIKE '%Art%'
GROUP BY tb_usuario.nome;

--LEFT E RIGHT JOIN
SELECT * FROM tb_usuario
LEFT JOIN tb_entrega ON tb_usuarios.FK.Entrega = tb_entrega.FK_Entrega --LEFT (USUARIO) RIGHT (ENTREGA)
WHERE tb_usuario.nome IS NULL

SELECT * FROM tb_usuario
RIGHT JOIN tb_produtos ON tb_usuario.FK.Produto = tb_produtos.FK_Produto --LEFT (ENTREGA) RIGHT (PRODUTOS)
WHERE tb_usuario.nome LIKE '%Clei%'
GROUP BY tb_usuario.nome;