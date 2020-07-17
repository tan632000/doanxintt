<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Darryldecode\Cart\Facades\CartFacade;
use App\Product;

class CartController extends Controller
{
    public function product_add_to_cart(Request $request){
        $product = Product::find($request->product_id);
        CartFacade::add([
            'id' => $product->id,
            'name' => $product->product_name,
            'price' =>$product->product_price,
            'quantity' =>$request->product_quantity,
            'attributes' =>[
                'product_image'=>$product->product_image,
            ]
        ]);
        return redirect()->route('show_product_by_cate',['product_id'=>$product->category_id]);
    }

    public function cart_remove_item_pro_id($product_id)
    {
        CartFacade::remove($product_id);
        return back();
    }

    public function cart_update_item_pro_id(Request $request){
        CartFacade::update($request->product_id, array(
            'quantity' => array(
                'relative' => false,
                'value' => $request->product_quantity
            ),
        ));
        return back();
    }
}
