# Table: Visits

# +-------------+---------+
# | Column Name | Type    |
# +-------------+---------+
# | visit_id    | int     |
# | customer_id | int     |
# +-------------+---------+
# visit_id is the primary key for this table.
# This table contains information about the customers who visited the mall.
 

# Table: Transactions

# +----------------+---------+
# | Column Name    | Type    |
# +----------------+---------+
# | transaction_id | int     |
# | visit_id       | int     |
# | amount         | int     |
# +----------------+---------+
# transaction_id is the primary key for this table.
# This table contains information about the transactions made during the visit_id.
 

# Write an SQL query to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

# Return the result table sorted in any order.

# ------------------------------------------------------------------------------------------------

Select          customer_id,
                count(1) count_no_trans
From            Visits a
Left join       Transactions b
On              a.visit_id = b.visit_id
Where           b.transaction_id is null
Group by        1;
























