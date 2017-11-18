@extends('layouts.admin')

@section('script')
  $('#dataIkan').addClass("active");
@endsection

@section('title','Kolam Diskusi')

@section('main')
  <div class="container-fluid">
    <div class="panel panel-primary">
      <div class="panel-heading">List Ikan</div>
      <div class="panel-body">
        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#create" name="create">Tambah</button>
        <br><br>
        {{-- modal create --}}
            <div class="modal fade" id="create" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Tambah Data Ikan</h4>
                  </div>
                <form class="form-horizantal" action="{{url(action('dataIkanController@tambahIkan'))}}" method="post">
                  {{ csrf_field() }}
                  <div class="modal-body">
                    <div class="row">
                        <div class="form-group">
                          <label for="namaIkan" class="col-md-4 control-label">Nama Ikan</label>
                          <div class="col-md-8">
                            <input type="text" name="namaIkan" value="" class="form-control">
                          </div>
                        </div>
                        <div class="form-group">
                          <label for="famili" class="col-md-4 control-label">Famili</label>
                          <div class="col-md-8">
                            <input type="text" name="famili" value="" class="form-control">
                          </div>
                        </div>
                        <div class="form-group">
                          <label for="umurProduktif" class="col-md-4 control-label">Umur Produktif</label>
                          <div class="col-md-8">
                            <input type="text" name="umurProduktif" value="" class="form-control">
                          </div>
                        </div>

                    </div>
                  </div>
                  <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Simpan</button>
                  </div>
                </form>
                </div>
              </div>
            </div>

            {{-- modal edit --}}
                <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Edit Data Ikan</h4>
                      </div>
                    <form class="form-horizantal" action="{{url(action('dataIkanController@updateIkan'))}}" method="post">
                      {{ csrf_field() }}
                      <div class="modal-body">
                        <div class="row">
                            <div class="form-group">
                              <label for="editNamaIkan" class="col-md-4 control-label">Nama Ikan</label>
                              <div class="col-md-8">
                                <input type="text" name="editNamaIkan" id="editNamaIkan" value="" class="form-control">
                              </div>
                            </div>
                            <div class="form-group">
                              <label for="editFamili" class="col-md-4 control-label">Famili</label>
                              <div class="col-md-8">
                                <input type="text" name="editFamili"  id="editFamili" value="" class="form-control">
                              </div>
                            </div>
                            <div class="form-group">
                              <label for="editUmurProduktif" class="col-md-4 control-label">Umur Produktif</label>
                              <div class="col-md-8">
                                <input type="text" name="editUmurProduktif" id="editUmurProduktif" value="" class="form-control">
                              </div>
                            </div>
                            <input type="hidden" name="idIKan"  id="idIkan" value="">
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">Simpan</button>
                      </div>
                    </form>
                    </div>
                  </div>
                </div>

        <table class="table table-bordered table-responsive">
          <tr>
            <th>Id</th>
            <th>Nama Ikan</th>
            <th>Famili</th>
            <th>Umur produktif</th>
            <th>kontrol</th>
          </tr>
          @foreach ($tabelIkan as $tabelIkan)
            <tr>
              <td>{{$tabelIkan->id}}</td>
              <td>{{$tabelIkan->namaIkan}}</td>
              <td>{{$tabelIkan->famili}}</td>
              <td>{{$tabelIkan->umur_produktif}}</td>
              <td style="text-align:center">
                <button type="button" class="btn btn-info" data-toggle="modal" data-target="#edit" onclick="edit({{$tabelIkan->id}})" name="edit">Edit</button>
                <a href="/hapusIkan/{{$tabelIkan->id}}"><button type="button" class="btn btn-danger" name="delete">Hapus</button></a>
              </td>
            </tr>
          @endforeach
        </table>
      </div>
    </div>
    <div class="panel panel-primary">
      <div class="panel-heading">List Spesies</div>
      <div class="panel-body">
        <select class="form-control" id="cbIkan" onchange="showSpesies()" name="">
          @foreach ($cbIkan as $cbIkan)
            <option value="{{$cbIkan->id}}">{{$cbIkan->namaIkan}}</option>
          @endforeach
        </select>
        <br>
        <table class="table table-bordered" id="tbSpesies">
          <tr>
            <th>Id Spesies</th>
            <th>Nama Spesies</th>
          </tr>
        </table>
      </div>
    </div>
    <script type="text/javascript">
      var idIkan = 0;
      function edit(id) {
        idIkan = id;
        $("#idIkan").val(idIkan);
        @php
        foreach ($tabelIkan2 as $tabelIkan) {
          echo "if($tabelIkan->id==idIkan){
          document.getElementById('editNamaIkan').value = \"$tabelIkan->namaIkan\";
          document.getElementById('editFamili').value = \"$tabelIkan->famili\";
          document.getElementById('editUmurProduktif').value = \"$tabelIkan->umur_produktif\";
          };";
        }

        @endphp
      }
      function showSpesies() {
        var cbIkan = $("#cbIkan").val();
        $("#tbSpesies").html("<tbody id='bodySpesies'></tbody>");
        $('#bodySpesies').append('<tr><th>Id Spesies</th><th>Nama Spesies</th></tr>');
        @php
          foreach ($tabelSpesies as $tabelSpesies) {
            echo "if($tabelSpesies->id_ikan==cbIkan){
              // document.getElementById('tbSpesies').innerHTML = '<tr><th>test</th><th>test</th></tr>';
              $('#bodySpesies').append('<tr><td>$tabelSpesies->id_spesies</td><td>$tabelSpesies->nama_spesies</td></tr>');
              // alert('test');
            }";
          }
        @endphp
      }
    </script>
  </div>
@endsection
