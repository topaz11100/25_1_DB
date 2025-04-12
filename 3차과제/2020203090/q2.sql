select primary_title, premiered, runtime_minutes
from titles
where genres like '%Documentary%' and runtime_minutes is not null 
order by runtime_minutes, primary_title
limit 10
;