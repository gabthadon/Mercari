<nav class="navbar navbar-expand-lg bg-light" style="">
  <div class="container-fluid">
    <a class="navbar-brand" href="/"><span class="menu_item"><img class="logo" src="/images/logos/gadgeduplogo-2.jpg" alt="" srcset=""></span></a>
   
    <span  id="app2" ><img @click="showCart" data-bs-toggle="modal" data-bs-target="#cartModal"  src="/images/icons/icons8-cart-48.png" > <span>{{\Cart::getTotalQuantity()}} </span>
@include("layout/cart")
</span>

   
<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>


    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      <li class="nav-item">
      <form class="d-flex" role="search">

      <span class="menu_item"><input style="width: 300px; padding-right:10px" class="form-control btn-search" type="text" placeholder="Search For anything"></span>
       
      </form>

</li>

        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled">Disabled</a>
        </li>
      </ul>
     
    </div>
  </div>
</nav>