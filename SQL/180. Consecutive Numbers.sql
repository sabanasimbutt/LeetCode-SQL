# Table: Logs

# +-------------+---------+
# | Column Name | Type    |
# +-------------+---------+
# | id          | int     |
# | num         | varchar |
# +-------------+---------+
# id is the primary key for this table.
# id is an autoincrement column.
 

# Write an SQL query to find all numbers that appear at least three times consecutively.

# Return the result table in any order.

# ----------------------------------------------------------------------




with table1 as (
Select      a.num, 
            a.id id1,
            b.id id2,
            row_number() over (order by a.id) r_num
From        Logs a
Left join   Logs b
On          a.id-1 = b.id
Where       a.num = b.num)

Select      distinct a.num ConsecutiveNums
From        table1 a
Inner join  table1 b
On          a.r_num = b.r_num-1      
And         a.num = b.num
And         a.id1 = b.id2
;







