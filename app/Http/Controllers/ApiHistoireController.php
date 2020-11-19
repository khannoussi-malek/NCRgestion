<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiHistoireController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {
				$this->table       = "report";
				$this->permalink   = "histoire";
				$this->method_type = "get";
		    }


		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process

		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query

		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process
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
		    }

		}
