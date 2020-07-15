@if(Auth::check() && Auth::user()->isAdmin())
    <a href="{{ route('admin.create') }}">
        <button class="btn btn-success">
            <i class="fa fa-plus-circle" aria-hidden="true"></i>
            Add an actor profil
        </button>
    </a>
@endif

@foreach($actors as $actor)
    <div class="card mr-t-10">
        <div class="card-header">
            <h5 class="card-title">{{ $actor->firstname }} {{ $actor->lastname }}</h5>
        </div>

        <div class="card-body">
            <div class="col-md-5 col-sm-6 col-lg-4 col-xl-3 col-5 mx-auto">
                <img class="responsive-img imgBorder" src="{{ asset($actor->path) }}" />
            </diV>
        </div>

        <div class="card-body">
            <p class="mb-0">{{ $actor->description }}</p>
        </div>

        @if(Auth::check() && Auth::user()->isAdmin())
            <div class="card-footer">
                <form method="POST" action="{{ '/admin/delete/'.$actor->id }}"
                    style="display: inline-block;">
                    @csrf
                    <button class="btn btn-danger" type="submit">
                        <i class="fa fa-trash" aria-hidden="true"></i>
                        Delete
                    </button>
                </form>
                <a href="{{ '/admin/update/'.$actor->id }}">
                    <button class="btn btn-success">
                        <i class="fa fa-pen" aria-hidden="true"></i>
                        Update
                    </button>
                </a>
            </div>
        @endif
    </div>
@endforeach
