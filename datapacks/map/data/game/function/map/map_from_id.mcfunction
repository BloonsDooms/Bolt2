$execute if data storage maps:list maps[$(mapID)].isItemMap run return run function maps:item_map_config with storage maps:list maps[$(mapID)]

$function game:map/load_map with storage maps:list maps[$(mapID)]