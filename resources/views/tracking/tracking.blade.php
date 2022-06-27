<!DOCTYPE html>
<html lang="en">
<head>
<link rel="shortcut icon" href="/images/logos/gadgeduplogo-2.jpg" type="image/x-icon">
    <link rel="stylesheet" href="/css/track.css">
    <link rel="stylesheet" href="/css/app.css">
    <script defer src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" integrity="sha384-rOA1PnstxnOBLzCLMcre8ybwbTmemjzdNlILg8O7z1lUkLXozs4DHonlDtnE7fpc" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tracking Details</title>
</head>
<body>
<div class="container">
    <article class="card">
        <header class="card-header"> My Orders / Tracking </header>
        <div class="card-body">
            <h6>Order ID: OD45345345435</h6>
            <article class="card">
                <div class="card-body row">
                    <div class="col"> <strong>Estimated Delivery time:</strong> <br>29 nov 2019 </div>
                    <div class="col"> <strong>Status:</strong> <br> {{$status}} </div>
                    <div class="col"> <strong>Details:</strong> <br> {{$track[0]->details}} </div>
                    <div class="col"> <strong>Tracking ID:</strong> <br> {{$track[0]->order_id}} </div>
                </div>
            </article>
     @if($track[0]->status==1)
     <div class="container-fluid">
         <div class="track">
                <div class="step active"> <span class="icon"> <i class="fa fa-check"></i> </span> <span class="text">Order confirmed</span> </div>
                <div class="step" > <span class="icon"> <i class="fa fa-user"></i> </span> <span class="text"> Packaged for Delivery</span> </div>
                <div class="step "> <span class="icon"> <i class="fa fa-truck"></i> </span> <span class="text"> On the way </span> </div>
                <div class="step"> <span class="icon"> <i class="fa fa-box"></i> </span> <span class="text">Ready for pickup</span> </div>
                <div class="step"> <span class="icon"> <i class="fas fa-home"></i> </span> <span class="text">Delivered</span> </div>
            </div>
         </div>
         <hr>
   
   <hr>
     @endif


     @if($track[0]->status==2)
     <div class="container-fluid">
         <div class="track">
                <div class="step active"> <span class="icon"> <i class="fa fa-check"></i> </span> <span class="text">Order confirmed</span> </div>
                <div class="step active" > <span class="icon"> <i class="fa fa-user"></i> </span> <span class="text"> Packaged for Delivery</span> </div>
                <div class="step "> <span class="icon"> <i class="fa fa-truck"></i> </span> <span class="text"> On the way </span> </div>
                <div class="step"> <span class="icon"> <i class="fa fa-box"></i> </span> <span class="text">Ready for pickup</span> </div>
                <div class="step"> <span class="icon"> <i class="fas fa-home"></i> </span> <span class="text">Delivered</span> </div>
            </div>
         </div>
         <hr>
   
   <hr>
     @endif


     @if($track[0]->status==3)
     <div class="container-fluid">
         <div class="track">
                <div class="step active"> <span class="icon"> <i class="fa fa-check"></i> </span> <span class="text">Order confirmed</span> </div>
                <div class="step active" > <span class="icon"> <i class="fa fa-user"></i> </span> <span class="text"> Packaged for Delivery</span> </div>
                <div class="step active"> <span class="icon"> <i class="fa fa-truck"></i> </span> <span class="text"> On the way </span> </div>
                <div class="step"> <span class="icon"> <i class="fa fa-box"></i> </span> <span class="text">Ready for pickup</span> </div>
                <div class="step"> <span class="icon"> <i class="fas fa-home"></i> </span> <span class="text">Delivered</span> </div>
            </div>
         </div>
         <hr>
   
   <hr>
     @endif



     @if($track[0]->status==4)
     <div class="container-fluid">
         <div class="track">
                <div class="step active"> <span class="icon"> <i class="fa fa-check"></i> </span> <span class="text">Order confirmed</span> </div>
                <div class="step active" > <span class="icon"> <i class="fa fa-user"></i> </span> <span class="text"> Packaged for Delivery</span> </div>
                <div class="step active"> <span class="icon"> <i class="fa fa-truck"></i> </span> <span class="text"> On the way </span> </div>
                <div class="step active"> <span class="icon"> <i class="fa fa-box"></i> </span> <span class="text">Ready for pickup</span> </div>
                <div class="step"> <span class="icon"> <i class="fas fa-home"></i> </span> <span class="text">Delivered</span> </div>
            </div>
         </div>
         <hr>
   
   <hr>
     @endif


     @if($track[0]->status==5)
     <div class="container-fluid">
         <div class="track">
                <div class="step active"> <span class="icon"> <i class="fa fa-check"></i> </span> <span class="text">Order confirmed</span> </div>
                <div class="step active" > <span class="icon"> <i class="fa fa-user"></i> </span> <span class="text"> Packaged for Delivery</span> </div>
                <div class="step active"> <span class="icon"> <i class="fa fa-truck"></i> </span> <span class="text"> On the way </span> </div>
                <div class="step active"> <span class="icon"> <i class="fa fa-box"></i> </span> <span class="text">Ready for pickup</span> </div>
                <div class="step active"> <span class="icon"> <i class="fas fa-home"></i> </span> <span class="text">Delivered</span> </div>
            </div>
         </div>
         <hr>
   
   <hr>
     @endif
            
            <a href="#" class="btn btn-warning" data-abc="true"> <i class="fa fa-chevron-left"></i> Back to orders</a> 

        </div>
    </article>
</div> 



</body>
</html>