<?php

namespace App\Validation;

use Illuminate\Support\Facades\Validator;
use App\Response\SaveResponse;

class NewsValidate
{
    /**
     * @var
     */
    private $result;

    /**
     * NewsValidate constructor.
     */
    public function __construct()
    {
        $this->result['validate'] = true;
    }

    /**
     * @param SaveResponse $saveResponse
     * @param $data
     * @return mixed
     */
    public function validateNewsForSave(SaveResponse $saveResponse, $data)
    {
        // validation custom message
        $messages = [
            'required' => 'The :attribute field is required.',
            'numeric' => 'The :attribute should be number.',
        ];

        // validation custom rule
        $rules = [
            'title' => 'required',
            'content' => 'required',
            'category_id' => 'required|numeric'
        ];

        // check validator
        $validator = Validator::make($data, $rules, $messages);
        if ($validator->fails()) {
            $saveResponse->success = false;
            $saveResponse->message = $validator->messages();
            $saveResponse->statusCode = Config('constants.status.UNPROCESSABLE_ENTITY');

            $this->result['validate'] = false;
            $this->result['validationError'] = $saveResponse;
        }

        return $this->result;

    }
}
