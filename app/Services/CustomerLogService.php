<?php

namespace App\Services;

use App\Models\CustomerLog;
use App\Response\ListResponse;
use Carbon\Carbon;
use DB;

class CustomerLogService
{
    /**
     * @var
     */
    private $result;
    private $customerService;

    /**
     * CustomerLogService constructor.
     */
    public function __construct()
    {
        $this->result['allowed'] = true;
        $this->customerService = new CustomerService();
    }

    /**
     * check request per day
     * @param $userID
     * @param ListResponse $listResponse
     * @return mixed
     */
    public function checkNewsRequestPerDay($userID, ListResponse $listResponse, $customer)
    {
        // get current date
        $today = Carbon::now();
        $today = $today->toDateString();

        // get current date log for current customer
        $query = DB::table('customer_logs')->select('customer_logs.id as customerLogID','customer_logs.count','customers.is_paid')
                                           ->join('customers', 'customers.id', '=', 'customer_logs.customer_id')
                                           ->where('customers.user_id',$userID)
                                           ->whereDate('customer_logs.created_at',$today);
        $result = $query->first();


        if($result === null)
        {
            // insert current date log count
            $customerLog = new CustomerLog();
            $customerLog->customer_id = $customer->id;
            $customerLog->date = $today;
            $customerLog->count = 1;
            // dd($customerLog);
            $customerLog->save();
        }
        else{
            // check if the customer is paid and check number of request for today
            if($result->count >= 10 && $result->is_paid == 0)
            {
                $this->result['allowed'] = false;

                $listResponse->success = false;
                $listResponse->message = Config('constants.customer_log.FREE_CUSTOMER');
                $listResponse->statusCode = Config('constants.status.ERROR');
            }
            else if($result->count >= 100 && $result->is_paid == 1)
            {
                $this->result['allowed'] = false;

                $listResponse->success = false;
                $listResponse->message = Config('constants.customer_log.PAID_CUSTOMER');
                $listResponse->statusCode = Config('constants.status.ERROR');
            }
            else
            {
                // increment count
                CustomerLog::find($result->customerLogID)->increment('count');
            }
        }
        $this->result['checkRequest'] = $listResponse;
        return $this->result;
    }
}
