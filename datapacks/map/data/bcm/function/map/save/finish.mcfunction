# y offset
execute as @e[type=marker,tag=render_box,tag=save] at @s run tp ~ ~.9 ~

execute as @e[type=block_display,tag=red_flag] at @s run setblock ~ ~ ~ red_banner
execute as @e[type=block_display,tag=blue_flag] at @s run setblock ~ ~ ~ blue_banner
scoreboard players set .enabled select_area 1

# time
function bcm:end_timer
execute if score .print_messages item_structures matches 1 run tellraw @a ["final time: ",{nbt:"timer.m",storage:"bcm",interpret:true},{nbt:"timer.s",storage:"bcm",interpret:true},{nbt:"timer.ms",storage:"bcm",interpret:true}]