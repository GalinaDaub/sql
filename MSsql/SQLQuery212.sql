select datepart(month, OrderDate) as month_date, count(*) as cnt
from Orders
where year(OrderDate) = 1996 and ShipCountry = 'USA'
group by datepart(month, OrderDate)