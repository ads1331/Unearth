<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Comments;
use App\Models\Question;
use App\Models\Team;
use App\Models\Press;

class AdminController extends Controller
{
    public function index()
    {
        $comments = Comments::all();
        $questions = Question::all();
        $teams = Team::all();
        $posts = Press::all();

        return view('admin.index', compact('comments', 'questions', 'teams', 'posts'));
    }
    public function storeComment(Request $request)
    {
        // Валидация данных
        $request->validate([
            'name' => 'required|string',
            'email' => 'required|email',
            'comment' => 'required|string',
        ]);

        // Создание нового комментария
        $comment = new Comments();
        $comment->name = $request->name;
        $comment->email = $request->email;
        $comment->comment = $request->comment;
        $comment->save();

        return redirect()->route('admin.index')->with('success', 'Comment created successfully.');
    }

    // Метод сохранения нового вопроса
    public function storeQuestion(Request $request)
    {
        // Валидация данных
        $request->validate([
            'question' => 'required|string',
            'answer' => 'required|string',
        ]);

        // Создание нового вопроса
        $question = new Question();
        $question->question = $request->question;
        $question->answer = $request->answer;
        $question->save();

        return redirect()->route('admin.index')->with('success', 'Question created successfully.');
    }

    // Метод сохранения нового члена команды
    public function storeTeam(Request $request)
    {
        // Валидация данных
        $request->validate([
            'name' => 'required|string',
            'status' => 'required|string',
            'img' =>'required',
        ]);

        // Создание нового члена команды
        $team = new Team();
        $team->name = $request->name;
        $team->status = $request->status;
        $team->img = $request->img;
        $team->save();

        return redirect()->route('admin.index')->with('success', 'Team member created successfully.');
    }

    // Метод сохранения нового поста
    public function storePost(Request $request)
    {
        $request->validate([
        'name' => 'required|string',
        'text' => 'required|string',
        'img' => 'required',
        'date' => 'required',
        'head_img' => 'required',
    ]);

        // Создание нового поста
        $post = new Press();
        $post->name = $request->name;
        $post->text = $request->text;
        $post->img = $request->img;
        $post->date = $request->date;
        $post->head_img = $request->head_img;
        $post->save();

        return redirect()->route('admin.index')->with('success', 'Post created successfully.');
    }

    public function destroy($type, $id)
    {
        switch ($type) {
            case 'comments':
                $item = Comments::findOrFail($id);
                break;
            case 'questions':
                $item = Question::findOrFail($id);
                break;
            case 'teams':
                $item = Team::findOrFail($id);
                break;
            case 'posts':
                $item = Press::findOrFail($id); 
                break;
            default:
                return redirect()->route('admin.index')->with('error', 'Invalid item type.');
        }
    
        $item->delete();
    
        return redirect()->route('admin.index')->with('success', ucfirst($type) . ' deleted successfully.');
    }

    public function editComment($id)
    {
        $comment = Comments::findOrFail($id);
        return view('admin.comments.edit', compact('comment'));
    }

    public function updateComment(Request $request, $id)
    {
        $comment = Comments::findOrFail($id);
        $comment->update($request->all());
        return redirect()->route('admin.index')->with('success', 'Comment updated successfully.');
    }

    public function editQuestion($id)
    {
        $question = Question::findOrFail($id);
        return view('admin.questions.edit', compact('question'));
    }

    public function updateQuestion(Request $request, $id)
    {
        $question = Question::findOrFail($id);
        $question->update($request->all());
        return redirect()->route('admin.index')->with('success', 'Question updated successfully.');
    }

    public function editTeam($id)
    {
        $team = Team::findOrFail($id);
        return view('admin.teams.edit', compact('team'));
    }

    public function updateTeam(Request $request, $id)
    {
        $team = Team::findOrFail($id);
        $team->update($request->all());
        return redirect()->route('admin.index')->with('success', 'Team updated successfully.');
    }

    public function editPost($id)
    {
        $post = press::findOrFail($id);
        return view('admin.posts.edit', compact('post'));
    }

    public function updatePost(Request $request, $id)
    {
        $post = press::findOrFail($id);
        $post->update($request->all());
        return redirect()->route('admin.index')->with('success', 'Post updated successfully.');
    }
}
