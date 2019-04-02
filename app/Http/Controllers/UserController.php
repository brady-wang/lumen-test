<?php
/**
 * Created by PhpStorm.
 * User: mac
 * Date: 2019/4/1
 * Time: 21:54
 */

namespace App\Http\Controllers;


use App\Models\Users;
use Illuminate\Support\Facades\Input;

class UserController extends Controller
{

	public function index()
	{
		//$user = Users::where("user_id",1)->first();
		$user = new Users();
//		$res = $user->create(Input::all());
//		dd($res);

//		$res = $user->firstOrNew(['user_name'=>'gggg']);
//		if(isset($res->user_id)){
//			echo "已存在";
//		} else {
//			echo "不存在";
//			$res->save();
//		}

//		$user = Users::withTrashed()->select(['user_name','province_id')->get();
//		dd($user);

//		$user = Users::find(1);
//		//$user->province = $user->province;
//		$user->province_name = $user->province->code_name;
//		$user->city_name = $user->city->code_name;
//		$user->district_name = $user->district->code_name;
//		dd($user->toArray());

		$user = Users::find(1);
		$user->phone = $user->phone;

		dd($user->toArray());

	}

}