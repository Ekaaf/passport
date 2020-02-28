<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;


class Customer extends Model
{
    protected $primaryKey = 'id';
    protected $table = 'customers';
    public $user_id;
    public $name;
    public $is_paid;
    public $created_at;
    public $updated_at;
}
