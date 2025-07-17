## validate item
# is bleps map?
execute unless data entity @s SelectedItem.components."minecraft:custom_data".bleps_map run return run function bcm:fail/title {title:'"FAILED to import"',subtitle:'"This isn\'t a custom bleps map item!"'}
# map has name?
execute unless data entity @s SelectedItem.components."minecraft:custom_name" run return run function bcm:fail/title {title:'"FAILED to import"',subtitle:'"Your map needs a name!"'}
# not already imported?
# REWORK - change to give user the option to overwrite existing map
data modify storage bcm macro.mapName set from entity @s SelectedItem.components."minecraft:custom_name"
execute store result score .map_exists calc run function bcm:map/check_existing with storage bcm macro
execute if score .map_exists calc matches 1 run return run function bcm:dialog/overwrite_existing_map

## get map data
# bleps-specific map data
data modify storage bcm map set from entity @s SelectedItem.components."minecraft:custom_data".bleps_map
# blocks
function item_structures:import


## save map to array
# create map object
function bcm:map/constructor
# add to array
data modify storage bcm maps append from storage bcm tmp
data remove storage bcm tmp


## post-import stuff
# REWORK - very inefficient: rebuilds entire map registry every time an item map is added
function game:map/register_maps
# remove map item to prevent importing it twice - maybe rework?
#item replace entity @s weapon.mainhand with air