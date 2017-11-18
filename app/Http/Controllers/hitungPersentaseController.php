<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Ikan;
use App\SpesiesIkan;

class hitungPersentaseController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('HakAkses:users');
    }
    public function index()
    {
        $tabelIkan = Ikan::all();
        $tabelSpesies = SpesiesIkan::all();
        // $tabelSpesies = SpesiesIkan;
        return view('hitungPersentase', ['tabelIkan'=>$tabelIkan,'tabelIkan2'=>$tabelIkan,'tabelSpesies'=>$tabelSpesies]);
    }
    public function getSpesies($id_ikan)
    {
        $tabelSpesies = SpesiesIkan::where('id_ikan', 1)->get();
        return view('hitungPersentase', ['tabelSpesies'=>$tabelSpesies]);
    }
}
