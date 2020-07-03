@extends('adminlte.master')

@section('content')
<div class="ml-3" style="margin-left: 15px; margin-right: 15px">
  <center><h3 style="padding-top: 10px; padding-bottom: 10px">Daftar Pertanyaan</h3></center>
    <button type="button" class="btn btn-primary" style="margin-bottom: 15px"><a href="/pertanyaan/create" style="color: white">Tambah Pertanyaan</a></button>
    <br>
    <table class="table table-striped">
        <thead>
          <tr>
            <th>No</th>
            <th>Judul</th>
            <th>Isi</th>
            <th>Tanggal Dibuat</th>
            <th>Tanggal Diperbaharui</th>
            <th>Jawaban</th>
          </tr>
        </thead>
        <tbody>
          @foreach($tanya as $key => $tanya)
          <tr>
          	<td>{{$key+1}}</td>
          	<td>{{$tanya->judul}}</a></td>
          	<td>{{$tanya->isi}}</td>
            <td>{{$tanya->created_at}}</td>
            <td>{{$tanya->updated_at}}</td>
            <td><button type="button" class="btn btn-primary"><a href="/jawaban/{{$tanya->id}}" style="color: white">Jawaban</a></button></td>
          </tr>
          @endforeach
        </tbody>
    </table>
</div>
@endsection