-- selecionar valores de duas tabelas diferentes

SELECT u.id as uid, p.id as pid,
p.bio, u.nome
FROM users AS u, profiles as p
WHERE u.id = p.user_id;