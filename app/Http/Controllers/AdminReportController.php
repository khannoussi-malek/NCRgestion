<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminReportController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {
	    	# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->table 			   = "report";
			$this->title_field         = "id";
			$this->limit               = 20;
			$this->orderby             = "id,desc";
			$this->show_numbering      = FALSE;
			$this->button_table_action = TRUE;
			$this->button_action_style = "button_icon";
			$this->button_add          = TRUE;
			$this->button_delete       = TRUE;
			$this->global_privilege    = FALSE;
			$this->button_edit         = TRUE;
			$this->button_detail       = FALSE;
			$this->button_show         = TRUE;
			$this->button_filter       = TRUE;
			$this->button_export       = FALSE;
			$this->button_import       = FALSE;
			$this->button_bulk_action  = TRUE;
			$this->sidebar_mode		   = "normal"; //normal,mini,collapse,collapse-mini
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$user=DB::table('cms_users')->where('id',CRUDBooster::myId())->first();

			if($user->function =='technicien'){
				$this->col[] = ["label"=>"secretaire","name"=>"secretaire","join"=>"cms_users,LastName"];
			}else if($user->function =='secretaire'){
				$this->col[] = ["label"=>"technicien","name"=>"technicien","join"=>"cms_users,LastName"];
			}else{
				$this->col[] = ["label"=>"technicien","name"=>"technicien","join"=>"cms_users,LastName"];
				$this->col[] = ["label"=>"Secretaire","name"=>"secretaire","join"=>"cms_users,LastName"];
			}

			$this->col[] = ["label"=>"Client","name"=>"client","join"=>"clients,client"];
			$this->col[] = ["label"=>"Site","name"=>"site","join"=>"sites,site"];
			$this->col[] = ["label"=>"probleme","name"=>"probleme"];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'DateDebut','name'=>'dateDebut','type'=>'datetime','validation'=>'required|date','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'DateFin','name'=>'dateFin','type'=>'datetime','validation'=>'required|date','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'traitement','name'=>'traitement','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Photo','name'=>'photo','type'=>'upload','validation'=>'required|image|max:3000','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Site','name'=>'state','type'=>'hidden','width'=>'col-sm-10' ];
			$this->form[] = ['label'=>'','name'=>'mc','type'=>'checkbox','validation'=>'required','dataenum'=>'mc','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'','name'=>'mp','type'=>'checkbox','validation'=>'required','dataenum'=>'mp','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'','name'=>'inst','type'=>'checkbox','validation'=>'required','dataenum'=>'inst','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'type De Sortie','name'=>'typeDeSortie','type'=>'radio','validation'=>'required','dataenum'=>'facture;non facture','width'=>'col-sm-9'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'DateBegin','name'=>'dateBegin','type'=>'date','validation'=>'required|date','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'DateEnd','name'=>'dateEnd','type'=>'date','validation'=>'required|date','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Treatmen','name'=>'treatmen','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Photo','name'=>'photo','type'=>'upload','validation'=>'required|image|max:3000','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'State','name'=>'state','type'=>'number','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'RPiece','name'=>'id_RPiece','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			# OLD END FORM

			/*
	        | ----------------------------------------------------------------------
	        | Sub Module
	        | ----------------------------------------------------------------------
			| @label          = Label of action
			| @path           = Path of sub module
			| @foreign_key 	  = foreign key of sub table/module
			| @button_color   = Bootstrap Class (primary,success,warning,danger)
			| @button_icon    = Font Awesome Class
			| @parent_columns = Sparate with comma, e.g : name,created_at
	        |
	        */
	        $this->sub_module = array();


	        /*
	        | ----------------------------------------------------------------------
	        | Add More Action Button / Menu
	        | ----------------------------------------------------------------------
	        | @label       = Label of action
	        | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
	        | @icon        = Font awesome class icon. e.g : fa fa-bars
	        | @color 	   = Default is primary. (primary, warning, succecss, info)
	        | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
	        |
	        */
			$this->addaction = array();
			$this->sub_module[] = ['label'=>'site','path'=>'sites/detail/[site]','foreign_key'=>'site','button_color'=>'success','button_icon'=>'fa fa-bars'];




	        /*
	        | ----------------------------------------------------------------------
	        | Add More Button Selected
	        | ----------------------------------------------------------------------
	        | @label       = Label of action
	        | @icon 	   = Icon from fontawesome
	        | @name 	   = Name of button
	        | Then about the action, you should code at actionButtonSelected method
	        |
	        */
	        $this->button_selected = array();


	        /*
	        | ----------------------------------------------------------------------
	        | Add alert message to this module at overheader
	        | ----------------------------------------------------------------------
	        | @message = Text of message
	        | @type    = warning,success,danger,info
	        |
	        */
	        $this->alert        = array();



	        /*
	        | ----------------------------------------------------------------------
	        | Add more button to header button
	        | ----------------------------------------------------------------------
	        | @label = Name of button
	        | @url   = URL Target
	        | @icon  = Icon from Awesome.
	        |
	        */
	        $this->index_button = array();



	        /*
	        | ----------------------------------------------------------------------
	        | Customize Table Row Color
	        | ----------------------------------------------------------------------
	        | @condition = If condition. You may use field alias. E.g : [id] == 1
	        | @color = Default is none. You can use bootstrap success,info,warning,danger,primary.
	        |
	        */
	        $this->table_row_color = array();


	        /*
	        | ----------------------------------------------------------------------
	        | You may use this bellow array to add statistic at dashboard
	        | ----------------------------------------------------------------------
	        | @label, @count, @icon, @color
	        |
	        */
	        $this->index_statistic = array();



	        /*
	        | ----------------------------------------------------------------------
	        | Add javascript at body
	        | ----------------------------------------------------------------------
	        | javascript code in the variable
	        | $this->script_js = "function() { ... }";
	        |
	        */
	        $this->script_js = NULL;


            /*
	        | ----------------------------------------------------------------------
	        | Include HTML Code before index table
	        | ----------------------------------------------------------------------
	        | html code to display it before index table
	        | $this->pre_index_html = "<p>test</p>";
	        |
	        */
	        $this->pre_index_html = null;



	        /*
	        | ----------------------------------------------------------------------
	        | Include HTML Code after index table
	        | ----------------------------------------------------------------------
	        | html code to display it after index table
	        | $this->post_index_html = "<p>test</p>";
	        |
	        */
	        $this->post_index_html = null;



	        /*
	        | ----------------------------------------------------------------------
	        | Include Javascript File
	        | ----------------------------------------------------------------------
	        | URL of your javascript each array
	        | $this->load_js[] = asset("myfile.js");
	        |
	        */
	        $this->load_js = array();



	        /*
	        | ----------------------------------------------------------------------
	        | Add css style at body
	        | ----------------------------------------------------------------------
	        | css code in the variable
	        | $this->style_css = ".style{....}";
	        |
	        */
	        $this->style_css = NULL;



	        /*
	        | ----------------------------------------------------------------------
	        | Include css File
	        | ----------------------------------------------------------------------
	        | URL of your css each array
	        | $this->load_css[] = asset("myfile.css");
	        |
	        */
	        $this->load_css = array();


	    }


	    /*
	    | ----------------------------------------------------------------------
	    | Hook for button selected
	    | ----------------------------------------------------------------------
	    | @id_selected = the id selected
	    | @button_name = the name of button
	    |
	    */
	    public function actionButtonSelected($id_selected,$button_name) {
	        //Your code here

	    }


	    /*
	    | ----------------------------------------------------------------------
	    | Hook for manipulate query of index result
	    | ----------------------------------------------------------------------
	    | @query = current sql query
	    |
	    */
	    public function hook_query_index(&$query) {
			//Your code here
			$user=DB::table('cms_users')->where('id',CRUDBooster::myId())->first();
		//	dd($user);
			if($user->function=='technicien'){

				$query->where('report.technicien',CRUDBooster::myId())->where('report.state',0);

			}else if($user->function=='secretaire'){

				$query->where('report.secretaire',CRUDBooster::myId())->where('report.state',0);

			}else{
			$query->where('state',0);
		}
	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for manipulate row of index table html
	    | ----------------------------------------------------------------------
	    |
	    */
	    public function hook_row_index($column_index,&$column_value) {
	    	//Your code here
	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for manipulate data input before add data is execute
	    | ----------------------------------------------------------------------
	    | @arr
	    |
	    */
	    public function hook_before_add(&$postdata) {
			//Your code here


	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for execute command after add public static function called
	    | ----------------------------------------------------------------------
	    | @id = last insert id
	    |
	    */
	    public function hook_after_add($id) {
	        //Your code here
	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for manipulate data input before update data is execute
	    | ----------------------------------------------------------------------
	    | @postdata = input post data
	    | @id       = current id
	    |
	    */
	    public function hook_before_edit(&$postdata,$id) {
			//Your code here
			//dd($_POST['photo']);
			$postdata['state']=1;
			$this->addcomite($id);
	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for execute command after edit public static function called
	    | ----------------------------------------------------------------------
	    | @id       = current id
	    |
	    */
	    public function hook_after_edit($id) {
			//Your code here
			//CRUDBooster::redirect("/admin/rpiece/add/?idr=".$id,"<h3>test</h3>","info");

			//return  redirect('/admin/rpiece/add');

	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for execute command before delete public static function called
	    | ----------------------------------------------------------------------
	    | @id       = current id
	    |
	    */
	    public function hook_before_delete($id) {
	        //Your code here


	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for execute command after delete public static function called
	    | ----------------------------------------------------------------------
	    | @id       = current id
	    |
	    */
	    public function hook_after_delete($id) {
	        //Your code here

		}


		public function addcomite($idr)
		  {
				if($_POST['i']){
					for ($i=1; $i <$_POST['i']+1 ; $i++) {

						if (isset($_POST["b".$i])) {
							$updateDetails = [
								'id_Report' => $idr,
								'id_Piece' => $_POST["a".$i],
								'quantity' => $_POST["b".$i]
                                ];
								DB::table('rpiece')->insert($updateDetails);
								DB::table('storages')->where('id_technicien',CRUDBooster::myId())
								->where('id_piece',$_POST["a".$i])
                                ->decrement('quantite',  $_POST["b".$i]);
                                $not_qnt=DB::table('storages')->where('id_technicien',CRUDBooster::myId())
                                ->where('id_piece',$_POST["a".$i])->first();

                                if ($not_qnt->quantite < $not_qnt->quantiteMin ) {
                                    $config['content'] = "Il y a une pièce qui est (presque) terminée";
                                    $config['to'] = CRUDBooster::adminPath('StoragesEmp');
                                    $config['id_cms_users'] = [CRUDBooster::myId()]; //The Id of the user that is going to receive notification.
                                    CRUDBooster::sendNotification($config);
                                }
						}
					}
				}

			  $updateDetails = [
				'dateDebut' => $_POST['DD'],
				'dateFin' => $_POST['DF'],
				'traitement' => $_POST['traitemente'],
				'photo' => $_POST['photo'],
				'typeDeSortie' => $_POST['typeDeSortie']
				];
				if(isset($_POST['mc']))
					$updateDetails+=['mc'=>'Maintenance curative'];
				else
					$updateDetails+=['mc'=>''];
				if(isset($_POST['mp'])){
					$updateDetails+=['mp'=>'maintenance préventive'];
					$mp=DB::table('report')->where('report.id',$idr)
					->join('sites', 'sites.id', '=', 'report.site')
					->join('clients', 'clients.id', '=', 'report.client')
					->select('sites.*', 'clients.id as client')->first();
					$ch = date('Y-m-d', strtotime("+".$mp->MP." month", strtotime($mp->dateMP)));
				DB::table('sites')->where('id',$mp->id )
					->update(['dateMP'=>$ch]);
				}else
					$updateDetails+=['mc'=>''];
				if(isset($_POST['inst']))
					$updateDetails+=['inst'=>'Installation'];
				else
					$updateDetails+=['mc'=>''];
				//dd($updateDetails);
			DB::table('report')->where('id', $idr)
				->update($updateDetails);





				return redirect(CRUDBooster::mainpath());
		  }


	    //By the way, you can still create your own method in here... :)

		public function getEdit($id) {
			//Create an Auth
			if(!CRUDBooster::isUpdate() && $this->global_privilege==FALSE || $this->button_edit==FALSE) {
			  CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
			}

			$data = [];
			$data['page_title'] = 'travailler pour aujourd\'hui';
			$data['row'] = DB::table('report')->where('id',$id)->first();
			$data['technicien'] = DB::table('cms_users')->where('id',$data['row']->technicien)->first();
			$data['secretaire'] = DB::table('cms_users')->where('id',$data['row']->secretaire)->first();
			$data['client']= DB::table('clients')->where('id',$data['row']->client)->first();
			$data['sites']= DB::table('sites')->where('id',$data['row']->site)->first();
			$data['storages']= DB::table('storages')->where('id_technicien',$data['row']->technicien)->where('quantite','>',0)
			->join('pieces', 'storages.id_piece', '=', 'pieces.id')
			->select('storages.*','pieces.id','pieces.name')->get();


			//Please use cbView method instead view method from laravel
			$this->cbView('rapport_travail_edit',$data);
		  }
	}
