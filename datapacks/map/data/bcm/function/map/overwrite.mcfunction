$data modify storage bcm maps[{registry:{mapName:"$(mapName)"}}] set from storage bcm tmp
$data modify storage maps:list maps[{mapName:"$(mapName)"}] set from storage bcm tmp.registry

$data modify storage bcm macro.load_point set from storage bcm maps[{registry:{mapName:"$(mapName)"}}].map.load_point
function bcm:map/overwrite_load with storage bcm macro