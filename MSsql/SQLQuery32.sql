select FullName, mnth, sum(ord_cnt) as sum_cnt
	from
		(select month(OrderDate) as mnth, concat(LastName, ' ', FirstName) as FullName, count(distinct OrderID) as ord_cnt
		from Employees as t1 inner join Orders as t2 on t1.EmployeeID = t2.EmployeeID
		group by month(OrderDate), concat(LastName, ' ', FirstName)) as t3
	group by mnth, FullName
	order by sum(ord_cnt) desc, mnth desc