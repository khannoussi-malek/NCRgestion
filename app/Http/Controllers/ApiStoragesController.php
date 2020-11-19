<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiStoragesController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {
				$this->table       = "storages";
				$this->permalink   = "storages";
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
                    $users = DB::table('storages')
                            ->join('pieces', 'pieces.id', '=', 'storages.id_piece')
                            ->where('storages.id',$result['data'][$i]->id)
                            ->select('storages.*','pieces.name')
                            ->first();
                            $usersArray[] = $users;
                }

                $result['data'] = $usersArray;

		    }

		}
