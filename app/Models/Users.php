<?php
/**
 * Created by PhpStorm.
 * User: mac
 * Date: 2019/4/1
 * Time: 21:55
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Users extends Model
{
	use SoftDeletes;

	protected $table = "t_users";
	protected $primaryKey = "id";
	protected $fillable = ['user_name',"province_id"];

	protected $dates = ['deleted'];

	public function province()
	{
		return $this->hasOne("App\Models\Areas","code_id","province_id");
	}
	public function city()
	{
		return $this->hasOne("App\Models\Areas","code_id","city_id");
	}

	public function district()
	{
		return $this->hasOne("App\Models\Areas","code_id","district_id");
	}

	public function phone()
	{
		return $this->hasOne("App\Models\Phone","user_id","id");
	}
	//通过关联模型获取文章
	public function post()
	{
		return $this->hasMany("App\Models\Post","user_id",'id');
	}
	//通过关联模型获取到用户的角色 一个用户属于多个角色
	public function roles()
	{
		return $this->belongsToMany("App\Models\Role","user_role","user_id","role_id");
	}

}