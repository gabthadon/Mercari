<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\Tracking;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //Display Orders Table
$order =  Order::get();





return view('admin.order', ['items'=>$order]);



    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($order_id)
    {
      $track= Tracking::where(['order_id'=>$order_id])->get();

      if($track[0]->status==1){
          $delivery_status="Order Confirmed";
      }

     else if($track[0]->status==2){
        $delivery_status="Packaged For Delivery";
    }

    else if($track[0]->status==3){
        $delivery_status="On The Way";
    }

    else if($track[0]->status==4){
        $delivery_status="Ready For Pickup";
    }

    else if($track[0]->status==5){
        $delivery_status="Delivered";
    }
dd(date($track[0]->created_at) );
      return view('tracking.tracking', ['track'=>$track, 'status'=>$delivery_status]);
   
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
