@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8 col-sm-8 col-lg-7 col-xl-8 col-12">
    @foreach($actors as $actor)
    <div class="card mr-t-10">
        <div class="card-header">
            <h5 class="card-title">{{ $actor->firstname }} {{ $actor->lastname }}</h5>
        </div>

        <div class="card-body">
            <div class="col-md-3 col-sm-5 col-lg-3 col-xl-3 col-5 mx-auto">
                <img class="responsive-img imgBorder" src="{{ asset($actor->path) }}" />
            </diV>
        </div>

        <div class="card-body">
            <p class="mb-0">{{ $actor->description }}</p>
        </div>
    </div>
@endforeach
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
