 

 
 
<div class="row">
    <div class="col-6 col-lg-3">
        <div class="card mb-4">
            <div class="card-body p-3 d-flex align-items-center">
                <div class="bg-primary text-white p-3 me-3">
                    <svg class="icon icon-xl">
                        <use xlink:href="/fonts/free.svg#cil-user"></use>
                    </svg>
                </div>
                <div>
                    <div class="fs-6 fw-semibold text-primary"> (@lang(":count Users", ['count'=>$users_count]))</div>
                 
                </div>
            </div>
            <div class="card-footer px-3 py-2">
                <a class="btn-block text-medium-emphasis d-flex justify-content-between align-items-center" href="{{route('backend.users.index')}}"><span class="small fw-semibold">View More</span>
                    <svg class="icon">
                        <use xlink:href="/fonts/free.svg#cil-chevron-right"></use>
                    </svg>
                </a>
            </div>
        </div>
    </div> 
    <!-- /.col-->
    <div class="col-6 col-lg-3">
        <div class="card mb-4">
            <div class="card-body p-3 d-flex align-items-center">
                <div class="bg-info text-white p-3 me-3">
                    <svg class="icon icon-xl">
                        <use xlink:href="/fonts/free.svg#cil-building"></use>
                    </svg>
                </div>
                <div>
                    <div class="fs-6 fw-semibold text-info">(@lang(":count Association", ['count'=>$association_count]))</div>
                 
                </div>
            </div>
            <div class="card-footer px-3 py-2">
                <a class="btn-block text-medium-emphasis d-flex justify-content-between align-items-center" href="{{route('backend.associations.index')}}"><span class="small fw-semibold">View More</span>
                    <svg class="icon">
                        <use xlink:href="/fonts/free.svg#cil-chevron-right"></use>
                    </svg>
                </a>
            </div>
        </div>
    </div>
    <!-- /.col-->
    <div class="col-6 col-lg-3">
        <div class="card mb-4">
            <div class="card-body p-3 d-flex align-items-center">
                <div class="bg-warning text-white p-3 me-3">
                    <svg class="icon icon-xl">
                        <use xlink:href="/fonts/free.svg#cil-location-pin"></use>
                    </svg>
                </div>
                <div>
                    <div class="fs-6 fw-semibold text-warning">(@lang(":count Volunteering", ['count'=>$volunteering_count]))</div>
           
                </div>
            </div>
            <div class="card-footer px-3 py-2">
                <a class="btn-block text-medium-emphasis d-flex justify-content-between align-items-center" href="{{route('backend.volunteerings.index')}}"><span class="small fw-semibold">View More</span>
                    <svg class="icon">
                        <use xlink:href="/fonts/free.svg#cil-chevron-right"></use>
                    </svg>
                </a>
            </div>
        </div>
    </div>
    <!-- /.col-->
    <div class="col-6 col-lg-3">
        <div class="card mb-4">
            <div class="card-body p-3 d-flex align-items-center">
                <div class="bg-primary text-white p-3 me-3">
                    <svg class="icon icon-xl">
                        <use xlink:href="/fonts/free.svg#cil-braille"></use>
                    </svg>
                </div>
                <div>
                    <div class="fs-6 fw-semibold text-primary">(@lang(":count Total hours", ['count'=>$volunteering_hour_count]))</div>
            
                </div>
            </div>
            <div class="card-footer px-3 py-2">
                <a class="btn-block text-medium-emphasis d-flex justify-content-between align-items-center" href="{{route('backend.volunteerings.index')}}"><span class="small fw-semibold">View More</span>
                    <svg class="icon">
                        <use xlink:href="/fonts/free.svg#cil-chevron-right"></use>
                    </svg>
                </a>
            </div>
        </div>
    </div>
    <!-- /.col-->


 

 



</div>
<!-- /.row-->