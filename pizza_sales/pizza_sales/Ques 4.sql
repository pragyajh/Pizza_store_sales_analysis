-- Identify the most common pizza size ordered.
select count(order_details.quantity),pizzas.size from order_details join pizzas
on order_details.pizza_id=pizzas.pizza_id group by pizzas.size;