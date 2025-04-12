with
leo(person_id) as (
select person_id
from people
where name like '%Leonardo%' and born = 1974
),
leo_title_id(title_id) as(
select title_id
from crew inner join leo using (person_id) 
),
leo_work(title_id, title) as(
select title_id, primary_title
from leo_title_id inner join titles using (title_id) 
)
select title, votes
from leo_work inner join ratings using(title_id)
order by votes desc
limit 10
;