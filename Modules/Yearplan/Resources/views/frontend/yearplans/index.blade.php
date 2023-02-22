@extends('frontend.layouts.app')

@section('title') {{ __("Yearplans") }} @endsection

@section('content')

<section class="bg-gray-100 text-gray-600 py-20">
    <div class="container mx-auto flex px-5 items-center justify-center flex-col">
        <div class="text-center lg:w-2/3 w-full">
            <h1 class="text-3xl sm:text-4xl mb-4 font-medium text-gray-800">
                {{ __("Yearplans") }}
            </h1>
            <p class="mb-8 leading-relaxed">
                The list of Yearplans.
            </p>

            @include('frontend.includes.messages')
        </div>
    </div>
</section>
 
<section class="bg-white text-gray-600 p-6 sm:p-20">


 
<div class="row" id="parent">
<div class="col-sm-3 col-md-6">
<table  class="table table-bordered table-hover table-responsive-sm">
    <tbody><tr>
        <td>Minimum date:</td>
        <td><input type="text" class="form-control" id="min" name="min"></td>
    </tr>
    <tr>
        <td>Maximum date:</td>
        <td><input type="text" class="form-control" id="max" name="max"></td>
    </tr>
 
    <tr>
        <td>Display All</td>
        <td> <button type="button" id="DispalyALL" class="btn btn-primary">Display All</button>    </td>
    </tr>
</tbody></table>
</div>
</div>
<div class="row"  >
<div class="col-sm-3 col-md-12">
<table id="datatable" class="table table-hover  ">
                <thead>
                    <tr>
                        <th> # </th>
                        <th> name </th>
                      
                        <th>from date </th>
                        <th>to date </th>
                       
                      
                       


                        <th> description </th>
                        <th> attach_file </th>
                        
                       
                    </tr>
                </thead>

                <tbody>

                
                @foreach ($$module_name as $$module_name_singular)
    @php
    $details_url = route("frontend.$module_name.show",[encode_id($$module_name_singular->id), $$module_name_singular->slug]);
   
    $attach_url="";
   if($$module_name_singular->attach_file)
   {

    $attach_url=" <a href='{$$module_name_singular->attach_file}' class='btn btn-link' target='_blank'>attach file</a> ";

   }
  
    @endphp
                    <tr>
                        <td>  {{$$module_name_singular->id}}</td>
                        <td> {{$$module_name_singular->name}} </td>
                  
                        <td>  {{$$module_name_singular->from_date}}</td>
                        <td>  {{$$module_name_singular->to_date}}</td>
                       

                       
                        <td>  {{$$module_name_singular->description}}</td>
                        <td> {!! $attach_url !!}</td>
                       
                        
                    </tr>
                    @endforeach
                </tbody>
            </table>

<h1> Total hours  :  <span id="total">   </span>   </h1>

</div> 
</div> 

</section>

@endsection


@push ('after-styles')
<!-- DataTables Core and Extensions -->
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.2/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/datetime/1.3.0/css/dataTables.dateTime.min.css">

<link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.3.2/css/buttons.dataTables.min.css">
@endpush

@push ('after-scripts')
<!-- DataTables Core and Extensions -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.13.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.2/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/datetime/1.3.0/js/dataTables.dateTime.min.js"></script>
 
 

<script type="text/javascript" src="https://cdn.datatables.net/buttons/2.3.2/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/2.3.2/js/buttons.html5.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/2.3.2/js/buttons.print.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/2.3.2/js/buttons.colVis.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/plug-ins/1.13.2/api/sum().js"></script>


<link href="{{ asset('vendor/select2/select2-coreui-bootstrap4.min.css') }}" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
 
<script>
 
 var minDate, maxDate;
 
 


 // Custom filtering function which will search data in column four between two values
 $.fn.dataTable.ext.search.push(
     function( settings, data, dataIndex ) {
         var min = minDate.val();
         var max = maxDate.val();
         var date = new Date( data[2] );
  
         if (
             ( min === null && max === null ) ||
             ( min === null && date <= max ) ||
             ( min <= date   && max === null ) ||
             ( min <= date   && date <= max )
         ) {
             return true;
         }
         return false;
     }
 );
  
 $(document).ready(function() {
     // Create date inputs

    

     minDate = new DateTime($('#min'), {
         format: 'MMMM Do YYYY'
     });
     maxDate = new DateTime($('#max'), {
         format: 'MMMM Do YYYY'
     });
  
     // DataTables initialisation
     var table = $('#datatable').bind('sort',   function () { GetTotL(); })
        .bind('filter', function () { GetTotL(); })
        .bind('page',   function () { GetTotL( ); }).DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'copyHtml5',
                exportOptions: {
                    columns: [ 0, ':visible' ]
                }
            },
            {
                extend: 'excelHtml5',
                exportOptions: {
                    columns: ':visible'
                }
            },
            {
                extend: 'pdfHtml5',
                exportOptions: {
                    columns: [ 0, 1, 2, 5 ]
                }
            },
            'colvis'
        ]
    } );
     // Refilter the table
  //  var sumH= table.column( 5 ).data().sum();
 

  table.on( 'search.dt', function () {
 
} );

     $('#min, #max').on('change', function () {
   
         table.draw();
      
        
     });


   
 


$("#DispalyALL").click(function(){
    $('#min').val("");
    $('#max').val("");
    table.search("" );
    minDate = new DateTime($('#min'), {
         format: 'MMMM Do YYYY'
     });
     maxDate = new DateTime($('#max'), {
         format: 'MMMM Do YYYY'
     });
     
    table.draw();
     
});


 });

</script>
 
@endpush