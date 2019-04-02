<?php
/**
 * Created by PhpStorm.
 * User: mac
 * Date: 2019/4/1
 * Time: 21:54
 */

namespace App\Http\Controllers;


use App\Models\Areas;
use App\Models\Users;
use Illuminate\Support\Facades\Input;

class AreaController extends Controller
{

	public function index()
	{
		//$user = Users::where("user_id",1)->first();
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

		//$area = Areas::where('code_id',1)->first()->provinceUsers()->where("user_name","wang")->get();
//		$area = Areas::where('code_id',1)->first();
//		$area->user = $area->provinceUsers()->where("user_name","wang")->get();
//		dd($area);

		$area = Areas::where(['code_id'=>2])->first();
		$area->user = $area->cityUsers;
		dd($area);

	}

}