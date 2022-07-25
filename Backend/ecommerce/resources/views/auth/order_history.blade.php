@extends('layouts.app')

@section('content')
    <main>
        <div class="container">
            <div class="wrapper d-flex">
                <aside class="width-12 p-e-2 border-right d-block m-e-0">
                    <a href="{{ route('profile') }}" class="d-block btn btn_white_no_border lh">User Info</a>
                    <a href="#" class="d-block btn btn_black bg-black fw-bold">Order History</a>
                </aside>
                <div class="content form" id="profile">
                    <h1 class="my-2">{{ $title }}</h1>
                    <div id="order_history_container" class="my-2">
                        @if (count($orders) === 0)
                            <h3 class="text-align-center my-3">You have no orders yet. <a href="/product" id="shopping_now">Shopping Now.</a></h3>
                        @else
                            @foreach ($orders as $key => $order)
                                <div class="order_container mx-1 mb-5">
                                    <div class="order_heading d-flex justify-content-space-between align-items-center">
                                        <h2 class="fw-bold mb-1">&#35; Order {{ $key+1 }}</h2>
                                        <div><a href="" class="lh-btn no-hover"
                                                onclick="event.preventDefault();"
                                                >{{ $order->order_status }}</a></div>
                                    </div>
                                    <div class="product_list">
                                        <table style="border-collapse: collapse">
                                            <thead>
                                                <tr>
                                                    <th class="pe-1 pm-1 fw-bold text-black border-grey">&#35;</th>
                                                    <th class="pe-1 pm-1 fw-bold text-black border-grey min-width-20">Name</th>
                                                    <th class="pe-1 pm-1 fw-bold text-black border-grey">Unit Price</th>
                                                    <th class="pe-1 pm-1 fw-bold text-black border-grey">Quantity</th>
                                                    <th class="pe-1 pm-1 fw-bold text-black border-grey">Line Price</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($order->products as $key => $product)
                                                    <tr>
                                                        <td class="vertical-align-top py-1 border-grey fw-bold pe-1">{{ $key+1 }}</td>
                                                        <td class="vertical-align-top py-1 border-grey pe-3 min-width-20">{{ $product->pivot->product_name }}</td>
                                                        <td class="vertical-align-top py-1 border-grey pe-1">&#36;{{ $product->pivot->unit_price }}</td>
                                                        <td class="vertical-align-top py-1 border-grey pe-1">&#215;{{ $product->pivot->quantity }}</td>
                                                        <td class="vertical-align-top py-1 border-grey pe-1">&#36;{{ $product->pivot->line_price }}</td>
                                                    </tr>
                                                @endforeach
                                            </tbody>
                                        </table>
                                        <div class="d-flex justify-content-end my-2">
                                            <div>
                                                <div class="mb-0_5 text-align-right"><span class="text-black fw-bold">GST: </span>&#36;{{ $order->gst }}</div>
                                                <div class="mb-0_5 text-align-right"><span class="text-black fw-bold">PST: </span>&#36;{{ $order->pst }}</div>
                                                <div class="mb-0_5 text-align-right"><span class="text-black fw-bold">VAT: </span>&#36;{{ $order->vat }}</div>
                                                <div class="mb-0_5 text-align-right"><span class="text-black fw-bold">Subtotal: </span>&#36;{{ $order->sub_total }}</div>
                                                <div class="mb-0_5 text-align-right"><span class="text-black fw-bold">Shipping charge: </span>&#36;{{ $order->shipping_charge }}</div>
                                                <div class="mb-0_5 text-align-right"><span class="text-black fw-bold">TOTAL: </span>&#36;{{ $order->total }}</div>
                                            </div>
                                        </div>
                                        <div class="mb-0_5"><span class="text-black fw-bold">Shipping address: </span>{{ $order->shipping_address }}</div>
                                        <div class="mb-0_5"><span class="text-black fw-bold">Billing address: </span>{{ $order->billing_address }}</div>
                                    </div>
                                </div>
                            @endforeach
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </main>
@endsection
