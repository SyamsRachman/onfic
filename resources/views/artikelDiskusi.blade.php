@extends('layouts.users')

@section('script')
  $('#kolamDiskusi').addClass("active");
@endsection

@section('title','Kolam Diskusi')

@section('main')
  <div class="container-fluid">
    <div class="page-header">
    <h1>{{$tabelDiskusi->judul}}</h1>
    </div>
    <p>{!!$tabelDiskusi->isi!!}</p>
    <div class="panel panel-primary">
      <div class="panel-heading">Komentar</div>
      <div class="panel-body">
        <div class="media">
          <div class="media-left">
            <a href="#">
              <img class="media-object" src="\img\user.png" alt="">
            </a>
          </div>
          <div class="media-body">
            <form class="" action="{{url(action('kolamDiskusiController@postKomentar'))}}" method="post">
              {{ csrf_field() }}
              <input type="hidden" name="idArtikel" value="{{$tabelDiskusi->id}}">
              <textarea name="komentar" rows="3" style="resize:none" cols="70" placeholder="masukan komentar anda" class="form-control"></textarea>
              <br>
              <button type="submit" name="submit" class="btn btn-primary">Submit</button>
          </form>
        </div>
        <hr>
        @foreach ($tabelKomentar as $tabelKomentar)
        <div class="media">
          <div class="media-left media-middle">
            <a href="#">
              <img class="media-object" src="\img\user.png" alt="">
            </a>
          </div>
          <div class="media-body">
            <h4 class="media-heading">{{App\User::where('id',$tabelKomentar->id_user)->first()->name}}</h4>
            <h5>{{$tabelKomentar->created_at}}</h5>
            <p>{{$tabelKomentar->isi}}</p>
          </div>
        </div>
      @endforeach
        <hr>
    </div>
  </div>
@endsection
