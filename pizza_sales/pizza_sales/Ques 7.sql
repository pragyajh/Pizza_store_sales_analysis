-- Determine the distribution of orders by hour of the day.
select orders.order_time,count(order_details.quantity) from orders
join order_details on orders.order_id=order_details.order_id
group by orders.order_time;