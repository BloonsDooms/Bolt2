# time
function bcm:end_timer
execute if score .print_messages item_structures matches 1 run tellraw @a ["final time: ",{nbt:"timer.m",storage:"bcm",interpret:true},{nbt:"timer.s",storage:"bcm",interpret:true},{nbt:"timer.ms",storage:"bcm",interpret:true}]

execute if score .hard select_area matches 1 as @e[type=block_display,tag=red_flag] at @s run setblock ~ ~ ~ red_banner
execute if score .hard select_area matches 1 as @e[type=block_display,tag=blue_flag] at @s run setblock ~ ~ ~ blue_banner
scoreboard players set .hard select_area 0

## all code past this command only runs if new map
execute unless entity @n[type=marker,tag=tp_map_placer] run return 1

# tp map placer
execute store result score .z calc run data get storage item_structures save.size[2]
execute store result storage bcm macro.z int 1 run scoreboard players add .z calc 64
execute as fd8107bb-c1fa-4ddf-b8fe-d1087da4ff6e at @s run function bcm:map/tp_placer with storage bcm macro