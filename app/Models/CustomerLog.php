<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;


class CustomerLog extends Model
{
    protected $primaryKey = 'id';
    protected $table = 'customer_logs';
}
