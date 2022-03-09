--Какое количество платежей было совершено--
select count(*)
from orders
--9465--

--Какое количество товаров находится в категории “Игрушки”--
select count(p.product_id), c.category 
from category c 
join product p on c.category_id = p.category_id 
group by c.category
having category like '%Игрушки%'
--1--

--В какой категории находится больше всего товаров--
select count(p.product_id), c.category 
from category c 
join product p on c.category_id = p.category_id 
group by c.category
order by count(p.product_id) desc
--музыка--

--Сколько “Черепах” купила Williams Linda?--
select c2.first_name, c2.last_name, c.category, count(p.product_id)
from category c 
join product p on c.category_id = p.category_id 
join order_product_list opl on p.product_id = opl.product_id 
join orders o on opl.order_id = o.order_id 
join customer c2 on o.customer_id = c2.customer_id 
where c2.first_name = 'Linda' 
	and c2.last_name = 'Williams'
	and c.category = 'Черепа'
group by c2.first_name, c2.last_name, c.category
--2--

--С кем живет Williams Linda?--
select *
from customer c 
join address a on c.address_id = a.address_id 
join staff s on a.address_id = s.address_id 
--Mitchell Janet--