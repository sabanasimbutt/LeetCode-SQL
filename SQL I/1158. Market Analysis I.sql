# Table: Users

# +----------------+---------+
# | Column Name    | Type    |
# +----------------+---------+
# | user_id        | int     |
# | join_date      | date    |
# | favorite_brand | varchar |
# +----------------+---------+
# user_id is the primary key of this table.
# This table has the info of the users of an online shopping website where users can sell and buy items.
 

# Table: Orders

# +---------------+---------+
# | Column Name   | Type    |
# +---------------+---------+
# | order_id      | int     |
# | order_date    | date    |
# | item_id       | int     |
# | buyer_id      | int     |
# | seller_id     | int     |
# +---------------+---------+
# order_id is the primary key of this table.
# item_id is a foreign key to the Items table.
# buyer_id and seller_id are foreign keys to the Users table.
 

# Table: Items

# +---------------+---------+
# | Column Name   | Type    |
# +---------------+---------+
# | item_id       | int     |
# | item_brand    | varchar |
# +---------------+---------+
# item_id is the primary key of this table.
 

# Write an SQL query to find for each user, the join date and the number of orders they made as a buyer in 2019.

# Return the result table in any order.


# --------------------------------------------------------------------------------------------------


Select          a.user_id buyer_id, 
                a.join_date,
                sum(if(year(b.order_date)='2019',1,0)) orders_in_2019
From            Users a
Left join      Orders b
On              a.user_id = b.buyer_id
Group by        1, 2
Order by        1;




























