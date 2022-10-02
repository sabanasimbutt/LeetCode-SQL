# Table: Orders

# +-----------------+----------+
# | Column Name     | Type     |
# +-----------------+----------+
# | order_number    | int      |
# | customer_number | int      |
# +-----------------+----------+
# order_number is the primary key for this table.
# This table contains information about the order ID and the customer ID.
 

# Write an SQL query to find the customer_number for the customer who has placed the largest number of orders.

# The test cases are generated so that exactly one customer will have placed more orders than any other customer.


# --------------------------------------------------------------------------------------------------------------


Select      customer_number 
From        (
            Select      customer_number, count(1) as total_orders
            From        Orders
            Group by    1
            Having      count(1) =
                                (   
                                Select      max(total_orders)
                                From        (
                                            Select      customer_number, count(1) as total_orders
                                            From        Orders 
                                            Group by    1
                                            Order by    2 desc ) t) ) b ;
                                            
                                            
# Another solution

Select      customer_number
From        Orders
Group by    1
Order by    count(1) desc 
Limit       1;
















