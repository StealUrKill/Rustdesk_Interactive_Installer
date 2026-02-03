$json = '{"host":"yourdomain.com","key":"yourkey","api":"yourapi"}'

$b64 = [Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes($json))
$chars = $b64.ToCharArray()
[Array]::Reverse($chars)
$code = -join $chars
$code