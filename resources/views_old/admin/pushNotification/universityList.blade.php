<option value="" selected disabled> Select University </option>
@foreach($universities as $university)
    <option  value="{{base64_encode($university->id)}}">{{$university->name}}</option>
@endforeach