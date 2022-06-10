<!DOCTYPE html>
<html lang="en">
<head>
  <script src="/js/app.js"></script>
  <script src="https://kit.fontawesome.com/81015d824d.js" crossorigin="anonymous"></script>
  <link rel="shortcut icon" href="/images/logos/gadgeduplogo-2.jpg" type="image/x-icon">
  <link rel="stylesheet" href="/css/bootstrap.min.css">
  <link rel="stylesheet" href="/css/style.css">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sigin|Gadgedup</title>
</head>
<body>
 <div class="container" >
 <div class="row">
<div class="col-md-6" style="padding-right:55px"> 
  
  <div id="header_logo"><img class="logo" src="/images/logos/gadgeduplogo-2.jpg" alt="" ></div>

  <div id="header_text">Sell or buy. <br>
    Almost anything.</div>
  
  <img src="images/signup.jpg" alt="" id="signup_image"></div>
<div class="col-md-6" id="signup_form" >  
  <div id="signin_text">Don't have an account? <a href="/signup" style="color:blue">Sign up  </a></div> <br><br> <br>
  <span id="signup_text1">Log in to Gadgedup</span> <br>  <br>

 

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

<form method="post" action="/login"> 
  @csrf
  <div class="form_text">Email</div>
 
  <input type="text" name="email" class="form-control"> 
  @error('email')
  <span class="alert ">{{$message}}</span>
@enderror


<div class="form_text">Password</div>

  <input type="password" name="password" class="form-control" >
  @error('password')
  <span class="alert ">{{$message}}</span>

  @enderror






     <div id="btn_signup"><input type="submit" value="Log in" class="form-control" 
     style="width:350px;
      height:50px;
       background-color:#3a4cea;
       color:white ">  <span style="color: red; font-weight:bold">{{$msg ??  ''}}</span> </div>


   <div class="captch_text"> 
    This site is protected by reCAPTCHA Enterprise and the Google <br> <a href="https://policies.google.com/privacy"> Privacy Policy  </a> and <a href="https://policies.google.com/terms"> Terms of Service</a>  apply.</div>


         </div>

</form>

  </div>
 </div>
</body>
</html>