@extends('layouts.users')

@section('script')
  $('#kolamDiskusi').addClass("active");
  $('.wysiwyg').ckeditor();
@endsection

@section('title','Tambah Artikel')

@section('main')
  <div class="container-fluid">
    <div class="panel panel-default">
      <div class="panel-heading">
        Tambah Artikel Diskusi
      </div>
      <div class="panel-body">

        <form class="" action="{{url((action('kolamDiskusiController@postArtikel')))}}" method="post">
          {{ csrf_field() }}
          <div class="form-group">
            <label for="judul">Judul</label>
            <input type="text" class="form-control" name="judul" value="">
          </div>
          <div class="form-group">
            <label for="isi">Isi</label>
            <textarea class="form-control wysiwyg" style="resize:none" name="isi" rows="8" cols="80"></textarea>
          </div>
          <input type="submit" name="submit" value="Post" class="btn btn-primary">
        </form>
      </div>
    </div>
  </div>
@endsection
