<nav class="navbar navbar-expand-lg bg-light">
  <!-- Navbar content -->
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
</nav>