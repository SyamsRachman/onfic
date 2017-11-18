<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Ikan;
Use App\SpesiesIkan;

class dataIkanController extends Controller
{
    public function index()
    {
      $tabelIkan = Ikan::all();
      $tabelSpesies = SpesiesIkan::all();
      return view('dataIkan',['tabelIkan'=>$tabelIkan,'tabelSpesies'=>$tabelSpesies,'tabelIkan2'=>$tabelIkan,'cbIkan'=>$tabelIkan]);
    }
    public function tambahIkan(Request $request)
    {
      $Ikan = new Ikan();
      $Ikan->namaIkan = $request->namaIkan;
      $Ikan->famili = $request->famili;
      $Ikan->umur_produktif = $request->umurProduktif;
      $Ikan->save();
      return redirect('/dataIkan');
    }
    public function hapusIkan($id)
    {
      $Ikan = Ikan::find($id);
      $Ikan->delete();
      return redirect('/dataIkan');
    }
    public function updateIkan(Request $request)
    {
      $Ikan = Ikan::find($request->idIKan);
      $Ikan->namaIkan = $request->editNamaIkan;
      $Ikan->famili = $request->editFamili;
      $Ikan->umur_produktif = $request->editUmurProduktif;

      $Ikan->save();
      return redirect('/dataIkan');
    }
}
