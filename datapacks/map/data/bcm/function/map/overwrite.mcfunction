$data modify storage bcm macro.load_point set from storage bcm maps[{registry:{mapName:"$(mapName)"}}].map.load_point

$data modify storage bcm maps[{registry:{mapName:"$(mapName)"}}] set from storage bcm tmp
$data modify storage maps:list maps[{mapName:"$(mapName)"}] set from storage bcm tmp.registry

scoreboard players set .print_messages item_structures 1
function bcm:map/overwrite_load with storage bcm macro