<?php

namespace Modules\Association\Models;

use App\Models\BaseModel;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;

class Association extends BaseModel
{
    use HasFactory;
    use SoftDeletes;

    protected $table = 'associations';

    /**
     * Create a new factory instance for the model.
     *
     * @return \Illuminate\Database\Eloquent\Factories\Factory
     */

     public function volunteerings()
     {
         return $this->hasMany('Modules\Volunteering\Models\Volunteering');
     }

    protected static function newFactory()
    {
        return \Modules\Association\database\factories\AssociationFactory::new();
    }
}
