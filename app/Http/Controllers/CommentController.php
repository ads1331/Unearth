<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\CommentReceived;

class CommentController extends Controller
{
    public function store(Request $request)
    {
        // Валидация данных формы
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'comment' => 'required|string',
        ]);

        // Отправка письма
        Mail::to('afanasden21@mail.ru')->send(new CommentReceived($request->all()));

        // Возвращаем ответ пользователю
        return redirect()->back()->with('message', 'Ваше сообщение успешно отправлено!');
    }
}