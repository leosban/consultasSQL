-- 1) Insira 5 usuários
INSERT INTO users (nome, sobrenome, email, password_hash) VALUES
('Leonidas', 'Bandeira', 'leonidasbandeira@email.com', round(rand() * 1000)),
('Leony', 'Bandeira', 'leonybandeira@email.com', round(rand() * 1000)),
('Leonidas', 'Junior', 'leonidasjunior1@email.com', round(rand() * 1000)),
('Anelice', 'Melo', 'anelicemelo@email.com', round(rand() * 1000)),
('Julia', 'Bandeira', 'juliabandeira@email.com', round(rand() * 1000));
-- Inserção do salário com update
UPDATE users SET salary = round(rand() * 10000, 2) WHERE id IN (189, 190, 191, 192, 193);
-- 2) Insira 5 perfís para os usuários inseridos
INSERT INTO profiles (bio, description, user_id)
VALUES
('Bio of', 'Description of', 193),
('Bio of', 'Description of', 192),
('Bio of', 'Description of', 191),
('Bio of', 'Description of', 190),
('Bio of', 'Description of', 189);
-- 3) Insira permissões (roles) para os usuários inseridos
INSERT INTO usersroles (userid, roleid) VALUES
(189, 4), (190, 5), (191, 6), (192, 7), (193, 5);
-- 4) Selecione os últimos 5 usuários por ordem decrescente
SELECT * from users ORDER BY id DESC LIMIT 5;
-- 5) Atualize o último usuário inserido
UPDATE users SET sobrenome = 'Pinho' WHERE id = 193;
-- 6) Remova uma permissão de algum usuário
DELETE FROM usersroles WHERE userid = 193 AND roleid = 5;
-- 7) Remova um usuário que tem a permissão "PUT"
-- SELECT u.id , u.nome, r.name 
DELETE u
FROM users AS u
INNER JOIN usersroles AS ur ON u.id = ur.userid
INNER JOIN roles r ON ur.roleid = r.id
WHERE r.name = 'PUT' AND u.id = 56;
-- 8) Selecione usuários com perfís e permissões (obrigatório)
SELECT u.id , u.nome, r.name, p.bio
FROM users AS u
INNER JOIN usersroles AS ur ON u.id = ur.userid
INNER JOIN roles r ON ur.roleid = r.id
INNER JOIN profiles AS p ON p.user_id = u.id
-- 9) Selecione usuários com perfís e permissões (opcional)
-- SELECT u.id , u.nome, r.name, p.bio
FROM users AS u
LEFT JOIN usersroles AS ur ON u.id = ur.userid
LEFT JOIN roles r ON ur.roleid = r.id
LEFT JOIN profiles AS p ON p.user_id = u.id
-- 10) Selecione usuários com perfís e permissões ordenando por salário
SELECT u.id , u.nome, r.name, p.bio, u.salary
FROM users AS u
LEFT JOIN usersroles AS ur ON u.id = ur.userid
LEFT JOIN roles r ON ur.roleid = r.id
LEFT JOIN profiles AS p ON p.user_id = u.id
ORDER BY u.salary DESC;
