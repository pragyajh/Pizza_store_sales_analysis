-- List the top 5 most ordered pizza types along with their quantities.
select pizza_types.name ,count(order_details.quantity) as Total_count
from pizza_types join pizzas
on pizza_types.pizza_type_id=pizzas.pizza_type_id
join order_details
on order_details.pizza_id=pizzas.pizza_id group by pizza_types.name order by Total_count DESC ;
