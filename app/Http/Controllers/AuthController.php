<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Models\Customer;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Laravel\Passport\Passport;

class AuthController extends Controller
{


  /*
  public function __construct(){

    $this->middleware('guest:customer')->except('logout');
  }
  
  */





    public function add(Request $request){
       
    $this->validate($request,[
      'email'=>'required|email',
      'username'=>'required|min:4',
      'password'=>'required|confirmed|min:6'
    ]);


      $user=  Customer::create($request->all());
  
    
     Auth::login($user);
   
      return redirect('/');
    }







    public function login(Request $request, Response $response){


      $this->validate($request, [
        'email'   => 'required|email',
        'password' => 'required|min:6'
    ]);



$user =  Customer::where(['email'=>request('email') ])->first();

if(Hash::check(request('password'), $user->password)){

  setcookie('email', $user->email,   time() + (10 * 365 * 24 * 60 * 60));
  setcookie('_token', $user->_token,   time() + (10 * 365 * 24 * 60 * 60));

  return redirect('/');

}else{

  redirect('signin', ['msg'=>"Login Failed"]);
}

   
}


public function logout(){
  setcookie("email", "", time() - 3600);
  setcookie("_token", "", time() - 3600);
  return redirect('/');
}


}