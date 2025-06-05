select ID, name
from instructor inner join
(
select distinct ID
from instructor
except
select distinct ID
from teaches
)
using (ID)
;