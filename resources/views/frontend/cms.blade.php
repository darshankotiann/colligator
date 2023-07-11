@extends('layouts.frontend.loginapp')

@section('content')
<div class="login-wrap">
                 <div class="site-wraper">
            <section class="information-section">
                <div class="container">
                    <div class="information-sec-head">{{$content['title_'.$type]}}</div>
                    <div class="information-content">
                       {!!$content['content_'.$type]!!}
                    </div>
                </div>
            </section>
            
        </div>
            </div>


<script>
    

</script>
@endsection
