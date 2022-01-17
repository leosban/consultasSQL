-- insert-ignore
-- ignora todo e qualquer tipo de erro que ocorrer na consulta

insert ignore into usersroles (userid, roleid) 
select
id,
(select id from roles order by rand() limit 1) as rule from users
order by rand() limit 5;