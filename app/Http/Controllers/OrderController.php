<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Illuminate\Http\Request;

class OrderController extends Controller
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
        $order= new Order();
        $order->email=$request->email;
        $order->save();
        $products = $request->products;
        $order->products()->attach($products);
        

        
        /* 

                foreach ($products as $product){
            $order->products()->attach($products);
        }


        Order::create([
            'email' => $request->email,
        ]);*/
   
        
        return "Orden creada";
    }

    public function getByEmail($email) {

        $order = Order::with('products')->where('email',$email)->get();

        if (empty($order)) {
            return response()->json(['message' => 'Not Found'], 404);
        }      

        return response()->json($order);
    }
}
