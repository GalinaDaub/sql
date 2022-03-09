select FullName, DATEDIFF(day, t3.max_date, t3.min_date) as diff_date
from
	(select concat(LastName, ' ', FirstName) as FullName, min(OrderDate) as min_date, max(OrderDate) as max_date
	from Employees as t1 inner join Orders as t2 on t1.EmployeeID = t2.EmployeeID
	group by concat(LastName, ' ', FirstName)) as t3
order by DATEDIFF(day, t3.max_date, t3.min_date) 
