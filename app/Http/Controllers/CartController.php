<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;

class CartController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      
       $data= Post::find(request("id"));
     
       
   \Cart::add(array(
        'id' => $data->id, // inique row ID
        'name' => $data->title,
        'price' => $data->price,
        'quantity' => 1,
        
    ));

    $datas = \Cart::getTotalQuantity();

    return $datas;

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show()
    {
      $items= \Cart::getcontent();

      $total = \Cart::getTotal();
      
     $result=[$items, $total];
     
     return $result;
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
        \Cart::remove($id);

        $items= \Cart::getcontent();

        $total = \Cart::getTotal();
      
     $result=[$items, $total];
     
     return $result;

       
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
