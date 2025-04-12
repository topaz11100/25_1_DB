with
rate(id, score) as (
select title_id, rating
from ratings
),
game(year, title, id) as (
select premiered, primary_title, title_id
from titles
where type = 'videoGame' and premiered >= 2010
),
rated_game(year, title, score) as (
select year, title, score
from game inner join rate using (id)
),
max_score_year(year, score) as (
select year, max(score)
from rated_game
group by year
)
select year, title, score
from rated_game inner join max_score_year using(year, score)
order by year asc, title asc
;