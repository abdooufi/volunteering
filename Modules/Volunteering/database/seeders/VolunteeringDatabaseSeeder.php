<?php

namespace Modules\Volunteering\database\seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Modules\Tag\Entities\Volunteering;

class VolunteeringDatabaseSeeder extends Seeder
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
         * Volunteerings Seed
         * ------------------
         */

        // DB::table('volunteerings')->truncate();
        // echo "Truncate: volunteerings \n";

        Volunteering::factory()->count(20)->create();
        $rows = Volunteering::all();
        echo " Insert: volunteerings \n\n";

        // Enable foreign key checks!
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');
    }
}
