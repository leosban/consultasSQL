-- update -> atualizar registros na base de dados
-- temos que passar os valores que queremos atualizar nos registros

UPDATE users SET nome = 'Aluno', 
sobrenome = 'Aplicado'
where id=41;

SELECT * FROM users where id=41;