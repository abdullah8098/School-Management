@extends('admin.layouts.master')

@section('content')
    <div class="content-wrapper" style="min-height: 1345.31px;">

        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-7">
                        <h1>Student Detail - {{$student->name}}</h1>
                    </div>
                    <div class="col-sm-5">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{route('admin.dashboard')}}"><i class="nav-icon fa fa-dashboard"></i> &nbsp;&nbsp;Home</a></li>
                            <li class="breadcrumb-item"><a href="{{route('admin.student')}}">Student</a></li>
                            <li class="breadcrumb-item active">Student Detail</li>
                        </ol>
                    </div>
                </div>
            </div>
        </section>

        <section class="content">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-md-12">

                        <div class="card card-primary card-outline">
                            <div class="card-body">
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="name">Name <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" id="name" name="name" required value="{{ old('name', $student->name) }}" placeholder="Enter Name">
                                        </div>
                                        <div class="col-md-6">
                                            <label for="class">Class <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" id="class" name="class" required value="{{ old('class', $student->latestMappedClass->standard->name) }}" placeholder="Enter Class">
                                        </div>
                                        <div class="col-md-6 mt-3">
                                            <label for="contact">Contact</label>
                                            <input type="tel" class="form-control" id="contact" name="contact" minlength="10" maxlength="10" value="{{old('contact', $student->contact)}}"
                                            placeholder="Enter Contact">
                                        </div>
                                        <div class="col-md-6 mt-3">
                                            <label for="email">Email <span class="text-danger">*</span></label>
                                            <input type="email" class="form-control" id="email" name="email" required value="{{old('email',$student->email)}}"
                                                placeholder="Enter Email">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

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
                                <h4>Exam List</h4>
                            </div>

                            <div class="card-body" style="overflow-x: auto;">
                                <table class="table table-bordered" id="examListTable">
                                    <thead>
                                        <tr>
                                            <th style="width: 10px">#</th>
                                            <th>Class</th>
                                            <th>Term Type</th>
                                            <th>Academic Year</th>
                                            <th>Total Subject</th>
                                            <th>Average Percentage</th>
                                            <th style="width: 100px" data-sortable="false">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($exams as $key => $exam)
                                            <tr>
                                                <td>{{ $key + 1 }}</td>
                                                <td>{{ $exam->class }}</td>
                                                <td>{{ $exam->exam_type }}</td>
                                                <td>{{ $exam->educational_year }}</td>
                                                <td>{{ $exam->total_subjects }}</td>
                                                <td>{{ $exam->avg_percentage }}</td>
                                                <td>
                                                    <div>
                                                        <a href="{{ url('admin/student/' . encrypt($student->id) . '/' . encrypt($exam->class_id) . '/' . encrypt($exam->sem_id)) }}" class="mr-3"><i class="fa fa-eye bts-popup-close mt-2"></i></a>
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
            $('#examListTable').DataTable();
        });
    </script>
@stop
