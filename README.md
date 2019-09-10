### 1. Creating User Stories

As a user of the program
So that I can save my bookmarks
I would like to add bookmarks to my list of bookmarks

### To set up the database

Connect to 'psql' and create the 'bookmark_manager' database, bookmark_manager_test databases:

'''
CREATE DATABASE bookmark_manager;
CREATE DATABASE bookmark_manager_test;
'''


To set up the appropriate tables, connect to each database in 'psql' and run the SQL scripts in the 'db/migrations' folder in the given order.
