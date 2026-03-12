execute if score .custom_maps_enabled .data matches 0 unless data storage maps:list maps[0].isItemMap run return 0
execute if score .custom_maps_enabled .data matches 1 if data storage maps:list maps[0].isItemMap run return 0

# decrease map by one
scoreboard players add .map_display .data 1
execute if score .map_display .data >= .map_count .data run scoreboard players set .map_display .data 0
# yes this sucks. Cope.
scoreboard players remove .map_count .data 1
execute if score .map_display .data < .0 .num run scoreboard players operation .map_display .data = .map_count .data
scoreboard players add .map_count .data 1

function game:menu/next_map_loop with storage minecraft:macro