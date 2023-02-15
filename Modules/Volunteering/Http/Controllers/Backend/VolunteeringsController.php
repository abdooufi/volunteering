<?php

namespace Modules\Volunteering\Http\Controllers\Backend;

use App\Authorizable;
use App\Http\Controllers\Backend\BackendBaseController;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Log;
use App\Models\User;

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
     * Store a newly created resource in storage.
     *
     * @param  Request  $request
     * @return Response
     */
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
