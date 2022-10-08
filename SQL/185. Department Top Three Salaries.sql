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
 

# A company's executives are interested in seeing who earns the most money in each of the company's departments. A high earner in a department is an employee who has a salary in the top three unique salaries for that department.

# Write an SQL query to find the employees who are high earners in each of the departments.

# Return the result table in any order.

# ------------------------------------------------------------------------

With t1 
As(
Select *
From (
    Select      distinct a.id,
                a.name,
                b.salary,
                dense_rank() over (partition by a.name order by b.salary desc) r1
    From        Department a
    Inner join  Employee b
    On          a.id = b.departmentId 
    Order by    2, 4) t
Where       r1<=3
)
Select      c.name Department,
            a.name Employee,
            a.salary Salary
From        Employee a
Inner join   t1 c
On          a.departmentId = c.id
And         a.salary = c.salary
Order by    c.name;









