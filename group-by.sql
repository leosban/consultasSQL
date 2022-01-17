-- quando usamos group by os registros tem que ser agregáveis, ou seja
-- não podemos agrupar registros com valores diferentes.
-- Podemos usar a função COUNT(), que vai nos retornar quantos valores
-- nós temos por agrupamento
select id, nome, count(id) as total from users
GROUP BY nome
order by total desc;

select u.nome, p.bio, count(u.id) as total from users as u
left join profiles as p
on p.user_id = u.id
GROUP BY nome
ORDER BY total desc