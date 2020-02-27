<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker\Factory::create();

        for ($i=0; $i<1 ; $i++) { 
        	$type = rand(1,3);
        	$userID = DB::table('users')->insertGetId([
                'email' => $faker->unique()->email,
                'password' => Hash::make('54321'),
                'type' => $type
	        ]);
        	if($type==1){
        		$this->createAuthor($faker,$userID);
        	}
        	else if($type==2){
        		$this->createCustomer($faker,$userID);
        	}
        	else{
        		$this->createAuthor($faker,$userID);
        		$this->createCustomer($faker,$userID);
        	}
	    }
    }

    public function createAuthor($faker,$userID){
    	DB::table('authors')->insert([
            'user_id' => $userID,
            'name' => $faker->name,
            'is_professional' => rand(0,1)
        ]);
    }

    public function createCustomer($faker,$userID){
    	DB::table('customers')->insert([
            'user_id' => $userID,
            'name' => $faker->name,
            'is_paid' => rand(0,1)
        ]);
    }
}
