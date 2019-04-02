<?php

namespace  App\Http\Controllers;

use App\Models\Phone;

class PhoneController extends Controller
{
	public function index()
	{
		$phone = Phone::find(1);
		$phone ->user = $phone->user;
		dd($phone->toArray());
	}
}