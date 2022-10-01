# Table: Views

# +---------------+---------+
# | Column Name   | Type    |
# +---------------+---------+
# | article_id    | int     |
# | author_id     | int     |
# | viewer_id     | int     |
# | view_date     | date    |
# +---------------+---------+
# There is no primary key for this table, it may have duplicate rows.
# Each row of this table indicates that some viewer viewed an article (written by some author) on some date. 
# Note that equal author_id and viewer_id indicate the same person.
 

# Write an SQL query to find all the authors that viewed at least one of their own articles.

# Return the result table sorted by id in ascending order.


# ---------------------------------------------------------------------------------------------------


Select          distinct author_id id
From            Views
Where           author_id = viewer_id
Order by        1;