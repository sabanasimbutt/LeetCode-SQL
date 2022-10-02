# Table: Employee

# +-------------+------+
# | Column Name | Type |
# +-------------+------+
# | id          | int  |
# | salary      | int  |
# +-------------+------+
# id is the primary key column for this table.
# Each row of this table contains information about the salary of an employee.
 

# Write an SQL query to report the nth highest salary from the Employee table. If there is no nth highest salary, the query should report null.

# The query result format is in the following example.

#------------------------------------------------------------------------------


CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN

    Set N = N - 1;

  RETURN (
      
      Select        distinct salary
      From          Employee
      Order by      1 desc
      Limit         N, 1
      
  );
END


# Another solution


CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      
      Select        if((select count(distinct salary) from Employee )>=N, salary, null ) salary
      From          (
                      Select        distinct salary
                      From          Employee
                      Order by      1 desc                    
                      Limit         N) t
      Order by      salary
      Limit         1
      
  );
END










