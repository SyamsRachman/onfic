<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\user;
use App\Status;

class RegisterController extends Controller
{
    public function __construct()
    {
        $this->middleware('guest');
        $this->middleware('HakAkses:admin');
    }
    public function index()
    {
        return view('register');
    }
    public function postRegister(Request $request)
    {
        $user = new user();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
        $user->id_status = Status::where('status','users')->first()->id_status;
        $user->save();
        // dd($user);
        return redirect('login');
    }
}
