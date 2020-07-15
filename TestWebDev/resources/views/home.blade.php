@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8 col-sm-8 col-lg-7 col-xl-8 col-12">
            {{-- Laravel component with prop data, see components/actors-file.blade.php --}}
            <x-actors-file :actors="$actors"></x-actors-file>
        </div>
    </div>
</div>
@endsection
