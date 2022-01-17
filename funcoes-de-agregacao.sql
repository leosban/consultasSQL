-- funções de agregação com o MySql
-- função para saber o maior salário, com a função max()
-- menor salario com a função min(), media de salario com a função avg(), podemos somar coisas com o sum(), para retornar o número de registro que existe na tabela usamos a função count();
SELECT 
max(salary) as max_salary,
min(salary) as min_salary,
avg(salary) as avg_salary,
sum(salary) as sum_salaray,
count(salary) as count_salary
FROM users
-- where nome = 'Carly';

SELECT
u.nome,
max(u.salary) as max_salary,
min(u.salary) as min_salary,
avg(u.salary) as avg_salary,
sum(u.salary) as sum_salary,
COUNT(u.id) as total
from users u
left join profiles as p
on p.user_id = u.id
GROUP BY u.nome
ORDER BY total DESC;