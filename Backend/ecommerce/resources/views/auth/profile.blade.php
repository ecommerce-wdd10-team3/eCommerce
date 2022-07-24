@extends('layouts.app')

@section('content')
    <main>
        <div class="container">
            <div class="wrapper d-flex">
                <aside class="width-12 p-e-2 border-right d-block m-e-0">
                    <a href="#" class="d-block btn btn_black bg-black fw-bold">User Info</a>
                    <a href="{{ route('order-history') }}" class="d-block btn btn_white_no_border">Order History</a>
                </aside>
                <div class="content form" id="profile">
                    <div class="d-flex justify-content-space-between align-items-center">
                        <div class="width-8">&nbsp;</div>
                        <div class="">
                            <h1 class="my-2">{{ $title }}</h1>
                        </div>
                        <div class="width-8 text-align-end"><a href="{{ route('profile-edit', ['user' => $user->id]) }}" class="lh-btn fs-1">Edit</a></div>
                    </div>
                    <p class="col col-6 fs-1_4 text-end fw-bold">Name : </p>
                    <p class="col col-6 fs-1_4 text-start">{{ $user->first_name . ' ' . $user->last_name }}</p>
                    <p class="col col-6 fs-1_4 text-end fw-bold">Email : </p>
                    <p class="col col-6 fs-1_4 text-start">{{ $user->email }}</p>
                    <p class="col col-6 fs-1_4 text-end fw-bold">Phone : </p>
                    <p class="col col-6 fs-1_4 text-start">{{ $user->phone }}</p>
                    <hr class="my-2">
                    <div id="User_address">
                        <h1 class="my-3">User Address</h1>
                        @foreach ($addresses as $key => $address)
                            <div class="address_row d-flex fs-1_4 align-items-top" id="address_{{ $address->id }}">
                                <div class="key fw-bold pe-1 width-max-content">&#35;{{ $key + 1 }}</div>
                                <div class="full_address pe-1 flex-grow-1">
                                    <div>{{ $address->full_address() }}</div>
                                    <div class="fw-bold">{{ $address->user_postal_code() }}</div>
                                </div>
                                <div class="action d-flex width-max-content align-items-top">
                                    <div class="width-max-content pe-0_5"><a href="" class="lh-btn">Edit</a></div>
                                    @if ($address->is_default_address())
                                        <div class="width-max-content flex-grow-1">
                                            <a href="" class="lh-btn-outline"
                                                onclick="event.preventDefault();">Default Address</a>
                                        </div>
                                    @else
                                        <div class="width-max-content flex-grow-1">
                                            <a href="" class="lh-btn">Set as Default</a>
                                        </div>
                                    @endif
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </main>
@endsection
