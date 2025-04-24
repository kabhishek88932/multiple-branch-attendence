<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    use HasFactory;

    public function branch()
{
    return $this->belongsTo(Branch::class);
}

public function attendances()
{
    return $this->hasMany(Attendance::class);
}

public function salaries()
{
    return $this->hasMany(Salary::class);
}

}
