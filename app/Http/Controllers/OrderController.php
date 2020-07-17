<?php

namespace App\Http\Controllers;

use App\Customer;
use App\Order;
use App\OrderDetail;
use App\Shipping;
use Barryvdh\DomPDF\Facade as PDF;
use Illuminate\Http\Request;
use Darryldecode\Cart\Facades\CartFacade;

class OrderController extends Controller
{
    public function manage_order_info(){
        $orders = Order::all();
        return view('dashboard.order.order_manage',compact('orders'));
    }

    public function order_detail_by_order_id($id){
        $order = Order::find($id);
        $customer = Customer::find($order->customer_id);
        $shipping = Shipping::find($order->shipping_id);
        $order_details = OrderDetail::where('order_id',$order->id)->get();
        return view('dashboard.order.order_details',compact('order','customer','shipping','order_details'));
    }

    public function order_invoice_view_by_order_id($id){
        $order = Order::find($id);
        $customer = Customer::find($order->customer_id);
        $shipping = Shipping::find($order->shipping_id);
        $order_details = OrderDetail::where('order_id',$order->id)->get();
        return view('dashboard.order.order_invoice',compact('order','customer','shipping','order_details'));
    }

    public function order_invoice_download_by_order_id($id){
        $order = Order::find($id);
        $customer = Customer::find($order->customer_id);
        $shipping = Shipping::find($order->shipping_id);
        $order_details = OrderDetail::where('order_id',$order->id)->get();

        $pdf = PDF::loadView('dashboard.order.order_invoice_download',compact('order','customer','shipping','order_details'));
        return $pdf->download('demo.pdf');
        CartFacade::clear();
        return redirect('/');
    }
}
