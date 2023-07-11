@extends('layouts.frontend.loginapp')

@section('content')
    <section class="information-section">
    <?php
        $question_title= 'question_'.$type;
        $question_description= 'description_'.$type;
    ?>
    <div class="container">
        <div class="information-sec-head">Frequently Asked Questions</div>
        <div class="information-content">
            <div class="accordion" id="faq">
                @foreach($faqs as $key => $data)
                <div class="card">
                    <div class="card-header" id="heading{{$key}}">
                        <a href="javascript:void(0);" class="card-heading collapsed" data-toggle="collapse" data-target="#collapse{{$key}}" aria-expanded="true" aria-controls="collapse{{$key}}">{{$data[$question_title]}}</a>
                    </div>
                    <div id="collapse{{$key}}" class="collapse show1" aria-labelledby="heading{{$key}}" data-parent="#faq">
                        <div class="card-body">
                            {{strip_tags($data[$question_description])}}
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</section>
@endsection
