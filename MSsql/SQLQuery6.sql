select min(t4.price)
from 
	(select distinct t3.OrderID, ContactName, UnitPrice*Quantity*(1-Discount) as price
	from Customers as t1 inner join Orders as t2 on t1.CustomerID = t2.CustomerID
						inner join [Order Details] as t3 on t2.OrderID = t3.OrderID
	where ContactName = 'Jose Pavarotti') as t4