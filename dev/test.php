<?php
use phpFastCache\CacheManager;
require '../vendor/autoload.php';
$InstanceCache = CacheManager::getInstance('memcache', ['servers' => [
	[
		'host' =>'127.0.0.1',
		'port' => 11211
	],
]]);

$key = "product_page";
$CachedString = $InstanceCache->getItem($key);
if (is_null($CachedString->get())) {
	//$CachedString = "APC Cache --> Cache Enabled --> Well done !";
	// Write products to Cache in 10 minutes with same keyword
	$CachedString->set("Memcache Cache --> Cache Enabled --> Well done !")->expiresAfter(5);
	$InstanceCache->save($CachedString);
	echo "FIRST LOAD // WROTE OBJECT TO CACHE // RELOAD THE PAGE AND SEE // ";
	echo $CachedString->get();
} else {
	echo "READ FROM CACHE // ";
	echo $CachedString->get();
}
echo '<br /><br /><a href="/">Back to index</a>&nbsp;--&nbsp;<a href="./' . basename(__FILE__) . '">Reload</a>';