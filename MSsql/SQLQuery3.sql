--соединить столбцы
select LastName,Firstname, CONCAT(LastName,' ',Firstname) as ContactName
from Employees

--Переименовать
select ContactTitle, replace(ContactTitle,'Owner','Business owner')
from Customers

--Извлечь определённые символы
select ContactTitle, SUBSTRING(ContactTitle, 12, 7)
from Customers
where ContactTitle = 'Accounting Manager'