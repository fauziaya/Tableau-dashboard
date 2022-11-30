/* 
	find the first item ordered
*/
select category, 
	min(order_date) first_order
from sales
group by 1


/* 
	find total revenue per state
*/
select State, 
	count(total) revenue_per_state
from sales
group by 1
order by total desc


/* 
	find total revenue per category
*/
select category, 
	count(total) revenue_per_category
from sales
group by 1
order by total desc


/* 
	find category most ordered
*/
select category,
	count(qty_ordered) sum_category_ordered
from sales
group by 1
order by 2 desc


/* 
	find total revenue per year
*/
select year, 
	count(total) revenue_per_year
from sales
group by 1
order by total desc


/* 
	find payment method most used
*/
select payment_method, 
	count(qty_ordered) payment_method_used
from sales 
group by 1
order by 2 desc


/* 
	find profit each category
*/
select category,
(total-discount_amount) profit
from sales
group by 1
order by 2 desc


/* 
	find total profit per month
*/
select month,
sum(total-discount_amount) profit
from sales
group by 1
order by 2 desc


/* 
	find most category ordered by female
*/
select category,
	Gender,
	count(qty_ordered) category_ordered
from sales
where Gender = 'F'
group by 1
order by 3 desc


/* 
	count total revenue based on age
*/
select age,
	count(total) revenue_by_age
from sales
group by 1
order by 2