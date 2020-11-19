<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiRapportController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {
				$this->table       = "report";
				$this->permalink   = "rapport";
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


                    $users = DB::table('report')
                            ->join('clients', 'clients.id', '=', 'report.client')
                            ->join('sites', 'sites.id', '=', 'report.site')
                            ->where('report.id',$result['id'])
                            ->select('report.*','clients.client', 'sites.site')
                            ->first();
                            //dd($users);


                $result = $users;
		    }

		}
