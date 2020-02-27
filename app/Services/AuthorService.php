<?php

namespace App\Services;

use App\Models\Author;
use DB;

class AuthorService
{   

    public function getAuthorbyUserID($userID){
        $author = Author::where('user_id',$userID)->first();
        return $author;
    }

    public function getAuthorID($userID){
        
    }
}