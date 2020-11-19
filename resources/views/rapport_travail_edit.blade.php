


<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
<style>
.form-group{margin: 20px;}
</style>
<div class='panel panel-default'>
  <div class='panel-heading'>Edit Form</div>
  <div class='panel-body'>
    <form  method='post' action='{{CRUDBooster::mainpath('edit-save/'.$row->id)}}' enctype="multipart/form-data">
      <input type="hidden" name="_token" value="{{csrf_token()}}">
      <div class='form-group'>
        <label>Client</label>
        <input type='text' name='client' id='client' required class='form-control' value='{{$client->client}} 'readonly/>
      </div>
      <div class='form-group'>
        <label>site</label>
        <input type='text' name='site' id='site' required class='form-control' value='{{$sites->site}}' readonly/>
      </div>
      <div class='form-group'>
        <label>Technicien</label>
        <input type='text' name='Technicien' id='Technicien' required class='form-control' value='{{$technicien->name}}' readonly/>
      </div>
      <div class='form-group'>
        <label>secretaire</label>
        <input type='text' name='secretaire' id='secretaire' required class='form-control' value='{{$secretaire->name}}' readonly/>
      </div>
      <div class='form-group'>
        <label>probleme</label>
        <input type='text' name='probleme' id='probleme'  required class='form-control' value='{{$row->probleme}}' readonly/>
      </div>
      <div class='form-group'>
        <label>DateDebut</label>
          <div class="input-group ">
            <span class="input-group-addon"><a><i class="fa fa-calendar"></i></a></span>
             <input type="text" readonly class="input_date" name='date' id='DateDebut'  required="" class="form-control notfocus input_datetime" name="dateDebut" >
         </div>
      </div>


      <div class='form-group'>
        <label>traitemente</label>
        <input type='text' name='traitemente' id='traitemente' required class='form-control' value='{{$row->traitemente}}'/>
      </div>
      <div class='form-group' >

        <label>photo</label>
        <input type="file" name="photo" id="photo" required style="background : #eeeeee; width : 100%; padding: 10px; border : solid 1px #d2d6de;" />

      </div>
      <table width="100%">
        <tr>
          <td>
            <div class='form-group'>
              <label for="mc">Maintenance curative</label>
              <input type='checkbox' id="mc"name='mc' value='Maintenance curative'/>
            </div>
          </td>
          <td>
            <div class='form-group '>
              <label for="mp">maintenance préventive</label>
              <input type='checkbox' id="mp"name='mp' value='maintenance préventive'/>
            </div>
          </td>
          <td>
            <div class='form-group '>
              <label for="inst">Installation</label>
              <input type='checkbox' id="inst" name='inst' value='Installation'/>
            </div>
          </td>
        </tr>
      </table>



      <div class='form-group'>
        <label>type De Sortie</label>
        <select required name="typeDeSortie" class="form-control"   id="typeDeSortie">
          <option selected disabled> </option>
          <option value="reparation">reparation (non facture)</option>
          <option value="devis">devis (facture)</option>
        </select>
      </div>

      <div class="form-group">
        <label for="selectpiece">Selectionner piece</label>
           <select class="form-control" id="selectpiece">
               <option value="" selected disabled >**Selectionner piece </option>

                   @foreach($storages as $s)
                   <option value="{{$s->id}}" > {{$s->name}}</option>
                   @endforeach

           </select>

               <button type="button" onclick="addToTablepieces();" class="btn btn-default add_data"  >Ajouter</button>

    </div>
    <div id="toload" class='panel-body'>
      <table id="table-pieces" class="table table-striped table-bordered">

          <thead>
              <tr>
                  <th>piece</th>
                  <th>Qnt</th>
                  <th width="90px">Action</th>
              </tr>
          </thead>

          <tbody>
              <tr class="trNull">
                  <td colspan="3" align="center">
                      Liste vide
                  </td>
              </tr>

          </tbody>
      </table>
  </div>


      <!-- etc .... -->


  </div>
  <input type="hidden" value="0" name="i" class="n">
  <input type="text" class="hidden" value="" class="DD" id="DD" name="DD">
  <input type="text" class="hidden" value="" name="DF"class="DF" id="df">
  <div class='panel-footer'>
    <input type='submit' class='btn btn-primary' value='Save changes'/>
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
$( document ).ready(function () {
    $('#selectpiece').select2();

  //*************get date***********************

      $('.input_date').daterangepicker({
        timePicker: true,
        timePicker24Hour: true,
          locale: {
            format: 'YYYY-MM-DD hh:mm:00'
          }
      });

  //your code here
  });
  $(document).ready(function(){
    var x=$("#DateDebut").val();
      $("#DD").val(x.substr(0,19));
      $("#df").val(x.substr(22,21));
    $("#DateDebut").change(function() {
      var x=$("#DateDebut").val();
      $("#DD").val(x.substr(0,19));
      $("#df").val(x.substr(22,21));
    })




  });



  var n=0;

  function verif(){
    var text= $('#selectpiece option:selected').text();
    return (($('#table-pieces tr > td:contains(--'+text+'--)').length)!=1);
  }

  function deletepiece(id){
    $(id).parent().parent().remove();
  }
  function addToTablepieces() {
    if(($('#selectpiece option:selected').text()!="**Selectionner piece ")&&(verif())){
        var trRow = '<tr>';
        n++;
          trRow += "<td class='id_piece'>--" + $('#selectpiece option:selected').text() +
                        "--<input  type='number' class=\"hidden\"  name='a"+n+"' value='" + $('#selectpiece').val() + "'/>" +
                    "</td>";
          trRow += "<td class='qnt'> <input type='number' name='b"+(n)+"' onchange='qntTest(" + $('#selectpiece').val() + ",event)' class='mmm' required id='e"+(n)+"' class='form-control' />";
                  "</td>";
          trRow += "<td>" +
                      "<a href='javascript:void(0)' onclick='deletepiece(c"+n+")' id=\"c"+n+"\" class='btn btn-danger btn-sm'><i class='fa fa-trash'></i></a></td>";
          trRow += "</tr>";
          $('#table-pieces tbody .trNull').remove();
          $("#table-pieces tbody").prepend(trRow);
          $('.n').val(n);
    }
  $('#selectpiece').val('');

  }
  function qntTest(id,e) {
   // console.log(e.target.value);
    @foreach($storages as $s)
      i={{$s->id}};
      if (i==id) {
        if (e.target.value > {{$s->quantite}}) {

          e.target.value=0;
          swal("vous n'avez pas une quantite suffisante de cette pièce");
        }
      }
    @endforeach
    }
</script>
@endpush
