-- usaremos a função rand() para gerar um número aleatório
-- juntamente com o round para diminuir a quantidade de números 
-- gerados
-- select round(rand() * 10000, 2);
-- atualizaremos o salário de todos os registros na tabela users, com 
-- update, configurando o salário aleatório
-- UPDATE users SET salary = 

UPDATE `escola`.`users` SET `salary` = round(rand() * 10000, 2);

-- select de nome e salario da tabela users onde os salários estão entre 1000 e 3000 ordenados pelos nomes em ordem crescente.
select nome, salary 
from users 
where salary between 1000 and 3000
order by nome asc;