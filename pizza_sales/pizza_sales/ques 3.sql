-- Identify the highest-priced pizza.
SELECT 
    pizza_types.name, pizzas.price AS max_price
FROM
    pizzas
        JOIN
    pizza_types ON pizza_types.pizza_type_id = pizzas.pizza_type_id
ORDER BY pizzas.price DESC
LIMIT 1;