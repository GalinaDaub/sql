select
unitprice
,left(unitprice,2) --�������� �������� ���������� �������� �����
,right(unitprice,2) --�������� �������� ���������� �������� ������
from Products

--����� ������
select ContactName, len(ContactName)
from Customers