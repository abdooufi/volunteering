@extends('frontend.layouts.app')

@section('title') {{$$module_name_singular->name}} - {{ __("Recorders") }} @endsection

@section('content')

<section class="bg-white  text-gray-600 py-20">
    <div class="container mx-auto flex px-5 items-center justify-center flex-col">
        <div class="text-center lg:w-2/3 w-full">
           

          
            <h1 class="text-3xl sm:text-4xl mb-4 font-medium text-gray-800">
                {{$$module_name_singular->name}}
            </h1>
           

            <p class="mt-8 leading-relaxed">
                {{$$module_name_singular->from_date}}
            </p>
            
            <p class="mt-8 leading-relaxed">
                {{$$module_name_singular->to_date}}
            </p>

           
            @php
    $details_url = route("frontend.$module_name.show",[encode_id($$module_name_singular->id), $$module_name_singular->slug]);
   
    $attach_url="";
   if($$module_name_singular->attach_file)
   {

    $attach_url=" <a href='{$$module_name_singular->attach_file}' class='btn btn-link' target='_blank'>attach file</a> ";

   }
   @endphp
 


            <p class="mt-8 leading-relaxed">
            {!! $attach_url !!}
            </p>
            <p class="mt-8 leading-relaxed">
                {{$$module_name_singular->description}}
            </p>

            @include('frontend.includes.messages')
        </div>
    </div>
</section>

 

@endsection