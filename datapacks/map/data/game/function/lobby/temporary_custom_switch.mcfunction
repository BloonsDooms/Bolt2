# lever at 233 -47 -260



# if lever is not flipped, end function execution
execute if score .custom_maps_enabled .data matches 0 if block 233 -47 -260 lever[powered=false] run return 0
execute if score .custom_maps_enabled .data matches 1 if block 233 -47 -260 lever[powered=true] run return 0

# flip score to correct value based on lever
execute if score .custom_maps_enabled .data matches 0 if block 233 -47 -260 lever[powered=true] run scoreboard players set .custom_maps_enabled .data 1
execute if score .custom_maps_enabled .data matches 1 if block 233 -47 -260 lever[powered=false] run scoreboard players set .custom_maps_enabled .data 0



# set custom map to 0
scoreboard players set .map_display .data 0
execute store result storage minecraft:macro mapID int 1 run scoreboard players get .map_display .data

# increase map by 1 if map doesn't match custom map setting. Loops until it is correct.
function game:menu/next_map_loop with storage minecraft:macro

# update visual
function game:menu/map_display with storage minecraft:macro