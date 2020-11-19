<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminArchiveRapportController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "id";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = true;
			$this->button_edit = true;
			$this->button_delete = true;
			$this->button_detail = false;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = false;
			$this->table = "report";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Client","name"=>"client","join"=>"clients,client"];
			$this->col[] = ["label"=>"Site","name"=>"site","join"=>"sites,site"];
			$user=DB::table('cms_users')->where('id',CRUDBooster::myId())->first();
			if($user->function=='technicien'){
				$this->col[] = ["label"=>"Secretaire","name"=>"secretaire","join"=>"cms_users,name"];
			}else if($user->function=='secretaire'){
				$this->col[] = ["label"=>"Technicien","name"=>"technicien","join"=>"cms_users,name"];
			}else{
				$this->col[] = ["label"=>"Secretaire","name"=>"secretaire","join"=>"cms_users,name"];
				$this->col[] = ["label"=>"Technicien","name"=>"technicien","join"=>"cms_users,name"];
			}
			$this->col[] = ["label"=>"DateDebut","name"=>"dateDebut"];
			$this->col[] = ["label"=>"DateFin","name"=>"dateFin"];
			$this->col[] = ["label"=>"Probleme","name"=>"probleme"];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'Client','name'=>'client','type'=>'select','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'clients,client'];
			$this->form[] = ['label'=>'Site','name'=>'site','type'=>'select','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'sites,site'];
			$user=DB::table('cms_users')->where('id',CRUDBooster::myId())->first();
			if($user->function=='technicien'){
			}else if($user->function=='secretaire'){
				$this->form[] = ['label'=>'Technicien','name'=>'technicien','type'=>'select','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'cms_users,name'];
			}else{
				$this->form[] = ['label'=>'Secretaire','name'=>'secretaire','type'=>'select','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'cms_users,name'];
				$this->form[] = ['label'=>'Technicien','name'=>'technicien','type'=>'select','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'cms_users,name'];
			}
			$this->form[] = ['label'=>'DateDebut','name'=>'dateDebut','type'=>'datetime','validation'=>'required|date','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'DateFin','name'=>'dateFin','type'=>'datetime','validation'=>'required|date','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Probleme','name'=>'probleme','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Traitement','name'=>'traitement','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Photo','name'=>'photo','type'=>'upload','validation'=>'required|image|max:3000','width'=>'col-sm-10','help'=>'File types support : JPG, JPEG, PNG, GIF, BMP'];
			$this->form[] = ['label'=>'','name'=>'mc','type'=>'checkbox','validation'=>'required','dataenum'=>'mc','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'','name'=>'mp','type'=>'checkbox','validation'=>'required','dataenum'=>'mp','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'','name'=>'inst','type'=>'checkbox','validation'=>'required','dataenum'=>'inst','width'=>'col-sm-9'];

			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ["label"=>"Client","name"=>"client","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"Site","name"=>"site","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"Technicien","name"=>"technicien","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"Secretaire","name"=>"secretaire","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"DateDebut","name"=>"dateDebut","type"=>"date","required"=>TRUE,"validation"=>"required|date"];
			//$this->form[] = ["label"=>"DateFin","name"=>"dateFin","type"=>"date","required"=>TRUE,"validation"=>"required|date"];
			//$this->form[] = ["label"=>"Probleme","name"=>"probleme","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Traitement","name"=>"traitement","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Photo","name"=>"photo","type"=>"upload","required"=>TRUE,"validation"=>"required|image|max:3000","help"=>"File types support : JPG, JPEG, PNG, GIF, BMP"];
			//$this->form[] = ["label"=>"State","name"=>"state","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"Mc","name"=>"mc","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Mp","name"=>"mp","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Inst","name"=>"inst","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"TypeDeSortie","name"=>"typeDeSortie","type"=>"textarea","required"=>TRUE,"validation"=>"required|string|min:5|max:5000"];
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
			$this->addaction[] = ['label'=>'','icon'=>'fa fa-eye','color'=>'primary','url'=>CRUDBooster::mainpath('getDetail'.'/[id]','','success')];


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
			if($user->function=='technicien'){
			$query->where('report.technicien',CRUDBooster::myId())->where('report.state',1);
			}else if($user->function=='secretaire'){
				$query->where('report.secretaire',CRUDBooster::myId())->where('report.state',1);
			}else
			$query->where('report.state',1);
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
			$user=DB::table('cms_users')->where('id',CRUDBooster::myId())->first();
			if($user->function =='technicien'){
				$postdata['technicien']=CRUDBooster::myId();
			}else if($user->function =='secretaire'){
				$postdata['secretaire']=CRUDBooster::myId();
			}
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
            $pieces=DB::table('rpiece')->where('id_Report',$id)->get();
            $user=DB::table('report')->where('id',$id)->select('report.technicien')->first();
            foreach ($pieces as $piece){
                $res= DB::table('storages')
                ->where('id_technicien', $user->technicien)
                ->where('id_piece', $piece->id_Piece)
                ->increment('quantite' , $piece->quantity);
                // dd($user->technicien);
                // dd($res);
            }

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

		public function getDetail($id) {
			//Create an Auth
			if(!CRUDBooster::isRead() && $this->global_privilege==FALSE || $this->button_edit==FALSE) {
			  CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
			}

			$data = [];
			$data['page_title'] = 'Detail Data';
			$data['row'] = DB::table('report')->where('id',$id)->first();
			$data['client'] = DB::table('clients')->where('id',$data['row']->client)->first();
			$data['site'] = DB::table('sites')->where('id',$data['row']->site)->first();
			$data['tech'] = DB::table('cms_users')->where('id',$data['row']->technicien)->first();
			$data['sec'] = DB::table('cms_users')->where('id',$data['row']->secretaire)->first();
			$data['piece'] = DB::table('pieces')->join('rpiece', 'rpiece.id_Piece', '=', 'pieces.id')
			->where('rpiece.id_Report', '=',$data['row']->id)
			->select( 'rpiece.quantity','pieces.name')->get();


			//Please use cbView method instead view method from laravel
			$this->cbView('archiveRappoert',$data);
		  }


	    //By the way, you can still create your own method in here... :)


	}
