@extends('admin.layouts.master')

@section('content')
    <div class="content-wrapper" style="min-height: 1345.31px;">

        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-7">
                        <h3>Student Name - {{$student->name}}</h3>
                    </div>
                    <div class="col-sm-5">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{route('admin.dashboard')}}"><i class="nav-icon fa fa-dashboard"></i> &nbsp;&nbsp;Home</a></li>
                            <li class="breadcrumb-item"><a href="{{route('admin.student')}}">Student</a></li>
                            <li class="breadcrumb-item"><a href="{{route('admin.student.detail', encrypt($student->id))}}">Student Detail</a></li>
                            <li class="breadcrumb-item active">Exam Detail</li>
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
                            <div class="card-header" style="overflow-x: auto;">
                                <h4>Subject List</h4>
                            </div>

                            <div class="card-body" style="overflow-x: auto;">
                                <table class="table table-bordered" id="subjectListTable">
                                    <thead>
                                        <tr>
                                            <th style="width: 10px">#</th>
                                            <th>Subject</th>
                                            <th>Class</th>
                                            <th>Total Marks</th>
                                            <th>Marks Obtain</th>
                                            <th>Percentage Obtain</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($results as $key => $result)
                                            <tr>
                                                <td>{{ $key + 1 }}</td>
                                                <td>{{ $result->subject_name }}</td>
                                                <td>{{ $result->class }}</td>
                                                <td>{{ $result->exam_marks }}</td>
                                                <td>{{ $result->obtained_marks }}</td>
                                                <td>{{ $result->obtained_percentage }}</td>
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
            $('#subjectListTable').DataTable();
        });
    </script>
@stop

