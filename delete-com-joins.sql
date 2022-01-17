-- apaga registros com join
select u.nome, p.bio from users as u
left join profiles as p
on p.user_id = u.id
where u.nome = 'Katelyn';


delete p, u from users as u
left join profiles as p
on p.user_id = u.id
where u.nome = 'Katelyn';

