<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="/slick/slick.css">
  <link rel="stylesheet" href="/slick/slick-theme.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="/images/logos/gadgeduplogo-2.jpg" type="image/x-icon">
    <link rel="stylesheet" href="/css/app.css">
    <link rel="stylesheet" href="/css/style.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home</title>
</head>
<body>


    <div id="banner" >
<img id="banner_image" src="/images/fashion-online-shopping-sites.jpg" alt="" srcset="" style=" ">
 </div>
    
 <!---Background Image Content -->
    <div style="position: relative; " id="banner_layer1" >
<div class="header"><img class="logo" src="/images/logos/gadgeduplogo-2.jpg" alt="" >
     </div>
<div class="header toggle_menu" id="leftheader_text">Shop the marketplace </div>
    </div>

    <div class="right_header_content" id="banner_item2">
<div class="right_header_content toggle_item "> <a href="/signup">Sign up </a></div>
<div class="right_header_content toggle_item"><a href="/signin"> Log in</a> </div>
<div class="right_header_content toggle_item"> |</div> 
<div class="right_header_content toggle_menu" id="app2"> <img  @click="showCart" data-bs-toggle="modal" data-bs-target="#cartModal" src="/images/icons/icons8-cart-64.png" id="cart"> {{\Cart::getTotalQuantity()}} 
@include("layout/cart")
</div>
<div class="right_header_content toggle_menu"> <img src="/images/icons/icons8-user-30.png" id="user"> </div>
<div class="right_header_content toggle_item"> <button class="" id="btn_header">List an item</button> </div>    
</div>


<div class="banner_content">
    <div class="banner_side_content">
        <div class="banner_side_text1" >Find what you need, <br>
            sell what you don’t</div> 
            <input class="form-control" type="text" placeholder="Search for one-of-a-kind finds">
        <div class="btn_search "><button class="btn">Apparel </button> </div>
        <div class="btn_search "><button class="btn">Gaming </button> </div>
        <div class="btn_search "><button class="btn">Collectibles </button> </div>
        </div>
</div>

<div id="box_bellow_banner"  class="container-fluid">

    <div class="row banner_bellow_image">
        <div class="col-sm-4"> 
            <div class="box_title">Declutter </div>
<div class="box_body"> Breathe new life into your home <br>
    and sell last year’s go-tos. </div>
        </div>


        <div class="col-sm-4"> 
            <div class="box_title">Discover </div>
<div class="box_body"> Shop one-of-a-kind treasures <br>
    and all of your favorite brands. </div>
        </div>



        <div class="col-sm-4"> 
            <div class="box_title">All from home</div>
<div class="box_body"> Make your space feel more like <br>
    home without ever leaving it. </div>
        </div>

    </div>
    
</div>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

<div class="container-fluid slider_container" style="background-color: rgb(212, 221, 215)"> 
    <span class="slide_title">See what's selling</span> <span>See all</span> 
<div class="multiple-items">
   

  @foreach($post as $posts)
  
  <div >  <span class="tag1">SOLD</span> <a href="/{{$posts->id}}/{{$posts->slug}}"> <img class="slide_image" src="/storage/{{$posts->image}}" alt="" srcset=""></a>
          
    <div class="tag2">₦{{number_format($posts->price)}}</div>
    <div class="item_title">  <a href="/{{$posts->id}}/{{$posts->slug}}">  {{substr($posts->title, 0, 20)}} </a>  @php if(strlen($posts->title) > 20) echo("....")  @endphp</div>
  </div>

@endforeach   

  </div>
</div>





<div  class="container-fluid slider_container" style="background-color: rgb(212, 221, 215)"> 
  <span class="slide_title">Tops & t-shirts</span> <span>See all</span> 
<div class="multiple-items">
 
 

  @foreach($top as $tops)
  <div >  <span class="tag1">SOLD</span> <a href="/{{$tops->id}}/{{$tops->slug}}"> <img class="slide_image" src="/storage/{{$tops->image}}" alt="" srcset=""> </a>
          
    <div class="tag2">₦{{number_format($tops->price)}}</div>
  <div class="item_title" >  <a href="/{{$tops->id}}/{{$tops->slug}}" >  {{substr($tops->title, 0, 20)}}  </a>  @php if(strlen($tops->title) > 20) echo("....")  @endphp</div>
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
  
 
$('.multiple-items').slick({
  dots: false,
  infinite: false,
  speed: 300,
  slidesToShow: 6,
  slidesToScroll: 6,
  responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 4,
        slidesToScroll: 4,
        infinite: true,
        dots: false
      }
    },
    {
      breakpoint: 600,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 3
      }
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1
      }
    }
    // You can unslick at a given breakpoint now by adding:
    // settings: "unslick"
    // instead of a settings object
  ]
});
		
	
</script>

@include("layout/cart")


<script src="/js/app.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


</body>
</html>