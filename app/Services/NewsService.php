<?php

namespace App\Services;

use App\Models\News;
use App\Services\AuthorService;
use DB;

class NewsService
{   
    private $authorService;

    public function __construct()
    {
        $this->authorService =  new AuthorService();
    }

    public function saveNews($data){

        DB::beginTransaction();
        $result =[];
        try {
            $currentUser = $this->authorService->getAuthorbyUserID(auth()->user()->id);

            $news = new News();
            $news->category_id = $data['category_id'];
            $news->author_id = $currentUser->id;
            $news->title = $data['title'];
            $news->content = $data['content'];
            $news->save();

            $result['success'] = true;
            $result['message'] = Config('constants.news.SAVE');
            $result['statusCode'] = Config('constants.status.CREATED');
        }
        catch (\Exception $ex) {
            DB::rollBack();
            $result['success'] = false;
            $result['message'] = Config('constants.news.ERROR');
            $result['statusCode'] = Config('constants.status.ERROR');

        }

        DB::commit();
        return $result;
    }

    // public function getAuthorbyUserID($userID){

    // }
}