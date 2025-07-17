## validate item
# is bleps map?
execute unless data entity @s SelectedItem.components."minecraft:custom_data".bleps_map run return run function bcm:fail/title {title:'"FAILED to import"',subtitle:'"This isn\'t a custom bleps map item!"'}
# map has name?
execute unless data entity @s SelectedItem.components."minecraft:custom_name" run return run function bcm:fail/title {title:'"FAILED to import"',subtitle:'"Your map needs a name!"'}
# not already imported?
# REWORK - change to give user the option to overwrite existing map
data modify storage bcm macro.mapName set from entity @s SelectedItem.components."minecraft:custom_name"
execute store result score .map_exists calc run function bcm:map/check_existing with storage bcm macro
execute if score .map_exists calc matches 1 run return run function bcm:fail/title {title:'"FAILED to import"',subtitle:'"Map already imported!"'}

## get map data
# bleps-specific map data
data modify storage bcm map set from entity @s SelectedItem.components."minecraft:custom_data".bleps_map
# blocks
function item_structures:import


## save map to array
data remove storage bcm tmp
# bleps-specific
data modify storage bcm tmp.map set from storage bcm map
# convert targets data
data remove storage bcm tmp.map.targets
data remove storage bcm tmp_target
execute if data storage bcm map.targets[] run function bcm:map/import_targets
# blocks
data modify storage bcm tmp.structure set from storage item_structures save
# registry
data modify storage bcm tmp.registry set value {\
    mapName:"Unnamed Map",\
    mapColor:"white",\
    mapIcon:"-",\
    mapTextScale:10.0,\
    mapAuthors:[{selector:"@e[type=pig]"}],\
    mapSize:2,\
    mapModes:["ctf","infection","targets","tmi"],\
    MapIcon:{blocks:[I;425984,163841,2,1,3,196609,1212416,98305,3,1,3,1,2,1,2,131073,1212416,163841,2,1,3,196609,1212416,4,1,4,1,4,1,4,1,4,1,4,1,4,1,4,1,753664,163841,3,131073,4,851969,4,131073,3,262145,3,1,3,196609,4,65537,4,131073,4,196609,4,65537,4,1,4,65537,4,196609,3,1,3,262145,3,131073,4,65537,4,131073,4,196609,4,262145,4,131073,3,589825,4,65537,4,131073,4,196609,4,262145,4,524289,2,1,3,131073,4,65537,4,131073,4,196609,4,262145,4,131073,3,1,2,196609,3,1,3,1,2,1,2,65537,4,851969,4,65537,2,1,2,1,3,1,3,196609,2,1,3,131073,4,65537,4,393217,4,131073,4,65537,4,131073,3,1,2,524289,4,65537,4,393217,4,131073,4,65537,4,524289,2,196609,4,65537,4,393217,4,262145,4,196609,2,327681,2,1,2,65537,4,65537,4,393217,4,262145,4,65537,2,1,2,327681,2,196609,4,851969,4,196609,2,131073,1736704,32769,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,98305,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,98305,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,1802241,1736704],index:["air","black_concrete","ochre_froglight[axis=x,]","pearlescent_froglight[axis=x,]","white_concrete","mud"],size:[2,21,27]},\
    isItemMap:true\
}
data modify storage bcm tmp.registry.mapName set from entity @s SelectedItem.components."minecraft:custom_name"
# add to array
data modify storage bcm maps append from storage bcm tmp
data remove storage bcm tmp


## post-import stuff
# REWORK - very inefficient: rebuilds entire map registry every time an item map is added
function game:map/register_maps
# remove map item to prevent importing it twice - maybe rework?
#item replace entity @s weapon.mainhand with air