# lever at 233 -47 -260



# if lever is not flipped, end function execution
execute if score .custom_maps_enabled .data matches 0 if block 233 -47 -260 lever[powered=false] run return 0
execute if score .custom_maps_enabled .data matches 1 if block 233 -47 -260 lever[powered=true] run return 0

# flip score to correct value based on lever
execute if score .custom_maps_enabled .data matches 0 if block 233 -47 -260 lever[powered=true] run scoreboard players set .custom_maps_enabled .data 1
execute if score .custom_maps_enabled .data matches 1 if block 233 -47 -260 lever[powered=false] run scoreboard players set .custom_maps_enabled .data 0

# force map list to refresh, I think this should put it to the 1st offical map and 1st custom map.
execute if score .custom_maps_enabled .data matches 0 run function game:menu/map_prev_button
execute if score .custom_maps_enabled .data matches 1 run function game:menu/map_next_button