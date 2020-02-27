<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Services\NewsService;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Response;

class NewsController extends Controller
{   
    private $newsService;
    /**
     * Create a new controller instance.
     * Dependency injection for Author Service
     * 
     * @return void
     */
    public function __construct(NewsService $newsService)
    {
        $this->newsService = $newsService;
    }

    /**
     * save author
     *
     * @return JSON
     */
    public function saveNews(Request $request)
    {   
        $data = (array) json_decode($request->getContent());
        $messages = [
            'required' => 'The :attribute field is required.',
            'numeric' => 'The :attribute should be number.',
        ];
        $rules = [
            'title' => 'required',
            'content' => 'required',
            'category_id' => 'numeric'
        ];
        $validator = Validator::make($data, $rules, $messages);
        if ($validator->fails()) {
            return Response::json([
                'success' => false,
                'message' => $validator->messages(),
                'statusCode' => Config('constants.status.UNPROCESSABLE_ENTITY')
            ], Config('constants.status.UNPROCESSABLE_ENTITY'));
        }
        $response = $this->newsService->saveNews($data);
        // return Response::json($response);
        return Response::json($response, $response['statusCode']);
    }
}