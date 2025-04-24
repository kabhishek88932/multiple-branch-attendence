<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\Employee; 

class SalariesTableSeeder extends Seeder
{
    public function run()
    {
        
        $employees = Employee::all();

        foreach ($employees as $employee) {
            DB::table('salaries')->insert([
                'employee_id' => $employee->id,
                'month' => now()->format('F Y'), 
                'total_working_days' => 30,       
                'present_days' => rand(20, 30),   
                'leaves' => rand(0, 5),          
                'absents' => rand(0, 5),          
                'half_days' => rand(0, 2),        
                'base_salary' => 50000,          
                'final_salary' => 50000,          
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
