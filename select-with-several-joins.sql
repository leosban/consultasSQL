-- select com vários joins
-- sempre é uma boa prática colocar alias paras as coisas

SELECT 
u.id as uid, u.nome as unome, p.bio, r.name
FROM users as u
LEFT JOIN profiles as p ON u.id = p.user_id
INNER JOIN usersroles as ur ON u.id = ur.userid
INNER JOIN roles as r ON ur.roleid = r.id
ORDER BY uid ASC;