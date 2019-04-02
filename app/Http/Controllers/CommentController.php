<?php
/**
 * Created by PhpStorm.
 * User: mac
 * Date: 2019/4/2
 * Time: 19:33
 */

namespace App\Http\Controllers;


use App\Models\Comment;

class CommentController extends Controller
{
	public function index()
	{
		$comment = Comment::find(1);
		$comment->post = $comment->post;
		$comment->user = $comment->user;
		dd($comment->user->user_name);
		dd($comment->toArray());
	}
}