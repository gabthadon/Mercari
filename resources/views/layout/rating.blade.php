<!-- Button trigger modal -->
<div type="button" data-bs-toggle="modal" data-bs-target="#exampleModal">
<b class="item1" style="margin-left:50px">  Review </b>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">User Review</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">

        <form action="" > 
          @csrf  
      <textarea class="form-control" name="" id="review-comment" rows="3" placeholder="Comment"></textarea>
       <input type="hidden" value="{{$post[0]->id}}" id="product-id">
       <input type="hidden" value="{{$post[0]->user->id}}" id="user-id">
      <br>

      <div id='star-rating'>
   <star-rating v-model="rating"   :star-size="30" ></star-rating>
  
 



      
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button id="btnrate" type="button" @click.prevent="addReview" class="btn btn-primary">Review</button>
      </div>
      </div>
        </form>
      </div>
    </div>
  </div>
</div>`