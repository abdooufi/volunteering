<?php

namespace Modules\Volunteering\Models;

use App\Models\BaseModel;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Modules\Association\Models\Association;
class Volunteering extends BaseModel
{
    use HasFactory;
    use SoftDeletes;

    protected $table = 'volunteerings';

    /**
     * Create a new factory instance for the model.
     *
     * @return \Illuminate\Database\Eloquent\Factories\Factory
     */


     public function association()
     {
         return $this->belongsTo('Modules\Association\Models\Association');
     }
 
     public function setAssociationIdAttribute($value)
     {
         $this->attributes['association_id'] = $value;
 
         try {
             $association = Association::findOrFail($value);
             $this->attributes['association_name'] = $association->name;
         } catch (\Exception $e) {
             $this->attributes['association_name'] = null;
         }
     }


    protected static function newFactory()
    {
        return \Modules\Volunteering\database\factories\VolunteeringFactory::new();
    }
}
