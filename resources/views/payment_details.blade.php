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

@include("layout/footer")

<script src="/js/app.js"></script>

</body>
</html>