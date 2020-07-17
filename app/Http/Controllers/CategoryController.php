<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CategoryController extends Controller
{
    public function show_category_form(){
        return view('dashboard/category/category_form');
    }
    public function add_category(Request $request){
        $validate = $request->validate([
            'category_name' => 'required|unique:categories,category_name',
            'category_description' => 'required',
            'publication_status' => 'required'
        ]);
        $category = new Category;
        $category->category_name = $request->category_name;
        $category->category_description = $request->category_description;
        $category->publication_status = $request->publication_status;

        $category->save();
        return redirect('/add/category')->with('message_add_cat','Category Added Successfully');
    }
    public function manage_category(){
        $categories =  Category::paginate(10);
        return view('dashboard/category/manage_category',['categories'=> $categories]);
    }
    public function category_unpublish($id){
        $category = Category::find($id);
        $category->publication_status = 0;
        $category->save();
        return back()->with('publish_message','Category Unpublished Successfully');
    }
    public function category_publish($id){
        $category = Category::find($id);
        $category->publication_status = 1;
        $category->save();
        return back()->with('publish_message','Category Published Successfully');
    }
    public function category_delete($id){
        $category = Category::find($id);
        $category->delete();
        return back()->with('publish_message','Category Deleted Successfully');
    }
    public function category_edit($id, Request $request){
        $category = Category::find($id);
        return view('dashboard/category/category_edit_form',['category'=> $category]);
    }
    public function category_update(Request $request){
        $validate = $request->validate([
            'category_name' => 'required|unique:categories,category_name',
            'category_description' => 'required',
            'publication_status' => 'required'
        ]);
        $category = Category::find($request->category_id);
        $category->category_name = $request->category_name;
        $category->category_description = $request->category_description;
        $category->publication_status = $request->publication_status;
        $category->save();
        return redirect('/category/manage')->with('Category_update_message','Category Updated Successfully');
    }
}
