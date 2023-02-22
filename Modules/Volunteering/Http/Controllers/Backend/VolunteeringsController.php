<?php

namespace Modules\Volunteering\Http\Controllers\Backend;


use App\Http\Controllers\Backend\BackendBaseController;
use App\Authorizable;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use Yajra\DataTables\DataTables;

class VolunteeringsController extends BackendBaseController
{
    use Authorizable;

    public function __construct()
    {
        // Page Title
        $this->module_title = 'Volunteerings';

        // module name
        $this->module_name = 'volunteerings';

        // directory path of the module
        $this->module_path = 'volunteering::backend';

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
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
          $module_path = $this->module_path;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'List'; 

        $user = Auth::user();

        if (Auth::user()->hasRole('super admin') || (Auth::user() -> hasPermissionTo('view_All'))) {
            $volunteering_hour_count = $module_model::get()->sum('volunteering_hour');
        
            $$module_name = $module_model::paginate();
    
            $$module_name_singular = $module_model::paginate();
            }
         else{
            $volunteering_hour_count = $module_model::where('created_by', '=',Auth::user()->id)->get()->sum('volunteering_hour');
        
            $$module_name = $module_model::where('created_by', '=',Auth::user()->id)->paginate();
    
            $$module_name_singular = $module_model::where('created_by', '=',Auth::user()->id)->paginate();

          }

   

        Log::info(label_case($module_title.' '.$module_action).' | User:'.Auth::user()->name.'(ID:'.Auth::user()->id.')');

        return view(
            "$module_path.$module_name.index_datatable",
            compact('module_title', 'module_name', "$module_name", 'module_icon', 'module_name_singular', 'module_action', 'volunteering_hour_count')
        );
    }

    
    public function index_data()
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'List';
 
        $user = Auth::user();

        if (Auth::user()->hasRole('super admin') || (Auth::user() -> hasPermissionTo('view_All'))) {
            $$module_name = $module_model::select('id', 'name','association_name','created_by_name','volunteering_hour', 'slug', 'volunteering_date', 'updated_at');
        }
        else{
            $$module_name = $module_model::select('id', 'name','association_name','created_by_name','volunteering_hour', 'slug', 'volunteering_date', 'updated_at')->where('created_by', '=',Auth::user()->id);
        }
      

        $data = $$module_name;
        $volunteering_hour_count = $module_model::get()->count();
        return Datatables::of($$module_name)
                        ->addColumn('action', function ($data) {
                            $module_name = $this->module_name;

                            return view('backend.includes.action_column', compact('module_name', 'data'));
                        })
                        ->editColumn('name', '<strong>{{$name}}</strong>')
                        ->editColumn('updated_at', function ($data) {
                            $module_name = $this->module_name;

                            $diff = Carbon::now()->diffInHours($data->updated_at);

                            if ($diff < 25) {
                                return $data->updated_at->diffForHumans();
                            } else {
                                return $data->updated_at->isoFormat('LLLL');
                            }
                        })
                        ->rawColumns(['name', 'action'])
                        ->orderColumns(['id'], '-:column $1')
                        ->make(true);
    }

    public function store(Request $request)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Store';

        
        $data = $request->except('attach_file');
        $data['created_by_name'] = auth()->user()->name;
        
        $$module_name_singular = $module_model::create($data);

        if ($request->attach_file) {
            $media = $$module_name_singular->addMedia($request->file('attach_file'))->toMediaCollection($module_name);
            $$module_name_singular->attach_file = $media->getUrl();
            $$module_name_singular->save();
        }

        flash(icon().' '.Str::singular($module_title)."' Created.")->success()->important();

        logUserAccess($module_title.' '.$module_action.' | Id: '.$$module_name_singular->id);

        return redirect("admin/$module_name");
    }

    public function update(Request $request, $id)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Update';

        

        $$module_name_singular = $module_model::findOrFail($id);

        $$module_name_singular->update($request->except('attach_file', 'attach_file_remove'));

        // Image
        if ($request->hasFile('attach_file')) {
            if ($$module_name_singular->getMedia($module_name)->first()) {
                $$module_name_singular->getMedia($module_name)->first()->delete();
            }
            $media = $$module_name_singular->addMedia($request->file('attach_file'))->toMediaCollection($module_name);

            $$module_name_singular->attach_file = $media->getUrl();

            $$module_name_singular->save();
        }
        if ($request->attach_file_remove == 'attach_file_remove') {
            if ($$module_name_singular->getMedia($module_name)->first()) {
                $$module_name_singular->getMedia($module_name)->first()->delete();

                $$module_name_singular->attach_file = '';

                $$module_name_singular->save();
            }
        }

        flash(icon().' '.Str::singular($module_title)."' Updated Successfully")->success()->important();

        logUserAccess($module_title.' '.$module_action.' | Id: '.$$module_name_singular->id);

        return redirect()->route('backend.volunteerings.show', $$module_name_singular->id);
    }

}
