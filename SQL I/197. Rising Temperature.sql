# Table: Weather

# +---------------+---------+
# | Column Name   | Type    |
# +---------------+---------+
# | id            | int     |
# | recordDate    | date    |
# | temperature   | int     |
# +---------------+---------+
# id is the primary key for this table.
# This table contains information about the temperature on a certain day.
 

# Write an SQL query to find all dates' Id with higher temperatures compared to its previous dates (yesterday).

# Return the result table in any order.


# -------------------------------------------------------------------------------------------


Select          b.id
From            Weather a
Inner join      Weather b
On              a.recordDate = (b.recordDate - interval 1 day)
Where           a.temperature < b.temperature;



































