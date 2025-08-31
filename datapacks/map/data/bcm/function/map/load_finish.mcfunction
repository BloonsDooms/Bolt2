# time
function bcm:util/end_timer
execute if score .print_messages item_structures matches 1 run tellraw @a ["final time: ",{nbt:"timer.m",storage:"bcm",interpret:true},{nbt:"timer.s",storage:"bcm",interpret:true},{nbt:"timer.ms",storage:"bcm",interpret:true}]

execute if score .hard select_area matches 1 as @e[type=block_display,tag=red_flag] at @s run setblock ~ ~ ~ red_banner
execute if score .hard select_area matches 1 as @e[type=block_display,tag=blue_flag] at @s run setblock ~ ~ ~ blue_banner
execute if score .hard select_area matches 1 as @e[type=block_display,tag=generator] at @s positioned ^ ^ ^1 run function bcm:place/generator_text
scoreboard players set .hard select_area 0

# improve load ETA
# get real load rate
execute store result score .rate calc run data get storage item_structures save.blocks
scoreboard players operation .rate calc *= #10 calc
scoreboard players operation .rate calc /= .ms_total calc
scoreboard players operation .rate calc *= #100 calc
execute if score .print_messages item_structures matches 1 run tellraw @a ["average load rate: ",{score:{name:".rate",objective:"calc"}}," entries/s"]
# % difference
scoreboard players operation .r calc = .rate calc
scoreboard players operation .r calc *= #100 calc
scoreboard players operation .r calc /= .load_entries/s calc
scoreboard players remove .r calc 100
execute if score .print_messages item_structures matches 1 if score .r calc matches 0.. run tellraw @a ["loaded ",{score:{name:".r",objective:"calc"}},"% faster than estimated"]
scoreboard players operation .r calc *= #-1 calc
execute if score .print_messages item_structures matches 1 if score .r calc matches 1.. run tellraw @a ["loaded ",{score:{name:".r",objective:"calc"}},"% slower than estimated"]
# new estimate = avg(old est., real) if >500ms
execute if score .ms_total calc matches 500.. run scoreboard players operation .load_entries/s calc += .rate calc
execute if score .ms_total calc matches 500.. run scoreboard players operation .load_entries/s calc /= #2 calc

# keep it simple - forceload the whole map editor area all the time
function bcm:editor/forceload

## all code past this command only runs if new map
execute unless entity @n[type=marker,tag=tp_map_placer] run return 1

# tp map placer
execute store result score .z calc run data get storage item_structures save.size[2]
execute store result storage bcm macro.z int 1 run scoreboard players add .z calc 64
execute as fd8107bb-c1fa-4ddf-b8fe-d1087da4ff6e at @s run function bcm:map/tp_placer with storage bcm macro