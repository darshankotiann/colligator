<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Mailgun, Postmark, AWS and more. This file provides the de facto
    | location for this type of information, allowing packages to have
    | a conventional file to locate the various service credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
        'endpoint' => env('MAILGUN_ENDPOINT', 'api.mailgun.net'),
    ],

    'postmark' => [
        'token' => env('POSTMARK_TOKEN'),
    ],

    'ses' => [
        'key' => env('AWS_ACCESS_KEY_ID'),
        'secret' => env('AWS_SECRET_ACCESS_KEY'),
        'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),
    ],
    "apple" => [
        "client_id" => "3D9N3B78VP",
        "client_secret" => "eyJraWQiOiJITERTVjZHNTlSIiwiYWxnIjoiRVMyNTYifQ.eyJpc3MiOiIzRDlOM0I3OFZQIiwiaWF0IjoxNjI1NTU4NTc3LCJleHAiOjE2NDExMTA1NzcsImF1ZCI6Imh0dHBzOi8vYXBwbGVpZC5hcHBsZS5jb20iLCJzdWIiOiJjb20ub3JnLmNvbGxlZ2F0b3JzZXJ2aWNlIn0.iZgjCwfc6p3dIvKRcuztt4WrF0-V3HDNfKldpd7vjtIVt7PthyQnLlmZl9RqU-7qDISYsBqMf1yzU298e-qAUg",

    ],
    'facebook' => [
    //  'client_id' => '2650522028579773',
    //  'client_secret' => '5b0f891053c9d354364c6a3e72ddfae9',
    // 'redirect' => 'https://collegator.devtechnosys.info/callback/facebook',
     'client_id' => '302050185244079',
	 'client_secret' => '905a6f67573f089b63c5c9bb69f80563',
     'redirect' => 'https://collegator.com/callback/facebook',
   ], 
    'google' => [
        'client_id' => '349931762369-pkr2s2t0ntn49d3b3cvsu9ocpo3p2ngd.apps.googleusercontent.com',
        'client_secret' => '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',
        'redirect' => 'https://collegator.com/callback/google',
    ],
    'twitter' => [
        'client_id' => 'T72VnvPesQNHFG0x1QC2HGqNg',
        'client_secret' => 'Hm5GvvjEvzrRviI1KSK3AVDlQnLWbFF2pT4oYol22ja2VYKEPF',
        'redirect' => 'https://collegator.devtechnosys.info/callback/twitter',
    ],
    'instagram' => [  
     'client_id' => '1008545653323022',  
     'client_secret' =>'c48ded4dddea8dc37e8abaabb3d2c2af',  
     'redirect' => 'https://collegator.devtechnosys.info/callback/instagram',  
],
];
