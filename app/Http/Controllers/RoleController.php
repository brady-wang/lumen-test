<?php
/**
 * Created by PhpStorm.
 * User: mac
 * Date: 2019/4/2
 * Time: 20:32
 */

namespace App\Http\Controllers;

use App\Models\Role;
class RoleController extends Controller
{
	public function index()
	{
		//获取角色下的用户列表
		$role = Role::find(1);
//		foreach($roles as &$role){
//			$role->role_count = $role->users()->count();
//		}
		$role->users = $role->users;
		dd($role->toArray());
	}
}