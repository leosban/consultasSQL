-- join inner join

SELECT u.id as uid, p.id as pid,
p.bio, u.nome
FROM users AS u
INNER JOIN profiles p
ON u.id = p.user_id
WHERE u.nome LIKE '%a'
ORDER BY u.nome asc
LIMIT 5;