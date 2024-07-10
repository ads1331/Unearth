<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\View;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;


class AuthController extends Controller
{
    public function showLoginForm()
    {
        return view('admin.login'); // Предполагается, что у вас есть шаблон в resources/views/admin/login.blade.php
    }
    public function login(Request $request)
    {
        $user = User::where('email', $request->email)->first();

        if ($user && $user->password === $request->password) {
            Auth::login($user);
            return redirect()->route('admin.index');
        }

        return redirect()->route('admin.login')->withErrors('Login details are not valid');
    }
    public function logout()
    {
        Auth::logout();
        return redirect()->route('admin.login'); // Перенаправление на страницу входа
    }
}


