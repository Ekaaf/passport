<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;


class News extends Model
{	
	protected $primaryKey = 'id';
    protected $table = 'news';
    protected $category_id;
    protected $author_id;
    public $title;
    public $content;
    public $created_at;
    public $updated_at;
    protected $fillable = ['category_id', 'author_id'];
}
