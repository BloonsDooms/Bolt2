# y offset
execute as @e[type=marker,tag=render_box,tag=save] at @s run tp ~ ~.9 ~

scoreboard players set .enabled select_area 1

# time
function bcm:end_timer
execute if score .print_messages item_structures matches 1 run tellraw @a ["final time: ",{nbt:"timer.m",storage:"bcm",interpret:true},{nbt:"timer.s",storage:"bcm",interpret:true},{nbt:"timer.ms",storage:"bcm",interpret:true}]