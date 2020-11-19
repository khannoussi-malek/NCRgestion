


<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
<div class="box">
    <form method="GET" >
        <!-- head -->
        <div class="box-footer" style="background: #F5F5F5">
            <div class="panel-heading">
                <strong><i class="fa fa-book"></i> chercher maintenance préventive</strong>
            </div>
        </div>
        <!-- head end -->

        <div class="input-group">
            <input type="text" name="dateChercher" value="" class="form-control input-sm pull-right" placeholder="Search">
            <div class="input-group-btn">
                 <button type="submit" class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
            </div>
        </div>

        <br>

        <div class="form-group"  style=" padding-bottom : 55px;">
            <label class="control-label col-sm-2">maintenance préventive chaque
                            <span class="text-danger" title="This field is required">*</span>
                    </label>
            <div class="col-sm-9">
                <div class=" ">
                    <label class="radio-inline">
                     <input type="radio" checked="" name="MP" value="0"> 0
                    </label>
                 </div>
                 <div class=" ">
                        <label class="radio-inline">
                         <input type="radio" name="MP" value="3"> 3
                        </label>
                </div>
                <div class=" ">
                    <label class="radio-inline">
                     <input type="radio" name="MP" value="6"> 6
                    </label>
                </div>
            </div>
        </div>

        <table class="table table-hover" >
            <thead>
              <tr>
                <th scope="col">Site</th>
                <th scope="col">Client</th>
                <th scope="col">Adresse</th>
                <th scope="col">model</th>
                <th scope="col">Date maintenance préventive  </th>
                <th scope="col">action</th>
              </tr>
            </thead>
            <tbody>

            </tbody>
          </table>


        <!-- fouter begin -->
        <div class="box-footer" style="background: #F5F5F5;">

        </div>

        <!-- fouter end -->
    </form>


</div>
@endsection
@push('bottom')

<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.12/css/select2.css" integrity="sha256-kalgQ55Pfy9YBkT+4yYYd5N8Iobe+iWeBuzP7LjVO0o=" crossorigin="anonymous" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.12/js/select2.full.min.js" integrity="sha256-vucLmrjdfi9YwjGY/3CQ7HnccFSS/XRS1M/3k/FDXJw=" crossorigin="anonymous"></script>




<script>
  $(function() {
        $('input[name="dateChercher"]').daterangepicker({
            singleDatePicker: true,
            showDropdowns: true,
            locale: {
            format: 'YYYY-MM-DD'
          }
        }, function() {
        });
    });
    $('input[name="MP"]').on('change', function() {
      var ch='<tr>';
      var res=0;
      var mp;
      var typemp;
      var datemp=$('input[name="dateChercher"]').val();
      $('tbody').empty();
      @foreach($site as $s)
        mp={{$s->MP}};
        typemp="{{$s->typeMP}}";
        if ($('input[name="MP"]:checked').val()==mp) {
           if (typemp=="la garante") {
                if (addM(datemp,mp)>"{{$s->dateMP}}") {
                   res=1;
                }
            }else if (typemp=="date determine") {
                if (addM(datemp,mp)<="{{$s->dateMP}}") {
                   res=1;
                }
            }else{
                if ((GetDateGeneratl(datemp,mp)> "{{$s->dateMP}}")&&(typemp=="le debut du mois")) {
                   res=1;
                }
            }
            if (res==1) {
                ch+="<td>{{$s->site}}</td>"+
                "<td>{{$s->client}}</td>"+
                "<td>{{$s->adresse}}</td>"+
                "<td>{{$s->model}}</td>"+
                "<td>{{$s->dateMP}}</td>"+
                "<td><a class=\"btn btn-xs btn-success btn-edit\" title=\"Edit Data\" href=\"{{CRUDBooster::mainpath('edit/'.$s->id)}}\">"+
                "<i class=\"fa fa-pencil\"></i>"+
                "<a class=\"btn btn-xs btn-primary btn-detail\" title=\"Detail Data\" href=\"{{CRUDBooster::adminPath('sites/detail/'.$s->id)}}\"><i class=\"fa fa-eye\"></i></a>"+
                "</a>"+
                "</td></tr>";
                $("tbody").append(ch);
                ch="<tr>";
            }
            res=0;
        }
      @endforeach
    });

    function GetDateGeneratl(d,adm) {
        var y =parseInt(d.slice(0,4));
        var m =parseInt(d.slice(5,7));
        var res;
        if(adm=3){
            if (m<4) {
                y=y.toString();
                res=(y+"-04-01");
            }else if (m<7) {
                y=y.toString();
                res=(y+"-07-01");
            }else if (m<10) {
                y=y.toString();
                res=(y+"-10-01");
            }else{
                y++;
                y=y.toString();
                res=(y+"-01-01");
            }
        }else{
            if (m<7) {
                y=y.toString();
                res=(y+"-7-01");
            }else{
                y++;
                y=y.toString();
                res=(y+"-01-01");
            }
        }
        return res;
    }
    function addM(d,adm) {
        var y =parseInt(d.slice(0,4));
        var m =parseInt(d.slice(5,7));
        var day =parseInt(d.slice(8,10));
        if (m+adm>12) {
            y++;
            m=m+adm-12;
        }else{
            m+=adm;
        }
        y=y.toString();
        m=m.toString();
        var res;
        if (m<10) {
        res=(y+"-0"+m+"-"+day);

        }else
        res=(y+"-"+m+"-"+day);
        return res;
    }
 </script>
@endpush
