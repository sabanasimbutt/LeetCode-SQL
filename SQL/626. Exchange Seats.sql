# Table: Seat

# +-------------+---------+
# | Column Name | Type    |
# +-------------+---------+
# | id          | int     |
# | student     | varchar |
# +-------------+---------+
# id is the primary key column for this table.
# Each row of this table indicates the name and the ID of a student.
# id is a continuous increment.
 

# Write an SQL query to swap the seat id of every two consecutive students. If the number of students is odd, the id of the last student is not swapped.

# Return the result table ordered by id in ascending order.

#-------------------------------------------------------------------



With        t1
As          
(Select     case when id%2=0 then id-1 else id+1 end id1, 
            student
From        Seat)
 
Select      ifnull(b.id1, a.id) id, ifnull(b.student, a.student) student
From        Seat a
Left join   t1 b
On          a.id = b.id1;








