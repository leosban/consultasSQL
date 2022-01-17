-- limit -> limita a quantidade de valores
-- offset -> desloca para a próxima página, ou seja, andando com o ponteiro
select * from users 
where id between 50 and 100 
order by id asc 
limit 2 offset 2;

select * from users 
where id between 50 and 100 
order by id asc 
limit 7, 3; -- podemos usar esse short hand, onde o offset primeiro limit depois 