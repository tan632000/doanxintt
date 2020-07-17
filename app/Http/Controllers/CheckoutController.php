<?php

namespace App\Http\Controllers;

use App\Customer;
use App\Mail\SendCustomer;
use App\Order;
use App\OrderDetail;
use App\Shipping;
use Darryldecode\Cart\Facades\CartFacade;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Session;

class CheckoutController extends Controller
{

    public function checkout_form_view(){
        return view('front-end.checkout.checkout_form');
    }
    public function customer_signup(Request $request){
        $request->validate([
            'email_address' => 'required|unique:customers,email_address'
        ]);
        $customer = new Customer();
        $customer->first_name = $request->first_name;
        $customer->last_name = $request->last_name;
        $customer->email_address = $request->email_address;
        $customer->phone_number = $request->phone_number;
        $customer->password = bcrypt($request->password);
        $customer->address = $request->address;
        $customer->save();

        Session::put(['customer_id'=>$customer->id]);
        Session::put(['customer_name'=>$customer->first_name.' '.$customer->last_name]);

        Mail::to($customer->email_address)->send(new SendCustomer($customer));
        return redirect('/checkout/shipping');
    }

    public function checkout_shipping_form(){
        $customer = Customer::find(Session::get('customer_id'));
        return view('front-end.checkout.shipping_form',['customer'=>$customer]);
    }

    public function save_shipping_info(Request $request){
        $shipping = new Shipping();
        $shipping->full_name = $request->full_name;
        $shipping->email_address = $request->email_address;
        $shipping->phone_number = $request->phone_number;
        $shipping->address = $request->address;
        $shipping->save();

        Session::put(['shipping_id'=>$shipping->id]);
        return redirect('/checkout/payment');
    }

    public function checkout_payment_form(){
        return view('front-end.checkout.payment_form');
    }

    public function save_order_info(Request $request){
        if($request->payment_type == 'Cash'){
            $order = new Order();
            $order->customer_id = Session::get('customer_id');
            $order->shipping_id = Session::get('shipping_id');
            $order->total_price = Session::get('total_price');
            $order->payment_type = $request->payment_type;
            $order->save();

            // lấy ra tất cả các sản phẩm trong giỏ hàng
            $all_cart_products = CartFacade::getContent();
            foreach($all_cart_products as $all_cart_product){
                $order->id;
                $orderDetail = new OrderDetail();
                $orderDetail->order_id = $order->id;
                $orderDetail->product_id = $all_cart_product->id;
                $orderDetail->product_name = $all_cart_product->name;
                $orderDetail->product_image = $all_cart_product->attributes->product_image;
                $orderDetail->product_price = $all_cart_product->price;
                $orderDetail->product_quantity = $all_cart_product->quantity;
                $orderDetail->save();
            }
            CartFacade::clear();
            return redirect()->route('order_invoice_download',['id'=>$order->id]);
        }
    }

    public function logout_customer()
    {
        Session::forget(['customer_id','customer_name','shipping_id']);
        return redirect('/');

    }

    public function loging_customer(Request $request){
        if ($customer = Customer::where('email_address',$request->email_address)->first())
        {
            if (password_verify ($request->password , $customer->password ))
            {
                session(['customer_id' => $customer->id,'customer_name'=> $customer->first_name.' '.$customer->last_name]);
                return redirect('/checkout/shipping');
            }
            else
            {
                return back()->with('wrong_message','Please give the currect PASSWORD');
            }
        }
        else
        {
            return back()->with('wrong_message','Please give the currect email');
        }

    }
}
