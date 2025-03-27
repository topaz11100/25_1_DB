select distinct name
from student inner join takes using(ID)
where semester = 'Spring'
;