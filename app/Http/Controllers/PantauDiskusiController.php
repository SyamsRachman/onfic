<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Diskusi;

class PantauDiskusiController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('HakAkses:admin');
    }

    public function index()
    {
        $tabelDiskusi = Diskusi::where('status', 'proses')->get();
        return view('pantauDiskusi', ['tabelDiskusi'=>$tabelDiskusi]);
    }
    public function showDiskusi($id)
    {
        $tabelDiskusi = Diskusi::find($id);
        return view('artikelDiskusiAdmin', ['tabelDiskusi'=>$tabelDiskusi]);
    }

    public function verifikasiArtikel($id)
    {
      $Diskusi = Diskusi::find($id);
      $Diskusi->status = 'terverifikasi';
      $Diskusi->save();
      return redirect('pantauDiskusi');
    }
    public function hapusArtikel($id)
    {
      $Diskusi = Diskusi::find($id);
      $Diskusi->delete();
      return redirect('pantauDiskusi'); 
    }
}
