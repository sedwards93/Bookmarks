bundle
```	```

### To set up the database

Connect to `psql` and create the `bookmark_manager` database:

```
CREATE DATABASE bookmark_manager;
```

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

### To run the Bookmark Manager app:	### To run the Bookmark Manager app:


```	```
rackup -p 3000	rackup -p 3000
```	```


To view bookmarks, navigate to `localhost:3000/bookmarks`	To view bookmarks, navigate to `localhost:3000/bookmarks`.


### To run tests:	### To run tests:



As a User
So that I can make changes to my list of bookmarks,
I would like to be able to delete bookmarks