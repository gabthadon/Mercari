<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/slick/slick.css">
  <link rel="stylesheet" href="/slick/slick-theme.css">
<script src="https://unpkg.com/vue-star-rating/dist/VueStarRating.umd.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

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



@include('layout/nav')







  
   <div class="row container-fluid">
<div class="col-sm-6">

<div class="prod_details"> <div class="faded"> @foreach($images as $image) <div class="prod_details">
   <img class="faded" src="/storage/{{$image}}"  > </div>@endforeach
</div>

    <div class="prod_layer2"> Have a similar item ? <span class="item1"> Sell yours</span>  
    
        <span > <button class="item1_btn">like this item</button></span>

    </div>

    <div class="prod_title">Meet the seller</div>
<br>
    <img class="seller_image" src="/storage/{{$post[0]->user->avatar}}" alt="" srcset=""> <span class="prod_title">{{$post[0]->user->name}}</span>
    
   

<span><b>44</b> Review |</span>
<span><b>100</b> Listed |</span>
<span><b>33 </b> Sales</span> 

<span id='admin-rating'>
   <star-rating  v-model="rating" v-bind:increment="0.01" :read-only="true" :star-size="30" ></star-rating>
</span>

<br>
<span>@include("layout/rating")</span>
</div>
</div>

<div class="col-sm-6">
    <div class="prod_title">{{$post[0]->title}} </div>

    <div class="price">₦{{number_format($post[0]->price)}}</div>

    <div class="btn_cart_container" id="app">
        <form @submit.prevent="addToCart" method="post">
            @csrf
         <input type="hidden" ref="myid" ref="myid" value="{{$post[0]->id}}"> 
       
         <button  class="btn btn_cart">Add to Cart</button></div>


         <!--Payment Form    -->
        </form>

<br>

<a href="/details">
<button  id="btn-pay"  class="btn " > Pay Now </button>
 </a>



    <br> <br>

    <div class="prod_title" >  Overview   </div> 

    <span>Condition <span style="padding-left:15px">{{$post[0]->condition}}  </span></span> <br>
    <span>Category <span style="padding-left:15px">{{$post[0]->category->name}} </span></span> <br><br>

    <div class="prod_title" >  Details   </div> 

    <span>Size <span style="padding-left:15px">{{$post[0]->size}}</span></span> <br>
    <span>Posted <span style="padding-left:15px">06/22/22 </span></span> <br><br>

    <div class="prod_title" >  Description  </div> 
     
    <div>
     @php
echo($post[0]->body)
     @endphp
    </div>
</div>
   </div>


 
<div class="review-section">
<div class="row">
@foreach($reviews as $review)
<div class="col-md-4">
@if($review->rating==1)
<span class="fa fa-star checked"></span>
<span class="fa fa-star "></span>
<span class="fa fa-star "></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>

@elseif($review->rating==2)
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star "></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>

@elseif($review->rating==3)
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>

@elseif($review->rating==4)
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star"></span>

@elseif($review->rating==5)
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>



@endif

  
  <div class='comment'>{{$review->comment}} </div>
<div>{{$review->customer->username}}</div>
</div>

@endforeach
</div>
</div>



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


<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script src="/slick/slick.min.js"></script>


<script>
$('.faded').slick({
  dots: true,
  infinite: true,
  speed: 500,
  fade: true,
  cssEase: 'linear'
});
</script>

<script src="/js/app.js"></script>
</body>
</html>