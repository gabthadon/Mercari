<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="stylesheet" href="/css/app.css">
  <link rel="stylesheet" href="/css/style.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div>
      
        
   
  


    <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col"> Reference Number</th>
      <th scope="col">Name</th>
      <th scope="col">Quantity</th>
      <th scope="col">Price</th>
    </tr>
  </thead>
  <tbody>
  @foreach($items as $item)
    <tr>
      <th scope="row">{{$item->ref}}  </th>
      <td>{{$item->name }} </td>
      <td>{{$item->quantity}}</td>
      <td>₦{{number_format($item->amount)}}</td>
    </tr>
    @endforeach
   
  </tbody>
</table>



    </div>
</body>
</html>