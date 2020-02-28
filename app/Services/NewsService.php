<?php

namespace App\Services;

use App\Models\News;
use App\Services\AuthorService;
use App\Services\CustomerLogService;
use App\Services\CustomerService;
use App\Response\SaveResponse;
use App\Response\ListResponse;
use App\Validation\NewsValidate;
use Illuminate\Support\Facades\Validator;
use DB;

class NewsService
{
    /**
     * @var \App\Services\AuthorService
     */
    private $authorService;
    private $newsValidate;
    private $customerLogService;
    private $customerService;

    /**
     * NewsService constructor.
     */
    public function __construct()
    {
        $this->authorService =  new AuthorService();
        $this->customerLogService = new CustomerLogService();
        $this->customerService = new CustomerService();
        $this->newsValidate = new NewsValidate();
    }

    /**
     * validate author
     * save news
     * @param $data
     * @return SaveResponse
     */
    public function saveNews($data)
    {
        // create a saveResponse
        $saveResponse = new SaveResponse();

        // validate data
        $checkValidation = $this->newsValidate->validateNewsForSave($saveResponse,$data);
        if($checkValidation['validate'] === false)
        {
            //response if validation fails
            $saveResponse = $checkValidation['validationError'];
            return $saveResponse;
        }

        try 
        {
            // get current user
            $currentUser = $this->authorService->getAuthorByUserID(auth()->user()->id);

            // save news
            $news = new News();
            $news->category_id = $data['category_id'];
            $news->author_id = $currentUser->id;
            $news->title = $data['title'];
            $news->content = $data['content'];
            $news->save();

            $saveResponse->success = true;
            $saveResponse->message = Config('constants.news.SAVE');
            $saveResponse->statusCode = Config('constants.status.CREATED');
        }
        catch (\Exception $ex) 
        {
            $saveResponse->success = false;
            $saveResponse->message = Config('constants.news.ERROR');
            $saveResponse->statusCode = Config('constants.status.ERROR');

        }

        return $saveResponse;
    }

    /**
     * get news list
     * @param $data
     * @return ListResponse
     */
    public function getNews($data)
    {
        // assign all the data from get request
        $isPaid = $data['is_paid'] ?? null;
        $categoryID = $data['category_id'] ?? null;
        $title = $data['title'] ?? null;
        $createdDate = $data['created_date'] ?? null;

        // get customer info of current user
        $customer = $this->customerService->getCustomerByUserID(auth()->user()->id);

        // create ListResponse object
        $listResponse = new ListResponse();

        // check if the number of request limit is allowed for the current user.
        $checkRequest = $this->customerLogService->checkNewsRequestPerDay(auth()->user()->id, $listResponse, $customer);
        if($checkRequest['allowed'] === false)
        {
            // return response
            $listResponse = $checkRequest['checkRequest'];
            return $listResponse;
        }

        try 
        {
            
            // create query
            $query = DB::table('news')->join('authors', 'news.author_id', '=', 'authors.id')
                                      ->join('categories', 'news.category_id', '=', 'categories.id');

            // create condition
            if($customer['is_paid'] === 0) 
            {
                $query->where('authors.is_professional',$customer['is_paid']);
            }
            else if($customer['is_paid'] == 1) 
            {
                if($isPaid == "true"){
                    $query->where('authors.is_professional',$customer['is_paid']);
                }
            }

            if($categoryID != null && $categoryID!="")
            {
                $query->where('categories.id',$categoryID);
            }

            if($title !=null && $title!="")
            {
                $query->where('news.title',$title);
            }

            if($createdDate !=null && $createdDate!="")
            {
                $query->whereDate('news.created_at',$createdDate);
            }

            $result = $query->get()->take(Config('constants.news.limit'));

            $listResponse->success = true;
            $listResponse->message = Config('constants.news.GET_DATA');
            $listResponse->data = $result;
            $listResponse->statusCode = Config('constants.status.OK');
        }
        catch (\Exception $ex) 
        {
            $listResponse->success = false;
            $listResponse->message = Config('constants.news.ERROR');
            $listResponse->statusCode = Config('constants.status.ERROR');

        }

        return $listResponse;
    }
}
