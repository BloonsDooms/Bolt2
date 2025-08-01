# remove old doors
$execute positioned $(load_point) as @e[type=marker,tag=door,dx=$(dx),dy=$(dy),dz=$(dz)] at @s run function bcm:place/delete_door

# place new doors
data modify storage bcm tmp.doors set from entity @s SelectedItem.components."minecraft:custom_data".doors
$execute if data storage bcm tmp.doors[-1] positioned $(load_point) summon marker run function bcm:place/door_auto with storage bcm tmp.doors[-1]
data remove storage bcm tmp

# map structure
$execute positioned $(load_point) run function bcm:map/load {mapName:"$(mapName)",new:false}