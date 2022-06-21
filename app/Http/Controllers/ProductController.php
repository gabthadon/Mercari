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

        if(empty($_COOKIE['email']) ||  empty($_COOKIE['_token'])){
            return redirect('/signin');
        }


 $customer= Customer::where(['email'=>$_COOKIE['email'], '_token'=>$_COOKIE['_token']])->get();


 echo("user id   " . request('user_id'));




Rating::create([
'product_id'=>request('product_id'),
'user_id'=>request('user_id'),
'comment'=>request('comment'),
'rating'=>request('rating'),
'customer_id'=>$customer[0]->id,

]);

     return "Thanks For Your Review";

    }


    public function create(){

        return view('products.add');
       
       
    }


}

