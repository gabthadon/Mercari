<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProductController extends Controller
{
    

    public function index(){

        echo("index");

    }

    public function add(){

       
    }


    public function create(){

        return view('products.add');
       
       
    }


}

