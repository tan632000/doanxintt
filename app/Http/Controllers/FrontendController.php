<?php

namespace App\Http\Controllers;

use App\Category;
use App\MultipleImage;
use App\Product;
use Illuminate\Http\Request;

class FrontendController extends Controller
{
    function index(){
        $LatestProducts =  Product::where('publication_status',1)->orderBy('id', 'DESC')->take(8)->get();
        $products =  Product::where('publication_status',1)->get();
        // $categories = Category::where('publication_status',1)->get();
        return view('front-end/frontend_view',['LatestProducts'=>$LatestProducts,'products'=>$products])->with(compact('LatestProducts','products'));
    }
    function product_details_by_id($product_id)
    {
        $product =  Product::find($product_id);
        $slider_images =  MultipleImage::where('product_id',$product->id)->get();

        $relatedProducts =  Product::where('category_id',$product->category_id)->where('id','!=',$product->id)->orderBy('id','DESC')->get();
        return view('front-end/product_details',['product'=>$product,'relatedProducts'=>$relatedProducts,'slider_images'=>$slider_images]);
    }
    public function shop_product_view(){
        $products =  Product::where('publication_status',1)->paginate(10);
        // $categories = Category::where('publication_status',1)->get();
        return view('front-end/shop_page',['products'=>$products])->with(compact('products'));
    }
    public function show_product_by_cate($category_id){
        // $categories = Category::where('publication_status',1)->get();
        $productsByCate =  Product::where('category_id',$category_id)->orderBy('id','DESC')->paginate(10);
        return view('front-end/shop_page',['products'=>$productsByCate]);
    }
}
