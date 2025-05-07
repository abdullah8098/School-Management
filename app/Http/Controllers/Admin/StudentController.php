<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Student;
use App\Models\StudentMappedExam;
use Illuminate\Validation\Rule;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class StudentController extends Controller
{

    private $currentPageTitles = 'Student';

    public function index()
    {
        $students = Student::with('latestMappedClass.standard')->get();

        return view ('admin.student.index', compact('students'));
    }

    public function detail($id)
    {
        $id = decrypt($id);
        $student = Student::with('latestMappedClass.standard')->where('id', $id)->first();
        $exams = StudentMappedExam::select(
            'sem.id as sem_id',
            'standards.id as class_id',
            'standards.name as class',
            'sem.name as exam_type',
            DB::raw("CONCAT(YEAR(student_mapped_classes.start_date), '-', YEAR(student_mapped_classes.end_date)) as educational_year"),
            DB::raw('COUNT(DISTINCT student_mapped_exams.subject_id) as total_subjects'),
            DB::raw('ROUND(AVG(CAST(student_mapped_exams.obtained_percentage AS DECIMAL(5,2))), 2) as avg_percentage')
        )
        ->join('standards', 'standards.id', '=', 'student_mapped_exams.class_id')
        ->join('sem', 'sem.id', '=', 'student_mapped_exams.sem_id')
        ->join('student_mapped_classes', function($join) {
            $join->on('student_mapped_classes.student_id', '=', 'student_mapped_exams.student_id')
                ->on('student_mapped_classes.class_id', '=', 'student_mapped_exams.class_id');
        })
        ->where('student_mapped_exams.student_id', $student->id)
        ->groupBy(
            'sem.id',
            'standards.id',
            'standards.name',
            'sem.name',
            'student_mapped_classes.start_date',
            'student_mapped_classes.end_date'
        )
        ->orderBy('standards.name')
        ->orderBy('sem.id')
        ->get();



        return view ('admin.student.detail', compact('student','exams'));
    }

    public function examDetail($id, $class_id, $sem_id)
    {
        $id = decrypt($id);
        $class_id = decrypt($class_id);
        $sem_id = decrypt($sem_id);

        $student = Student::with('latestMappedClass.standard')->where('id', $id)->first();

        $results = StudentMappedExam::join('subjects', 'subjects.id', 'student_mapped_exams.subject_id')->join('standards', 'standards.id', 'student_mapped_exams.class_id')
        ->where('student_id', $id)
        ->where('student_mapped_exams.class_id', $class_id)
        ->where('sem_id', $sem_id)
        ->select('subjects.name as subject_name', 'student_mapped_exams.*', 'subjects.exam_marks', 'standards.name as class')
        ->get();

        return view ('admin.student.examDetail', compact('student', 'results'));
    }

}
