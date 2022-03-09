select t4.month_date, t4.year_date, sum(t4.price) as sum_price
		from
			(select month(OrderDate) as month_date, 
					year(OrderDate) as year_date,
					t2.UnitPrice*Quantity*(1-Discount) as price
			from Products as t1 inner join [Order Details] as t2 on t1.ProductID = t2.ProductID
								inner join Orders as t3 on t2.OrderID = t3.OrderID
			where ProductName like 'Chef Anton%') as t4
		group by  t4.year_date, t4.month_date
		order by sum(t4.price) desc