<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Customer;
use App\Models\Order;
use App\Models\Tracking;

use KingFlamez\Rave\Facades\Rave as Flutterwave;

class FlutterwaveController extends Controller
{
    public function index(Request $request){

        $this->validate($request, [
            'phone'=>'required',
            'extra_phone'=>'required',
            'address'=>'required'
        ]);

       
      


         if(empty($_COOKIE['email']) ||  empty($_COOKIE['_token'])){
             return redirect('/signin');
         }


Customer::where(['email'=>$_COOKIE['email'], '_token'=>$_COOKIE['_token']])->update($request->all());

        $customer= Customer::where(['email'=>$_COOKIE['email'], '_token'=>$_COOKIE['_token']])->get();
      
     

        //Process Payment
        $items= \Cart::getcontent();

        $total = \Cart::getTotal();
           
        

//This generates a payment reference
$reference = Flutterwave::generateReference();
session(['ref'=>$reference]);

  // Enter the details of the payment
  $data = [
    'payment_options' => 'card',
    'amount' => $total,
    'email' => $customer[0]->email,
    'tx_ref' => $reference,
    'currency' => "NGN",
    'redirect_url' => route('callback'),
    'customer' => [
        'email' => $customer[0]->email,
       
        "name" => $customer[0]->username
    ],

  

];

$payment = Flutterwave::initializePayment($data);



if ($payment['status'] !== 'success') {
    echo("
    <script> alert('Transaction Failed')  </script>
    ");
    return;
}

return redirect($payment['data']['link']);


      
    }











    public function callback()
    {
        $customer= Customer::where(['email'=>$_COOKIE['email'], '_token'=>$_COOKIE['_token']])->get();
        $items= \Cart::getcontent();
        $total = \Cart::getTotal();

        $status = request()->status;

        //if payment is successful
        if ($status ==  'successful') {
        
            echo("
            <script> alert('Successful')  </script>
            ");
            $transactionID = Flutterwave::getTransactionIDFromCallback();
            $data = Flutterwave::verifyTransaction($transactionID);
    
    
        
    foreach($items as $item){


            Order::create([
                'ref'=>session('ref'),
                'trans_id'=>'GTK'.$transactionID,
                'customer_id'=>$customer[0]->id,
              'name'=>$item->name,
              'amount'=>$item->price,
              'quantity'=>$item->quantity,
                'status'=>'1',
    
            ]);
        }

        Tracking::create([
            'order_id'=>'GTK'.$transactionID,
            'status'=>1,
            'details'=>'Payment Accepted',

        ]);

    return redirect("/");

       
        }
        elseif ($status ==  'cancelled'){
            //Put desired action/code after transaction has been cancelled here
            return redirect('/');
        }
        else{
            //Put desired action/code after transaction has failed here
            echo("
            <script> alert('Transaction Failed')  </script>
            ");
        }
        // Get the transaction from your DB using the transaction reference (txref)
        // Check if you have previously given value for the transaction. If you have, redirect to your successpage else, continue
        // Confirm that the currency on your db transaction is equal to the returned currency
        // Confirm that the db transaction amount is equal to the returned amount
        // Update the db transaction record (including parameters that didn't exist before the transaction is completed. for audit purpose)
        // Give value for the transaction
        // Update the transaction to note that you have given value for the transaction
        // You can also redirect to your success page from here


  

   
}

}
