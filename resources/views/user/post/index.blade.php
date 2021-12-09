@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    posts
                </div>
                <div class="card-body">
                    @if (count($posts)=== 0)
                        <p>There are no post.</p>
                    @else
                    <table id="table-posts" class="table table-hover">
                        <thead>
                            <th>Title</th>
                            <th>Description</th>
                            <th>Location</th>
                            <th>Start Date</th>
                            <th>End Date</th>
                            <th></th>
                        </thead>
                        <tbody>
                            @foreach ($posts as $post)
                        <tr data-id="$post->id">
                            <td>{{ $post->id }}</td>
                            <td>{{ $post->description}}</td>
                            <td>{{ $post->location }}</td>
                            <td>{{ $post->start_date }}</td>
                            <td>{{ $post->end_date }}</td>

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
