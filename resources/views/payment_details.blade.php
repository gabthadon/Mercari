<!DOCTYPE html>
<html lang="en">
<head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap');
</style>
<script src="https://unpkg.com/vue-star-rating/dist/VueStarRating.umd.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="/slick/slick.css">
    <link rel="stylesheet" href="/slick/slick-theme.css">
      <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500&display=swap" rel="stylesheet">
      <link rel="shortcut icon" href="/images/logos/gadgeduplogo-2.jpg" type="image/x-icon">
      <link rel="stylesheet" href="/css/app.css">
      <link rel="stylesheet" href="/css/style.css">
      <link rel="stylesheet" href="/css/all.min.css">
     
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> Gadgedup | Details</title>
</head>
<body>

@include('layout/navbar')

<div class="title1">PAYMENT DETAILS</div>
<form method="GET" action="/process_payment">
  @csrf
<div style="margin-left:auto; margin-right:auto; width:40%; padding-top:50px">
<div class="input"><input class="form-control" placeholder="Enter Phone Number" value="{{$phone}}" type="text" name="phone" id=""> 
@error('phone')
<span class='alert'>{{$message}}</span><br>
@enderror
</div>

<div class="input"><input class="form-control" placeholder="Enter Other Phone Number" value="{{$ext_phone}}"  type="text" name="extra_phone" id=""> 
@error('extra_phone')
<span class='alert'>{{$message}}</span><br>
@enderror</div>

<div class=""input>
<textarea class="form-control" placeholder="Enter Address"  name="address" id=""  rows="5">{{$address}}</textarea> 
@error('address')
<span class='alert'>{{$message}}</span><br>
@enderror
</div>

<div class="btn-proceed"><input  id="btn-pay" class="btn " style="width:100px" type="submit" value="Proceed"/></div>
</div>
</form>

<br><br><br><br><br>

<div id="footer"> 
  <span class="footer_text">Buy or Sell Online</span>

  <div class="footer_image_box"> <img class="footer_image" src="/images/footer/footer2.jpg" alt="" srcset=""></div>

</div>


<br><br><br><br><br>

<div id="footer2" class="container-fluid">

  <div class="row footer2_box">
<div class="col-sm-4">
   <div class="footer2_title">  Shop </div> 
  <div class="footer2_body">Category</div>
  <div class="footer2_body">20% off</div>
  <div class="footer2_body">Frequently sold items</div>
</div>

<div class="col-sm-4" >
  <div class="footer2_title"> Support </div>
<div class="footer2_body">Contus Us</div>
<div class="footer2_body">Market Place Guidline</div>
<div class="footer2_body">Sellers Protection</div>
<div class="footer2_body">Buyer Protection</div>
<div class="footer2_body">Help Center</div>
</div>


<div class="col-sm-4 ">
  <div class="footer2_title">Policy Center </div>
  <div class="footer2_body">Policy Center</div>
  <div class="footer2_body">Term of Service</div>
  <div class="footer2_body">Privacy</div>
  <div class="footer2_body">Prohibited item/Conduct</div>
  <div class="footer2_body">Sale Tax</div>
  <div class="footer2_body">Refund and Return Policy</div>

</div>

</div>
</div>
<div class="footer3"> <span style="padding-left: 40px" class="footer3_text">COPYRIGHT © Gadgedup  - 2022</span>  <span class="footer3_text">Designed By <a href="http://gaibtech.com">Gabriel Okhai</a></span></div>

<script src="/js/app.js"></script>

</body>
</html>