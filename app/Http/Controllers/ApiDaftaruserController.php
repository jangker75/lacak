<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;
use Illuminate\Support\Facades\Hash;

class ApiDaftaruserController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {    
				$this->table       = "user";        
				$this->permalink   = "daftaruser";    
				$this->method_type = "post";    
		    }
		

		    public function hook_before(&$postdata) {
				//This method will be execute before run the main process
				$nik = g('nik');
				$password = g('password');
				$nama = g('nama');
				if($nik && $password) {
					if($user = DB::table('user')->where('nik',$nik)->first())
					{
						$resp = response()->json(['api_status'=>0,'api_message'=>'NIK Sudah terdaftar']);
						$resp->send();
						exit;
					}else{
						$save = [];
						$save['nik'] = $nik;
						$save['password'] = Hash::make($password);
						$save['nama'] = $nama;
						DB::table('user')->insert($save);
						$resp = response()->json(['api_status'=>1,'api_message'=>'Selamat pendaftaran berhasil']);
						$resp->send();
						exit;						

					}
			
				}
				else{
					$resp = response()->json(['api_status'=>0,'api_message'=>'Mohon mengisi data']);
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