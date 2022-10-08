# Table: Employee

# +--------------+---------+
# | Column Name  | Type    |
# +--------------+---------+
# | id           | int     |
# | name         | varchar |
# | salary       | int     |
# | departmentId | int     |
# +--------------+---------+
# id is the primary key column for this table.
# departmentId is a foreign key of the ID from the Department table.
# Each row of this table indicates the ID, name, and salary of an employee. It also contains the ID of their department.
 

# Table: Department

# +-------------+---------+
# | Column Name | Type    |
# +-------------+---------+
# | id          | int     |
# | name        | varchar |
# +-------------+---------+
# id is the primary key column for this table.
# Each row of this table indicates the ID of a department and its name.
 

# Write an SQL query to find employees who have the highest salary in each of the departments.

# Return the result table in any order.

# ------------------------------------------------------------------------------------------------------


With t1 as
(Select     b.name name, max(a.salary) salary
From        Employee a
Inner join  Department b
On          a.departmentId = b.id
Group by    1)

Select      b.name Department,
            a.name Employee,
            a.Salary
            
            
from        Employee a
Inner join  Department b
On          a.departmentId = b.id
Inner join  t1 c
On          b.name = c.name
And         a.salary = c.salary;















