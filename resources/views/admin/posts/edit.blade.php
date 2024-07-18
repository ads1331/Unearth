
@extends('layouts.app')

@section('content')
<link href="{{ asset('css/admin.css') }}" rel="stylesheet">
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <h2>Edit Post</h2>

            <form action="{{ route('admin.posts.update', ['id' => $post->id]) }}" method="POST">
                @csrf
                @method('PUT')
                <!-- Ваши поля для редактирования поста -->
                <div class="form-group">
                    <label for="title">Head_img</label>
                    <input type="text" id="head_img" name="head_img" value="{{ $post->head_img }}" class="form-control">
                    <p><img src="{{ $post->head_img }}" alt="Image" class="img-fluid"></p>
                </div>
                <div class="form-group">
                    <label for="title">img</label>
                    <input type="text" id="img" name="img" value="{{ $post->img }}" class="form-control">
                    <p><img src="{{ $post->img }}" alt="Image" class="img-fluid"></p>
                </div>
                <div class="form-group">
                    <label for="title">Title</label>
                    <input type="text" id="name" name="name" value="{{ $post->name }}" class="form-control">
                </div>
                <div class="form-group">
                    <label for="content">Content</label>
                    <textarea id="text" name="text" class="form-control">{{ $post->text }}</textarea>
                </div>
                <button type="submit" class="btn btn-primary">Update</button>
            </form>
        </div>
    </div>
</div>
@endsection