<?php
require_once '../vendor/autoload.php';

//set an IPv6 address for testing
$ip = '2601:8:be00:cf20:ca60:ff:fe09:35b5';

/*
test if $ip is v4 or v6 and assign appropriate .dat file in $gi
run appropriate function geoip_country_code_by_addr() vs geoip_country_code_by_addr_v6()   
*/
if ((strpos($ip, ":") === false)) {
    //ipv4
    $gi = geoip_open("/usr/share/GeoIP/GeoIP1.dat", GEOIP_STANDARD);
    $country = geoip_country_code_by_addr($gi, $ip);
} else {
    //ipv6
    $gi = geoip_open("/usr/share/GeoIP/GeoIPv6.dat", GEOIP_STANDARD);
    $country = geoip_country_code_by_addr_v6($gi, $ip);
}
echo $ip . "<br>" . $country;