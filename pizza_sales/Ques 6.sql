-- Join the necessary tables to find the total quantity of each pizza category ordered.
select pizza_types.category ,count(order_details.quantity) as Total from 
pizza_types join pizzas 
On pizza_types.pizza_type_id=pizzas.pizza_type_id
join order_details
On order_details.pizza_id=pizzas.pizza_id group by pizza_types.category order by Total;