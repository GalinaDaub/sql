select sum(UnitPrice*Quantity*(1-Discount))
from [Order Details]
where ProductID in (select ProductID
					from Products
					where CategoryID = 1)