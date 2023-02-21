<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\User;
use Modules\Association\Models\Association;
use Modules\Volunteering\Models\Volunteering;

class BackendController extends Controller
{
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users_count = User::get()->count();
        $association_count = Association::get()->count();
        $volunteering_count = Volunteering::get()->count();
      
        $volunteering_hour_count = Volunteering::get()->sum('volunteering_hour');
        return view(
            "backend.index",
            compact('users_count','association_count','volunteering_count','volunteering_hour_count')
        );
    }
}
