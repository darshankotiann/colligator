<?php
include("RtmTokenBuilder.php");

$appID = "690ea15e89fb486f8a875bde09d3cf7e";
$appCertificate = "53191a0c79644b7bb6631298aed657f4";
$user = "test_user_id";
$role = RtmTokenBuilder::RoleRtmUser;
$expireTimeInSeconds = 3600;
$currentTimestamp = (new DateTime("now", new DateTimeZone('UTC')))->getTimestamp();
$privilegeExpiredTs = $currentTimestamp + $expireTimeInSeconds;

$token = RtmTokenBuilder::buildToken($appID, $appCertificate, $user, $role, $privilegeExpiredTs);
echo 'Rtm Token: ' . $token . PHP_EOL;

?>