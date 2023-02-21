<?php

namespace Modules\Association\Http\Controllers\Backend;

use App\Authorizable;
use App\Http\Controllers\Backend\BackendBaseController;

class AssociationsController extends BackendBaseController
{
    use Authorizable;

    public function __construct()
    {
        // Page Title
        $this->module_title = 'Associations';

        // module name
        $this->module_name = 'associations';

        // directory path of the module
        $this->module_path = 'association::backend';

        // module icon
        $this->module_icon = 'fa-regular fa-sun';

        // module model name, path
        $this->module_model = "Modules\Association\Models\Association";
    }





    
}
