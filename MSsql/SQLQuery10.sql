select round(sum(price), 0)
from
	(select year(OrderDate) as year_date, CategoryName, t3.UnitPrice*Quantity*(1-Discount) as price
	from Categories as t1 inner join Products as t2 on t1.CategoryID = t2.CategoryID
						inner join [Order Details] as t3 on t2.ProductID = t3.ProductID
						inner join Orders as t4 on t3.OrderID = t4.OrderID
	where CategoryName = 'Condiments' and year(OrderDate) = 1996) as t5