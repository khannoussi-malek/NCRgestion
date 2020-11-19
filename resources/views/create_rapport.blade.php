


<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
<style>
.form-group{margin: 20px;}
</style>
<div class='panel panel-default'>
  <div class='panel-heading'>create rapport</div>
  <div class='panel-body'>
    <form  method='post' action='{{CRUDBooster::mainpath('add-save/'.$row->id)}}' enctype="multipart/form-data">
      <input type="hidden" name="_token" value="{{csrf_token()}}">
    <!-- technicien -->

      <div class="form-group">
        <label for="selectpiece">Selectionner technicien</label>
           <select class="form-control" id="selectpiece" name="technicien">
               <option value="" selected disabled >**Selectionner technicien </option>

                   @foreach($users as $s)
                   <option value="{{$s->id}}" > {{$s->name}}</option>
                   @endforeach

           </select>


    </div>
    <!-- client -->
    <div class="form-group hidden w-100" id="client">
         <label for="selectpiece" class="w-100">Selectionner client</label>
         <select class="form-control w-100" id="selectpiececlient" name="client">
             <option value="" selected disabled >**Selectionner client </option>

                 @foreach($clients as $s)
                 <option value="{{$s->id}}" > {{$s->client}}</option>
                 @endforeach

          </select>


  </div>
    <!-- site -->
    <div class="form-group hidden w-100" id="site">
         <label for="selectpiece">Selectionner site</label>
         <select class="form-control" id="selectpiecesite" name="site">
             <option value="" selected disabled >**Selectionner site </option>

          </select>
  </div>
  <div class='form-group hidden' id="pro">
    <label>Probleme</label>
    <input type='text' name='probleme' id='probleme' required class='form-control ' />
  </div>



  <div class="box-footer" style="background: #F5F5F5">
    <div class="form-group">
        <label class="control-label col-sm-2"></label>
        <div class="col-sm-10 hidden" id='send'>
            <input type="submit" name="submit" value="Save" class="btn btn-success">
        </div>
    </div>
  </div>



</form>
</div>
{{-- @endsection

@section('extra_scripts') --}}
@endsection
@push('bottom')


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.12/css/select2.css" integrity="sha256-kalgQ55Pfy9YBkT+4yYYd5N8Iobe+iWeBuzP7LjVO0o=" crossorigin="anonymous" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.12/js/select2.full.min.js" integrity="sha256-vucLmrjdfi9YwjGY/3CQ7HnccFSS/XRS1M/3k/FDXJw=" crossorigin="anonymous"></script>

<script type="text/javascript">
   $('#selectpiece').select2();
   $('#selectpiecesite').select2();
   $('#selectpiececlient').select2();
   $('#selectpiece').on('change', function() {
      $('#client').removeClass("hidden");
    });
    $('#selectpiececlient').on('change', function() {
      $('#selectpiecesite').empty();
      $('#selectpiecesite').append('<option value="" selected disabled >**Selectionner site </option>');
      var ch;
      @foreach($sites as $s)
      if ($('#selectpiececlient option:selected').val()=={{$s->id_client}}) {
         ch="<option value=\""+{{$s->id}}+"\">{{$s->site}}</option>";
        $('#selectpiecesite').append(ch);
      }

      @endforeach
      $('#site').removeClass("hidden");
    });
    $('#selectpiecesite').on('change', function() {

      $('#pro').removeClass("hidden");
    });
    $('#pro').on('change', function() {

      $('#send').removeClass("hidden");
    });
</script>
@endpush
