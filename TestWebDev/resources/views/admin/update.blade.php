@extends('layouts.app')

@section('content')
<form method="POST" action="{{ '/admin/update/'.$actor->id.'/confirm' }}" enctype="multipart/form-data">
    @csrf
    @if(count($errors) > 0)
        <div class="error">
            <i class="fa fa-times-circle"></i>
            <ul>
                @foreach($errors as $error)
                    <li> {{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

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
            <textarea id="confirmationText" class="text" cols="50" rows ="8" name="description"
                placeholder="Enter actor's description here">{{ $actor->description }}</textarea>
        </li>
        <li>
            <label>Image</label>
            <div class="col-md-3">
                <img class="responsive-img" src="{{ asset($actor->path) }}">
            </div>
            <input type="file" name="image">
        </li>
        
        <button type="submit" class="btn btn-success">Confirm</button>
        <a href="{{url()->previous()}}" class="btn btn-danger">Cancel</a>
    </ul>
</form>
@endsection