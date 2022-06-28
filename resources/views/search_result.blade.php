<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css">
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

@include('layout/nav')

<div class="title1">SEARCH RESULT</div>


<div class="row">
@foreach($post as $posts)

<div class="col-md-3">   <a href="/{{$posts->id}}/{{$posts->slug}}">
     <img class="slide_image" src="/storage/{{$posts->image}}" alt="" srcset=""></a>
     @if($posts->state==2) <span class='tag-search'> Sold  @endif  </span>
    
    <div class="item_title">  <a href="/{{$posts->id}}/{{$posts->slug}}">  {{substr($posts->title, 0, 15)}} </a>  @php if(strlen($posts->title) > 15) echo("....")  @endphp</div>
    <span class="price-tag">₦{{number_format($posts->price)}}</span>
  </div>

@endforeach
</div>



<br><br><br><br><br>

@include("layout/footer")

<script src="/js/app.js"></script>

</body>
</html>