<!DOCTYPE html>
<html lang="en">
<head>


  <link rel="shortcut icon" href="/images/logos/gadgeduplogo-2.jpg" type="image/x-icon">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/style.css">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sigup|Gadgedup</title>
</head>
<body>
 <div class="container" >
 <div class="row">
<div class="col-md-6" style="padding-right:55px"> 
  
  <div id="header_logo">
    <a href="/">
    <img class="logo" src="/images/logos/gadgeduplogo-2.jpg" alt="" >
    </a>
  </div>


  <div id="header_text">Sell or buy. <br>
    Almost anything.</div>
  
  <img src="images/signup.jpg" alt="" id="signup_image"></div>
<div class="col-md-6" id="signup_form" >  
  <div id="signin_text">Already have an account? <a href="/signin" style="color:blue"> Log in </a> </div> <br><br> <br>
  <span id="signup_text1">Sign up to continue</span> <br>  <br>

  <span class="signup_text2">  To like or purchase an item, or to chat with the seller, <br> please create your account.
  </span>

<div id="btn_signup"> 
  
  <a href="{{ url('auth/facebook') }}">
  <button  class="form-control" 
     style="
     
      height:50px;
       background-color:#3a4cea;
       color:white "> <img id="icon_facebook" src="/images/icons/facebook2.png" >  Continue with facebook </button>
      
  </a>
      </div>
       <br>

<span style="display: flex"><hr class="line1"> <span style="padding-left: 10px; padding-right:10px">or</span>  <hr class="line1"></span>

<div id="form">

  <form method="post" action="/adduser" > 
    @csrf
    <div class="form_text">Email</div>
    <input type="text" name="email" class="form-control"  placeholder="Enter your email"> 
    @error('email')
<span class='alert'>{{$message}} </span>
    @enderror
  
  
    <div class="form_text">Username</div>
    <input type="text" name="username" class="form-control" placeholder="Enter your username"> 
    @error('username')
<span class='alert'>{{$message}} </span>
    @enderror
  
  <div class="form_text">Password</div>
    <input type="password" name="password" class="form-control" placeholder="Enter a password"> 
    @error('password')
<span class='alert'>{{$message}} </span>
    @enderror
  
  <div class="form_text">Comfirm Password</div>
    <input type="password"  class="form-control" name="password_confirmation" placeholder="Comfirm your password"> 


  
     <div class="signup_text2" > 
     
       <input id="agree" type="checkbox" @change="termevent" style="width:50px; height:30px;">  I agree to the Mercari Terms of Service and Privacy Policy
       <label for="checkbox">  </label>
</div>
  
       
  
       <div id="btn_signup"><input id="termsandcon"  type="submit"   value="Sign Up" class="form-control" 
       style="width:350px;
        height:50px;
         background-color:#3a4cea;
         color:white " disabled >  </div>  </div>
       </div>
      
      
        
  </form>
  <script src="/js/terms.js"></script>
  <script src="/js/app.js"></script>
  </div>
 </div>
</body>

</html>