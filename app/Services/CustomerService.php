<?php

namespace App\Services;

use App\Models\Customer;
use DB;

class CustomerService
{
    /**
     * @param $userID
     * @return mixed
     */
    public function getCustomerByUserID($userID)
    {
        return Customer::where('user_id',$userID)->first();
    }
}
