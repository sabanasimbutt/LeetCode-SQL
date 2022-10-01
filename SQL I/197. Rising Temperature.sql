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


Select          a.id
From            Weather a
Left join       Weather b
On              (a.id - 1) = b.id
Where           b.id is not null
And             (a.temperature - b.temperature) > 0;