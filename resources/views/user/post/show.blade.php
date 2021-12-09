@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    post: {{$post->title}}
                </div>
                <div class="card-body">
                    <table id="table-posts" class="table table-hover">
                        <tbody>
                            <tr>
                                <td>Title</td>
                                <td>{{$post->title}}</td>
                            </tr>

                            <tr>
                                <td>Descriptionn</td>
                                <td>{{$post->description}}</td>
                            </tr>

                            <tr>
                                <td>Location</td>
                                <td>{{$post->location}}</td>
                            </tr>

                            <tr>
                                <td>Start Date</td>
                                <td>{{$post->start_date}}</td>
                            </tr>

                            <tr>
                                <td>End Date</td>
                                <td>{{$post->end_date}}</td>
                            </tr>

                            <tr>
                                <td>Contact Name</td>
                                <td>{{$post->contact_name}}</td>
                            </tr>

                            <tr>
                                <td>Contact Email</td>
                                <td>{{$post->contact_email}}</td>
                            </tr>

                            <tr>
                                <td>Contact Phone</td>
                                <td>{{$post->contact_phone}}</td>
                            </tr>
                        </tbody>
                    </table>

                    <a href="{{route('user.posts.index')}}" class="btn btn-default">Back</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

