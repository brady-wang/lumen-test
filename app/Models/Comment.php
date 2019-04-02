<?php
/**
 * Created by PhpStorm.
 * User: mac
 * Date: 2019/4/2
 * Time: 19:35
 */

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
	protected $primaryKey = "comment_id";
	protected $fillable=['content'];
	public $timestamps = false;

	public function post()
	{
		return $this->belongsTo("App\Models\Post","post_id",'id');
	}

	public function user()
	{
		return $this->belongsTo("App\Models\Users","user_id","id")->withDefault(function($user){
			$user->user_name = "未知用户";
		});
	}

}