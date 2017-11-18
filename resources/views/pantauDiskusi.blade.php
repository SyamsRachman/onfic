@extends('layouts.admin')

@section('script')
  $('#pantauDiskusi').addClass("active");
@endsection

@section('title','Pantau Diskusi')

@section('main')
  <div class="row">
    <div class="container-fluid">
    <header>
      <button type="button" class="btn btn-default" name="button"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Tambah Diskusi</button>
    </header>
  </div>
  </div>
  <br>
  <div class="row">
    @foreach ($tabelDiskusi as $tabelDiskusi)
    <div class="col-sm-6 col-md-4"> {{--thumbnail--}}
      <div class="thumbnail">
        <div class="caption">
          <h3>{{$tabelDiskusi->judul}}</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
          <p><a href="/kolamDiskusi/{{$tabelDiskusi->id}}/admin" class="btn btn-primary" role="button">Baca</a></p>
        </div>
      </div>
    </div> {{--thumbnail--}}
    @endforeach
</div>
@endsection
