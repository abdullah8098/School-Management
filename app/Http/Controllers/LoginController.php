<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function login()
    {
        if(auth()->check()) {
            return redirect()->back();
        }
        return view('login');
    }

    public function logins(Request $request)
    {
        $user = User::where('email', $request->email)
        ->orWhere('user_name', $request->email)
        ->first();

        if ($user) {
            if (Auth::attempt(['email' => $user->email, 'password' => $request->password])) {
                return redirect()->intended($this->redirectTo);
            } else {
                return redirect()->back()->withErrors(['email' => 'The provided credentials do not match our records.']);
            }

            // } else {
            // return redirect()->route('login')->withErrors(['email' => 'No account found with that email or contact info.']);
        }
    }

    protected $redirectTo = '/dashboard';

    public function logout(Request $request) {
        Auth::logout();
        return redirect('/login');
    }
}
