@extends('dashboard/dashboard_main_content')
@section('title')
   Manage Product
@endsection
@section('dashboard_body')
@if (session('published_msg'))
<div class="alert alert-success">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    {{session('published_msg')}}
</div>
@endif
@if (session('unpublished_msg'))
<div class="alert alert-danger">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    {{session('unpublished_msg')}}
</div>
@endif
    <h2>List Product</h2>
    <table class="table table-bordered table-hover table-responsive">
        <h4 class="badge badge-info">Product Total: {{$products->count()}}</h4>
        <thead>
            <tr>
                <th>SN.</th>
                <th>Product Name</th>
                <th>Category Name</th>
                <th>Product short description</th>
                <th>Product price</th>
                <th>Product Image</th>
                <th>Created Date </th>
                <th>Publication status</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
         @foreach ($products as $product )
            <tr>
                {{-- @php(print_r($loop)) --}}
                <td>{{ $loop->index+1}}</td>
                <td>{{$product->product_name}}</td>
                <td>{!!$product->realtionToCategory->category_name!!}</td>
                <td>{{$product->product_short_description}}</td>
                <td>{{$product->product_price}}</td>
                <td>
                    <img src="{{asset('uploads/product_images')}}/{{$product->product_image}}" width="100" height="auto" alt="">
                </td>
                <td>{{$product->created_at->diffForHumans()}}</td>

                <td>
                    @if($product->publication_status==1 )
                        Published
                    @else
                        Unpublished
                    @endif
                </td>
                 <td>
                    <a href="{{route('product_edit',['id'=>$product->id])}}" class="btn btn-outline-warning">Edit</a>
                    <a href="{{route('product_delete',['id'=>$product->id])}}" class="btn btn-outline-danger">Delete</a>
                    @if($product->publication_status==1 )
                        <a href="{{route('unpublished_product',['id'=>$product->id])}}" class="btn btn-outline-info">Unpublished</a>
                    @else
                        <a href="{{route('published_product',['id'=>$product->id])}}" class="btn btn-outline-Primary">Published</a>
                    @endif

                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
    {{$products->links()}}
<br>
<br>
    <h2>Deleted Product</h2>
    <table class="table table-bordered table-hover table-responsive">
            <h4 class="badge badge-info">Deleted Total: {{$softDeleteProducts->count()}}</h4>
        <thead>
            <tr>
                <th>SN.</th>
                <th>Product Name</th>
                <th>Category id</th>
                <th>Product short description</th>
                <th>Product price</th>
                <th>Created Date </th>
                <th>Publication status</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
         @foreach ($softDeleteProducts as $softDeleteProduct )
            <tr>
                {{--  @php(print_r($loop))  --}}
                <td>{{ $loop->index+1}}</td>
                <td>{{$softDeleteProduct->product_name}}</td>
                <td>{!!$softDeleteProduct->realtionToCategory->category_name!!}</td>
                <td>{{$softDeleteProduct->product_short_description}}</td>
                <td>{{$softDeleteProduct->product_price}}</td>
                {{--  <td>
                    <img src="{{asset('uploads/product_images')}}/{{$softDeleteProduct->product_image}}" class="img-fluid w-50" alt="">
                </td>  --}}
                <td>{{$softDeleteProduct->created_at->format('F j, Y, g:i:sa')}}</td>
                <td>
                    @if($softDeleteProduct->publication_status==1 )
                        Published
                    @else
                        Unpublished
                    @endif
                </td>
                <td>
                    <a href="{{route('product_restore',['id'=>$softDeleteProduct->id])}}" class="btn btn-outline-success">Restore</a>
                    <a href="{{route('product_forceDelete',['id'=>$softDeleteProduct->id])}}" class="btn btn-outline-danger">Force Delete</a>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
    {{$softDeleteProducts->links()}}


@endsection()
