# normal maps
$execute unless data storage maps:list maps[$(mapID)].isItemMap run return run function game:map/load_map with storage maps:list maps[$(mapID)]

# item maps
$function game:map/load_item_map with storage maps:list maps[$(mapID)]