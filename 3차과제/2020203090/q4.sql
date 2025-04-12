with
id_name(id, name) as (
select person_id, name
from people
),
actor(id, count) as (
select person_id, count(title_id)
from crew
where category = 'actor' or category = 'actress'
group by person_id
)
select name, count
from actor inner join id_name using (id)
order by count desc, name asc
limit 20
;