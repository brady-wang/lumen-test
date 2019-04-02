<?php
/**
 * Created by PhpStorm.
 * User: mac
 * Date: 2019/4/1
 * Time: 23:45
 */

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Phone extends Model
{
	protected $table = "t_phones";
	protected $primaryKey = 'id';

	//根据外键获取文章的作者
	public function user()
	{
		return $this->belongsTo("App\Models\Users","user_id","id");
	}



}