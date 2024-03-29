<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Customer;
use App\Models\Rating;

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {


      $post =  Post::inRandomOrder()  
     ->limit(10)
      ->get();

      $image=json_decode($post[0]->images) ;

     

      $top = Post::where('category_id', 52)->get();
//dd(json_decode($top[0]->images));
      if(isset($_COOKIE['email'])){
       

        $logout= "Logout";
        return view('index', ['post'=>$post, 'top'=>$top, 'signout'=>$logout, 'images'=>$image]);
    }else{
    $login = "Signin";
    $signup = "Signup";
    $btn_dropdown="logout";
      return view('index', ['post'=>$post, 'top'=>$top, 'signin'=>$login, 'signup'=>$signup , 'logout'=>$btn_dropdown]);
    }
}
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id, $slug)
    {

        
        $data= Post::where('id', $id)
        ->where('slug', $slug)
        ->get();

      $image= $data[0]->images;

      $image =json_decode($image);
      $author_id= $data[0]->author_id;

     $review=Rating::where(['user_id'=>$author_id])->get();

   

       
        return view('product_details', ['post'=>$data, 'prod_id'=>$id, 'prod_slug'=>$slug, 'images'=>$image, 'reviews'=>$review]);
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request)
    {
        //Check If user is loged in
        if(empty($_COOKIE['email']) ||  empty($_COOKIE['_token'])){
            return redirect('/signin');
        }

        
      else if( \Cart::getTotalQuantity()==0){
        return back();
       }
       
        $customer= Customer::where(['email'=>$_COOKIE['email'], '_token'=>$_COOKIE['_token']])->get();
  $phone= $customer[0]->phone;
  $ext_phone= $customer[0]->extra_phone;
  $address= $customer[0]->address;
        
       return view('payment_details', ['phone'=>$phone, 'ext_phone'=> $ext_phone, 'address'=>$address]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
