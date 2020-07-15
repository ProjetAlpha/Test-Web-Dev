@extends('layouts.app')

@section('content')
<form method="POST" action="{{ route('admin.create.confirm') }}" enctype="multipart/form-data">
    @csrf

    <ul class="flex-outer">
        <li>
            <label>First Name</label>
            <input type="text" id="first-name" name="firstname" placeholder="Enter actor's first name here">
        </li>
        <li>
            <label>Last Name</label>
            <input type="text" id="last-name" name="lastname" placeholder="Enter actor's last name here">
        </li>
        <li>
            <label for="description">Description</label>
            <textarea id="confirmationText" name="description" class="text" cols="50" rows ="8" name="description"
                placeholder="Enter actor's description here"></textarea>
        </li>
        <li>
            <label>Image</label>
            <div class="col-md-2 col-sm-4 col-lg-1 col-xl-2 col-5 none" id="image-container">
                <img class="responsive-img imgBorder" id="actor-image-content">
            </div>
            <input type="file" name="image" id="actor-image" required>
        </li>
        <li>
            <button type="submit" class="btn btn-success">Upload</button>
        </li>
    </ul>
</form>
@endsection