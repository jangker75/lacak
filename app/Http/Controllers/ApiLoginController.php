<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;
use Illuminate\Support\Facades\Hash;

class ApiLoginController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {    
				$this->table       = "user";        
				$this->permalink   = "login";    
				$this->method_type = "get";    
		    }
		

		    public function hook_before(&$postdata) {
				//This method will be execute before run the main process
				$nik = g('nik');
				$pass = g('password');
				if($nik && $pass) {
					$user = DB::table('user')
					->where('nik',$nik)
					->first();
					if (Hash::check($pass, $user->password)) {
						$resp=[];
						$resp['api_status']=1;
						$resp['api_message']='Success';
						$resp['nik']=$nik;
						$resp['nama']=$user->nama;
						$token = Hash::make($nik.date('Y-m-d H:i:s'));
						$resp['token']=$token;
						DB::table('user')->where('nik',$nik)->update(['token'=>$token]);
						response()->json($resp)->send();
						exit;						
					}else{
						$resp = response()->json(['api_status'=>0,'api_message'=>'Username atau password yang anda masukkan salah']);
						$resp->send();
						exit;
					}
		    	}else{
					
		    		$resp = response()->json(['api_status'=>0,'api_message'=>'Mohon mengisi username dan password']);
	    			$resp->send();
	    			exit;
		    	}
		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query

		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process

		    }

		}