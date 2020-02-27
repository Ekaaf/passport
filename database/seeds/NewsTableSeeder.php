<?php

use Illuminate\Database\Seeder;

class NewsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {	
    	$categoryIDs = DB::table('categories')->pluck('id');
    	$authorIDs = DB::table('authors')->pluck('id');
        $faker = Faker\Factory::create();
        for ($i=0; $i<50 ; $i++) { 
        	DB::table('news')->insert([
        		'category_id' => $faker->randomElement($categoryIDs),
        		'author_id' => $faker->randomElement($authorIDs),
	            'title' => "Title".$i,
	            'content' => $faker->realText
	        ]);
        }
    }
}
