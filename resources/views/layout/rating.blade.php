<!-- Button trigger modal -->
<div type="button" data-bs-toggle="modal" data-bs-target="#exampleModal">
<b>  Review </b>
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
      <textarea class="form-control" name="" id="review-comment" cols="80" rows="50" placeholder="Comment"></textarea>
       <input type="hidden" value="{{$data->id}}" id="product-id">
       <input type="hidden" value="{{$data->user->id}}" id="user-id">
      <br>

      <div id='star-rating'>
   <star-rating v-model="rating"   :star-size="30" ></star-rating>
  
   <button @click.prevent="addReview">Test </button>
</div>

</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button id="btnrate" type="button" @click="new_review" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>`