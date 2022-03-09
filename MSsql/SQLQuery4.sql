--select distinct Country, len(Country) as len_country
--from Customers
--where len(Country) >= 10
--order by len(Country) desc

select ContactTitle, SUBSTRING(ContactTitle, 7, 19) as sbstr
from Customers
where ContactTitle in ('Owner/Marketing Assistant')
--group by Customers