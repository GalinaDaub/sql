--��������� �������
select LastName,Firstname, CONCAT(LastName,' ',Firstname) as ContactName
from Employees

--�������������
select ContactTitle, replace(ContactTitle,'Owner','Business owner')
from Customers

--������� ����������� �������
select ContactTitle, SUBSTRING(ContactTitle, 12, 7)
from Customers
where ContactTitle = 'Accounting Manager'