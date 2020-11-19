<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiTravaillerController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {
				$this->table       = "report";
				$this->permalink   = "travailler";
				$this->method_type = "post";
		    }


		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process

		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query

		    }

		    public function hook_after($postdata,&$result) {



                //This method will be execute after run the main process
                // dd($result['data'][0]->id);
               /* $x=[];
                array_push($x,'f');
                array_push($x,5);
                dd($x);*/
//                //dd($result['data'][0]->id);
//    dd(var_dump($result['data']));
            // $i=0;
//             $ids=[];
// dd($result['data']);
            //     $tmp = $result['data'];
            // foreach($tmp as $key => $value){

            //     dd($value);
            // //    $i++;
            //     }
//   dd($i);
            //   for ($i=0; $i <count($result['data']) ; $i++) {
            //     $users = DB::table('report')
            //     ->join('clients', 'clients.id', '=', 'report.client')
            //     ->join('sites', 'sites.id', '=', 'report.site')
            //     ->where('report.id',$result['id'])
            //     ->select('clients.client', 'sites.site')
            //     ->get();
            //   }

                $usersArray = [];

            for ($i=0; $i < sizeof($result['data']); $i++) {
                $users = DB::table('report')
                        ->join('clients', 'clients.id', '=', 'report.client')
                        ->join('sites', 'sites.id', '=', 'report.site')
                        ->where('report.id',$result['data'][$i]->id)
                        ->select('report.*','clients.client', 'sites.site')
                        ->first();
                        $usersArray[] = $users;
            }

            $result['data'] = $usersArray;

            // foreach($result['data'] as $value) {
            //     dump($value->id);
            // }



            //    dd($users);

                //$result=$users;
		    }

		}
