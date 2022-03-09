select count(t1.cat_date)
from
	(select *, CASE when ShippedDate > RequiredDate then 'delay'
					else 'in time' end as cat_date
	from Orders
	where year(OrderDate) = 1997) as t1
where t1.cat_date = 'delay'