## begin placing copy
# copies map structure to item_structures save
# do not remove map editor objects
scoreboard players set .hard select_area 1
$function bcm:map/load {mapName:"$(mapName)",new:false}

## get map config data
# writes to bcm map
$data modify storage bcm map set from storage bcm maps[{registry:{mapName:"$(mapName)"}}].map

## null absolute to relative
data modify storage bcm abs_to_rel set value {pos:"~ ~ ~"}

## load map data
function bcm:map/edit/load

## max wall height
# stored as relative
execute summon marker run function bcm:map/edit/wall_height_item

return 1