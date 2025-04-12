with
director as (
select distinct person_id
from crew
where category = 'director'
),
died_person as (
select distinct person_id, name, died - born as age
from people
where born is not null and died is not null
)
select name, age
from director inner join died_person on director.person_id = died_person.person_id
order by age desc, name asc
limit 20
; 