## begin placing copy
# copies map structure, mapName, and origin to item_structures save
# do not remove map editor objects
scoreboard players set .hard select_area 1
$function bcm:map/load_official {mapName:"$(mapName)"}

## get map config data
# writes to maps:active {}
$function game:map/load_map with storage maps:list maps[{mapName:"$(mapName)"}]
# convert to editor, writing to bcm map
function bcm:map/convert_to_editor

## get absolute to relative
execute summon marker run function bcm:map/edit/abs_to_rel

## load map data
function bcm:map/edit/load

## max wall height
# stored as absolute
execute summon marker run function bcm:map/edit/wall_height_official