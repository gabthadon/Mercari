<!DOCTYPE html>
<html lang="en">
<head>
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
   <div class="menu container-fluid"> 
       <span class="menu_item"><img class="logo" src="/images/logos/gadgeduplogo-2.jpg" alt="" srcset=""></span>
<span class="menu_item"><input style="width: 100%px; padding-right:250px" class="form-control btn-search" type="text" placeholder="Search For anything"></span>
    


   <span class="menu_item"> Sign up</span> 
   <span class="menu_item"> Log in </span> 
   <span class="menu_item">|</span>
<span class="menu_item" id="app2" ><img @click="showCart" data-bs-toggle="modal" data-bs-target="#cartModal"  src="/images/icons/icons8-cart-48.png" > <span id="cart">{{\Cart::getTotalQuantity()}} </span>
@include("layout/cart")
</span>

<span  class="menu_item" ><button  style="background-color: blue; color:white; height:35px" class="" id="btn_header">List an item</button></span>
  

   </div>

   @foreach($datas as $data)
   <div class="row container-fluid">
<div class="col-sm-6">
<div class="prod_details"> <img class="detail_pix" src="/storage/{{$data->image}}" alt="" srcset=""> 

    <div class="prod_layer2"> Have a similar item ? <span class="item1"> Sell yours</span>  
    
        <span > <button class="item1_btn">like this item</button></span>

    </div>

    <div class="prod_title">Meet the seller</div>
<br>
    <img class="seller_image" src="/storage/{{$data->user->avatar}}" alt="" srcset=""> <span class="prod_title">{{$data->user->name}}</span>
    
   

<span><b>44</b> Review |</span>
<span><b>100</b> Listed |</span>
<span><b>33 </b> Sales</span> 

<span id='admin-rating'>
   <star-rating v-model="rating" :star-size="30" ></star-rating>
</span>

<br>
<span>@include("layout/rating")</span>
</div>
</div>

<div class="col-sm-6">
    <div class="prod_title">{{$data->title}} </div>

    <div class="price">₦{{number_format($data->price)}}</div>

    <div class="btn_cart_container" id="app">
        <form @submit.prevent="addToCart" method="post">
            @csrf
         <input type="hidden" ref="myid" ref="myid" value="{{$data->id}}"> 
       
         <button  class="btn btn_cart"   >Add to Cart</button></div>


         <!--Payment Form    -->
        </form>

<br>

        <form method="GET" action="/process_payment" id="paymentForm">
    <input  id="btn-pay" class="btn " type="submit" value="Pay Now"/>
</form>


    <br>

    <div class="prod_title" >  Description   </div>
</div>
   </div>
@endforeach



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