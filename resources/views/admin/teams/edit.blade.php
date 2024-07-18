@extends('layouts.app')

@section('content')
<link href="{{ asset('css/admin.css') }}" rel="stylesheet">
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <h2>Edit Team</h2>

            <form action="{{ route('admin.teams.update', ['id' => $team->id]) }}" method="POST">
                @csrf
                @method('PUT')
                <!-- Ваши поля для редактирования команды -->
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" value="{{ $team->name }}" class="form-control">
                </div>
                <div class="form-group">
                    <label for="role">status</label>
                    <input type="text" id="status" name="status" value="{{ $team->status }}" class="form-control">
                </div>
                <div class="form-group">
                    <label for="title">Head_img</label>
                    <input type="text" id="img" name="img" value="{{ $team->img }}" class="form-control">
                    <p><img src="{{ $team->img }}" alt="Image" class="img-fluid"></p>
                </div>
                <button type="submit" class="btn btn-primary">Update</button>
            </form>
        </div>
    </div>
</div>
@endsection