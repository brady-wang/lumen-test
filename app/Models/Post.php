<?php
/**
 * Created by PhpStorm.
 * User: mac
 * Date: 2019/4/2
 * Time: 19:34
 */

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
	protected $primaryKey = "id";


	public function user()
	{
		return $this->belongsTo("App\Models\Users","user_id",'id');
	}

	//根据post获取文章的评论
	public function comments()
	{
		return $this->hasMany("App\Models\Comment","post_id","id");
	}
}