select ID, sum(credits)
from takes, course
where takes.course_id = course.course_id
group by ID
;