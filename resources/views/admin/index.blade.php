@extends('layouts.app')

@section('content')
<link href="{{ asset('css/admin.css') }}" rel="stylesheet">
<div class="container">
    <div class="header">
        <h2>Admin Dashboard</h2>
    </div>

    <div class="row justify-content-center">
        <div class="col-md-10">

            <!-- Comments Section -->
            <div class="card mb-4">
                <div class="card-header">
                    <h3>Comments</h3>
                </div>
                <div class="card-body">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Comment</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($comments as $comment)
                            <tr>
                                <td>{{ $comment->id }}</td>
                                <td>{{ $comment->name }}</td>
                                <td>{{ $comment->email }}</td>
                                <td>{{ $comment->comment }}</td>
                                <td>
                                    <form action="{{ route('admin.comments.destroy', ['type' => 'comments', 'id' => $comment->id]) }}" method="POST">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                                    </form>
                                    <a href="{{ route('admin.comments.edit', ['id' => $comment->id]) }}" class="btn btn-primary btn-sm">Edit</a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Questions Section -->
            <div class="card mb-4">
                <div class="card-header">
                    <h3>Questions</h3>
                </div>
                <div class="card-body">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Question</th>
                                <th>Answer</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($questions as $question)
                            <tr>
                                <td>{{ $question->id }}</td>
                                <td>{{ $question->question }}</td>
                                <td>{{ $question->answer }}</td>
                                <td>
                                    <form action="{{ route('admin.questions.destroy', ['type' => 'questions', 'id' => $question->id]) }}" method="POST">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                                    </form>
                                    <a href="{{ route('admin.questions.edit', ['id' => $question->id]) }}" class="btn btn-primary btn-sm">Edit</a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Teams Section -->
            <div class="card mb-4">
                <div class="card-header">
                    <h3>Teams</h3>
                </div>
                <div class="card-body">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($teams as $team)
                            <tr>
                                <td>{{ $team->id }}</td>
                                <td>{{ $team->name }}</td>
                                <td>{{ $team->status }}</td>
                                <td>
                                    <form action="{{ route('admin.teams.destroy', ['type' => 'teams', 'id' => $team->id]) }}" method="POST">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                                    </form>
                                    <a href="{{ route('admin.teams.edit', ['id' => $team->id]) }}" class="btn btn-primary btn-sm">Edit</a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Posts Section -->
            <div class="card mb-4">
                <div class="card-header">
                    <h3>Posts</h3>
                </div>
                <div class="card-body">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Title</th>
                                <th>Content</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($posts as $post)
                            <tr>
                                <td>{{ $post->id }}</td>
                                <td>{{ $post->name }}</td>
                                <td>{{ \Illuminate\Support\Str::limit($post->text, 50, $end='...') }}</td>
                                <td>
                                    <form action="{{ route('admin.posts.destroy', ['type' => 'posts', 'id' => $post->id]) }}" method="POST">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                                    </form>
                                    <a href="{{ route('admin.posts.edit', ['id' => $post->id]) }}" class="btn btn-primary btn-sm">Edit</a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Forms to Create New Records -->
            <div class="create-new">
                <h2>Create New</h2>

                <div>
                    <h4>Create New Comment</h4>
                    <form action="{{ route('admin.comments.store') }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" id="name" name="name" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" name="email" required>
                        </div>
                        <div class="form-group">
                            <label for="comment">Comment</label>
                            <textarea class="form-control" id="comment" name="comment" rows="3" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>

                <div>
                    <h4>Create New Question</h4>
                    <form action="{{ route('admin.questions.store') }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="question">Question</label>
                            <input type="text" class="form-control" id="question" name="question" required>
                        </div>
                        <div class="form-group">
                            <label for="answer">Answer</label>
                            <textarea class="form-control" id="answer" name="answer" rows="3" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>

                <div>
                    <h4>Create New Team Member</h4>
                    <form action="{{ route('admin.teams.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" id="name" name="name" required>
                        </div>
                        <div class="form-group">
                            <label for="status">Status</label>
                            <input type="text" class="form-control" id="status" name="status" required>
                        </div>
                        <div class="form-group">
                            <label for="img">Image</label>
                            <input type="text" class="form-control" id="img" name="img" required>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>

                <div>
                    <h4>Create New Post</h4>
                    <form action="{{ route('admin.posts.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" id="name" name="name" required>
                        </div>
                        <div class="form-group">
                            <label for="text">Text</label>
                            <textarea class="form-control" id="text" name="text" rows="3" required></textarea>
                        </div>
                        <div class="form-group">
                            <label for="img">Image</label>
                            <input type="text" class="form-control" id="img" name="img" required>
                        </div>
                        <div class="form-group">
                            <label for="date">Date</label>
                            <input type="date" class="form-control" id="date" name="date" required>
                        </div>
                        <div class="form-group">
                            <label for="head_img">Header Image</label>
                            <input type="text" class="form-control" id="head_img" name="head_img" required>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>

            </div>
        </div>
    </div>
</div>
@endsection
