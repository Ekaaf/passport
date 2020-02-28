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
     * Dependency injection for News Service
     *
     * @param NewsService $newsService
     */
    public function __construct(NewsService $newsService)
    {
        $this->middleware('auth:api', ['except' => ['login']]);
        $this->newsService = $newsService;
    }

    /**
     * save author
     *
     * @param Request $request
     * @return JSON
     */
    public function saveNews(Request $request)
    {
        $data = (array) json_decode($request->getContent());

        $response = $this->newsService->saveNews($data);
        return Response::json($response, $response->statusCode);
    }

    /**
     * get news list
     * @param Request $request
     * @return JSON
     */
    public function getNews(Request $request)
    {
        $data = $request->all();

        $response = $this->newsService->getNews($data);
        return Response::json($response, $response->statusCode);
    }
}
