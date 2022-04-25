-- DML
-- INSERT
-- SELECT
-- UPDATE
-- DELETE

-- INSERT
INSERT INTO tb_usuario
VALUES
(1, 'Leticia Zimerer', 'leticiazimerer', '134652'),
(2,  'Cleiton de Moraes', 'cleitao', '134652'),
(3, 'Arthur Zimeres', 'arthurr', '134652')

INSERT INTO tb_postagens
VALUES
(1, 'Vencedor BBB22', 'Paulo Andre derrota Arthur Aguiar e vende BBB22')
(2, 'Beonce no Coachella','Beonce aparece de surpresa em um dos maiores festivais no mundo')

INSERT INTO tb_temas
VALUES
(1,'Paulo Andre derrota Arthur Aguiar e vende BBB22'),
(2,'Beonce aparece de surpresa em um dos maiores festivais no mundo')

SELECT * FROM tb_postagens
WHERE Titulo LIKE '%Be%'

UPDATE tb_usuario
SET Nome = 'Arthur Zimerer de Moraes'
WHERE Id = 3

SELECT
COUNT (*) AS 'Todas as postagens são:' FROM tb_postagens

--INNER JOIN TUDO DE USUARIO
SELECT * FROM tb_postagens.nome AS Nome
INNER JOIN tb_usuario ON tb_usuario.FK.Usuarios = tb_postagens.FK_Usuarios
INNER JOIN tb_postagens ON tb_postagens.FK.Postagens = tb_temas.FK_Postagens

--LEFT E RIGHT JOIN
SELECT * FROM tb_usuario
LEFT JOIN tb_postagens ON tb_usuario.FK.Postagens = tb_postagens.FK.Postagens --LEFT (USUARIO) RIGHT (POSTAGENS)
WHERE tb_usuario.nome IS NULL

SELECT * FROM tb_usuario
RIGHT JOIN tb_usuario ON tb_usuario.FK.Usuario = tb_temas.FK_Usuario --LEFT (POSTAGENS) RIGHT (TEMAS)
WHERE tb_usuario.nome LIKE '%Clei%'
GROUP BY tb_usuario.nome;

DELETE tb_usuarios

select * from Usuarios