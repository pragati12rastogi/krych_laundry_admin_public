<?php


namespace App\Helper;

use App\Order;
use App\PaymentHistory;
use DB;
class NotiHelper
{
    public static function notiSingleUSer($to,$title,$body){
        $app_setting = DB::table('app_settings')->select('fcm_server_key')->first();
        $url = 'https://fcm.googleapis.com/fcm/send';
        $notification = array('title' =>$title, 'body' => $body, "sound" => "default");
        $arrayToSend = array('registration_ids' => array($to), 'notification' => $notification, 'priority'=>'high');
        $tempArr = $arrayToSend;
        $fields = json_encode($arrayToSend);
        $headers = array (
            'Authorization: key=' . $app_setting->fcm_server_key,
            'Content-Type: application/json'
        );
        $ch = curl_init ();
        curl_setopt ( $ch, CURLOPT_URL, $url );
        curl_setopt ( $ch, CURLOPT_POST, true );
        curl_setopt ( $ch, CURLOPT_HTTPHEADER, $headers );
        curl_setopt ( $ch, CURLOPT_RETURNTRANSFER, true );
        curl_setopt ( $ch, CURLOPT_POSTFIELDS, $fields );
        $result = curl_exec ( $ch );
        // var_dump($result);
        curl_close ($ch);
        return $result;

    }

    public static function sendOtpFunction($number,$otp){

        $ch = curl_init();
        //$url            = "https://control.msg91.com/api/sendotp.php?authkey=302176AeEcfLaw5dc0355a&mobile=".$number."&message=LaundrySms%20".$otp."&sender=OWNWAY&country=91&otp=".$otp."&otp_length=6";
        $url = "http://www.smsdealnow.com/api/pushsms?user=KRYCHEDRYCLEAN&authkey=92rKjGUEH7bc&sender=KRYCHE&mobile=".$number."&text=Dear+User+Your+OTP+for+login+to+KRYCHE+is+%7B%23".$otp."%23%7D.+Valid+for+30+minutes.+Please+do+not+share+this+OTP.+Regards%2C+KRYCHE+DRYCLEAN+AND+LAUNDRY+SERVICES+KRYCHE&output=json&entityid=1701165009030990608&templateid=1707165034682122793";
        
      	curl_setopt($ch, CURLOPT_URL,$url);
        curl_setopt($ch, CURLOPT_POST, 0);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $result = curl_exec($ch);
        curl_close ($ch);
        return $result;
    }
    public static function sendNotiAdmin(){
            $content = array(
                "en" => 'New Order arrived!!'
            );
            $fields = array(
                'app_id' => env('ONESIGNAL_APPID'),
                'included_segments' => array('All'),
                'data' => array("foo" => "bar"),
                'contents' => $content,
                'web_buttons' => [array(
                    "id" => "view-order",
                    "text" => "View",
                    "icon" => "https://image.flaticon.com/icons/png/128/4887/4887274.png",
                    "url" => url('/admin/orders')
                )]
            );
            $fields = json_encode($fields);
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, "https://onesignal.com/api/v1/notifications");
            curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json; charset=utf-8',
                'Authorization: Basic '.env('REST_API_KEY')));
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
            curl_setopt($ch, CURLOPT_HEADER, FALSE);
            curl_setopt($ch, CURLOPT_POST, TRUE);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);

            $response = curl_exec($ch);
            curl_close($ch);

            return $response;
    }
    public static function SyncEarning($data): bool
    {
        $orderDetails = Order::where('order_id',$data['order_id'])->first();
        if ($orderDetails->payment_status == 2){
            if (PaymentHistory::where('order_id',$data['order_id'])->first()){
                PaymentHistory::where('order_id',$data['order_id'])->update($data);
            }else{
                PaymentHistory::insert($data);
            }
        }else{
            if (PaymentHistory::where('order_id',$data['order_id'])->first()){
                PaymentHistory::where('order_id',$data['order_id'])->delete();
            }
        }
        return true;
    }
}
