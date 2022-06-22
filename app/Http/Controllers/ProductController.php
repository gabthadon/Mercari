<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Customer;
use App\Models\Rating;

class ProductController extends Controller
{
    

    public function index(){

        echo("index");

    }

    public function add_review(){
//Check If user is loged in
        if(empty($_COOKIE['email']) ||  empty($_COOKIE['_token'])){
            return redirect('/signin');
        }


 $customer= Customer::where(['email'=>$_COOKIE['email'], '_token'=>$_COOKIE['_token']])->get();



Rating::create([
'product_id'=>request('product_id'),
'user_id'=>request('user_id'),
'comment'=>request('comment'),
'rating'=>request('rating'),
'customer_id'=>$customer[0]->id,

]);

     return "Thanks For Your Review";

    }


    public function show($id){

     $five_star = Rating::where(['rating'=>'5'])->get();
     $five_star = count($five_star ) * 5;

     $four_star = Rating::where(['rating'=>'4'])->get();
     $four_star = count($four_star) * 4;

     $three_star = Rating::where(['rating'=>'3'])->get();
     $three_star = count($three_star) * 3;
       
     $two_star = Rating::where(['rating'=>'2'])->get();
     $two_star = count($two_star) * 2;

     $one_star = Rating::where(['rating'=>'1'])->get();
     $one_star = count($one_star) * 1;

     $total=Rating::where(['user_id'=>$id])->get();
     $total=count($total);

     
     $rating = ($five_star + $four_star + $three_star + $two_star +  $one_star)/$total;

     return  $rating;
       
    }


}

