@extends('layouts.app')

@section('content')
<link href="{{ asset('css/admin.css') }}" rel="stylesheet">
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <h2>Edit Question</h2>

            <form action="{{ route('admin.questions.update', ['id' => $question->id]) }}" method="POST">
                @csrf
                @method('PUT')
                <!-- Ваши поля для редактирования вопроса -->
                <div class="form-group">
                    <label for="question">Question</label>
                    <textarea id="question" name="question" class="form-control">{{ $question->question }}</textarea>
                </div>
                <div class="form-group">
                    <label for="question">answer</label>
                    <textarea id="answer" name="answer" class="form-control">{{ $question->answer }}</textarea>
                </div>
                <button type="submit" class="btn btn-primary">Update</button>
            </form>
        </div>
    </div>
</div>
@endsection