<?php
/**
 * Created by PhpStorm.
 * User: mac
 * Date: 2019/4/2
 * Time: 19:33
 */

namespace App\Http\Controllers;


use App\Models\Comment;
use App\Models\Post;

class PostController extends Controller
{
	public function index()
	{

//		$post = Post::find(1);
//
//		$post->user = $post->user;
//		$post->comments = $post->comments()->where('comment_id',2)->get()->toArray();
//		dd($post->toArray());

//		$post = Post::with("comments")->get();
//		dd($post->toArray());

		//为文章1添加评论
//		$comment = new Comment(['content'=>'i am comment']);
//		$post = Post::find(2);
//		$res = $post->comments()->save($comment);
//		dd($res);

		$post = Post::find(1);
//
//		$post->comments()->saveMany([
//			new Comment(['content' => '一条新的评论。']),
//			new Comment(['content' => '另一条评论。']),
//		]);

		$comment = $post->comments()->create([
			'content' => '一条新的评论。',
		]);

	}
}