select  
	distinct concat(LastName, ' ', FirstName) as FullName
from Customers as t1 inner join Orders as t2 on t1.CustomerID = t2.CustomerID
					inner join Employees as t3 on t2.EmployeeID = t3.EmployeeID
where ContactName = 'Martín Sommer'