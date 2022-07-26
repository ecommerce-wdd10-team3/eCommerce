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
                            <h3 class="text-align-center my-3 mx-3">You have no orders yet. <a href="/product" id="shopping_now">Shopping Now.</a></h3>
                        @else
                            @foreach ($orders as $key => $order)
                                <div class="order_container mx-1 mb-5">
                                    <div class="order_heading d-flex justify-content-space-between align-items-center">
                                        <h2 class="fw-bold mb-1">&#35; Order {{ $key+1 }}</h2>
                                        <div><a href="" class="lh-btn no-hover text-transform-capitalize"
                                                onclick="event.preventDefault();"
                                                >{{ $order->order_status }}</a></div>
                                    </div>
                                    <div class="product_list">
                                        <div class="d-flex justify-content-space-between my-2 mb-1">
                                            <div class="mb-0_5 text-align-left"><span class="text-black fw-bold">TOTAL: </span>&#36;{{ $order->total }}</div>
                                            <div class="mb-0_5 text-align-right"><a href="{{ route('order-history-detail', ['id' => $order->id]) }}"
                                                                                        class="lh-btn fs-1">Order Detail</a></div>
                                        </div>
                                        <div class="mb-0_5"><span class="text-black fw-bold">Shipping address: </span>{{ $order->shipping_address }}</div>
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
