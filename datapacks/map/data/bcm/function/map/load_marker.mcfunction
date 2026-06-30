tag @s add start_point
tellraw @a {nbt:"Pos",entity:"@s"}

# set load point if new map
$execute if score .new item_structures matches 1 run function bcm:map/set_load_point {mapName:"$(mapName)"}

# y offset
execute as @e[type=marker,tag=start_point] at @s run tp ~ ~-1 ~