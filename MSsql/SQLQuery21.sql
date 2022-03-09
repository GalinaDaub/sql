select
unitprice
,left(unitprice,2) --вырезает заданное количество символов слева
,right(unitprice,2) --вырезает заданное количество символов справа
from Products

--длина строки
select ContactName, len(ContactName)
from Customers