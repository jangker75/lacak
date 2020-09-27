<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminInputdataController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "nama";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = false;
			$this->button_edit = false;
			$this->button_delete = false;
			$this->button_detail = false;
			$this->button_show = false;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = false;
			$this->table = "users";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Nik","name"=>"nik"];
			$this->col[] = ["label"=>"Nama","name"=>"nama"];
			$this->col[] = ["label"=>"Alamat","name"=>"alamat"];
			$this->col[] = ["label"=>"Provinsi Id","name"=>"provinsi_id","join"=>"provinsi,nama"];
			$this->col[] = ["label"=>"Kota Id","name"=>"kota_id","join"=>"kota,nama"];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'Nik','name'=>'nik','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Nama','name'=>'nama','type'=>'text','validation'=>'required|string|min:3|max:70','width'=>'col-sm-10','placeholder'=>'You can only enter the letter only'];
			$this->form[] = ['label'=>'Alamat','name'=>'alamat','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Provinsi Id','name'=>'provinsi_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'provinsi,nama'];
			$this->form[] = ['label'=>'Kota Id','name'=>'kota_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'kota,nama'];
			$this->form[] = ['label'=>'Kecamatan Id','name'=>'kecamatan_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'kecamatan,nama'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ["label"=>"Nik","name"=>"nik","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Nama","name"=>"nama","type"=>"text","required"=>TRUE,"validation"=>"required|string|min:3|max:70","placeholder"=>"You can only enter the letter only"];
			//$this->form[] = ["label"=>"Alamat","name"=>"alamat","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Provinsi Id","name"=>"provinsi_id","type"=>"select2","required"=>TRUE,"validation"=>"required|integer|min:0","datatable"=>"provinsi,nama"];
			//$this->form[] = ["label"=>"Kota Id","name"=>"kota_id","type"=>"select2","required"=>TRUE,"validation"=>"required|integer|min:0","datatable"=>"kota,nama"];
			//$this->form[] = ["label"=>"Kecamatan Id","name"=>"kecamatan_id","type"=>"select2","required"=>TRUE,"validation"=>"required|integer|min:0","datatable"=>"kecamatan,nama"];
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
			$this->pre_index_html = "
			<div class='panel panel-default'>
    <div class='panel-heading'>Input Form</div>
    <div class='panel-body'>
      <form method='get' action='".action('AdminInputdataController@getRegisNIK')."' enctype='multipart/form-data'>
        
        <div class='form-group'>
            
          <label >NIK</label>
          <input name='nik' required class='form-control' value=''/>
          <label>Nama</label>
          <input name='nama' required class='form-control' value=''/>
          <label>Alamat</label>
          <input name='alamat' required class='form-control' value=''/>
          </div>
         </div>
                <div class='box-footer'>
                  <div class='form-group'>
                            <label class='control-label col-sm-2'></label>
                            <div class='col-sm-10'>
                             <input type='submit'  value='Submit' class='btn btn-success'>
                            </div>
                  </div>
                </div>
            </form>
  </div>
  ";
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


		// public function getIndex() {
		// 	//First, Add an auth
			 
		// 	  if (!CRUDBooster::isRead() && $this -> global_privilege == FALSE || $this -> button_edit == FALSE) {
		// 		CRUDBooster::redirect(CRUDBooster::adminPath(), trans("crudbooster.denied_access"));
		// 	}
		// 	 //Create your own query 
		// 	//  $data = [];
		// 	 $data['page_title'] = 'Input Data';
		// 	//  $data['result'] = DB::table('users')
		// 	//  ->select('users.*', 'kecamatan.nama as nama_kecamatan', 'kota.nama as nama_kota', 'provinsi.nama as nama_provinsi')
		// 	//  ->join('kecamatan', 'kecamatan.id', '=', 'users.kecamatan_id')
		// 	//  ->join('provinsi', 'provinsi.id', '=', 'users.provinsi_id')
		// 	//  ->join('kota', 'kota.id', '=', 'users.kota_id')
		// 	//  ->orderby('id','desc')->paginate(10);
				  
		// 	 //Create a view. Please use `cbView` method instead of view method from laravel.

		// 	 $data = $this->repository();
		// 	 $this->cbView('input_data',$data);
		// }
		
		public function repository($paginate = true, callable $callback = null){
			
			
			$query = DB::table('users')
			->select('users.*', 'kecamatan.nama as nama_kecamatan', 'kota.nama as nama_kota', 'provinsi.nama as nama_provinsi')
			->join('kecamatan', 'kecamatan.id', '=', 'users.kecamatan_id')
			->join('provinsi', 'provinsi.id', '=', 'users.provinsi_id')
			->join('kota', 'kota.id', '=', 'users.kota_id')
			->orderby('id','desc');
			

			if(request('provinsi_id')) {
                $query->where('users.provinsi_id', request('provinsi_id'));
			}
			if($callback) {
                $query = call_user_func($callback, $query);
			}
			$data['provinsi'] = DB::table('provinsi')->orderby('nama','asc')->get();
			$data['result'] = $query->paginate(10);


			return $data;
		}

		public function getRegisNIK(){
			// dd('sukses add daata');
			
			$client = new \GuzzleHttp\Client();
    		// $response = $request->getBody();
    		
			$response = $client->get('http://localhost/lacak-corona/public/api/regis?nama={{$nama}}&nik=3172044905930005&alamat=jalanan');
			
			echo $response->getBody();
			// {"type":"User"...'
			// var_export($response->json());
			// Outputs the JSON decoded data


			CRUDBooster::redirect($_SERVER['HTTP_REFERER'],$response->getBody(),"success");
		}

	    //By the way, you can still create your own method in here... :) 


	}