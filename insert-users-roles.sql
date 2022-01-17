-- inserindo dados na tabela usersroles, onde há referência de outras
-- tabelas no banco de dados

insert into usersroles (userid, roleid) 
select
id,
(select id from roles order by rand() limit 1) as rule from users;