<?php
/**
 * Created by PhpStorm.
 * User: mac
 * Date: 2019/4/2
 * Time: 20:26
 */

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
	protected $primaryKey = "role_id";

	protected $table = "roles";

	public function users()
	{
		return $this->belongsToMany("App\Models\Users","user_role","role_id","user_id")->withPivot("user_role_id")->wherePivot("user_role_id",">",1);
	}
}