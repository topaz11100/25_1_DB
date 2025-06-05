select sum(credits)
from takes inner join course using (course_id)
where ID = 45678
;