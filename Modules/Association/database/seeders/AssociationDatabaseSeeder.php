<?php

namespace Modules\Association\database\seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Modules\Tag\Entities\Association;

class AssociationDatabaseSeeder extends Seeder
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
         * Associations Seed
         * ------------------
         */

        // DB::table('associations')->truncate();
        // echo "Truncate: associations \n";

        Association::factory()->count(20)->create();
        $rows = Association::all();
        echo " Insert: associations \n\n";

        // Enable foreign key checks!
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');
    }
}
