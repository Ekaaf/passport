# Project Details
This is a API implementation project developed using Laravel framwork with mysql database.

# Project Setup

#### Step-1
Clone the file from git
#### Step-2
There is sql file in the folder named sql. vivasoft.sql contains database with data. vivasoft_structure.sql contains only database structure. You can use any of the file according to your liking.
#### Step-3
Run composer update command. Go to http://localhost/vivasoft/ folder. If there is permission error, please give appropiate permission. Then run
php artisan key:generate. <br /> php artisan vendor:publish --provider="Tymon\JWTAuth\Providers\LaravelServiceProvider" <br />php artisan jwt:secret
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

#### news save url
[http://localhost/vivasoft/api/saveNews](http://localhost/vivasoft/api/saveNews) (POST)
 
#### get news url
[http://localhost/vivasoft/api/getNews](http://localhost/vivasoft/api/saveNews)	(GET)

# Running the Project 
When logged in user is author, he can create news. But he cannot get the news list. (type =1)
When logged in user is customer, he can get the news list but he can create news. (type =2)
When logged in user is both author and customer, he can get the news list and also he can create news. (type =3)