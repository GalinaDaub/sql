select OrderID, sum(UnitPrice*Quantity*(1-Discount)) as price
from [Order Details]
group by OrderID
having  sum(UnitPrice*Quantity*(1-Discount)) = 2900