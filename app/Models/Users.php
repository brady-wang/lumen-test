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

}