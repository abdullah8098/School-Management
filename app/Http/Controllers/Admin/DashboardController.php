<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Student;

class DashboardController extends Controller
{
    public function dashboard()
    {
        $studentCount = Student::count();
        return view ('admin.dashboard',compact ('studentCount'));
    }
}
