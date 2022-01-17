-- join right join
-- RIGHT JOIN ou RIGHT OUTER JOIN retorna todos os dados encontrados na tabela à direita de JOIN. Caso não existam dados associados entre as tabelas à esquerda e à direita de JOIN, serão retornados valores nulos.

SELECT u.id as uid, p.id as pid,
p.bio, u.nome
FROM users AS u
RIGHT JOIN profiles p
ON u.id = p.user_id;