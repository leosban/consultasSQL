-- Seleciona a base de dados
use escola;
-- Mostra as tabelas da base de dados
show tables;
-- Descreve as colunas da tabela
describe users;
-- Inserir registros na base de dados
-- Para adicionar mais de um registro por vez, usamos a ',' no final dos VALUES
INSERT INTO users (nome, sobrenome, email, password_hash) VALUES ('Isis', 'Caroline', 'isiscaroline@email.com', '1234567890');