<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Salary Report</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">

    @if(session('success'))
        <div class="alert alert-success alert-dismissible fade show">
            {{ session('success') }}
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
    @endif

    <h2 class="mb-4">Salary Report</h2>

    <form method="GET" action="{{ route('salary.report') }}" class="form-inline mb-4">
        <div class="form-group mr-2">
            <label for="branch_id" class="mr-1">Branch</label>
            <select name="branch_id" id="branch_id" class="form-control">
                <option value="">All</option>
                @foreach($branches as $branch)
                    <option value="{{ $branch->id }}" {{ request('branch_id') == $branch->id ? 'selected' : '' }}>
                        {{ $branch->branch_name }}
                    </option>
                @endforeach
            </select>
        </div>

        <div class="form-group mr-2">
            <label for="month" class="mr-1">Month</label>
            <input type="month" name="month" id="month" class="form-control" value="{{ request('month') }}">
        </div>

        <div class="form-group mr-2">
            <label for="employee_id" class="mr-1">Employee</label>
            <select name="employee_id" id="employee_id" class="form-control">
                <option value="">All</option>
                @foreach($employees as $employee)
                    <option value="{{ $employee->id }}" {{ request('employee_id') == $employee->id ? 'selected' : '' }}>
                        {{ $employee->name }}
                    </option>
                @endforeach
            </select>
        </div>

        <button type="submit" class="btn btn-primary">Filter</button>
    </form>

   
    <table class="table table-bordered table-striped">
        <thead class="thead-dark">
            <tr>
                <th>Employee</th>
                <th>Branch</th>
                <th>Month</th>
                <th>Working Days</th>
                <th>Present</th>
                <th>Leave</th>
                <th>Absent</th>
                <th>Half Days</th>
                <th>Base Salary</th>
                <th>Final Salary</th>
            </tr>
        </thead>
        <tbody>
            @forelse($salaries as $salary)
                <tr>
                    <td>{{ $salary->employee->name }}</td>
                    <td>{{ $salary->employee->branch->branch_name ?? '-' }}</td>
                    <td>{{ $salary->month }}</td>
                    <td>{{ $salary->total_working_days }}</td>
                    <td>{{ $salary->present_days }}</td>
                    <td>{{ $salary->leaves }}</td>
                    <td>{{ $salary->absents }}</td>
                    <td>{{ $salary->half_days }}</td>
                    <td>₹{{ number_format($salary->base_salary, 2) }}</td>
                    <td>₹{{ number_format($salary->final_salary, 2) }}</td>
                </tr>
            @empty
                <tr>
                    <td colspan="10" class="text-center">No records found.</td>
                </tr>
            @endforelse
        </tbody>
    </table>

 
    <div class="d-flex justify-content-center">
    {{ $salaries->links('pagination::bootstrap-4') }}
  </div>

</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
