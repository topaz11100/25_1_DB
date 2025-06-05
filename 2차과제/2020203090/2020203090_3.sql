select distinct course_id, title
from takes inner join course using (course_id)
where ID = 45678
;