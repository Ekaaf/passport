# Project Details
This is a API implementation project developed using Laravel framwork with mysql database.

# Project Setup

#### Step-1
Clone the file from git
#### Step-2
There is sql file in the folder named sql. vivasoft.sql contains database with data. vivasoft_structure.sql contains only database structure. You can use any of the file according to your liking.
#### Step-3
Run composer update command
#### Step-4
Copy/rename .env.example file as .env. Configre the mysql database
#### Step-5
If you use vivasoft_structure.sql, you can use seeder to generate sample data. Run the following commands :
php artisan db:seed --class=UsersTableSeeder
php artisan db:seed --class=CategoriesTableSeeder
You can find the password for login in app/database/UsersTableSeeder.php

# Running the Project 
#### login url
[http://localhost/vivasoft/api/login](http://localhost/vivasoft/api/login)
 
