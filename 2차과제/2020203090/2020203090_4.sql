select sum(credits)
from student natural join takes as temp1, course
where ID = 45678 and temp1.course_id = course.course_id
;