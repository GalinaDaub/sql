select count(*)
from
	(select ContactName, ContactTitle, 
		case when ContactTitle like '%Marketing%' then 'Marketing'
			when ContactTitle like '%Sales%' then 'Sales' 
			else 'Other' end as prof_group
	from Customers) as t1
where prof_group = 'Sales'