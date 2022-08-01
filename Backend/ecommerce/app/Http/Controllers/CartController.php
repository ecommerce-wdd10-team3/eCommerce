<?php

namespace App\Http\Controllers;

use App\Models\Tax;
use App\Models\User;
use Pacewdd\Bx\_5bx;
use App\Models\Order;
use App\Helpers\Helper;
use App\Models\Product;
use App\Models\UserAddress;
use Illuminate\Http\Request;
use App\Models\ShippingCharge;
use App\Models\Transaction;
use Illuminate\Support\Facades\Auth;

class CartController extends Controller
{

    /**
     * Show the Cart item list.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(Request $request)
    {
        $title = 'Shopping Cart';
        $session = $request->session()->get('cart') ?? [];

        if($request->session()->has('shipping_addr_id')) {
            $request->session()->forget('shipping_addr_id');
        }

        $products = [];
        $subtotal = 0;
        $total_qty = 0;
        $disable_checkout = false;

        if($session) {
            $products = Product::whereIn('id', array_keys($session))->with('size')->get();

            foreach($products as $product) {
                // calc cart summary
                $subtotal += 
                    floatval($product->price) * $session[$product->id];
                $total_qty += $session[$product->id];
                // disable checkout button when out of stock item exists
                if($product->quantity == 0 || $product->quantity < $session[$product->id]) {
                    $disable_checkout = true;
                }
            }
        } 

        $subtotal = number_format($subtotal, 2);
    
        return view('cart/index', compact(
            'title', 
            'products', 
            'session', 
            'subtotal', 
            'total_qty', 
            'disable_checkout'
        ));
    }

    /**
     * Add to Cart from product detail page logic
     *
     * @param Request $request
     * @param [type] $id product id
     * @return void
     */
    public function create(Request $request, $id) {
        $session = $request->session()->get('cart');
        if( isset($session[$id]) ) {
            $session[$id] = $session[$id] + 1;
        } else {
            $session[$id] = 1;
        }

        $request->session()->put('cart', $session);

        $prev_url = url()->previous();

        return redirect($prev_url);
    }

    /**
     * Update cart item quantity in session
     *
     * @param Request $request
     * @return void
     */
    public function edit(Request $request) {

        $session = $request->session()->get('cart');
        $id = $request->input('id');
        $action = $request->input('action');

        if(!empty($action) && isset($session[$id])) {
            switch($action) {
                case 'plus':
                    $session[$id] = $session[$id] + 1;
                    break;
                case 'minus':
                    if($session[$id] == 1) {
                        unset($session[$id]);
                    } else {
                        $session[$id] = $session[$id] - 1;
                    }
                    break;
                case 'delete':
                    unset($session[$id]);
                    break;
            }
            $request->session()->put('cart', $session);
        }

        return redirect()->route('cartIndex');
    }


    /**
     * Show the Cart checkout item list and form.
     *
     * @param Request $request
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function checkoutCart(Request $request) {

        $title = 'Checkout';

        if(Auth::check()) {
            // ====== Authenticated User ======
            // user
            $user_id = Auth::user()->id;
            $user = User::find($user_id);
            // address
            $address_list = $user->user_addresses;
            $session_address_id = $request->session()->get('shipping_addr_id') ?? null;
            $selected_address_id = null;
            $country = '';
            $province = '';
            // cart items
            $session_cart = $request->session()->get('cart') ?? [];
            $products = [];
            // summary
            $subtotal = 0;
            $total_qty = 0;
            $taxes = [];
            $taxes_total = 0;
            $free_shipping_amount = null;
            $shipping_fee = 0;
            $total = 0;

            if($session_address_id) {
                $selected_address_id = intval($session_address_id);
                $user_address = UserAddress::find( $session_address_id);
                $default_address = $user_address->full_address() . ', ' . $user_address->user_postal_code();
                // For summary
                $country = strtolower($user_address->user_country());
                $province = strtolower($user_address->user_province());
            } else {
                $selected_address_id = $user->default_address_id;
                $user_address = UserAddress::find( $selected_address_id);
                $default_address = $user_address->full_address() . ', ' . $user_address->user_postal_code();
                // For summary
                $country = strtolower($user_address->user_country());
                $province = strtolower($user_address->user_province());
            }

            if($session_cart) {
                $products = Product::whereIn('id', array_keys($session_cart))->with('size')->get();

                // For Summary
                foreach($products as $product) {
                    // calc cart summary
                    $subtotal += 
                        floatval($product->price) * $session_cart[$product->id];
                    $total_qty += $session_cart[$product->id];
                }

                // taxes and shipping fee logic
                if($country == 'canada') {
                    // Tax fee
                    $taxes = Tax::where('province', $province)
                            ->orWhere('province_short', $province)
                            ->whereNull('deleted_at')
                            ->first(['gst', 'pst', 'hst']);

                    foreach($taxes->toArray() as $tax) {
                        $taxes_total += floatval($tax) * $subtotal;
                    }

                    // standard shipping fee
                    $shipping_fee = ShippingCharge::where('country', $country)->first()->charge;
                    $free_shipping_amount = 80;
                    $shipping_fee = $subtotal > $free_shipping_amount ? 0 : floatval($shipping_fee);
                    
                } else {
                    // standard shipping fee
                    $shipping_fee = ShippingCharge::where('country', 'Overseas')->first()->charge;
                    $free_shipping_amount = 250;
                    $shipping_fee = $subtotal > $free_shipping_amount ? 0 : floatval($shipping_fee);
                }

                $subtotal = number_format($subtotal, 2);
                $total =  number_format($subtotal + $taxes_total + $shipping_fee, 2);
            }

            $summary = [
                'selected_address_id' => $selected_address_id,
                'subtotal' => $subtotal,
                'total_qty' => $total_qty,
                'taxes' => $taxes,
                'free_shipping_amount' => $free_shipping_amount,
                'shipping_fee' => $shipping_fee,
                'total' => $total,
            ];

            // for payment view use
            $request->session()->put('summary', $summary);

            return view('/cart/checkout', compact(
                'title',
                'user',
                'default_address',
                'address_list',
                'products', 
                'session_cart',
                'selected_address_id',
                'subtotal', 
                'total_qty',
                'taxes',
                'free_shipping_amount',
                'shipping_fee',
                'total'
            ));

        } else {
            // ====== Unauthenticated User ======
            session()->flash('error', 'Please login or register an account before checking out the shopping cart');
            session(['route_back_cart' => true]);
            return redirect()->route('login');

        }
    }

    /**
     * Update the selected shipping address from selection on checkout page
     *
     * @param Request $request
     * @return void
     */
    public function updateShippingAddress(Request $request) {

        $selected_address_id = $request->input('address_item_id');
        session(['shipping_addr_id' => $selected_address_id]);

        return redirect()->route('checkoutCart');
    }

    /**
     * Checkout purchase and submit credit card information
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function processToBilling(Request $request) {

        $title = 'Payment';

        // get cart summary from session
        $summary = $request->session()->get('summary') ?? [];

        // user
        $user_id = Auth::user()->id;
        $user = User::find($user_id);
        $address = 
            UserAddress::find($summary['selected_address_id'])->full_address() . ', ' . 
            UserAddress::find($summary['selected_address_id'])->user_postal_code();
        $billing_address = [];

        // check if user selected to use shipping address as billing address
        $session_billing_id = $request->session()->get('billing_address_id') ?? null;
        
        if($session_billing_id) {
            $billing_address = UserAddress::find($session_billing_id);
        }

        return view('cart/billing', compact(
            'title',
            'user',
            'summary',
            'address',
            'billing_address',
        ));
    }

    /**
     * Store the billing address in session when user selected to use shipping address as billing address
     *
     * @param Request $request
     * @return void
     */
    public function useShippingAsBilling(Request $request) {

        $checked = $request->input('shipping_as_billing');

        if($checked == 'on') {
            $summary = $request->session()->get('summary') ?? [];
            $address_id = $summary['selected_address_id'];
            $request->session()->put('billing_address_id', $address_id);
        } else {
            $request->session()->forget('billing_address_id');
        }
        
        return redirect()->route('processToBilling');
    }

    /**
     * Process from billing address page and display the credit form 
     *
     * @param Request $request
     * @return void
     */
    public function showCreditCardForm(Request $request) {

        $title = "Payment";

        // get cart summary from session
        $summary = $request->session()->get('summary') ?? [];
        
        // user
        $user_id = Auth::user()->id;
        $user = User::find($user_id);
        $address = 
            UserAddress::find($summary['selected_address_id'])->full_address() . ', ' . 
            UserAddress::find($summary['selected_address_id'])->user_postal_code();

        // parameter from last route()
        $route_params = $request->all();
        
        if(isset($route_params['use_shipping_address'])) {
            // if user selected shipping address as billing address
            $billing_address = 
                UserAddress::find($route_params['use_shipping_address'])->full_address() . ', ' . 
                UserAddress::find($route_params['use_shipping_address'])->user_postal_code();
        } else {
            // if user input billing address manually
            $valid = $request->validate(
                [
                    'street' => ['required', 'string', 'min:3', 'max:255'],
                    'city' => ['required', 'string', 'min:3', 'max:255'],
                    'province' => ['required', 'string', 'min:2', 'max:255'],
                    'country' => ['required', 'string', 'min:3', 'max:255'],
                    'postal_code' => ['required', 'string', 'min:6', 'max:255'],
                ],
            );
    
            $billing_address =  $valid['street'] . ', ' . 
                                $valid['city'] . ', ' . 
                                $valid['province'] . ', ' . 
                                $valid['country'] . ', ' . 
                                $valid['postal_code'];
        }

        // store the billing address in session for payment steps
        $request->session()->put('billing_address', $billing_address);

        return view('cart/payment', compact(
            'title', 
            'user',
            'summary',
            'address',
            'billing_address'
        ));
    }

    /**
     * Process Credit Transaction
     *
     * @param Request $request
     * @return void
     */
    public function storeOrder(Request $request) {

        // credit card form information
        $valid = $request->validate(
            [
                'card_holder_name' => ['required', 'string',  'max:255'],
                'card_number' => ['required', 'numeric', 'digits:16'],
                'card_cvv' => ['required', 'numeric', 'digits:3'],
                'card_expiry' => ['required', 'string', 'max:7'],
                'card_type' => ['required', 'string', 'max:10'],
            ],
        );

        $valid['card_expiry'] = substr($valid['card_expiry'], -2) // month e.g.'08'
                        . substr($valid['card_expiry'], -5, 2) // year e.g.'22'
                        ; // result from '2022-08' to '0822' 

        // ==== Insert order to order table ====
        $summary = $request->session()->get('summary') ?? [];

        $shipping_address =
            UserAddress::find($summary['selected_address_id'])->full_address() . ', ' . 
            UserAddress::find($summary['selected_address_id'])->user_postal_code();
        
        $session_billing = $request->session()->get('billing_address') ?? null;

        if($session_billing) {
            $billing_address = $session_billing;
        } else {
            $billing_address = $shipping_address;
        }

        $order = new Order();
        $order->user_id = Auth::user()->id;
        $order->gst = $summary['taxes']['gst'];
        $order->pst = $summary['taxes']['pst'];
        $order->hst = $summary['taxes']['hst'];
        $order->sub_total = $summary['subtotal'];
        $order->shipping_charge = $summary['shipping_fee'];
        $order->total = $summary['total'];
        $order->order_status = 'pending';
        $order->shipping_address = $shipping_address;
        $order->billing_address = $billing_address;

        if($order->save()) {

            // ==== transaction start ====
            $response = Helper::processTransaction($valid, $summary['total'], $order->id);
           
            if( $response->transaction_response->response_code == 1) {
                // success
                $transaction = new Transaction();
                $transaction->order_id = $order->id;
                $transaction->response = $response->transaction_response->response_code;
                $transaction->status = "200";
                $transaction->credit_card_info = substr((string) $valid['card_number'], -4);

                if($transaction->save()) {
                    // clear session
                    $request->session()->forget('cart');
                    $request->session()->forget('shipping_addr_id');
                    $request->session()->forget('summary');

                    // redirect to invoice
                    session()->flash('success', 'Thank you for your order!');
                    return redirect()->route('order-history-detail', ['id' => $order->id]);
                }
                
            } else {
                // failed <- response_code == 2
                session()->flash('error', 'Error occurred when processing credit card payment, please try again.');
                return redirect()->route('showCreditCardForm');
            }
        } else {
            session()->flash('error', 'There is error processing the order. Please try again later, or contact our customer service. Sorry for the inconvenience caused.');
            return redirect()->route('cartIndex');
        }
    }
}
