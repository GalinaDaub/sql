--перевод в регистры
select
	CompanyName
	,lower(CompanyName)
	,upper(CompanyName)
from Customers