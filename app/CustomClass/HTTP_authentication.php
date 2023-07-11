<?php
// HTTP basic authentication example in PHP using the RTC Server RESTful API
// Customer ID
$customerKey = "5e165d35ddc34877a36c9009b079bff8";
// Customer secret
$customerSecret = "cc1ad28c6e004586976178ddd3ffaad7";
// Concatenate customer key and customer secret
$credentials = $customerKey . ":" . $customerSecret;

// Encode with base64
$base64Credentials = base64_encode($credentials);
// Create authorization header
$arr_header = "Authorization: Basic " . $base64Credentials;

$curl = curl_init();
// Send HTTP request
curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://api.agora.io/dev/v1/projects',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',

  CURLOPT_HTTPHEADER => array(
    $arr_header,
    'Content-Type: application/json'
  ),
));

$response = curl_exec($curl);

if($response === false) {
    echo "Error in cURL : " . curl_error($curl);
}

curl_close($curl);

$res= json_decode($response,true);

// // Token authentication example in PHP using the RTM user events RESTful API

// // RTM Token
$token ='006690ea15e89fb486f8a875bde09d3cf7eIABQ+RYZgJp3OVj5RFyI0ZElYlEayQjNxTy6iNv/bqHNe10HL3tXoFHlIgCYEgAAxi8nYgQAAQBW7CViAwBW7CViAgBW7CViBABW7CVi';
// User ID used to generate the RTM token
$uid = 'test_user_id';
$vendor_key = $res['projects'][1]['vendor_key'];
// Add the x-agora-token field to the header
$token_header = "x-agora-token: " . $token;
// Add the x-agora-uid field to the header
$uid_header = "x-agora-uid: " . $uid;

$curl = curl_init();
// Send request
curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://api.agora.io/dev/v2/project/'.$vendor_key.'/rtm/vendor/user_events',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',

  CURLOPT_HTTPHEADER => array(
    $token_header,
    $uid_header,
    'Content-Type: application/json'
  ),
));

$response = curl_exec($curl);

if($response === false) {
    echo "Error in cURL : " . curl_error($curl);
}

curl_close($curl);

echo $response;