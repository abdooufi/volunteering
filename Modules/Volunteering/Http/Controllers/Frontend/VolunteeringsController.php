<?php

namespace Modules\Volunteering\Http\Controllers\Frontend;
use App\Authorizable;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Http\Response;
use Illuminate\Support\Str;

class VolunteeringsController extends Controller
{
    use Authorizable;
    public function __construct()
    {
        
        // Page Title
        $this->module_title = 'Volunteerings';

        // module name
        $this->module_name = 'volunteerings';

        // directory path of the module
        $this->module_path = 'volunteerings';

        // module icon
        $this->module_icon = 'fa-regular fa-sun';

        // module model name, path
        $this->module_model = "Modules\Volunteering\Models\Volunteering";
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */ 
    public function index()
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'List';

        $user = Auth::user();


      if ($user->hasRole('super admin')) {
        $$module_name = $module_model::latest()->paginate();     }
        else{
            $$module_name = $module_model::where('created_by', '=',Auth::user()->id)->paginate();
        
        }
        
        return view(
            "volunteering::frontend.$module_path.index",
            compact('module_title', 'module_name', "$module_name", 'module_icon', 'module_action', 'module_name_singular')
        );
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {
        $id = decode_id($id);

        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Show';

        $$module_name_singular = $module_model::findOrFail($id);

        return view(
            "volunteering::frontend.$module_name.show",
            compact('module_title', 'module_name', 'module_icon', 'module_action', 'module_name_singular', "$module_name_singular", 'posts')
        );
    }
}
