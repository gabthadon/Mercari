<!DOCTYPE html>
<html lang="en">
<head>
<script src="https://cdn.jsdelivr.net/npm/vue@2.6.14/dist/vue.js"></script>
<link rel="shortcut icon" href="/images/logos/gadgeduplogo-2.jpg" type="image/x-icon">
<link rel="stylesheet" href="/css/app.css">
      <link rel="stylesheet" href="/css/style.css">
      <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500&display=swap" rel="stylesheet">
      <link rel="shortcut icon" href="/images/logos/gadgeduplogo-2.jpg" type="image/x-icon">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gadgedup | Packing Tracking</title>
</head>
<body>
<div class="title1">Track My Package</div>


<div id="tracking" style="margin-left:auto; margin-right:auto; width:40%; padding-top:50px">
<div class="input"><input class="form-control" v-model="track_id" placeholder="Enter Tracking ID"  type="text" name="tracking_id" id=""> 

</div>


<div class="btn-proceed"><a :href="`/track/`+track_id"><input  id="btn-pay" class="btn " style="width:100px" type="submit" value="Proceed"/></a></div>
</div>



<!--Footer-->
@include("layout/footer")



<script>
    new Vue({
  el:'#tracking',

  data:{
    track_id:""
  }
});

</script>
</body>
</html>