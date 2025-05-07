<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\User;


class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    public function login(Request $request)
    {
        // return $request->all();
        // $userEmail = User::where('email', $request->email)->first();
        // if($userEmail){
        //     if (Auth::attempt($request->only('email', 'password'))) {
        //         $user = Auth::user();
        //         return redirect()->intended($this->redirectTo);
        //     }
        // }else{
        //     $user = User::where('contact', $request->email)->first();
        //     // return $user;

        //     // return redirect()->route('admin.dashboard');
        //     return redirect()->guest($this->redirectTo);
        // }

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




        return redirect()->route('login')->with('error', 'These credentials do not match our records.');
    }


    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
}
