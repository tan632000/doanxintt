<?php

namespace App\Http\Controllers\App;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Product;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use Intervention\Image\Facades\Image;


class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Product::orderBy('id','desc')->get();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validateData = $request->validate([
            'product_name'=>'required',
            'category_id'=>'required',
            'product_short_description'=>'required',
            'product_long_description'=>'required',
            'product_price'=>'required|integer',
            'publication_status'=>'required',
        ]);

        $id = DB::table('products')->insertGetId([
            'product_name'=>$request->product_name,
            'category_id'=>$request->category_id,
            'product_short_description'=>$request->product_short_description,
            'product_long_description'=>$request->product_long_description,
            'product_price'=>$request->product_price,
            'publication_status'=>$request->publication_status,
            'created_at' => Carbon::now()
        ]);

        if ($request->product_image) {
            $explode1 = explode(";", $request->product_image);
            $explode2 = explode("/", $explode1[0]);
            $filename = time().'.'.$explode2[1];
            Image::make($request->product_image)->save(base_path('public/uploads/product_images/'.$filename),50);
            DB::table('products')->where('id',$id)->update([
                'product_image'=>$filename,
            ]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return Product::findOrFail($id);
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
        $validateData = $request->validate([
            'product_name'=>'required',
            'category_id'=>'required',
            'product_short_description'=>'required',
            'product_long_description'=>'required',
            'product_price'=>'required|integer',
            'publication_status'=>'required',
        ]);

        DB::table('products')->where('id',$id)->update([
            'product_name'=>$request->product_name,
            'category_id'=>$request->category_id,
            'product_short_description'=>$request->product_short_description,
            'product_long_description'=>$request->product_long_description,
            'product_price'=>$request->product_price,
            'publication_status'=>$request->publication_status
        ]);

        if ($request->product_image) {
            $product = Product::find($id);
            if($product->product_image == "default_img.jpg"){
                $explode1 = explode(";", $request->product_image);
                $explode2 = explode("/", $explode1[0]);
                $filename = time().'.'.$explode2[1];
                Image::make($request->product_image)->save(base_path('public/uploads/product_images/'.$filename),50);
                DB::table('products')->where('id',$id)->update([
                    'product_image'=>$filename,
                ]);
            }else{
                unlink(base_path('public/uploads/product_images/'.$product->product_image));
                $explode1 = explode(";", $request->product_image);
                $explode2 = explode("/", $explode1[0]);
                $filename = time().'.'.$explode2[1];
                Image::make($request->product_image)->save(base_path('public/uploads/product_images/'.$filename),50);
                DB::table('products')->where('id',$id)->update([
                    'product_image'=>$filename,
                ]);
            }


        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $product = Product::find($id);
        if($product->product_image == "default_img.jpg"){
            Product::find($id)->delete();
        }else{
            Product::find($id)->delete();
            unlink(base_path('public/uploads/product_images/'.$product->product_image));
        }

    }
}
