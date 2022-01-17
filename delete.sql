-- delete -> apaga registros da tabela
-- é controlado por where
-- Forma mais segura para deletar é selecionando a primary key ou valor unico da tabela
-- nunca esquecer do where quando virmos a palavra delete no sql

DELETE FROM users WHERE id BETWEEN 10 AND 19;

-- Sempre usar o SELECT para garantir que estamos apagando
-- os valores corretos
select * from users where id BETWEEN 10 AND 19;