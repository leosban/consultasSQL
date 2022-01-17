-- insert select
-- insere valores em uma table usando outra
insert into profiles 
(bio, description, user_id)
select 
concat('Bio de ', nome), 
concat('Description of ', nome), 
id 
from users;