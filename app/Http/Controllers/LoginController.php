<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Status;
use Validator;

class LoginController extends Controller
{
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
    public function index()
    {   $salah = null;
        return view('login',['salah'=>$salah]);
    }
    public function postLogin(Request $request)
    {
        if (Auth::attempt([
        'email' => $request->email,
        'password' => $request->password
        ])) {
            $status = Status::where('id_status', Auth::user()->id_status)->first()->status;
            if ($status=='admin') {
                return redirect('/pantauDiskusi');
            } else {
                return redirect('/hitungPersentase');
            }
        } else {
          $salah = 'Email dan password tidak ditemukan';
          return view('login',['salah'=>$salah]);
        }
    }
    public function logout()
    {
        Auth::logout();
        return redirect('/login');
    }
}
