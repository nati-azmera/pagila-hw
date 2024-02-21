/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

select first_name, last_name, sum(amount) as "sum"
from staff 
join payment on staff.staff_id = payment.staff_id
where extract(month from payment_date) = 1
group by first_name, last_name;
