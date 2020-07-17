<?php

namespace App\Http\Controllers;

use App\Category;
use App\Product;
use Illuminate\Contracts\Pagination\Paginator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Intervention\Image\Facades\Image;
use Carbon\Carbon;

class ProductController extends Controller
{
    public function show_product_form()
    {
        $categories =  DB::table('categories')->get();
        return view('dashboard.product.product_form',['categories'=>$categories]);
    }

    public function add_product(Request $request){
        $validateData = $request->validate([
            'product_name'=>'required',
            'category_id'=>'required',
            'product_short_description'=>'required',
            'product_long_description'=>'required',
            'product_price'=>'required|integer',
            'publication_status'=>'required',
        ]);

        $present_id = DB::table('products')->insertGetId([
            'product_name'=>$request->product_name,
            'category_id'=>$request->category_id,
            'product_short_description'=>$request->product_short_description,
            'product_long_description'=>$request->product_long_description,
            'product_price'=>$request->product_price,
            'publication_status'=>$request->publication_status,
            'created_at' => Carbon::now()
        ]);

        if ($request->hasFile('product_image')) {
            //print_r( $request->product_image->getClientOriginalExtension());
            $filename = $present_id.'.'.$request->product_image->getClientOriginalExtension();
            Image::make($request->product_image)->save(base_path('public/uploads/product_images/'.$filename),50);
            DB::table('products')->where('id',$present_id)->update([
                'product_image'=>$filename,
            ]);
        }
        if($request->file('product_sub')){
            foreach($request->file('product_sub') as $image){
                $filename = time().$image;
                Image::make($image)->save(base_path('public/uploads/product_images/sub_images'.$filename),50);
                DB::table('multiple_images')->insert([
                    'product_image' => $filename,
                    'product_id' => $present_id
                ]);
            }
        }

        return back()->with('product_add_msg',' Product Added Succesfully');
    }
    public function manage_product(){
        $products =  Product::paginate(5,['*'], 'products');
        $softDeleteProducts = Product::onlyTrashed()->paginate(5,['*'],'softDeleteProducts');
        return view('dashboard/product/manage_product',['products'=> $products,'softDeleteProducts'=>$softDeleteProducts])->with(compact('products','softDeleteProducts'));
    }
    public function product_publish($id){
        DB::table('products')->where(['id'=>$id])->update(['publication_status'=>1]);
        return back()->with('published_msg','Product Published Successfully');
    }
    public function product_unpublish($id){
        DB::table('products')->where(['id'=>$id])->update(['publication_status'=>0]);
        return back()->with('unpublished_msg','Product Unpublished Successfully');
    }
    public function product_delete($id){
        Product::find($id)->delete();
        return back()->with('published_msg','Product soft delete Successfully');
    }
    public function product_edit($id){
        $categories = Category::all();
        $product = DB::table('products')->where(['id'=>$id])->first();
        return view('dashboard.product.product_edit_form',['product'=>$product,'categories'=>$categories]);
    }
    public function product_update(Request $request){

        $validateData = $request->validate([
            'product_name'=>'required',
            'category_id'=>'required',
            'product_short_description'=>'required',
            'product_long_description'=>'required',
            'product_price'=>'required|integer',
            'publication_status'=>'required',
        ]);
        DB::table('products')->where('id',$request->product_id)->update([
            'product_name'=>$request->product_name,
            'category_id' => $request->category_id,
            'product_short_description'=>$request->product_short_description,
            'product_long_description'=>$request->product_long_description,
            'product_price'=>$request->product_price,
            'publication_status'=>$request->publication_status
        ]);
        if ($request->hasFile('product_image')) {

            $product =  Product::find($request->product_id);

            if($product->product_image =='default_img.jpg'){

                $filename = $request->product_id.'.'.$request->product_image->getClientOriginalExtension();
                Image::make($request->product_image)->save(base_path('public/uploads/product_images/'.$filename),50);
                DB::table('products')->where('id',$request->product_id)->update([
                    'product_image'=>$filename,
                ]);

            }else {
                unlink(base_path('public/uploads/product_images/'.$product->product_image));
                $filename = $request->product_id.'.'.$request->product_image->getClientOriginalExtension();
                Image::make($request->product_image)->save(base_path('public/uploads/product_images/'.$filename),50);
                DB::table('products')->where('id',$request->product_id)->update([
                    'product_image'=>$filename,
                ]);
            }
        }
        return back()->with('product_add_msg','Product Update Successfully');
    }
    public function product_restore($id){
        Product::withTrashed()->where('id',$id)->restore();
        return back()->with('published_msg','Product restore Successfully');
    }
    public function product_forceDelete($id){
        $product = Product::onlyTrashed()->find($id);
        if ($product->product_image == 'default_img.jpg') {
            Product::onlyTrashed()->find($id)->forceDelete();
            return back()->with('unpublished_msg','Product Permanent Delete Successfully');
        }else {
            unlink(base_path('public/uploads/product_images/'.$product->product_image));
            Product::onlyTrashed()->find($id)->forceDelete();
            return back()->with('unpublished_msg','Product Permanent Delete Successfully');
        }
        // Product::onlyTrashed()->where('id',$id)->forceDelete();
        // return back()->with('published_msg','Product Permanent Delete Successfully');
    }


}
