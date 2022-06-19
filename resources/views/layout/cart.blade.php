
<!-- Modal -->
<div class="modal fade" id="cartModal" tabindex="-1" aria-labelledby="cartModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="cartModalLabel" style="font-weight:bold">My Cart</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      
      
      <table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Item</th>
      <th scope="col">Quantity</th>
      <th scope="col">Price</th> 
      <th scope="col">Remove</th> 
    </tr>
  </thead>
  <tbody id='cart_table'>
    <tr v-for="items in item" :key="items.id">
      <th   scope="row">  </th>
      <td class="test1">@{{items.name}}</td>
      <td class="quantity">@{{items.quantity}}</td>
      <td class="cart_price">₦@{{items.price.toLocaleString('en-US')}}</td>
      <td class="x"  @click="cartRemove(items.id)" >x</td>
     
    </tr>
   
    <tr> 
        <td></td>
        <td style="font-weight:bold">Total </td>
        <td></td>
        <td style="font-weight:bold">₦@{{price.toLocaleString('en-US')}}</td>
    </tr>
    
  </tbody>
</table>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      
        <a href="/process_payment">
        <button type="button" class="btn btn-primary">Checkout</button>
        </a>
      </div>
    </div>
  </div>
</div>