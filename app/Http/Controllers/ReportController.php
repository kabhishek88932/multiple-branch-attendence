<?php

namespace App\Http\Controllers;

use App\Models\Branch;
use App\Models\Employee;
use App\Models\Salary;
use Illuminate\Http\Request;

class ReportController extends Controller
{
    public function index(Request $request)
    {
        $branches = Branch::all();
        $employees = Employee::all();

        $query = Salary::with('employee.branch');

        if ($request->branch_id) {
            $query->whereHas('employee', function ($q) use ($request) {
                $q->where('branch_id', $request->branch_id);
            });
        }

        if ($request->month) {
            $query->where('month', $request->month);
        }

        if ($request->employee_id) {
            $query->where('employee_id', $request->employee_id);
        }

        $salaries = $query->paginate(10);

        return view('salary_report', compact('branches', 'employees', 'salaries'));
    }
}
