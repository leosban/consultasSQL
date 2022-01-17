-- Seleção com filtro e operador and
select * from users where created_at <= '2020-06-12 22:36:48' and created_at >= '2019-09-04 01:46:33';
-- Seleção com filtro e operador between (seleciona um range entre datas)
select * from users where created_at between '2019-09-04 01:46:33' and '2020-06-12 22:36:48';
-- Seleção com filtro e operador between (seleciona um range entre ids)
select * from users where id between 60 and 145;
