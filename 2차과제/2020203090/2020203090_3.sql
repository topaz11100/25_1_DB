select distinct ID, course_id
from student natural join takes
where ID = 45678
;