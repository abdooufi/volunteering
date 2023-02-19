<?php

namespace Modules\Yearplan\Models;

use App\Models\BaseModel;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;

class Yearplan extends BaseModel
{
    use HasFactory;
    use SoftDeletes;

    protected $table = 'yearplans';

    /**
     * Create a new factory instance for the model.
     *
     * @return \Illuminate\Database\Eloquent\Factories\Factory
     */
    protected static function newFactory()
    {
        return \Modules\Yearplan\database\factories\YearplanFactory::new();
    }
}
