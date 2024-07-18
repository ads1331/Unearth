@extends('layouts.app')

@section('content')
<link href="{{ asset('css/admin.css') }}" rel="stylesheet">
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <h2>Edit Comment</h2>

            <form action="{{ route('admin.comments.update', ['id' => $comment->id]) }}" method="POST">
                @csrf
                @method('PUT')
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" value="{{ $comment->name }}" class="form-control">
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" value="{{ $comment->email }}" class="form-control">
                </div>
                <div class="form-group">
                    <label for="comment">Comment</label>
                    <textarea id="comment" name="comment" class="form-control">{{ $comment->comment }}</textarea>
                </div>
                <button type="submit" class="btn btn-primary">Update</button>
            </form>
        </div>
    </div>
</div>
@endsection