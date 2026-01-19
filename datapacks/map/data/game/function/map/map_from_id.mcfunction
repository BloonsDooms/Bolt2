# normal maps

$say $(mapID) ... $(mapName)
$execute unless data storage maps:list maps[$(mapID)].isItemMap run return run function game:map/load_map with storage maps:list maps[$(mapID)]
say item map
# item maps
$data modify storage bcm map set from storage bcm maps[{registry:{mapName:"$(mapName)"}}].map
function bcm:map/convert_to_game