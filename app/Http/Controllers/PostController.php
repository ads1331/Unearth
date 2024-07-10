<?php

namespace App\Http\Controllers;

use App\Models\Pricing;
use App\Models\Team;
use App\Models\Question;
use App\Models\Press;
use App\Models\Comment;
use App\Models\User;
use App\Models\Comments;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index()
    {
       
        $questions = Question::all();
        $pricings = Pricing::all();
        $teams = Team::all();
        $press = Press::with('user')->get();
        $press = $press->shuffle();
        $users = User::all();
        $comment = Comment::with('user')->get();
        $comments = Comments::all();
    

    
        return view('index', compact('pricings', 'teams', 'questions', 'press','comment','comments'));
    }
    public function single()
    {
        return view('single');
    }
    public function press_single($id)
    {
        $press = Press::findOrFail($id);
        $press_title = Press::where('id', '!=', $id)->get();
    
       
        $press_title = $press_title->shuffle();

        return view('press-single', compact('press' , 'press_title'));
    }
    public function send(Request $request){

        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255',
            'comment' => 'required|string'
        ]);

        Comments::create([
            'name' => $request->name,
            'email' => $request->email,
            'comment' => $request->comment
        ]);

        return redirect()->route('index')->with('success', 'Comment added successfully.');
    }
}

