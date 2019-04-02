<?php
/**
 * Created by PhpStorm.
 * User: mac
 * Date: 2019/4/1
 * Time: 23:01
 */

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Areas extends Model
{
	protected $table =  "t_areas";

	protected $primaryKey = "area_id";

	public function provinceUsers()
	{
		return $this->hasMany("App\Models\Users","province_id",'code_id');
	}

	public function cityUsers()
	{
		return $this->hasMany("App\Models\Users","city_id",'code_id');
	}




}