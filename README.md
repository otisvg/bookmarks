# Bookmark Manager

An app to manage bookmarks and access your favourite websites. This may evolve into something more specific over time, I'll see where it takes me. Fridge manager, anyone 😅?

Tech: Sinatra, RSpec, Capybara, PostgreSQL

Users stories

```
As as a user
So that I can access my favourite websites
I would like to see a list of bookmarks
```

```
As as a user
So that I can add more of my favourite websites
I would like to create bookmarks
```

## Database Setup

- Connect to psql
- Create the development database using the psql command CREATE DATABASE bookmark_manager;
- Create the test database using the psql command CREATE DATABASE bookmark_manager_test;
- Connect to the development database using the pqsl command \c bookmark_manager;
- Run the query saved in the file 01_create_bookmarks_table.sql
- Connect to the test database using the pqsl command \c bookmark_manager_test;
- Run the query saved in the file 01_create_bookmarks_table.sql
