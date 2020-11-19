@extends('crudbooster::admin_template')
@section('content')
<div class='panel'>
<table class="table table-light table-hover">
    <thead>
          <tr>
            <th  class="col-lg-2">name:</th>
            <td>{{$row->name}}</td>
          </tr>
          <tr>
            <th class="col-lg-2">photo:</th>
            <td> <img src="{{asset($row->photo)}}" alt=""/> </td>
          </tr>
          <tr>
            <th class="col-lg-2">reference:</th>
            <td>{{$row->reference}}</td>
          </tr>
          <tr>
            <th class="col-lg-2">quantite:</th>
            <td>{{$row->quantite}}</td>
          </tr>
          <tr>
            <th class="col-lg-2">quantite min:</th>
            <td>{{$row->quantiteMin}}</td>
          </tr>
    </thead>
   
  </table>
</div>
@endsection