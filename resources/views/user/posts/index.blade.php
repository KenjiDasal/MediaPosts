@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    Posts
                </div>
                <div class="card-body">
                    @if (count($posts)=== 0)
                        <p>There are no post.</p>
                    @else
                    <table id="table-posts" class="table table-hover">
                        <thead>
                            <th>ID</th>
                            <th>Artist</th>
                            <th>Likes</th>
                            <th>Title</th>
                            <th>Description</th>
                        </thead>
                        <tbody>
                            @foreach ($posts as $post)
                        <tr data-id="$post->id">
                            <td>{{ $post->id }}</td>
                            <td>{{ $post->artist}}</td>
                            <td>{{ $post->title }}</td>
                            <td>{{ $post->likes}}</td>
                            <td>{{ $post->description}}</td>

                            <td>
                                <a href="{{route('user.posts.show', $post->id)}}" class="btn btn-primary">Views</a>
                                </form>
                            </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
