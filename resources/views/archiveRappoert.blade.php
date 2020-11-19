<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
  <!-- Your html goes here -->
  <div class='panel panel-default'>
    <div class='panel-heading'>Edit Form</div>
    <div class='panel-body'>

        <div class='form-group' style="padding 30px;">
            <h4> <b> Client: </b>   {{$client->client}}</h4>
        </div>
        <hr>

        <div class='form-group' style="padding 30px;">
            <h4> <b>Site: </b>   {{$site->site}}</h4>
        </div>
        <hr>

        <div class='form-group' style="padding 30px;">
            <h4> <b>Nom de l'intervenant :</b>    {{$tech->name.' '.$tech->LastName }}</h4>
        </div>
        <hr>

        <div class='form-group' style="padding 30px;">
            <h4> <b>Date de l'intervenant  :   </b>  {{$row->dateDebut }}</h4>
        </div>
        <hr>

        <div class='form-group' style="padding 30px;">
            <h4><b>Date de Fin l'intervenant :  </b>   {{$row->dateFin}}</h4>
        </div>
        <hr>

        <div class="pieces" style="padding 30px;">
            <h4><b>pieces utilisées</b></h4>
            @foreach($piece as $p)
                <div class='form-group' style="margin-left : 5vw ">
                    <h5>    {{$p->name}} <b> *</b> {{$p->quantity}} </h5>
                </div>
            @endforeach
         </div>
         <hr>
         <div class='form-group' style="padding 30px;">
            <h4> <b>Travail effectué  : </b>    {{$row->traitement }}</h4>
        </div>
        <hr>
        <div class='form-group' style="padding 30px;">
            <h4> <b>Image  : </b></h4>
            <img src="{{asset($row->photo)}}" style="width: 65vw;">
        </div>
        <!-- etc .... -->

      </form>
    </div>
  </div>
@endsection
