@extends('layouts.app')

@section('content')
<form method="POST" action="{{ '/admin/update/'.$actor->id.'/confirm' }}" enctype="multipart/form-data">
    @csrf

    <ul class="flex-outer">
        <li>
            <label>First Name</label>
            <input type="text" name="firstname" value="{{ $actor->firstname }}"id="first-name" placeholder="Enter actor's first name here">
        </li>
        <li>
            <label>Last Name</label>
            <input type="text" id="last-name" name="lastname" value="{{ $actor->lastname }}" placeholder="Enter actor's last name here">
        </li>
        <li>
            <label for="description">Description</label>
            <textarea id="confirmationText" class="text" cols="50" rows ="5" name="description"
                placeholder="Enter actor's description here">{{ $actor->description }}</textarea>
        </li>
        <li>
            <label>Image</label>
            <div class="col-md-2 col-sm-4 col-lg-1 col-xl-2 col-5">
                <img class="responsive-img imgBorder" src="{{ asset($actor->path) }}" id="actor-image-content">
            </div>
            <input type="file" name="image" id="actor-image">
        </li>
        <li>
            <button type="submit" class="btn btn-success mr-r-3">Confirm</button>
            <a href="{{ route('home') }}">
                <button class="btn btn-danger" type="button">Cancel</button>
            </a>
        </li>
    </ul>
</form>
@endsection