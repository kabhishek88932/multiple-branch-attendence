<?php

namespace Database\Seeders;
use App\Models\{Branch, Employee};
use Faker\Factory as Faker;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DemoDataSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
    
        foreach (['Delhi', 'Goa', 'Mumbai'] as $branchName) {
            $branch = Branch::create([
                'branch_name' => $branchName,
                'location' => $faker->city,
            ]);
    
            for ($i = 0; $i < 10; $i++) {
                Employee::create([
                    'name' => $faker->name,
                    'designation' => $faker->jobTitle,
                    'joining_date' => $faker->date(),
                    'branch_id' => $branch->id,
                    'base_salary' => rand(15000, 50000),
                ]);
            }
        }
    }
}
