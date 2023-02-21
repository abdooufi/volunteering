<?php

namespace Modules\Association\Http\Controllers\Frontend;

use App\Authorizable;
use App\Http\Controllers\Controller;
use Flash;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class AssociationsController extends Controller
{
    public function __construct()
    {
        // Page Title
        $this->module_title = 'Associations';

        // module name
        $this->module_name = 'associations';

        // directory path of the module
        $this->module_path = 'associations';

        // module icon
        $this->module_icon = 'fa-regular fa-sun';

        // module model name, path
        $this->module_model = "Modules\Association\Models\Association";
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

        $$module_name = $module_model::latest()->paginate();

        return view(
            "association::frontend.$module_path.index",
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

        if (Auth::user()->hasRole('super admin') || (Auth::user() -> hasPermissionTo('view_All'))) {
            $volunteerings = $$module_name_singular->volunteerings()->latest()->paginate();
        
        }
            else{
              
                $volunteerings = $$module_name_singular->volunteerings()->where('created_by', '=',Auth::user()->id)->latest()->paginate();
            }


    


        return view(
            "association::frontend.$module_name.show",
            compact('module_title', 'module_name', 'module_icon', 'module_action', 'module_name_singular', "$module_name_singular", 'volunteerings')
        );
    }


 


}
