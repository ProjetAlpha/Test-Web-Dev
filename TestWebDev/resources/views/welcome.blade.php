@extends('layouts.app')

@section('content')
<form method="POST" action="{{ route('admin.create') }}" enctype="multipart/form-data">
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
            <input type="text" id="first-name" placeholder="Enter actor's first name here">
        </li>
        <li>
            <label>Last Name</label>
            <input type="text" id="last-name" placeholder="Enter actor's last name here">
        </li>
        <li>
            <label for="description">Description</label>
            <textarea id="confirmationText" class="text" cols="50" rows ="8" name="description"
                placeholder="Enter actor's description here"></textarea>
        </li>
        <li>
            <label>Image</label>
            <input type="file" name="image" required>
        </li>
        <button type="submit" class="btn btn-success">Upload</button>
    </ul>
</form>
@endsection
