<?php

namespace App\Services;

use App\Models\Author;
use DB;

class AuthorService
{
    /**
     * @param $userID
     * @return author array
     */
    public function getAuthorByUserID($userID)
    {
        return Author::where('user_id',$userID)->first();
    }
}
