<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminDashboardController extends \crocodicstudio\crudbooster\controllers\CBController {
		public function getIndex() {

            $data['countVisitor'] = DB::table('user')->count();
            $data['countTenant'] = DB::table('tenant')->count();
			$data['countVisit'] = DB::table('lacak')->count();
			// $data['countBoxall1'] =  $data['countBoxCibitung'] + $data['countBoxJepara'];
            // $data['countBoxTersimpan'] = DB::table('box')->where('status_id','1')->count();
            // $data['countBoxDipinjam'] = DB::table('box')->where('status_id','2')->count();
            // $data['countBoxDiambil'] = DB::table('box')->where('status_id','3')->count();
			// $data['countDokAll'] = DB::table('box_detail')->count();
			// $data['countBoxall2'] =  $data['countBoxTersimpan'] + $data['countBoxDipinjam'] + $data['countBoxDiambil'];
           
            return view('admin_dashboard', $data);
        }

	}