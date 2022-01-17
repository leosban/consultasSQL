-- join left join
-- permite obter não apenas os dados relacionados de duas tabelas, mas também os dados não relacionados encontrados na tabela à esquerda da cláusula JOIN, no caso de não existir dados relacionados entre as tabelas à esquerda e a direita do JOIN, os valores resultante de todas as colunas da lista de seleção da tabela à direita serão nulos.

SELECT u.id as uid, p.id as pid,
p.bio, u.nome
FROM users AS u
LEFT JOIN profiles p
ON u.id = p.user_id;