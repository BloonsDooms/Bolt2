## validate item
# is bleps map?
execute unless data entity @s SelectedItem.components."minecraft:custom_data".bleps_map run return run function bcm:fail/title {title:'"FAILED to import"',subtitle:'"This isn\'t a custom bleps map item!"'}
# map has name?
execute unless data entity @s SelectedItem.components."minecraft:custom_name" run return run function bcm:fail/title {title:'"FAILED to import"',subtitle:'"Your map needs a name!"'}
# if map w/ same name, prompt user to overwrite
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
data modify storage maps:list maps append from storage bcm tmp.registry
data remove storage bcm tmp


## place map
# UUID is 1 less than origin entity
forceload add 544 32
execute unless entity fd8107bb-c1fa-4ddf-b8fe-d1087da4ff6e run summon marker 544 0 32 {UUID:[I;-41875525,-1040560673,-1191259896,2107965294]}
scoreboard players set .print_messages item_structures 1
execute at fd8107bb-c1fa-4ddf-b8fe-d1087da4ff6e run function bcm:map/load with storage bcm macro
tag fd8107bb-c1fa-4ddf-b8fe-d1087da4ff6e add tp_map_placer