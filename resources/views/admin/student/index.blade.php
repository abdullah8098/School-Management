@extends('admin.layouts.master')

@section('content')
    <div class="content-wrapper" style="min-height: 1345.31px;">

        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-7">
                        <h1>Students List</h1>
                    </div>
                    <div class="col-sm-5">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="/dashboard"><i class="nav-icon fa fa-dashboard"></i>
                                    &nbsp;&nbsp;Home</a></li>
                            <li class="breadcrumb-item active">Students List</li>
                        </ol>
                    </div>
                </div>
            </div>
        </section>

        <section class="content">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-md-12">
                        <div class="card card-primary card-outline" >
                            {{-- <div class="row mb-7 mt-3 mr-3">
                                <div class="col-sm-10">
                                    <h1></h1>
                                </div>
                                <div class="col-sm-2 text-end">
                                    <a href="{{ route('admin.student.create') }}"
                                        class="btn btn-block btn-primary">Add</a>
                                </div>
                            </div>
                            <hr> --}}

                            <div class="card-body" style="overflow-x: auto;">
                                <table class="table table-bordered" id="studentTable">
                                    <thead>
                                        <tr>
                                            <th style="width: 10px">#</th>
                                            <th>Name</th>
                                            <th>Contact</th>
                                            <th>Email</th>
                                            <th>Class</th>
                                            <th style="width: 100px" data-sortable="false">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($students as $key => $student)
                                            <tr>
                                                <td>{{ $key + 1 }}</td>
                                                <td>{{ $student->name }}</td>
                                                <td>{{ $student->contact }}</td>
                                                <td>{{ $student->email }}</td>
                                                <td>{{ $student->latestMappedClass->standard->name }}</td>
                                                <td>
                                                    <div>
                                                        <a href="{{ url('admin/student/' . encrypt($student->id) . '/detail') }}" class="mr-3"><i class="fa fa-eye bts-popup-close mt-2"></i></a>
                                                        {{-- <a href="#"
                                                            onclick="confirmDelete('{{ encrypt($student->id) }}')"><i
                                                                class="fa fa-trash bts-popup-close mt-2"></i></a> --}}
                                                    </div>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </section>

    </div>
@endsection
@section('scripts')
    <script>
        $(document).ready(function() {
            $('#studentTable').DataTable();
        });
    </script>
@stop
