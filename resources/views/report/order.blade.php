@extends('layouts.admin.app')

@section('content')
    <div class="app-page-title">
        <div class="page-title-wrapper">
            <div class="page-title-heading">
                <div class="page-title-icon">
                    <i class="pe-7s-display2 icon-gradient bg-mean-fruit">
                    </i>
                </div>
                <div>
                    Orders Report
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="main-card mb-3 card">
                <form action="{{ route('admin.order.report') }}" method="get">
                    <div class="card-body d-flex">
                        <div class=" form-group col-4">
                            <label for="searchField" class="">Search By Status</label>
                            <select name="search" id="searchField" class="form-control">
                                <option value="">Select a Status</option>
                                <option value="Processing" {{ request()->get('search') == 'Processing' ? 'selected' : '' }}>Processing</option>
                                <option value="approved" {{ request()->get('search') == 'approved' ? 'selected' : '' }}>Approved</option>
                                <option value="on shipping" {{ request()->get('search') == 'on shipping' ? 'selected' : '' }}>On Shipping</option>
                                <option value="Shipped" {{ request()->get('search') == 'Shipped' ? 'selected' : '' }}>Shipped</option>
                                <option value="return" {{ request()->get('search') == 'return' ? 'selected' : '' }}>Return</option>
                            </select>
                        </div>
                        <div class=" form-group col-3">
                            <label for="sDate" class="">Start Date</label>
                            <input name="start_date" id="sDate" type="date" value="{{ request()->get('start_date') ?? '' }}" class="form-control">
                        </div>
                        <div class=" form-group col-3">
                            <label for="eDate" class="">End Date</label>
                            <input name="end_date" id="eDate" type="date" value="{{ request()->get('end_date') ?? '' }}" class="form-control">
                        </div>
                        <div class=" form-group col-2 mt-1">
                            <button type="submit" class="btn btn-primary mt-4">Search</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="col-md-12">
            <div class="main-card mb-3 card">
                <div class="card-body">
                    <h5 class="card-title">Summary</h5>
                    <table class="mb-0 table table-hover">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Product Name</th>
                            <th>Order no</th>
                            <th>Amount</th>
                            <th>Status</th>
                            <th>Order Date</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($orders as $order)
                            <tr>
                                <th scope="row">{{ $orders->firstItem() + $loop->index }}</th>
                                <td>{{ $order->product_name }}</td>
                                <td>{{ $order->order_no }}</td>
                                <td>{{ $order->amount }}</td>
                                <td>{{ $order->status }}</td>
                                <td>{{ $order->created_at->format('d M, Y') }}</td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                    <div class="mt-3">
                        {{ $orders->appends(request()->input())->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
