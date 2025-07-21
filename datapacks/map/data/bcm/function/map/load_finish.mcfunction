# y offset
# deprecated: load at save area pos1
#execute as @e[type=marker,tag=render_box,tag=save] at @s run tp ~ ~.9 ~
#tag @e[type=marker,tag=render_box,tag=save] remove start_point

# time
function bcm:end_timer
execute if score .print_messages item_structures matches 1 run tellraw @a ["final time: ",{nbt:"timer.m",storage:"bcm",interpret:true},{nbt:"timer.s",storage:"bcm",interpret:true},{nbt:"timer.ms",storage:"bcm",interpret:true}]

# tp map placer
execute unless entity @n[type=marker,tag=tp_map_placer] run return 1
execute store result score .z calc run data get storage item_structures save.size[2]
execute store result storage bcm macro.z int 1 run scoreboard players add .z calc 64
execute as fd8107bb-c1fa-4ddf-b8fe-d1087da4ff6e at @s run function bcm:map/tp_placer with storage bcm macro

# REWORK - rebuilds entire map registry, but here i only need it to place 1 map icon
function game:map/register_maps