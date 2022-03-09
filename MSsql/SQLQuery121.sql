

	select datepart(week, OrderDate) as week_date, sum(Quantity*UnitPrice*(1-Discount)) as price
	from [Order Details] as t1 inner join Orders as t2 on t1.OrderID = t2.OrderID
	where year(t2.OrderDate) = 1998
	group by datepart(week, OrderDate)
	order by sum(Quantity*UnitPrice*(1-Discount)) desc, datepart(week, OrderDate)
