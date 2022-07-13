<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
class MembershipController extends Controller
{
    //
    public function index(){
        $members =  DB::table('memberships as m')
            ->select('m.id','m.service_id','m.title','m.price','m.discount','m.desc_1','m.desc_2','m.desc_3','d.duration_name')
            ->join('membership_duration as d','d.id','=','m.duration')
            ->where('m.status',1)
            ->get();
        $final = [];
        if (sizeof($members) > 0){
            foreach ($members as $member){
                $service_ids = explode(',',$member->service_id);
                $service_details = [];
                foreach ($service_ids as $service_id){
                    array_push($service_details,(DB::table('services')->select('service_name')->where('id',$service_id)->first())->service_name);
                }
                $member->service_id = $service_details;
                $final[] = $member;
            }
        }
        return $final;
    }
    public function save(Request $request){
        $user_id = $request->user_id;
        $membership_id = $request->membership_id;
        if (DB::table('customers')->where('id',$user_id)->update(['membership' => $membership_id , 'updated_at' => date('Y-m-d H:i:s')])){
            return ['status' => 1 , 'message' => 'Membership added successfully'];
        }return ['status' => 0 , 'message' => 'some internal error contact admin'];
    }
}
