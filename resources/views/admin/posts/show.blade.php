@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    Post By: {{$post->artist}}
                </div>
                <div class="card-body">
                    <table id="table-posts" class="table table-hover">
                        <tbody>
                            <tr>

                                    <img src="{{$post -> img}}" alt="">

                            </tr>
                            <tr>
                                <td>Title</td>
                                <td>{{$post->title}}</td>
                            </tr>

                            <tr>
                                <td>Description</td>
                                <td>{{$post->description}}</td>
                            </tr>

                            <tr>
                                <td>Likes</td>
                                <td>{{$post->likes}}</td>
                            </tr>

                            <tr>
                                <td>Start Date</td>
                                <td>{{$post->start_date}}</td>
                            </tr>

                            <tr>
                                <td>End Date</td>
                                <td>{{$post->end_date}}</td>
                            </tr>
                        </tbody>
                    </table>

                    <a class="btn btn-default">Back</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

