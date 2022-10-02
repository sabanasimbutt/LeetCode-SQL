# Table: Followers

# +-------------+------+
# | Column Name | Type |
# +-------------+------+
# | user_id     | int  |
# | follower_id | int  |
# +-------------+------+
# (user_id, follower_id) is the primary key for this table.
# This table contains the IDs of a user and a follower in a social media app where the follower follows the user.
 

# Write an SQL query that will, for each user, return the number of followers.

# Return the result table ordered by user_id.


# ---------------------------------------------------------------------------------------------


Select          user_id,
                count(1) followers_count
From            Followers
Group by        1
Order by        1;