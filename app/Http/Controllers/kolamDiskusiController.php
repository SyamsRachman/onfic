<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Diskusi;
use Illuminate\Support\Facades\Auth;
use App\Komentar;

use App\User;
class kolamDiskusiController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('HakAkses:users');
    }

    public function index()
    {
        $tabelDiskusi = Diskusi::where('status', 'terverifikasi')->get();
        return view('kolamDiskusi', ['tabelDiskusi'=>$tabelDiskusi]);
    }

    public function showDiskusi($id)
    {
        $tabelDiskusi = Diskusi::find($id);
        $tabelKomentar = Komentar::where('id_diskusi',$id)->get();
        // dd($tabelUser);
        return view('artikelDiskusi', [
          'tabelDiskusi'=>$tabelDiskusi,
          'tabelKomentar'=>$tabelKomentar
        ]);
    }

    public function tambahArtikel()
    {
      return view('tambahArtikel');
    }

    public function postArtikel(Request $request)
    {
      // dd($request->isi);
      $Diskusi = new Diskusi();
      $Diskusi->judul = $request->judul;
      $Diskusi->isi = $request->isi;
      $Diskusi->id_user = Auth::id();
      $Diskusi->status = 'proses';
      $Diskusi->save();
      return redirect('kolamDiskusi');
      // return 'sukses';
    }
    public function postKomentar(Request $request)
    {
      $Komentar = new Komentar();
      $Komentar->id_diskusi = $request->idArtikel;
      $Komentar->isi = $request->komentar;
      $Komentar->id_user = Auth::id();
      $Komentar->save();
      return redirect("/kolamDiskusi/$request->idArtikel");
    }
}
