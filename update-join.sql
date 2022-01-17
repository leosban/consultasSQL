-- update join
-- select inicial para fazer a seleção do registro
select u.nome, p.bio from users as u
join profiles as p
on p.user_id = u.id
where u.nome = 'Katelyn';

-- update join no registro para adicionar um novo dado
update users as u
join profiles as p
on p.user_id = u.id
set p.bio = ('Bio de Kately Carney');
where u.nome = 'Katelyn';