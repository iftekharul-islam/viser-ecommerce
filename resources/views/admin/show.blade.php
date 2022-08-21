@extends('layouts.admin.app')

@section('content')
    <div class="app-page-title">
        <div class="page-title-wrapper">
            <div class="page-title-heading">
                <div class="page-title-icon">
                    <i class="pe-7s-car icon-gradient bg-mean-fruit">
                    </i>
                </div>
                <div>Summary of {{ $user->name }}
                    <div class="page-title-subheading">This is an user log summary
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="main-card mb-3 card">
                <div class="card-header">
                    User Summary &nbsp;
                    <span class="badge badge-info">Duration : {{ $user->total_duration ? gmdate('H:i:s', $user->total_duration) : 0 }}</span>&nbsp;
                    <span class="badge badge-danger">Points : {{ $user->total_point }}</span>
                </div>
                <div class="table-responsive">
                    <table class="align-middle mb-0 table table-borderless table-striped table-hover">
                        <thead>
                        <tr>
                            <th class="text-center">#</th>
                            <th class="text-center">IP</th>
                            <th class="text-center">Login at</th>
                            <th class="text-center">Logout at</th>
                            <th class="text-center">Active duration</th>
                            <th class="text-center">Point</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($user->logs as $key=>$log)
                            <tr>
                                <td class="text-center text-muted">#{{ $key + 1 }}</td>
                                <td class="text-center">{{ $log->ip }}</td>
                                <td class="text-center">{{ $log->login_at }}</td>
                                <td class="text-center">{{ $log->logout_at ?? 'N/A' }}</td>
                                <td class="text-center">{{ $log->duration != null ? gmdate('H:i:s', $log->duration) : 0 }}</td>
                                <td class="text-center">{{ $log->point ?? 0 }}</td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
                <div class="d-block text-center card-footer">
                </div>
            </div>
        </div>
    </div>
@endsection
