-- select order, para ordenar valores
-- order by id asc (id crescente)
-- order by id desc (id decrescente)
-- order by id asc, nome desc (prioriza o id)
select * from users where id between 100 and 150
order by nome desc, id asc;