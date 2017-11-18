@extends('layouts.admin')

@section('script')
  $('#pantauDiskusi').addClass("active");
@endsection

@section('title','Kolam Diskusi')

@section('main')
  <div class="container-fluid">
    <div class="page-header">
    <h1>{{$tabelDiskusi->judul}}</h1>
    <div class="left">
      <a href="/kolamDiskusi/{{$tabelDiskusi->id}}/verifikasiArtikel"><button type="button" class="btn btn-default" name="button"><span class="glyphicon glyphicon-ok"></span> Verifikasi</button></a>
      <a href="/kolamDiskusi/{{$tabelDiskusi->id}}/hapusArtikel"><button type="button" class="btn btn-default" name="button"><span class="glyphicon glyphicon-trash"></span> Hapus</button></a> 
    </div>
    </div>
    <p>{!!$tabelDiskusi->isi!!}</p>

  </div>
@endsection
