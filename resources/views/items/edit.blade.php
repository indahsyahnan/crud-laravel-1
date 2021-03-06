@extends('adminlte.master')

@section('content')
<div class="ml-3">
  <form action="/pertanyaan/{{$tanya->id}}" method="POST" style="margin-left: 15px; margin-right: 15px">
    @csrf
    @method('PUT')
    <div class="form-group" style="padding-top : 20px">
      <center><h4>Edit Soal</h4></center>
      <button type="button" class="btn btn-primary" style="margin-bottom: 15px"><a href="/pertanyaan" style="color: white">Kembali</a></button>
      <br>
      <label for="judul">Judul</label>
      <input type="text" class="form-control" name="judul" value="{{$tanya->judul}}" id="judul">
    </div>
    <div class="form-group">
      <label for="isi">Isi</label>
      <input type="text" class="form-control" name="isi" value="{{$tanya->isi}}" id="isi">
    </div>
    <div class="form-group">
      <label for="created_at">Tanggal Dibuat</label>
      <input type="text" class="form-control" name="created_at" value="{{$tanya->created_at}}" id="created_at">
    </div>
    <div class="form-group">
      <label for="updated_at">Tanggal Diperbaharui</label>
      <input type="text" class="form-control" name="updated_at" value="{{$tanya->updated_at}}" id="updated_at">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>
@endsection