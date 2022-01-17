-- like (valor parecido)
-- executando query com todos os valores que TERMINAM com a letra ''
select * from users where nome like '%o';
-- executando query com todos os valores que COMEÇAM com a letra ''
select * from users where nome like 'h%y';
-- executando query onde no MEIO ou não da string contenha ''
select * from users where nome like '%mo%';
-- executando query com underline, que faz referência a um caractere
select * from users where nome like '______';