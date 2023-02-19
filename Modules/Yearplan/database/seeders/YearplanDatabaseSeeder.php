<?php

namespace Modules\Yearplan\database\seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Modules\Tag\Entities\Yearplan;

class YearplanDatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Disable foreign key checks!
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');

        /*
         * Yearplans Seed
         * ------------------
         */

        // DB::table('yearplans')->truncate();
        // echo "Truncate: yearplans \n";

        Yearplan::factory()->count(20)->create();
        $rows = Yearplan::all();
        echo " Insert: yearplans \n\n";

        // Enable foreign key checks!
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');
    }
}
