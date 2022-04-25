-- DML
-- INSERT
-- SELECT
-- UPDATE
-- DELETE

-- INSERT
INSERT INTO tb_usuario
VALUES
(1, 'Leticia Zimerer', 'leticiazimerer', '134652'),
(2, 'Cleiton Ferreira', 'cleitusthemago', '134652'),
(3, 'Jade Zimerer', 'jadoca', '134652')

INSERT INTO tb_anuncios
VALUES
(1, 'Dev. Jr', 'Vaga de desenv. junior na Microsoft', '(11)95436-7864', '02/07/2022'),
(1, 'Dev. Senior', 'Vaga de desenv. senior na Microsoft', '(11)90987-2386', '04/06/2022')

SELECT * FROM tb_usuario
WHERE Endereco LIKE '%Jad%'

SELECT * FROM tb_anuncios
WHERE Descricao LIKE '%Micr%'

UPDATE tb_usuario
SET Nome = 'Jade Zimerer de Moraes'
WHERE Id = 3

SELECT
COUNT (*) AS 'Todos os anúncios são:'FROM tb_anuncios

--INNER JOIN TUDO DE USUARIO
SELECT * FROM tb_usuario.nome AS Nome
INNER JOIN tb_anuncios ON tb_usuario.FK_usuarios = tb_anuncios.FK_usuarios

--LEFT E RIGHT JOIN
SELECT * FROM tb_usuario
LEFT tb_anuncios ON tb_usuario.FK_usuario = tb_anuncios.FK_usuario

DELETE Usuarios
DELETE Anuncios

select * from Anuncios